unit DataModuleSat;

interface

uses
  Windows, System.SysUtils, System.Classes, pcnConversao, ACBrBase, ACBrSAT, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrSatClass, ACBrDFeReport, ACBrSATExtratoClass,
  ACBrSATExtratoReportClass, ACBrSATExtratoFortesFr, pcnCFe, NFe_Status, wrConversao;

type
  TDMSat = class(TDataModule)
    ACBrSAT: TACBrSAT;
    ACBrSATExtratoFortes: TACBrSATExtratoFortes;
    procedure ACBrSATGetcodigoDeAtivacao(var Chave: AnsiString);
    procedure ACBrSATGetsignAC(var Chave: AnsiString);
    procedure DataModuleCreate(Sender: TObject);
    procedure ACBrSATGravarLog(const ALogLine: string; var Tratado: Boolean);
  private
    FFormStatus: TfrmStatus;
    FMostrarPreview: Boolean;
    function GetAmbiente(const AAmbiente: string): TpcnTipoAmbiente;
    function GetRegimeTributario(const ARegTrib: string): TpcnRegTrib;
    function GetRegimeTributarioISSQN(const ARegTrib: string): TpcnRegTribISSQN;
    function GetIndRatISSQN(const AindRatISSQN: string): TpcnindRatISSQN;
    function GetCodEAN(const ACodFabrica: string): string;
    function GetIndRegra(const AIndRegra: string): TpcnindRegra;
    function GetMeioPagto(const AListaMeioPagtos: TMPCollection; const ATipoPagto: string): TMPCollectionItem;
    function GetTipoPagto(const ATipoPagto: string): TpcnCodigoMP;

    function GetAssinaturaAC: string;
    function GetCodigoAtivacao: string;
    procedure ConfiguraComponenteSAT;

    procedure InternalGerarCFeSAT(const AVenda, AVendaProduto, AVendaFinanceiro, ANotaFiscal: TDataSet);
    procedure InternalCancelarVendaPelaNotaFiscal(const ANotaFiscal: TDataSet; const ACodVenda: string);
    procedure InternalImprimirNota(const ATiposAbertura: TNotaFiscalTipoAberturaSet; AImprimirCancelamento: Boolean);
    procedure CarregarNota(const ACodigo: Integer);
    procedure DoCarregarNota(const ANotaFiscal: TDataSet);
    class procedure PreencheDadosNF(const ANotaFiscal: TDataSet; AACBrSAT: TACBrSAT; const ACodVenda: string);

    //XML
    function GravaXMLCFeSATNoBanco(const ACodVenda: string): Integer;
    procedure GravaXMLCancelamentoCFeSATNoBanco(const ACodVenda: string);
    procedure AtualizarNotaNaVenda(const AVenda, AVendaProduto: TDataSet);
  public
    class procedure GerarCFeSAT(const AVenda, AVendaProduto, AVendaFinanceiro, ANotaFiscal: TDataSet);
    class procedure CancelarVendaPelaNotaFiscal(const ACodigo: Integer; const ACodVenda: string);
    class procedure ImprimirNota(const ACodigo: Integer; ATipoAbertura: TNotaFiscalTipoAbertura = anVisualizar);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  StrUtils, IniFiles, UnitFuncoes, wrFuncoes, CadVendaFrameNotaFiscal, CadNotaFiscal, NFe, Classes.WR,
  SATImprimirCancelamento, Frame_CadVenda_Mestre;

const
  DECIMAIS_SAT_PRECO = 2; //Quantidade de casas decimais fixa para o SAT. Pode aceitar até 3 caso seja Combustível, caso contrário, sempre 2.
  DECIMAIS_SAT_QUANT = 2;

{ TDMSat }

class procedure TDMSat.GerarCFeSAT(const AVenda, AVendaProduto, AVendaFinanceiro, ANotaFiscal: TDataSet);
var
  ADM: TDMSat;
begin
  ADM := TDMSat.Create(nil);
  try
    ADM.InternalGerarCFeSAT(AVenda, AVendaProduto, AVendaFinanceiro, ANotaFiscal);
  finally
    ADM.Free;
  end;
end;

function TDMSat.GetAmbiente(const AAmbiente: string): TpcnTipoAmbiente;
var
  AOk: Boolean;
begin
  Result := StrToTpAmb(AOk, AAmbiente);
  if AOk then
    Exit;
  if AnsiMatchText(AAmbiente, ['Producao', 'Produção']) then
    Result := taProducao
  else
    Result := taHomologacao;
