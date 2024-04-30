unit wrIntegracaoTEC;

interface
uses
  FireDAC.Comp.Client;

type
  TConsultaTECPanel = class
  private
    class var FCaminhoConsultaTEC : string;
  public
    class function ConsutaTECPanel(Tipo : boolean; Codigo : string; Transacao : TFDTransaction) : Boolean;
    class function ProcessaRetornoConsutaTECVendaeCondicional(Tipo : boolean; Codigo : string; Transacao : TFDTransaction) : Boolean;
    class function GerarXMLConsultaTECVendaeCondicional(Tipo : boolean; Codigo : string; Transacao : TFDTransaction) :Boolean;
    class function ConverteData(AData: String) : TDateTime;
  end;

implementation

uses
  Windows, Classes, Forms, SysUtils, DB, Generics.Collections, dxServerModeData, wrFuncoes, ACBrUtil, DateUtils,
  XMLDoc, XMLDom, XMLIntf, StrUtils, Cad, Classes.WR, UnitFuncoes;

//Existe esse mesma rotina no CadPessoas para a consulta de Cliente e Agência, qualquer alteração aqui, verificar se não
//será necessário alterar lá também.
class function TConsultaTECPanel.ConsutaTECPanel(Tipo : boolean; Codigo : string; Transacao : TFDTransaction) : Boolean;
var
  ADataInicio     : TDateTime;
  ATipo, AGeraXML : boolean;
  ACodigo         : string;
begin
  inherited;
  ATipo   := Tipo;
  ACodigo := Codigo;

  AGeraXML := TConsultaTECPanel.GerarXMLConsultaTECVendaeCondicional(ATipo, ACodigo, Transacao);
  if not AGeraXML then
  begin
    Exit;
  end;
  ADataInicio := now;


  FCaminhoConsultaTEC := TConfig.ReadString('CONSULTA_TEC_CAMINHO_ARQUIVO');

  while true do
  begin
    result := false;
    if (FilesExists(FCaminhoConsultaTEC + 'TEC.RET.xml')) and (not (FilesExists(FCaminhoConsultaTEC + 'TEC.ENV.xml'))) then // and (SecondsBetween(now, ADataInicio) <= 60) then
    begin
      result := TConsultaTECPanel.ProcessaRetornoConsutaTECVendaeCondicional(ATipo, ACodigo, Transacao);
      DeleteFile(FCaminhoConsultaTEC + 'TEC.RET.xml');
      Break;
    end else
    begin
      sleep(240);
      Application.ProcessMessages;
    end;
  end;
end;

class function TConsultaTECPanel.GerarXMLConsultaTECVendaeCondicional(Tipo : boolean; Codigo : string; Transacao : TFDTransaction) : Boolean;
var
  AXML: TXMLDocument;
  NodeRoot, Nodecabecalho, Nodesolicitacao, NoderotinaVND, NoderotinaVNDCliente, NoderotinaVNDAgencia,
  NoderotinaVNDPagamento, NoderotinaVNDPagamentoParcela, NoderotinaVNDPagamentoTotal, NoderotinaVNDVendas,
  NoderotinaVNDVendasVenda, NoderotinaVNDTotal, NoderotinaVNDTotalVendas: IXMLNode;
  QuerX, QuerCidade, QuerAgencia, QuerSequencia : TFDQuery;
  AIdentificacao, CodCidade, ACodSoftwareHouse : integer;
  AEmprestar, ADevolver, AFaturar : double;
  ADataAtual : TDateTime;
