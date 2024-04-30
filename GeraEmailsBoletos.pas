unit GeraEmailsBoletos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxGroupBox, cxRadioGroup, cxTextEdit, dxLayoutContainer, cxMaskEdit,
  cxDropDownEdit, cxClasses, dxLayoutControl, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxLabel,
  cxButtonEdit, uControleWR, Vcl.ExtCtrls, FrFrameAnexosRateio, UCHistDataset, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, Classes.Financeiro, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Classes.Boletos;

type
  TFrmGeraEmailsBoletos = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    CbMes: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    CbAno: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    EdtNumeroRateio: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    RgAgruparPor: TcxRadioGroup;
    dxLayoutItem4: TdxLayoutItem;
    BtnGerarEmails: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    BtnCancelar: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    EdtEmailModelo: TcxButtonEdit;
    dxLayoutItem7: TdxLayoutItem;
    LblEmailModelo: TcxLabel;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    CbReferencia: TcxComboBox;
    Anexos: TFDQuery;
    DSAnexos: TDataSource;
    PnlAnexos: TPanel;
    AnexosCODIGO: TStringField;
    AnexosRAZAOSOCIAL: TStringField;
    dxLayoutGroup1: TdxLayoutGroup;
    UCHist_Cadastro: TUCHist_DataSet;
    procedure BtnGerarEmailsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdtEmailModeloKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtEmailModeloPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EdtEmailModeloPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FControleWR: TControleWR;
    FFrameAnexosRateio: TFrameAnexosRateio;
    FSelecao_Financeiro: TDataSet;
    function GetDataReferencia: TDate;
    procedure SetDataReferencia(const Value: TDate);
  public
    { Public declarations }
    property DataReferencia: TDate read GetDataReferencia write SetDataReferencia;

    class procedure AbrirFromFinanceiro(ADataReferencia: TDate; AIndexTipoData: Integer);
    class procedure AbrirFromSelecaoFinanceiro(ASelecao_Financeiro: TDataSet);
  end;

implementation

{$R *.dfm}

uses
  UnitFuncoes, System.Math, DateUtils, DataModuleBoletos, Aguarde, CadEmail_Massa,  wrFuncoes,
  Financeiro, ConEmail_Modelo, Principal, wrConversao, wrConstantes, wrForms,
  Utils.Boleto, Utils.Financeiro,
  Controller.Boleto;

class procedure TFrmGeraEmailsBoletos.AbrirFromSelecaoFinanceiro(ASelecao_Financeiro: TDataSet);
var
  AForm: TFrmGeraEmailsBoletos;
begin
  inherited;
  AForm := TFrmGeraEmailsBoletos.Create(nil);
  try
    AForm.FSelecao_Financeiro   := ASelecao_Financeiro;
    AForm.dxLayoutGroup1.Visible:= False;
    AForm.CbReferencia.Enabled  := False;
    AForm.ShowModal;
  finally
    AForm.Free;
  end;
end;

class procedure TFrmGeraEmailsBoletos.AbrirFromFinanceiro(ADataReferencia: TDate; AIndexTipoData: Integer);
var
  AForm: TFrmGeraEmailsBoletos;
begin
  inherited;
  AForm := TFrmGeraEmailsBoletos.Create(nil);
  try
    AForm.DataReferencia := ADataReferencia;
    case AIndexTipoData of
      0: AForm.CbReferencia.ItemIndex := AForm.CbReferencia.Properties.Items.IndexOfObject(TObject(ftdEmissao));
      1: AForm.CbReferencia.ItemIndex := AForm.CbReferencia.Properties.Items.IndexOfObject(TObject(ftdVencimento));
      2: AForm.CbReferencia.ItemIndex := AForm.CbReferencia.Properties.Items.IndexOfObject(TObject(ftdPagamento));
    end;
    AForm.ShowModal;
  finally
    AForm.Free;
  end;
end;