end;

function TDMSat.GetAssinaturaAC: string;
begin
  Result := TConfig.ReadString('SAT_ASSINATURA_AC');
  if Trim(Result) = '' then
    ShowMessageWR('A Assinatura Digital (Código de Vinculação de CNPJs) não foi definida na configuração do SAT. Abra ' +
                  'o Instalador e informe este código.');
end;

function TDMSat.GetCodigoAtivacao: string;
begin
  Result := TConfig.ReadString('SAT_CODIGO_ATIVACAO');
  if Trim(Result) = '' then
    ShowMessageWR('O Código de Ativação do SAT não foi definido na configuração do SAT. Abra o Instalador e informe ' +
                  'este código.');
end;

function TDMSat.GetCodEAN(const ACodFabrica: string): string;
begin
//    if ACodFabrica.Length in [] then
  Result := ACodFabrica; //Tratar este código futuramente
end;

function TDMSat.GetIndRatISSQN(const AindRatISSQN: string): TpcnindRatISSQN;
var
  AOk : Boolean;
begin
  Result := StrToindRatISSQN(AOk, AindRatISSQN);
  if AOk then
    Exit;
  if AnsiSameText(AindRatISSQN, 'S') then
    Result := irSim
  else
    Result := irNao;
end;

function TDMSat.GetIndRegra(const AIndRegra: string): TpcnindRegra;
begin
  if AIndRegra.ToUpper = 'A' then
    Result := irArredondamento
  else
    Result := irTruncamento;
end;

function TDMSat.GetMeioPagto(const AListaMeioPagtos: TMPCollection; const ATipoPagto: string): TMPCollectionItem;
var
  i: Integer;
  AMeioPagto: TpcnCodigoMP;
begin
  Result := nil;
  AMeioPagto := GetTipoPagto(ATipoPagto);
  for I := 0 to AListaMeioPagtos.Count - 1 do
  begin
    if AListaMeioPagtos[i].cMP = AMeioPagto then
    begin
      Result := AListaMeioPagtos[i];
      Exit;
    end;
  end;
  if Result = nil then
  begin
    Result := AListaMeioPagtos.Add;
    Result.cMP := AMeioPagto;
    Result.vMP := 0;
    if AMeioPagto in [mpCartaodeCredito, mpCartaodeDebito] then
      Result.cAdmC := 999; //Código da credenciadora do cartão - 999 = Outros
  end;
end;

function TDMSat.GetRegimeTributario(const ARegTrib: string): TpcnRegTrib;
var
  AOk: Boolean;
begin
  Result := StrToRegTrib(AOk, ARegTrib);
  if AOk then
    Exit;
  if AnsiSameText(ARegTrib, 'Regime Normal') then
    Result := RTRegimeNormal
  else
    Result := RTSimplesNacional;
end;

function TDMSat.GetRegimeTributarioISSQN(const ARegTrib: string): TpcnRegTribISSQN;
var
  AOk: Boolean;
begin
  Result := StrToRegTribISSQN(AOk, ARegTrib);
  if AOk then
    Exit;
  if AnsiSameText(ARegTrib, 'MicroempresaMunicipal') then
    Result := RTISSMicroempresaMunicipal
  else if AnsiSameText(ARegTrib, 'Estimativa') then
    Result := RTISSEstimativa
  else if AnsiSameText(ARegTrib, 'SociedadeProfissionais') then
    Result := RTISSSociedadeProfissionais
  else if AnsiSameText(ARegTrib, 'Cooperativa') then
    Result := RTISSCooperativa
  else if AnsiSameText(ARegTrib, 'MEI') then
    Result := RTISSMEI
  else if AnsiSameText(ARegTrib, 'MEEPP') then
    Result := RTISSMEEPP
  else
    Result := RTISSNenhum;
end;

function TDMSat.GetTipoPagto(const ATipoPagto: string): TpcnCodigoMP;
begin
  if ATipoPagto.ToUpper = 'CHEQUE' then
    Result := mpCheque
  else if AnsiStartsText('CART', ATipoPagto) then
    Result := mpCartaodeCredito
  else if AnsiStartsText('CREDI', ATipoPagto) then
    Result := mpCreditoLoja
  else
    Result := mpDinheiro;
end;