begin
  AXML := TXMLDocument.Create(Application);
  try
    ADataAtual     := DataHoraSys;
    AXML.DOMVendor := GetDOMVendor('MSXML');
    AXML.Options   := [doNodeAutoIndent, doNodeAutoCreate, doAttrNull, doAutoPrefix, doNamespaceDecl];
    AXML.XML.Clear;
    AXML.Active    := True;
    AXML.CreateElement('xml', '');
    AXML.Version   := '1.0';
    AXML.Encoding  := 'UTF-8';
    NodeRoot := AXML.AddChild('tec');

    FCaminhoConsultaTEC := TConfig.ReadString('CONSULTA_TEC_CAMINHO_ARQUIVO');

    FCaminhoConsultaTEC := TConfig.ReadString('CONSULTA_TEC_CAMINHO_ARQUIVO');
    if FilesExists(FCaminhoConsultaTEC + 'TEC.RET.xml') then
      DeleteFile(FCaminhoConsultaTEC + 'TEC.RET.xml');

    AIdentificacao := Trunc(GetProximoCodigoGen('CR_CONSULTA_TEC', nil, False));

    Nodecabecalho := NodeRoot.AddChild('cabecalho');
      Nodecabecalho.AddChild('nVersaoLeiaute').NodeValue := TConfig.ReadString('CONSULTA_TEC_VERSAO_LAYOUT');
      Nodecabecalho.AddChild('nIdentificacao').NodeValue := AIdentificacao;
      Nodecabecalho.AddChild('nLojista').NodeValue       := TConfig.ReadString('CONSULTA_TEC_CODIGO_LOGISTA');
      QuerX := GeraFDQuery;
      try
        QuerX.SQL.Text   := 'select P.CNPJCPF as CNPJCPF ' +
                            'from USUARIO U ' +
                            'left join PESSOAS P on U.CODFUNCIONARIO = P.CODIGO ' +
                            'where U.CODIGO = :CodUsuario';
        QuerX.ParamByName('CodUsuario').AsInteger := Usuario.Codigo;
        QuerX.Open;
        Nodecabecalho.AddChild('cFuncionario').NodeValue := OnlyNumber(QuerX.FieldByName('CNPJCPF').Text);
      finally
        QuerX.Free;
      end;
      Nodecabecalho.AddChild('dData').NodeValue     := FormatDateTime('yyyy-MM-dd', (ADataAtual));
      Nodecabecalho.AddChild('xHora').NodeValue     := TimeOf(ADataAtual);
      Nodecabecalho.AddChild('nAmbiente').NodeValue := TConfig.ReadInteger('CONSULTA_TEC_AMBIENTE');
      //(mes * hora) + (Ano * Minuto)
      ACodSoftwareHouse := ((MonthOf(ADataAtual) * HourOf(ADataAtual)) +
                            (YearOf(ADataAtual) * MinuteOf(ADataAtual)));
      Nodecabecalho.AddChild('xSoftwareHouse').NodeValue := 'WR2.' + IntToStr(ACodSoftwareHouse);

    Nodesolicitacao  := NodeRoot.AddChild('solicitacao');
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'select P.* from PESSOAS P join VENDA V on P.CODIGO = V.PESSOA_RESPONSAVEL_CODIGO ' +
                        'where V.CODIGO = :Codigo';
      QuerX.ParamByName('Codigo').AsString := Codigo;
      QuerX.Open;
      if Tipo then
        NoderotinaVND := Nodesolicitacao.AddChild('rotinaVND')
      else
        NoderotinaVND := Nodesolicitacao.AddChild('rotinaCSG');

      NoderotinaVNDCliente := NoderotinaVND.AddChild('cliente');
        NoderotinaVNDCliente.AddChild('cCNPJCPF').NodeValue     := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
        NoderotinaVNDCliente.AddChild('xNome').NodeValue        := QuerX.FieldByName('RAZAOSOCIAL').AsString;
        NoderotinaVNDCliente.AddChild('xFantasia').NodeValue    := QuerX.FieldByName('FANTASIA').AsString;
        NoderotinaVNDCliente.AddChild('xLogradouro').NodeValue  := QuerX.FieldByName('ENDERECO').AsString;
        NoderotinaVNDCliente.AddChild('nNumero').NodeValue      := QuerX.FieldByName('NUMERO').AsString;
        NoderotinaVNDCliente.AddChild('xComplemento').NodeValue := QuerX.FieldByName('COMPLEMENTO').AsString;
        NoderotinaVNDCliente.AddChild('xBairro').NodeValue      := QuerX.FieldByName('BAIRRO').AsString;
        NoderotinaVNDCliente.AddChild('cMunicipio').NodeValue   := QuerX.FieldByName('CODCIDADE').AsString;
        CodCidade := QuerX.FieldByName('CODCIDADE').AsInteger;
        QuerCidade := GeraFDQuery;
        try
          QuerCidade.SQL.Text := 'select * from CIDADES C ' +
                                 'where C.CODIGO = :CodCidade';
          QuerCidade.ParamByName('CodCidade').AsInteger := CodCidade;
          QuerCidade.Open;
          NoderotinaVNDCliente.AddChild('xMunicipio').NodeValue := QuerCidade.FieldByName('DESCRICAO').AsString;
        finally
          QuerCidade.Free;
        end;
        NoderotinaVNDCliente.AddChild('cCEP').NodeValue      := OnlyNumber(QuerX.FieldByName('CEP').AsString);
        NoderotinaVNDCliente.AddChild('cUF').NodeValue       := QuerX.FieldByName('UF').AsString;
        NoderotinaVNDCliente.AddChild('xTelefone').NodeValue := PadLeft(OnlyNumber(QuerX.FieldByName('FONE1').AsString),10,'0');
        NoderotinaVNDCliente.AddChild('xCelular').NodeValue  := PadLeft(OnlyNumber(QuerX.FieldByName('FONE2').AsString),10,'0');

        if QuerX.FieldByName('EMAIL').AsString <> '' then
        begin
          NoderotinaVNDCliente.AddChild('xEmail').NodeValue := QuerX.FieldByName('EMAIL').AsString;
        end else
        begin
          ShowMessageWR('Cliente sem Email!' + sLineBreak + 'Localize o cadastro do Cliente informe o Email.', MB_ICONWARNING);
          result := false;
          Exit;
        end;

        NoderotinaVNDCliente.AddChild('cInscricaoEstadual').NodeValue  := QuerX.FieldByName('INSCIDENT').AsString;

        if QuerX.FieldByName('TIPO').AsString = 'J' then
        begin
          if QuerX.FieldByName('DATANASCIMENTO').AsString <> '' then
          begin
            NoderotinaVNDCliente.AddChild('dDataAberturaEmpresa').NodeValue := FormatDateTime('yyyy-MM-dd',QuerX.FieldByName('DATANASCIMENTO').AsDateTime);
          end else
          begin
            ShowMessageWR('Cliente sem Data de Abertura da Empresa!' + sLineBreak + 'Localize o cadastro do Cliente informe a Abertura da Empresa.', MB_ICONWARNING);
            result := false;
            Exit;
          end;
        end else
        begin
          NoderotinaVNDCliente.AddChild('dDataAberturaEmpresa').NodeValue := '';
        end;

        NoderotinaVNDCliente.AddChild('xNomeContato').NodeValue        := QuerX.FieldByName('CONTATO').AsString;
        NoderotinaVNDCliente.AddChild('cCPFContato').NodeValue         := '';
        NoderotinaVNDCliente.AddChild('dDataNascimento').NodeValue     := '';

      NoderotinaVNDAgencia := NoderotinaVND.AddChild('agencia');
      QuerAgencia := GeraFDQuery;
      Try
        QuerAgencia.SQL.Text := 'select P1.* from PESSOAS P1 ' +
                                'where P1.CODIGO = (select P.PESSOA_REPRESENTANTE_CODIGO ' +
                                'from PESSOAS P ' +
                                'where P.CODIGO = :CodPessoaAgencia)';
        QuerAgencia.ParamByName('CodPessoaAgencia').AsString := QuerX.FieldByName('CODIGO').AsString;
        QuerAgencia.Open;
        if QuerAgencia.FieldByName('REFERENCIA').AsString <> '' then
        begin
          NoderotinaVNDAgencia.AddChild('cCodigo').NodeValue := QuerAgencia.FieldByName('REFERENCIA').AsString;
        end else
        begin
          ShowMessageWR('Cliente sem Agência!' + sLineBreak + 'Localize o cadastro do Cliente informe a Agência', MB_ICONWARNING);
          result := false;
          Exit;
        end;
      Finally
        QuerAgencia.Free;
      end;
    finally
      QuerX.Free;
    end;

    if Tipo then
    begin
      NoderotinaVNDPagamento := NoderotinaVND.AddChild('pagamento');
      QuerX := GeraFDQuery;
      try
        QuerX.SQL.Text := 'select * from VENDA_FINANCEIRO VF ' +
                          'where VF.CODVENDA = :CodVenda';
        QuerX.ParamByName('CodVenda').AsString := Codigo;
        QuerX.Open;
        while not QuerX.Eof do
        begin
          NoderotinaVNDPagamentoParcela := NoderotinaVNDPagamento.AddChild('parcela');
          NoderotinaVNDPagamentoParcela.Attributes['nNumero'] := QuerX.FieldByName('PARCELA').AsString;
          if MatchStr(QuerX.FieldByName('TIPOPAGTO').AsString,['CHEQUE', 'CHEQUE-PRÉ']) then
          begin
            if (QuerX.FieldByName('CHEQUE_CODBANCO').AsString = '') or (QuerX.FieldByName('CHEQUE_NUMERO').AsString = '') then
            begin
              ShowMessageWR('Tipo de pagamento em Cheque.' + sLineBreak +
                            'É necessário informar o Código do Banco e o Número do Cheque.', MB_ICONWARNING);
              result := false;
              Exit;
            end else
            begin
              NoderotinaVNDPagamentoParcela.AddChild('cBanco').NodeValue  := PadLeft(QuerX.FieldByName('CHEQUE_CODBANCO').AsString,3,'0');
              NoderotinaVNDPagamentoParcela.AddChild('cCheque').NodeValue := PadLeft(QuerX.FieldByName('CHEQUE_NUMERO').AsString,6,'0');
            end;
          end else
          if MatchStr(QuerX.FieldByName('TIPOPAGTO').AsString, ['CARTÃO DE CRÉDITO', 'CARTÃO DE DÉBITO']) then
          begin
            NoderotinaVNDPagamentoParcela.AddChild('cBanco').NodeValue  := '999';
            NoderotinaVNDPagamentoParcela.AddChild('cCheque').NodeValue := '999999';
          end else
          begin
            NoderotinaVNDPagamentoParcela.AddChild('cBanco').NodeValue  := '000';
            NoderotinaVNDPagamentoParcela.AddChild('cCheque').NodeValue := '000000';
          end;
          NoderotinaVNDPagamentoParcela.AddChild('dVencimento').NodeValue := FormatDateTime('yyyy-MM-dd', (QuerX.FieldByName('VENCTO').AsDateTime));
          NoderotinaVNDPagamentoParcela.AddChild('vValor').NodeValue      := TrocaVirgPPto(FormatFloat('#######0.00', QuerX.FieldByName('VALOR').AsFloat));
          QuerX.Next;
        end;
      finally
        QuerX.Free;
      end;

      QuerX := GeraFDQuery;
      try
        QuerX.SQL.Text := 'select max(VF.PARCELA) as PARCELA, sum(VALOR) as VALOR ' +
                          'from VENDA_FINANCEIRO VF ' +
                          'where VF.CODVENDA = :CodVenda';
        QuerX.ParamByName('CodVenda').AsString := Codigo;
        QuerX.Open;
        NoderotinaVNDPagamentoTotal := NoderotinaVNDPagamento.AddChild('total');
            NoderotinaVNDPagamentoTotal.AddChild('nParcelas').NodeValue := QuerX.FieldByName('PARCELA').AsString;
            NoderotinaVNDPagamentoTotal.AddChild('vTotal').NodeValue    := TrocaVirgPPto(FormatFloat('#######0.00', QuerX.FieldByName('VALOR').AsFloat));
      finally
        QuerX.Free;
      end;
      QuerX := GeraFDQuery;
      try
        QuerX.SQL.Text := 'select * from VENDA V where V.CODIGO = :CodVenda';
        QuerX.ParamByName('CodVenda').AsString := Codigo;
        QuerX.Open;
        NoderotinaVNDVendas := NoderotinaVND.AddChild('vendas');
        NoderotinaVNDVendasVenda := NoderotinaVNDVendas.AddChild('venda');
        NoderotinaVNDVendasVenda.Attributes['nNumero'] := '1';
            NoderotinaVNDVendasVenda.AddChild('vTotal').NodeValue := TrocaVirgPPto(FormatFloat('#######0.00', QuerX.FieldByName('TOTAL').AsFloat));
        NoderotinaVNDTotalVendas := NoderotinaVNDVendas.AddChild('total');
            NoderotinaVNDTotalVendas.AddChild('nVendas').NodeValue := 1;
            NoderotinaVNDTotalVendas.AddChild('vTotal').NodeValue := TrocaVirgPPto(FormatFloat('#######0.00', QuerX.FieldByName('TOTAL').AsFloat));
      finally
        QuerX.Free;
      end;
    end
    else
    begin
      AEmprestar := 0;
      ADevolver  := 0;
      AFaturar   := 0;
      QuerX := GeraFDQuery;
      QuerSequencia := GeraFDQuery;
      try
        QuerX.SQL.Text := 'select * from VENDA_PRODUTO V where V.CODVENDA = :CodVenda';
        QuerX.ParamByName('CodVenda').AsString := Codigo;
        QuerX.Open;
        while not QuerX.Eof do
        begin
          if QuerX.FieldByName('QUANT').AsFloat > 0 then
          begin
            AEmprestar := AEmprestar + (QuerX.FieldByName('VALOR').AsFloat * Abs(QuerX.FieldByName('QUANT').AsFloat))
          end
          else
          begin
            ADevolver := ADevolver + (QuerX.FieldByName('VALOR').AsFloat * Abs(QuerX.FieldByName('QUANT').AsFloat));
          end;
          QuerX.Next;
        end;

        NoderotinaVNDPagamento := NoderotinaVND.AddChild('consignado');

        QuerSequencia.SQL.Text := 'select * from venda where codigo = :codigo';
        QuerSequencia.Params[0].AsString := Codigo;
        QuerSequencia.Open;
        NoderotinaVNDPagamento.AddChild('nNumero').NodeValue    := QuerSequencia.FieldByName('SEQUENCIA').AsString;

        if (ADevolver = 0) and (QuerSequencia.FieldByName('DT_FATURAMENTO').AsString = '') then
        begin
          NoderotinaVNDPagamento.AddChild('vEmprestar').NodeValue := TrocaVirgPPto(FormatFloat('#######0.00', AEmprestar));
          NoderotinaVNDPagamento.AddChild('vDevolver').NodeValue  := '0.00';
          NoderotinaVNDPagamento.AddChild('vFaturar').NodeValue   := '0.00';
        end else
        if (ADevolver > 0) and (QuerSequencia.FieldByName('DT_FATURAMENTO').AsString = '') then
        begin
          NoderotinaVNDPagamento.AddChild('vEmprestar').NodeValue := '0.00';
          NoderotinaVNDPagamento.AddChild('vDevolver').NodeValue  := TrocaVirgPPto(FormatFloat('#######0.00', ADevolver));
          NoderotinaVNDPagamento.AddChild('vFaturar').NodeValue   := '0.00';
        end else
        begin
          NoderotinaVNDPagamento.AddChild('vEmprestar').NodeValue := '0.00';
          NoderotinaVNDPagamento.AddChild('vDevolver').NodeValue  := '0.00';
          NoderotinaVNDPagamento.AddChild('vFaturar').NodeValue   := TrocaVirgPPto(FormatFloat('#######0.00', AEmprestar - ADevolver));
        end;
      finally
        QuerSequencia.Free;
        QuerX.Free;
      end;
    end;

    AXML.SaveToFile(FCaminhoConsultaTEC + 'TEC.ENV.tec'); //\\tsclient\C\TECDataSoft\TEC.tec');
    if FilesExists(FCaminhoConsultaTEC + 'TEC.ENV.xml') then
      DeleteFile(FCaminhoConsultaTEC + 'TEC.ENV.xml');
    RenameFile(FCaminhoConsultaTEC + 'TEC.ENV.tec', FCaminhoConsultaTEC + 'TEC.ENV.xml');
    result := true;
  finally
    AXML.Free;
  end;