procedure TFrmGeraEmailsBoletos.BtnGerarEmailsClick(Sender: TObject);
var
  QuerX, QuerAnexos, QuerBoletos: TFDQuery;
  ADataSet : TDataSet;
  ADtVencto: TDate;
  AFrmAguarde: TFrmAguarde;
  ATransa: TFDTransaction;
  ACodEmailMassa, ACodModelo, I: Integer;
  AEmails: TListaBoletosEmail;
  AEmail: TBoletosEmail;
  ABoletoTagsMensagem: TBoletoTagsMensagem;
  ADescricao, ACaminho, AMsg: string;
  AListaPessoas: TStringList;
  AMemDados: TFDMemTable;
begin
  ACodModelo := StrToIntDef(EdtEmailModelo.Text, 0);
  if (ACodModelo <> 0) and (LblEmailModelo.Caption = '') then
  begin
    ShowMessageWR('Modelo de email inválido.');
    EdtEmailModelo.SetFocusWR;
    Exit;
  end;
  TFrameAnexosRateio.CarregaFrame1(FFrameAnexosRateio, PnlAnexos, DSAnexos, UCHist_Cadastro);

  QuerX := GeraFDQuery;
  ATransa := GeraFDTransacao;
  AEmails := TListaBoletosEmail.Create;
  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AFrmAguarde.Mensagem := 'Buscando boletos...';
    AFrmAguarde.Show;

    if Not CbReferencia.Enabled then
      ADataSet := FSelecao_Financeiro
    else begin
      QuerX.SQL.Text := 'select F.PESSOA_RESPONSAVEL_CODIGO, F.CODIGO, F.CODPEDIDO, F.CODEMPRESA, F.VENCTO, P.EMAIL, ' +
                        '       F.RAZAOSOCIAL, F.DOCUMENTO, F.BOLETO_NOSSO_NR, F.NOTAFISCAL, F.HISTORICO, F.VALOR, ' +
                        '       F.JUROS, F.DESCONTO, F.CODCONTA ' +
                        'from FINANCEIRO F ' +
                        'left join PESSOAS P on (F.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO) ' +
                        'where (F.TIPOPAGTO = ''BOLETO'') ' +
                        '      and (F.TIPO = ''A RECEBER'') ' +
                        '      and (F.STATUS like ''ATIVO%'') ' +
                        '      and (coalesce(F.BOLETO_NOSSO_NR, '''') <> '''') ' +
                        '      and (F.' + TFinanceiroTipoData(ComboBoxGetObjetoSelecionado(CbReferencia)).Campo + ' between :DtInicio and :DtFim)';
      if FrmPrincipal.Action_Rateio.Visible then
        QuerX.SQL.Add('and (P.ENVIA_RATEIO_EMAIL = ''S'')');
      QuerX.SQL.Add('order by F.PESSOA_RESPONSAVEL_CODIGO');

      ADtVencto := GetDataReferencia;
      QuerX.ParamByName('DtInicio').AsDateTime := StartOfTheMonth(ADtVencto);
      QuerX.ParamByName('DtFim').AsDateTime    := EndOfTheMonth(ADtVencto);
      QuerX.Open;
      QuerX.FetchAll;
      ADataSet:=QuerX;
    end;

    if ADataSet.IsEmpty then
    begin
      AFrmAguarde.Close;
      AMsg := 'Não foi encontrado nenhum boleto gerado no Financeiro dentro do período informado.';
      if FrmPrincipal.Action_Rateio.Visible then
        AMsg := AMsg + sLineBreak + 'Apenas pessoas marcadas para Enviar Rateio por Email estão sendo consideradas.';
      ShowMessageWR(AMsg, MB_ICONWARNING);
      Exit;
    end;

    //Monta os emails, agrupando quando necessário
    AFrmAguarde.Mensagem := 'Gerando Emails...';
    AFrmAguarde.ProgressoMaximo := ADataSet.RecordCount;
    ADataSet.First;
    while not ADataSet.Eof do
    begin
      AEmail := nil;
      case RgAgruparPor.ItemIndex of
        0: AEmail := AEmails.BuscaByResponsavel(ADataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
        1: AEmail := AEmails.BuscaByEmail(ADataSet.FieldByName('EMAIL').AsString);
      end;
      if AEmail = nil then
      begin
        AEmail := TBoletosEmail.Create;
        AEmail.Email     := ADataSet.FieldByName('EMAIL').AsString;
        AEmail.CodPessoa := ADataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
        AEmail.CodConta  := ADataSet.FieldByName('CODCONTA').AsInteger;
        AEmails.Add(AEmail);
      end;
      ACaminho := UtilsBoleto_GetNomeBoleto(ADataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
                                ADataSet.FieldByName('RAZAOSOCIAL').AsString,
                                ADataSet.FieldByName('BOLETO_NOSSO_NR').AsString,
                                ADataSet.FieldByName('DOCUMENTO').AsString);
      AEmail.PDFBoletos.Add(ACaminho);

      ABoletoTagsMensagem.Codigo      := ADataSet.FieldByName('CODIGO').AsInteger;
      ABoletoTagsMensagem.CodPedido   := ADataSet.FieldByName('CODPEDIDO').AsString;
      ABoletoTagsMensagem.CodEmpresa  := ADataSet.FieldByName('CODEMPRESA').AsString;
      ABoletoTagsMensagem.NotaFiscal  := ADataSet.FieldByName('NOTAFISCAL').AsString;
      ABoletoTagsMensagem.Documento   := ADataSet.FieldByName('DOCUMENTO').AsString;
      ABoletoTagsMensagem.NossoNumero := ADataSet.FieldByName('BOLETO_NOSSO_NR').AsString;
      ABoletoTagsMensagem.Historico   := ADataSet.FieldByName('HISTORICO').AsString;
      ABoletoTagsMensagem.Valor       := FormatFloat('###,###,##0.00', ADataSet.FieldByName('VALOR').AsCurrency + ADataSet.FieldByName('JUROS').AsCurrency - ADataSet.FieldByName('DESCONTO').AsCurrency);
      ABoletoTagsMensagem.Vencto      := FormatDateTime('DD/MM/YYYY', ADataSet.FieldByName('VENCTO').AsDateTime);

      AEmail.MensagemEmail.Add(ABoletoTagsMensagem);
      AFrmAguarde.AvancarProgresso;
      ADataSet.Next;
    end;

    AListaPessoas := TStringList.Create;
    try
      Anexos.Open;
      while not Anexos.Eof do
      begin
        AEmail := AEmails.BuscaByResponsavel(Anexos.FieldByName('CODIGO').AsString);
        if AEmail = nil then
          AListaPessoas.Add(AnexosCODIGO.AsString + ' - ' + AnexosRAZAOSOCIAL.AsString);
        Anexos.Next;
      end;
      if AListaPessoas.Count > 0 then
      begin
        AFrmAguarde.Close;

        if ShowMessageWR('As seguintes pessoas estão marcadas no cadastro para Enviar Rateio por Email, mas nenhum ' +
                         'boleto foi encontrado no período informado e estas pessoas não irão receber email ' +
                         'com os boletos.' + LineBreakWR(2) +
                          AListaPessoas.Text + LineBreakWR(2) +
                         'Deseja continuar?', MB_ICONQUESTION) <> mrYes then
          Exit;
        AFrmAguarde.Show;
      end;

      if EdtNumeroRateio.Text <> '' then
      begin
        FFrameAnexosRateio.Anexos.Open;
        Anexos.First;
        while not Anexos.Eof do
        begin
          AEmail := AEmails.BuscaByResponsavel(Anexos.FieldByName('CODIGO').AsString);
          if AEmail <> nil then
          begin
            FFrameAnexosRateio.FDArquivos.Close;
//            ADescricao := AnexosCODIGO.AsString + ' - Rateio_' + EdtNumeroRateio.Text + '.pdf';
            if not FFrameAnexosRateio.Anexos.Locate('CODTABELA;CODPESSOA;TIPO', VarArrayOf([EdtNumeroRateio.Text, AnexosCODIGO.AsString, 'ANEXO_RATEIO_ARQUIVOS']), []) then
              GeraExcecao('Arquivo PDF do Rateio "' + ADescricao + '" não encontrado para o associado ' + AnexosRAZAOSOCIAL.AsString);

            try
//              ACaminho := GetDirTemp + 'EmailMassa\' + AnexosCODIGO.AsString + '\' + ADescricao;
              ACaminho := FFrameAnexosRateio.BuscaCaminhoRateioOuExclusao(EdtNumeroRateio.Text, 'RATEIO') + FFrameAnexosRateio.Anexos.FieldByName('DESCRICAO').AsString;
              ForceDirectories(ExtractFilePath(ACaminho));
              FFrameAnexosRateio.FDArquivos.Open;
              FFrameAnexosRateio.FDArquivosARQUIVO.SaveToFile(ACaminho);
            except
              on E:Exception do
                GeraExcecao('Falha ao salvar o arquivo anexo: ' + ACaminho + LineBreakWR(2) +
                            'Pessoa: ' + AnexosRAZAOSOCIAL.AsString + LineBreakWR(2) +
                            'Erro: ' + E.Message);
            end;

            AEmail.PDFBoletos.Add(ACaminho);
          end;
          Anexos.Next;
        end;
      end;
    finally
      AListaPessoas.Free;
      FFrameAnexosRateio.Anexos.Close;
    end;

    //Gera o Email em Massa
    QuerBoletos := GeraFDQuery;
    try
      QuerBoletos.Name := 'Boletos';
      QuerBoletos.SQL.Text := 'select * ' +
                              'from BOLETOS ' +
                              'where (CODFINANCEIRO = :Codigo) ' +
                              '      and (CODPEDIDO = :CodPedido) ' +
                              '      and (CODEMPRESA = :CodEmpresa)';
      QuerX.Close;
      QuerX.Name := 'Financeiro'; //Prepara o DataSet para ser unificado no MemDados
      QuerX.SQL.Text := 'select * ' +
                        'from FINANCEIRO ' +
                        'where (CODIGO = :Codigo) ' +
                        '      and (CODPEDIDO = :CodPedido) ' +
                        '      and (CODEMPRESA = :CodEmpresa)';



      AFrmAguarde.ProgressoMaximo := AEmails.Count;
      AFrmAguarde.Progresso := 0;

      ADescricao := 'Boletos com vencimento em ' + PrimeirasMaiusculas(FormatDateTime('MMMM ''de'' YYYY', ADtVencto));
      ACodEmailMassa := TFrmEmail_Massa.NovoEmailMassa(ATransa, ADescricao, ACodModelo);
      for I := 0 to AEmails.Count - 1 do
      begin
        QuerX.Close;
        QuerX.ParamByName('Codigo').AsInteger    := AEmails[i].MensagemEmail[0].Codigo;
        QuerX.ParamByName('CodPedido').AsString  := AEmails[i].MensagemEmail[0].CodPedido;
        QuerX.ParamByName('CodEmpresa').AsString := AEmails[i].MensagemEmail[0].CodEmpresa;
        QuerX.Open;
//        ADescricao := 'Boletos com vencimento em ' + PrimeirasMaiusculas(FormatDateTime('MMMM ''de'' YYYY', QuerX.FieldByName('VENCTO').AsDateTime)); aqui gera assunto individual
        QuerBoletos.Close;
        QuerBoletos.ParamByName('Codigo').AsInteger    := AEmails[i].MensagemEmail[0].Codigo;
        QuerBoletos.ParamByName('CodPedido').AsString  := AEmails[i].MensagemEmail[0].CodPedido;
        QuerBoletos.ParamByName('CodEmpresa').AsString := AEmails[i].MensagemEmail[0].CodEmpresa;
        QuerBoletos.Open;
        AMemDados := ControllerBoleto_GeraMemDadosBoleto(AEmails[i], QuerX, QuerBoletos);
        try
          TFrmEmail_Massa.NovaMensagem(ATransa, ACodEmailMassa, AEmails[i].CodPessoa, AEmails[i].Email, ADescricao, '',
            AEmails[i].PDFBoletos, AMemDados);
        finally
          AMemDados.Free;
        end;
        AFrmAguarde.AvancarProgresso;
      end;
    finally
      QuerBoletos.Free;
    end;

    ATransa.Commit;
    AFrmAguarde.Close;
    CadastroModalChave(TFrmEmail_Massa, ACodEmailMassa);
  finally
    AFrmAguarde.Free;
    QuerX.Free;
    ATransa.Free;
    AEmails.Free;
  end;
  Close;
end;

procedure TFrmGeraEmailsBoletos.EdtEmailModeloKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F2 then
    EdtEmailModeloPropertiesButtonClick(nil, 0);
end;

procedure TFrmGeraEmailsBoletos.EdtEmailModeloPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  AForm: TConsuEmail_Modelo;
  ACod: Integer;
begin
  inherited;
  AForm := TConsuEmail_Modelo.Create(Self);
  try
    AForm.ActFiltroForm.Checked := False;
    AForm.Show;
    AguardaFormFechar(AForm);
    EdtEmailModelo.Text := Codigo;
  finally
    AForm.Free;
  end;
end;

procedure TFrmGeraEmailsBoletos.EdtEmailModeloPropertiesChange(Sender: TObject);
begin
  LblEmailModelo.Caption := Procura('DESCRICAO', 'EMAIL_MODELO', EdtEmailModelo.Text);
end;

procedure TFrmGeraEmailsBoletos.FormCreate(Sender: TObject);
var
  I: Integer;
  AData: TDate;
  ATipoData: TFinanceiroTipoData;
begin
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);

  CbMes.Properties.BeginUpdate;
  CbAno.Properties.BeginUpdate;
  CbReferencia.Properties.BeginUpdate;
  try
    CbReferencia.Properties.Items.Clear;
    for ATipoData := Low(TFinanceiroTipoData) to High(TFinanceiroTipoData) do
      CbReferencia.Properties.Items.AddObject(ATipoData.Descricao, TObject(ATipoData));
    CbReferencia.ItemIndex := CbReferencia.Properties.Items.IndexOfObject(TObject(ftdVencimento));

    CbMes.Properties.Items.Clear;
    for I := 1 to 12 do
      CbMes.Properties.Items.Add(MESES_NOMES[I]);

    AData := Now;
    CbAno.Properties.Items.Clear;
    for I := 5 downto 0 do
      CbAno.Properties.Items.Add(IntToStr(YearOf(AData) - I));

    CbMes.ItemIndex := MonthOf(AData) + 1;
    CbAno.Text      := YearOf(AData).ToString;
  finally
    CbMes.Properties.EndUpdate(False);
    CbAno.Properties.EndUpdate(False);
    CbReferencia.Properties.EndUpdate(False);
  end;
end;

procedure TFrmGeraEmailsBoletos.FormDestroy(Sender: TObject);
begin
  FControleWR.Free;
end;

function TFrmGeraEmailsBoletos.GetDataReferencia: TDate;
var
  AAno, AMes: Integer;
begin
  AAno := StrToIntDef(CbAno.Text, 0);
  AMes := CbMes.ItemIndex + 1;
  if not InRange(AMes, 1, 12) then
  begin
    GeraExcecao('Mês Inválido');
    CbMes.SetFocusWR;
  end;
  if not InRange(AAno, 1950, 2100) then
  begin
    GeraExcecao('Ano Inválido');
    CbAno.SetFocusWR;
  end;
  Result := EncodeDate(AAno, AMes, 1);
end;

procedure TFrmGeraEmailsBoletos.SetDataReferencia(const Value: TDate);
begin
  CbMes.ItemIndex := MonthOf(Value) - 1;
  CbAno.Text      := IntToStr(YearOf(Value));
end;

end.