procedure TDMSat.GravaXMLCancelamentoCFeSATNoBanco(const ACodVenda: string);
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  QuerX   := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select * ' +
                      'from NOTA_FISCAL ' +
                      'where (CODIGO is null)';
    QuerX.Open;
    QuerX.Insert;
    QuerX.FieldByName('CODIGO').AsInteger          := Trunc(GetProximoCodigoGen('CR_NOTA_FISCAL'));
    QuerX.FieldByName('NF_DT_EMISSAO').AsDateTime  := ACBrSAT.CFeCanc.Ide.dEmi;
    QuerX.FieldByName('NF_AMBIENTE').AsString      := TpAmbToStr(ACBrSAT.CFe.Ide.tpAmb);
    QuerX.FieldByName('NF_NUMERO').AsInteger       := ACBrSAT.CFeCanc.Ide.nCFe;
    QuerX.FieldByName('NF_CHAVE').AsString         := ACBrSAT.CFe.infCFe.ID; //A chave deve ser a da Nota, não a do Cancelamento. Este último fica só no XML.
//    NotaFiscalNF_PROTOCOLO.AsString     := procNFe.nProt;
//    NotaFiscalNF_RAZAOSOCIAL.AsString   := Dest.xNome;
//    NotaFiscalNF_MOTIVO_STATUS.AsString := procNFe.xMotivo;
//    NotaFiscalNF_CSTAT.AsInteger        := procNFe.cStat;
    QuerX.FieldByName('NF_TIPO').AsString          := '1'; //Saída
    QuerX.FieldByName('NF_NATUREZA_OPERACAO').AsString := 'VENDA';
    QuerX.FieldByName('NF_SITUACAO').AsString      := 'Cancelada';
    QuerX.FieldByName('CODVENDA').AsString         := ACodVenda;
    QuerX.FieldByName('CODEMPRESA').AsInteger      := Empresa.FieldByName('CODIGO').AsInteger;
    QuerX.FieldByName('TIPO').AsString             := NotaFiscalTipoRegistroToStr(nftrSATCancelamento);

    QuerX.FieldByName('NF_DT_CANCELAMENTO').AsDateTime := ACBrSAT.CFeCanc.infCFe.dEmi;
//    NotaFiscalNF_CSTAT.AsInteger            := ret;
//    NotaFiscalMOTIVO_CANCELAMENTO.AsString  := MotivoCancelamento;

    QuerX.FieldByName('ARQUIVO_XML').AsString := ACBrSAT.CFeCanc.AsXMLString;
    QuerX.Post;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

function TDMSat.GravaXMLCFeSATNoBanco(const ACodVenda: string): Integer;
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  Result := 0;
  if (ACBrSAT.CFe.Ide.nCFe = 0) then
    Exit;

  ATransa := GeraFDTransacao;
  QuerX   := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select * ' +
                      'from NOTA_FISCAL ' +
                      'where (NF_CHAVE = :Chave)' +
                      '      and (NF_MODELO = :Modelo)' +
                      '      and (NF_AMBIENTE = :Ambiente)';
    QuerX.ParamByName('Chave').AsString    := TFrmNFe.TrataChaveNF(ACBrSAT.CFe.infCFe.ID);
    QuerX.ParamByName('Modelo').AsInteger  := ACBrSAT.CFe.Ide.modelo;
    QuerX.ParamByName('Ambiente').AsString := TpAmbToStr(ACBrSAT.CFe.Ide.tpAmb);
    QuerX.Open;
    if QuerX.IsEmpty then
    begin
      QuerX.Insert;
      QuerX.FieldByName('CODIGO').AsInteger := GetProximoCodigoSP('NOTA_FISCAL');
    end else
      QuerX.Edit;
    PreencheDadosNF(QuerX, ACBrSAT, ACodVenda);
    QuerX.Post;
    Result := QuerX.FieldByName('CODIGO').AsInteger;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

class procedure TDMSat.ImprimirNota(const ACodigo: Integer; ATipoAbertura: TNotaFiscalTipoAbertura);
var
  ADM: TDMSat;
  AImprimirCancelamento: Boolean;
begin
  ADM := TDMSat.Create(nil);
  try
    AImprimirCancelamento := False;
    ADM.CarregarNota(ACodigo);
    if ADM.ACBrSAT.CFeCanc.infCFe.ID <> '' then
    begin
      if not TFrmSATImprimir.Abrir(AImprimirCancelamento) then
        Exit;
    end;
    ADM.InternalImprimirNota([ATipoAbertura], AImprimirCancelamento);
  finally
    ADM.Free;
  end;
end;