end;


//################
class function TConsultaTECPanel.ProcessaRetornoConsutaTECVendaeCondicional(Tipo : boolean; Codigo : string; Transacao : TFDTransaction) : boolean;
var
  vXMLDoc: IXMLDocument;
  NodeRetorno, NodeRetornoCabecalho, NodeRetornoRotinaVND, NodeRetornoRotinaVNDVendas, NodeRetornoRotinaVNDVendasAutenticacao,
  NodeRetornoCondicional : IXMLNode;
  status : WideString;
  AResultado, AAutencicacao : string;
  QuerX : TFDQuery;
begin
  vXMLDoc := TXMLDocument.Create(nil);
  vXMLDoc.Active := true;
  try
    vXMLDoc.LoadFromFile(FCaminhoConsultaTEC + 'TEC.RET.xml'); //Le Arquivo  XML');
  except
    on E:Exception do
    begin
      if E.ClassName = 'EDOMParseError' then
        ShowMessageWR('Erro de leitura:' + sLineBreak + 'Arquivo XML de retorno esta vazio!', MB_ICONWARNING)
      else raise EWRException.Create(E.Message);
      Exit;
    end;
  end;

  NodeRetorno := vXMLDoc.DocumentElement.ChildNodes.FindNode('retorno');
  if NodeRetorno = nil then
  begin
    ShowMessageWR('Erro de Leitura:' + sLineBreak +
                  'Estrutura do Arquico XML de Retorno esta incorreto!' + sLineBreak +
                  'Tag <retorno> não encontrada!', MB_ICONWARNING);
    Exit;
  end;

  NodeRetornoCabecalho := NodeRetorno.ChildNodes.FindNode('cabecalho');

  status     := NodeRetornoCabecalho.ChildNodes['nStatus'].text;
  AResultado := NodeRetornoCabecalho.ChildNodes['xResultado'].text;

  if status = '0' then
  begin
    ShowMessageWR(AResultado, MB_ICONWARNING);
    result := false;
  end else
  begin
    if Tipo then
    begin
      NodeRetornoRotinaVND                   := NodeRetorno.ChildNodes.FindNode('rotinaVND');
      NodeRetornoRotinaVNDVendas             := NodeRetornoRotinaVND.ChildNodes.FindNode('vendas');
      NodeRetornoRotinaVNDVendasAutenticacao := NodeRetornoRotinaVNDVendas.ChildNodes.FindNode('autenticacao');
      AAutencicacao                          := NodeRetornoRotinaVNDVendasAutenticacao.ChildNodes['xAutenticacao'].Text;

      QuerX := GeraFDQuery(Transacao);
      try
        QuerX.SQL.Text := 'update VENDA V set V.AUTENTICACAO = :Autenticacao ' +
                          'where V.CODIGO = :CodVenda';
        QuerX.ParamByName('AUTENTICACAO').AsString := AAutencicacao;
        QuerX.ParamByName('CODVENDA').AsString     := Codigo;
        QuerX.ExecSQL;
      finally
        QuerX.Free;
      end;
      ShowMessageWR(AAutencicacao, MB_ICONWARNING);
    end else
    begin
      NodeRetornoCondicional := NodeRetorno.ChildNodes.FindNode('rotinaCSG');
      AAutencicacao          := NodeRetornoCondicional.ChildNodes['xAutenticacao'].Text;

      QuerX := GeraFDQuery(Transacao);
      try
        QuerX.SQL.Text := 'update VENDA V set V.AUTENTICACAO = :Autenticacao ' +
                          'where V.CODIGO = :CodVenda';
        QuerX.ParamByName('AUTENTICACAO').AsString := AAutencicacao;
        QuerX.ParamByName('CODVENDA').AsString     := Codigo;
        QuerX.ExecSQL;
      finally
        QuerX.Free;
      end;
      ShowMessageWR(AAutencicacao, MB_ICONWARNING);
    end;
    result := true;
  end;
end;

class function TConsultaTECPanel.ConverteData(AData : String) : TDateTime;
var
  AAno, ADia, AMes : word;
begin
  AAno := StrToInt(Copy(AData, 1, 4));
  ADia := StrToInt(Copy(AData, 9, 2));
  AMes := StrToInt(Copy(AData, 6, 2));

  result := EncodeDate(AAno, AMes, ADia);
end;

end.