procedure TDMSat.InternalCancelarVendaPelaNotaFiscal(const ANotaFiscal: TDataSet; const ACodVenda: string);
begin
  if ANotaFiscal.IsEmpty then
  begin
    ShowMessageWR('Nota Fiscal não encontrada.');
    Exit;
  end;
  ACBrSAT.CFe.AsXMLString := ANotaFiscal.FieldByName('ARQUIVO_XML').AsString;
  ACBrSAT.CancelarUltimaVenda;
  if ACBrSAT.Resposta.codigoDeRetorno = 7000 then
  begin
    GravaXMLCancelamentoCFeSATNoBanco(ACodVenda);
    ANotaFiscal.FieldByName('NF_SITUACAO').AsString          := 'Cancelada';
    ANotaFiscal.FieldByName('NF_DT_CANCELAMENTO').AsDateTime := ACBrSAT.CFeCanc.ide.dEmi;
    InternalImprimirNota([anVisualizar, anSalvarPDF], True);
  end else
    GeraExcecao('Problema no cancelamento do CFeSAT' + sLineBreak +
                'Código do Erro: ' + ACBrSAT.Resposta.codigoDeErro.ToString + sLineBreak +
                'Código de Retorno: ' + ACBrSAT.Resposta.codigoDeRetorno.ToString + sLineBreak +
                'Mensagem: ' + ACBrSAT.Resposta.mensagemRetorno);
end;

procedure TDMSat.InternalGerarCFeSAT(const AVenda, AVendaProduto, AVendaFinanceiro, ANotaFiscal: TDataSet);
var
  ATotalItem: Double;
  I: Integer;
  ATotalProdutos, ATotalImpostoAprox: Double;
//  QuerX: TIBQuery;
  AMeioPagto : TMPCollectionItem;
  AOk: Boolean;
  AMsgErro: string;
begin
  AlteraDataSet(AVenda);
  //Limpa dados de CFe em cache
  ACBrSAT.InicializaCFe;
  //Monta a Venda
  with ACBrSAT.CFe do
  begin
    ide.numeroCaixa := 1;

    Dest.CNPJCPF := Procura('CNPJCPF', 'PESSOAS', AVenda.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
    Dest.xNome   := AVenda.FieldByName('RAZAOSOCIAL').AsString;

    //Endereço de Entrega
    Entrega.xLgr    := AVenda.FieldByName('ENDERECO_ENTREGA').AsString;
    Entrega.nro     := AVenda.FieldByName('NUMERO_ENTREGA').AsString;
    Entrega.xCpl    := AVenda.FieldByName('COMPLEMENTO_ENTREGA').AsString;
    Entrega.xBairro := AVenda.FieldByName('BAIRRO_ENTREGA').AsString;
    Entrega.xMun    := Procura('DESCRICAO', 'CIDADES', AVenda.FieldByName('CODCIDADE_ENTREGA').AsString);
    Entrega.UF      := AVenda.FieldByName('UF_ENTREGA').AsString;

    ATotalProdutos     := 0;
    ATotalImpostoAprox := 0;
    AVendaProduto.First;
    while not AVendaProduto.Eof do
    begin
      //Garante que não vai incluir itens de composição no SAT
      if not AVendaProduto.FieldByName('PARENT').IsNull then
      begin
        AVendaProduto.Next;
        Continue;
      end;

      with Det.Add do
      begin
        nItem         := AVendaProduto.FieldByName('Sequencia').AsInteger;
        Prod.cProd    := AVendaProduto.FieldByName('CODPRODUTO').AsString;
        Prod.cEAN     := GetCodEAN(AVendaProduto.FieldByName('CODFABRICA').AsString);
        Prod.xProd    := AVendaProduto.FieldByName('DESCRICAO').AsString;
        Prod.NCM      := AVendaProduto.FieldByName('CODNF_NCM').AsString;
        Prod.CFOP     := AVendaProduto.FieldByName('CODNF_CFOP').AsString;
        Prod.uCom     := AVendaProduto.FieldByName('UNIDADE').AsString;
        Prod.indRegra := GetIndRegra(Procura('TEM_IAT', 'PRODUTO', AVendaProduto.FieldByName('CODPRODUTO').AsString));
        Prod.qCom     := AVendaProduto.FieldByName('QUANT').AsFloat;
        Prod.vUnCom   := AVendaProduto.FieldByName('VALOR').AsFloat;
        Prod.vDesc    := AVendaProduto.FieldByName('VDESC').AsFloat;
        Prod.vOutro   := AVendaProduto.FieldByName('VOUTRO').AsFloat;

        {with Prod.obsFiscoDet.Add do
        begin
          xCampoDet := 'campo';
          xTextoDet := 'texto';
        end;}

        with Imposto do
        begin
          with ICMS do
          begin
            if ACBrSAT.Config.emit_cRegTrib = RTRegimeNormal then
            begin
              ICMS.orig := StrToOrig(AOk, Trim(Copy(AVendaProduto.FieldByName('CODNF_CST').AsString, 1, 1)));
              CST   := StrToCSTICMS(AOk, AVendaProduto.FieldByName('CODNF_CST').AsString);// cst00;
              pICMS := AVendaProduto.FieldByName('PICMS').AsFloat;
            end else
            begin
              ICMS.orig := StrToOrig(AOk, Trim(Copy(AVendaProduto.FieldByName('CODNF_CST').AsString, 1, 1)));
              CSOSN := StrToCSOSNIcms(AOk, Trim(Copy(AVendaProduto.FieldByName('CODNF_CST').AsString, 2, 3)));
//              ACBrSAT1.CFe.Emit.cemit_cRegTrib = RTRegimeNormal
//              if CSOSN = StrToCSOSNIcms('101') then
//               CSOSN:=StrToCSOSNIcms(AOk,'102');
            end;
            //Estes dados são como está na Venda do Comercial, provavelmente aqui nunca será CSOSN 900
            {if CSOSN = csosn900 then
            begin
              pICMS := Venda_Produto.FieldByName('pICMS').AsFloat;
              vICMS := Venda_Produto.FieldByName('vICMS').AsFloat;
            end;}
          end;

          with PIS do
          begin
            //PIS não utilizado
            CST  := pis08;
            vBC  := 0;
            pPIS := 0;
          end;

          with COFINS do
          begin
            //COFINS não utilizado
            CST     := cof49;
            vBC     := 0;
            pCOFINS := 0;
          end;
        end;

        infAdProd := '';

        //Imposto Aproximado
        ATotalItem := (Prod.qCom * Prod.vUnCom);
        Imposto.vItem12741 := PercValor(ATotalItem, AVendaProduto.FieldByName('NF_ALIQ_ESTADUAL').AsFloat) +
                              PercValor(ATotalItem, AVendaProduto.FieldByName('NF_ALIQ_IMPORTACAO').AsFloat) +
                              PercValor(ATotalItem, AVendaProduto.FieldByName('NF_ALIQ_MUNICIPAL').AsFloat) +
                              PercValor(ATotalItem, AVendaProduto.FieldByName('NF_ALIQ_NACIONAL').AsFloat);

        ATotalProdutos     := ATotalProdutos     + ATotalItem;
        ATotalImpostoAprox := ATotalImpostoAprox + Imposto.vItem12741;
      end;
      AVendaProduto.Next;
    end;

    Total.DescAcrEntr.vDescSubtot  := AVenda.FieldByName('VDESC').AsFloat;
    Total.DescAcrEntr.vAcresSubtot := AVenda.FieldByName('VOUTRO').AsFloat;
    Total.vCFeLei12741             := ATotalImpostoAprox;

    //Financeiro da nota.
    //Os dados financeiros são gerados agrupados com o total em cada meio de pagamento
    AVendaFinanceiro.First;
    while not AVendaFinanceiro.Eof do
    begin
      AMeioPagto := GetMeioPagto(Pagto, AVendaFinanceiro.FieldByName('TIPOPAGTO').AsString);
      AMeioPagto.vMP := AMeioPagto.vMP + AVendaFinanceiro.FieldByName('VALOR').AsFloat;
      AVendaFinanceiro.Next;
    end;

//    with Pagto.Add do
//    begin
//      cMP   := mpCartaodeCredito;
//      vMP   := 50;
//      cAdmC := 999;
//    end;
  end;
//  ACBrSAT1.DesbloquearSAT;
//  if ACBrSAT1.DesbloquearSAT = '' then
//    raise Exception.Create('Error Message');
  try
    ACBrSAT.CFe.SaveToFile(GetDirSistema + 'nota_sat.xml');
  except end;
  ACBrSAT.EnviarDadosVenda;
  if ACBrSAT.Resposta.codigoDeRetorno = 6000 then
  begin
    AtualizarNotaNaVenda(AVenda, AVendaProduto);
    GravaXMLCFeSATNoBanco(AVenda.FieldByName('CODIGO').AsString);
    InternalImprimirNota([anVisualizar, anSalvarPDF], False);
  end else
  begin
    AMsgErro := MotivoInvalidoVenda(ACBrSAT.Resposta.codigoDeErro);
    ShowMessageWR(ACBrSAT.Resposta.codigoDeErro.ToString + ': ' + AMsgErro + ' - ' +
                  ACBrSAT.Resposta.mensagemRetorno + sLineBreak +
                  ACBrSAT.Resposta.mensagemSEFAZ, MB_ICONWARNING);
    Abort;
  end;
end;

procedure TDMSat.InternalImprimirNota(const ATiposAbertura: TNotaFiscalTipoAberturaSet; AImprimirCancelamento: Boolean);
var
  ACaminho: string;
begin
  if anVisualizar in ATiposAbertura then
  begin
    //Imprime o Extrato na Impressora do SAT
    ACBrSATExtratoFortes.Filtro        := fiNenhum;
    ACBrSATExtratoFortes.MostraPreview := FMostrarPreview;
    if AImprimirCancelamento then
      Self.ACBrSAT.ImprimirExtratoCancelamento
    else
      Self.ACBrSAT.ImprimirExtrato;
  end;

  if anSalvarPDF in ATiposAbertura then
  begin
    //Gera o PDF
    ACBrSATExtratoFortes.Filtro  := fiPDF;
    if AImprimirCancelamento then
      ACaminho := IncludeTrailingPathDelimiter(ACBrSAT.ConfigArquivos.PastaCFeVenda) + 'PDF\CFe ' + ACBrSAT.CFe.infCFe.ID + ' Cancelamento.pdf'
    else
      ACaminho := IncludeTrailingPathDelimiter(ACBrSAT.ConfigArquivos.PastaCFeVenda) + 'PDF\CFe ' + ACBrSAT.CFe.infCFe.ID + '.pdf';
    ACBrSATExtratoFortes.NomeDocumento := ACaminho;
    ForceDirectories(ExtractFilePath(ACaminho));
    if AImprimirCancelamento then
      Self.ACBrSAT.ImprimirExtratoCancelamento
    else
      Self.ACBrSAT.ImprimirExtrato;
  end;
end;

class procedure TDMSat.PreencheDadosNF(const ANotaFiscal: TDataSet; AACBrSAT: TACBrSAT; const ACodVenda: string);
begin
  ANotaFiscal.FieldByName('NF_DT_EMISSAO').AsDateTime  := AACBrSAT.CFe.Ide.dEmi;
  ANotaFiscal.FieldByName('NF_AMBIENTE').AsString      := TpAmbToStr(AACBrSAT.CFe.Ide.tpAmb);
  ANotaFiscal.FieldByName('NF_NUMERO').AsInteger       := AACBrSAT.CFe.Ide.nCFe;
  ANotaFiscal.FieldByName('NF_CHAVE').AsString         := AACBrSAT.CFe.infCFe.ID;
  ANotaFiscal.FieldByName('NF_RAZAOSOCIAL').AsString   := AACBrSAT.CFe.Dest.xNome;
//  ANotaFiscal.FieldByName('NF_CSTAT').AsInteger        := 100; //Confirmada
  ANotaFiscal.FieldByName('NF_TIPO').AsString          := '1'; //Saída
  ANotaFiscal.FieldByName('NF_NATUREZA_OPERACAO').AsString := 'VENDA';
  ANotaFiscal.FieldByName('NF_SITUACAO').AsString      := 'Confirmada';
  ANotaFiscal.FieldByName('CODVENDA').AsString         := ACodVenda;
  ANotaFiscal.FieldByName('CODEMPRESA').AsInteger      := Empresa.FieldByName('CODIGO').AsInteger;
  ANotaFiscal.FieldByName('TIPO').AsString             := NotaFiscalTipoRegistroToStr(nftrSAT);
  ANotaFiscal.FieldByName('ARQUIVO_XML').AsString      := AACBrSAT.CFe.AsXMLString;
end;

procedure TDMSat.ACBrSATGetcodigoDeAtivacao(var Chave: AnsiString);
begin
  Chave := GetCodigoAtivacao;
end;

procedure TDMSat.ACBrSATGetsignAC(var Chave: AnsiString);
begin
  Chave := GetAssinaturaAC;
end;

procedure TDMSat.ACBrSATGravarLog(const ALogLine: string; var Tratado: Boolean);
begin
  if FFormStatus = nil then
    FFormStatus := TfrmStatus.Create(Self);
  FFormStatus.lblStatus.Caption := ALogLine;
  FFormStatus.Show;
  FFormStatus.BringToFront;
end;

procedure TDMSat.AtualizarNotaNaVenda(const AVenda, AVendaProduto: TDataSet);
begin
  AVenda.FieldByName('NOTAFISCAL').AsInteger          := ACBrSAT.CFe.ide.nCFe;
  AVenda.FieldByName('NF_DT_EMISSAO').AsDateTime      := ACBrSAT.CFe.Ide.dEmi + ACBrSAT.CFe.Ide.hEmi;
//  AVenda.FieldByName('NF_DT_SAIDAENTRADA').AsDateTime := AACBrSAT.CFe.Ide.dSaiEnt;
  if AVenda.FieldByName('VENDA_TIPO').AsString = 'CUPOM' then
    AVenda.FieldByName('NF_NREF').AsString := AVenda.FieldByName('NOTAFISCAL').AsString;

  NotaFiscalVincularNotaVendaOriginal(WRGetTransacao(AVenda), AVenda.FieldByName('CODIGO').AsString,
    AVenda.FieldByName('NOTAFISCAL').AsLargeInt);      // LargeInt Fora do Padrão

  //Atualiza o status da nota de acordo com o cStat
  {Existe uma rotina TFrmNfe.GetCStatDescricao() que retorna essa descrição, mas algumas diferentes. Fazer o ajuste aqui
   para que use a mesma rotina}
  {case ANFe.NFe.procNFe.cStat of
    100: AVenda.FieldByName('NF_STATUS').AsString := 'Confirmada';
    110: AVenda.FieldByName('NF_STATUS').AsString := 'Denegada';
    150: AVenda.FieldByName('NF_STATUS').AsString := 'Confirmada fora do prazo';
  end;}

  TFrmNotaFiscal.AtualizaNrNfNoFinanceiro(AVenda.FieldByName('NOTAFISCAL').AsLargeInt,      // LargeInt Fora do Padrão
    AVenda.FieldByName('CODIGO').AsString, EmpresaAtiva, AVenda.FieldByName('VENDA_TIPO').AsString, WRGetTransacao(AVenda));
  TFrame_Venda_Mestre.AtualizaSTATUSVendaPrincipal(AVenda, AVendaProduto, tsfNota);
end;

class procedure TDMSat.CancelarVendaPelaNotaFiscal(const ACodigo: Integer; const ACodVenda: string);
var
  ADM: TDMSat;
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  ADM := TDMSat.Create(nil);
  try
    QuerX.SQL.Text := 'select * ' +
                      'from NOTA_FISCAL ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := ACodigo;
    QuerX.Open;
    QuerX.Edit;
    ADM.InternalCancelarVendaPelaNotaFiscal(QuerX, ACodVenda);
    QuerX.Post;

    ATransa.Commit;
  finally
    ADM.Free;
    QuerX.Free;
    ATransa.Free;
  end;
end;

procedure TDMSat.CarregarNota(const ACodigo: Integer);
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQueryFast;
  try
    QuerX.SQL.Text := 'select NF.ARQUIVO_XML, NFC.ARQUIVO_XML as XML_CANCELAMENTO ' +
                      'from NOTA_FISCAL NF ' +
                      'left join NOTA_FISCAL NFC on (NFC.TIPO = :Tipo) and (NF.NF_CHAVE = NFC.NF_CHAVE) ' +
                      'where (NF.CODIGO = :Cod)';
    QuerX.ParamByName('Tipo').AsString := NotaFiscalTipoRegistroToStr(nftrSATCancelamento);
    QuerX.ParamByName('Cod').AsInteger := ACodigo;
    QuerX.Open;
    DoCarregarNota(QuerX);
  finally
    QuerX.Free;
  end;
end;

procedure TDMSat.DoCarregarNota(const ANotaFiscal: TDataSet);
begin
  ACBrSAT.CFe.AsXMLString     := ANotaFiscal.FieldByName('ARQUIVO_XML').AsString;
  ACBrSAT.CFeCanc.AsXMLString := ANotaFiscal.FieldByName('XML_CANCELAMENTO').AsString;
end;

procedure TDMSat.ConfiguraComponenteSAT;
var
  AIni: TIniFile;
begin
  AIni := TIniFile.Create(GetDirSistema + 'WR2.ini');
  try
    ACBrSAT.Modelo  := TACBrSATModelo(AIni.ReadInteger('SAT', 'Modelo', 2));
    ACBrSAT.ArqLOG  := 'ACBrSAT.log';
    ACBrSAT.NomeDLL := AIni.ReadString('SAT', 'NomeDLL', 'C:\SAT\SAT.dll');
    ACBrSAT.Config.ide_numeroCaixa       := AIni.ReadInteger('SAT', 'NumeroCaixa', 1);
    ACBrSAT.Config.ide_tpAmb             := GetAmbiente(AIni.ReadString('SAT', 'Ambiente', 'Homologacao'));

    if AIni.ReadBool('SAT', 'UsandoEmulador', False) then
    begin
      //Dados exigidos pelo emulador do SAT
      ACBrSAT.Config.ide_CNPJ  := '11111111111111';
      ACBrSAT.Config.emit_CNPJ := '11111111111111';
      ACBrSAT.Config.emit_IE   := '111111111111';
      ACBrSAT.Config.emit_IM   := '123123';
    end else
    begin
      ACBrSAT.Config.ide_CNPJ  := '08.061.860/0001-47'; //CNPJ Fixo da WR2 Sistemas
      ACBrSAT.Config.emit_CNPJ := Empresa.FieldByName('CNPJCPF').AsString;
      ACBrSAT.Config.emit_IE   := Empresa.FieldByName('INSCIDENT').AsString;
      ACBrSAT.Config.emit_IM   := Empresa.FieldByName('IM').AsString;
    end;

    ACBrSAT.Config.emit_cRegTrib         := GetRegimeTributario(Empresa.FieldByName('CRT').AsString);
    ACBrSAT.Config.emit_cRegTribISSQN    := GetRegimeTributarioISSQN(AIni.ReadString('SAT', 'CRTISSQN ', ''));
    ACBrSAT.Config.emit_indRatISSQN      := GetIndRatISSQN(AIni.ReadString('SAT', 'RatISSQN ', ''));
    ACBrSAT.Config.PaginaDeCodigo        := AIni.ReadInteger('SAT', 'PaginaDeCodigo', 65001);
    ACBrSAT.Config.EhUTF8                := AIni.ReadBool('SAT', 'EhUTF8', True);
    ACBrSAT.Config.infCFe_versaoDadosEnt := AIni.ReadFloat('SAT', 'VersaoDadosEnt', 0.07);

    ACBrSAT.ConfigArquivos.SalvarCFe      := True;
    ACBrSAT.ConfigArquivos.SalvarCFeCanc  := True;
    ACBrSAT.ConfigArquivos.SalvarEnvio    := True;
    ACBrSAT.ConfigArquivos.SepararPorCNPJ := True;
    ACBrSAT.ConfigArquivos.SepararPorMes  := True;
    ACBrSAT.ConfigArquivos.PastaCFeVenda  := GetDirSistema + 'CFeSAT\Notas\Vendas';
    ACBrSAT.ConfigArquivos.PastaCFeCancelamento := GetDirSistema + 'CFeSAT\Notas\Canceladas';

    if FileExists(GetDirSistema + 'Logo.jpg') then
      ACBrSATExtratoFortes.PictureLogo.LoadFromFile(GetDirSistema + 'Logo.jpg');
    ACBrSATExtratoFortes.LarguraBobina    := AIni.ReadInteger('SAT', 'LarguraBobina', 302);
    ACBrSATExtratoFortes.MargemDireita    := AIni.ReadInteger('SAT', 'MargemDireita', 2);
    ACBrSATExtratoFortes.MargemEsquerda   := AIni.ReadInteger('SAT', 'MargemEsquerda ', 2);
    ACBrSATExtratoFortes.MargemInferior   := AIni.ReadInteger('SAT', 'MargemFundo', 4);
    ACBrSATExtratoFortes.MargemSuperior   := AIni.ReadInteger('SAT', 'MargemTopo ', 2);
    ACBrSATExtratoFortes.CasasDecimais.MaskqCom   := AIni.ReadString('SAT', 'FormatacaoQuantCom ', '0.0000');
    ACBrSATExtratoFortes.CasasDecimais.MaskvUnCom := AIni.ReadString('SAT', 'FormatacaoValUnCom ', '0.000');

    FMostrarPreview := AIni.ReadBool('SAT', 'MostrarPreview', True);

    ACBrSAT.Inicializado := True;

    ACBrSAT.CFe.IdentarXML := True;
    ACBrSAT.CFe.TamanhoIdentacao := 3;
  finally
    AIni.Free;
  end;
end;

procedure TDMSat.DataModuleCreate(Sender: TObject);
begin
  ConfiguraComponenteSAT;
end;

end.

