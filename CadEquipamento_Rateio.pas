unit CadEquipamento_Rateio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.DateUtils, System.Classes, Vcl.Graphics, System.Math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  System.Generics.Collections, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxLayoutContainer,
  cxLabel, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, cxDBData, cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxCheckBox,
  cxSpinEdit, cxButtonEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCurrencyEdit, Vcl.Samples.Spin, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Gradient, System.Actions,
  SysUtils, uWRFormataCamposDataSet, WRButtonsEditAdd, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations, dxUIAdorners;

type
  TFrmEquipamento_Rateio = class(TFrmCadM)
    liedtTotal: TdxLayoutItem;
    edtTotal: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    liedtCondicaoPagtoÎCondicaoPagto: TdxLayoutItem;
    edtCondicaoPagtoÎCondicaoPagto: TcxDBButtonEdit;
    liedtCondicaoPagtoÎCondicaoPagtoÎINTERVALO: TdxLayoutItem;
    edtCondicaoPagtoÎCondicaoPagtoÎINTERVALO: TcxDBTextEdit;
    LIbtnParcelas: TdxLayoutItem;
    btnParcelas: TcxButton;
    liedtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO: TdxLayoutItem;
    edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    GridFinanceiro: TcxGrid;
    cxGridViewFinanceiro: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dxLayoutItem10: TdxLayoutItem;
    edtTipoCobranca: TcxDBComboBox;
    liedtPlanoÎEQUIPAMENTO: TdxLayoutItem;
    edtPlanoÎPLANOCONTAS: TcxDBButtonEdit;
    dxLayoutItem12: TdxLayoutItem;
    edtPlacaÎEquipamento: TcxDBButtonEdit;
    dxLayoutItem13: TdxLayoutItem;
    edtContaÎCONTAS: TcxDBButtonEdit;
    liLblPCBoletoÎPlanoContasÎDESCRICAO: TdxLayoutItem;
    lblPlanoÎPLANOCONTASÎDESCRICAO: TLabel;
    LILBLContaÎCONTASÎDESCRICAO: TdxLayoutItem;
    LBLContaÎCONTASÎDESCRICAO: TLabel;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem6: TdxLayoutItem;
    edtPlacaÎEquipamentoÎPLACA: TLabel;
    lilblPlacaAssociado: TdxLayoutItem;
    lblPlacaAssociado: TLabel;
    Equipamento_Rateio_Financeiro: TFDQuery;
    DSEquipamento_Rateio_Financeiro: TDataSource;
    cxGridViewFinanceiroCODIGO: TcxGridDBColumn;
    cxGridViewFinanceiroCODEQUIPAMENTO_RATEIO: TcxGridDBColumn;
    cxGridViewFinanceiroVALOR: TcxGridDBColumn;
    cxGridViewFinanceiroVENCTO: TcxGridDBColumn;
    cxGridViewFinanceiroSTATUS: TcxGridDBColumn;
    cxGridViewFinanceiroDATA: TcxGridDBColumn;
    cxGridViewFinanceiroEMISSAO: TcxGridDBColumn;
    cxGridViewFinanceiroCODPLANOCONTAS: TcxGridDBColumn;
    cxGridViewFinanceiroCODCONDICAOPAGTO: TcxGridDBColumn;
    cxGridViewFinanceiroCONDICAOPAGTO: TcxGridDBColumn;
    cxGridViewFinanceiroCONTATOS: TcxGridDBColumn;
    cxGridViewFinanceiroCODCHEQUE: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_CODBANCO: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_BANCO: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_NOME: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_REPASSADO: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_CNPJCPF: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_STATUS: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_COMPE: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_AGENCIA: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_C1: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_CONTA: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_NUMERO: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_C2: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_C3: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_DT_CADASTRO: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_DT_BOM_PARA: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_DT_REPASSADO: TcxGridDBColumn;
    cxGridViewFinanceiroCHEQUE_TIPO: TcxGridDBColumn;
    cxGridViewFinanceiroATUALIZADO: TcxGridDBColumn;
    cxGridViewFinanceiroDT_ALTERACAO: TcxGridDBColumn;
    cxGridViewFinanceiroCODCONTA: TcxGridDBColumn;
    cxGridViewFinanceiroPESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn;
    cxGridViewFinanceiroPESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn;
    cxGridViewFinanceiroPESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn;
    cxGridViewFinanceiroPESSOA_FORNECEDOR_CODIGO: TcxGridDBColumn;
    cxGridViewFinanceiroPESSOA_FORNECEDOR_TIPO: TcxGridDBColumn;
    cxGridViewFinanceiroPESSOA_FORNECEDOR_SEQUENCIA: TcxGridDBColumn;
    cxGridViewFinanceiroPARCELA: TcxGridDBColumn;
    cxGridViewFinanceiroPREVISAO: TcxGridDBColumn;
    cxGridViewFinanceiroGERADO_DO_FINANCEIRO: TcxGridDBColumn;
    cxGridViewFinanceiroPARCELA_ALTERADA: TcxGridDBColumn;
    cxGridViewFinanceiroNSU: TcxGridDBColumn;
    cxGridViewFinanceiroREDE: TcxGridDBColumn;
    cxGridViewFinanceiroCNPJ_CREDENCIADORA: TcxGridDBColumn;
    cxGridViewFinanceiroTEF_STATUS: TcxGridDBColumn;
    cxGridViewFinanceiroVALOR_DIA: TcxGridDBColumn;
    cxGridViewFinanceiroQUANT_DIA: TcxGridDBColumn;
    cxGridViewFinanceiroCODEQUIPAMENTO: TcxGridDBColumn;
    cxGridViewFinanceiroCONTA: TcxGridDBColumn;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    lilblPlacaCadastro: TdxLayoutItem;
    edtPlacaÎEquipamentoÎDATA: TLabel;
    lilblPlacaDataExclusao: TdxLayoutItem;
    edtPlacaÎEquipamentoÎDATAEXCLUSAO: TLabel;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cxGridViewFinanceiroDOCUMENTO: TcxGridDBColumn;
    FcPrincipal: TWRFormataCamposDataSets;
    procedure btnParcelasClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure edtPlacaÎEquipamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPlacaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtPlacaPropertiesChange(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cxGridViewFinanceiroCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure btnConfirmarClick(Sender: TObject);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure FcPrincipalCarregaDataSets(Sender: TObject);
  private
    procedure AjustaUltimaParcela(AQuantParcelas, DiasUltParcela: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEquipamento_Rateio: TFrmEquipamento_Rateio;

implementation

{$R *.dfm}

uses Principal, UnitFuncoes, Consulta, System.UITypes, StrUtils, Classes.WR, Utils.Financeiro;

procedure TFrmEquipamento_Rateio.btnConfirmarClick(Sender: TObject);
begin
 // inherited;
  try
    if DS.State in [dsEdit,dsInsert] then
      DS.DataSet.Post;
  except
    on E:Exception do
    begin
      if (AnsiContainsText(E.Message, 'Primary') and AnsiContainsText(E.Message, 'Codigo')) or
         (DS.DataSet.FieldByName('Codigo').AsString = '') then
      begin
        try
          DS.DataSet.FieldByName('Codigo').AsFloat := ProximoCodigo(FNomeTabela);
          DS.DataSet.Post;
        except
          DSStateChange(DS.DataSet);
          ShowMessage('Chave já existente. Não conseguiu Confirmar.');
        end;
      end
      else // if AnsiContainsText(E.Message, 'UNIQUE KEY') then
        raise;
    end;

  end;
  try
    TransaFD.Commit;
//    DS.DataSet.Open;
  except end;
  btnNovo.SetFocusWR;
end;

procedure TFrmEquipamento_Rateio.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtTipoCobranca.SetFocus;
end;

procedure TFrmEquipamento_Rateio.btnParcelasClick(Sender: TObject);
//  function CadastraPlanoContas(ATitulo : string): string;
//  var
//    QuerX : TFDQuery;
//    AIndices : TStringDynArray;
//    i, AMaxIndice : Integer;
//  begin
//    QuerX := GeraFDQuery(TransaFD);
//    try
//      if RightStr(ATitulo, 1) = '.' then
//        Delete(ATitulo, Length(ATitulo), 1);
//      AIndices := SplitString(ATitulo, '.');
//
//      //Determina o próximo índice a ser usado
//      QuerX.SQL.Text := 'select max(INDICE' + IntToStr(High(AIndices) + 2) + ') ' +
//                        'from PLANOCONTAS ' +
//                        'where (CODIGO like :Cod)';
//      QuerX.Params[0].AsString := ATitulo + '.%';
//      QuerX.Open;
//      AMaxIndice := QuerX.Fields[0].AsInteger + 1;
//      QuerX.Close;
//
//      //Cadastra o novo Plano de Contas
//      QuerX.SQL.Text := 'insert into PLANOCONTAS (CODIGO, DESCRICAO, INDICE1, INDICE2, INDICE3, INDICE4, ATIVO, TIPO) ' +
//                        'values (:CODIGO, :DESCRICAO, :INDICE1, :INDICE2, :INDICE3, :INDICE4, :ATIVO, :TIPO)';
//      QuerX.ParamByName('CODIGO').AsString    := ATitulo + '.' + IntToStr(AMaxIndice);
//      QuerX.ParamByName('ATIVO').AsString     := 'S';
//      QuerX.ParamByName('TIPO').AsString      := 'A';
//      QuerX.ParamByName('DESCRICAO').AsString := 'VENDA - ' + Procura('RAZAOSOCIAL', 'PESSOAS', Cadastro.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString);
//      for I := Low(AIndices) to High(AIndices) do
//        QuerX.ParamByName('INDICE' + IntToStr(i + 1)).AsString := AIndices[i];
//      QuerX.ParamByName('INDICE' + IntToStr(High(AIndices) + 2)).AsInteger := AMaxIndice;
//      Result := QuerX.ParamByName('CODIGO').AsString;
//      QuerX.ExecSQL;
//    finally
//      QuerX.Free;
//    end;
//  end;

var
  I, D, ADiaDoMes : Integer;
  Aux, Entrada, ACodEmpresa: String;
  Vetor_Dias: Array[1..255] of Real;
  //Variáveis de controle
  AIntervaloMensal : Boolean;
  ACondicaoPagto, ACodCondicaoPagto, ACodConta, ATPSemDTPagto : string;
  AValorTotal, AValorEntrada, APercEntrada, AValorDia : Double;
  ADataAtual, AData, ADataBoleto : TDateTime;
  AQuantParcelasFinanceiro, ACodContaPadrao, ADias, ADiasMes, ADiasRestantes : Integer;
begin
  inherited;
//  WREventosCadastro.ValidaCamposObrigatorio(Self, 'PARCELAS');
//  if not PodeEditarVenda then
//    Exit;
  VerificaSePodeAlteraDataSet;

  if DateOf( Cadastro.FieldByName('DATA_INICIAL').AsDateTime) <>
     DateOf(StrToDateTime(edtPlacaÎEquipamentoÎDATA.Caption)) then
  begin
    if MessageBox(Handle,
      'A data do boleto inicia na data de cadastro do equipamento. ' + #13#10
      + 'Você deseja alterar a data de cadastro para refletir a data do boleto?', 'Office Impresso 2022', MB_YESNO + MB_ICONQUESTION)
      = IDYES then
    begin
      Cadastro.FieldByName('DATA_INICIAL').AsString:=edtPlacaÎEquipamentoÎDATA.Caption;
    end;
  end;


  ADataAtual := DataHoraSys;
//  Venda_Financeiro.DisableControls;
  while not Equipamento_Rateio_Financeiro.IsEmpty do
    Equipamento_Rateio_Financeiro.Delete;
  try

    /// Caralho que função foda essa aqui /////

    ADiasRestantes := Cadastro.FieldByName('DIA_INTERVALO').AsInteger;
    ADataBoleto    := DateOf( Cadastro.FieldByName('DATA_INICIAL').AsDateTime);
    I := 0;
    while ADiasRestantes > 0 do
    begin
      if ADiasRestantes > 0 then
      begin
        I := I + 1;
        ADataBoleto   := StartOfTheMonth(IncMonth(ADataBoleto,1));
        ADiasRestantes:= Trunc(DateOf(Cadastro.FieldByName('DATA_INICIAL').AsDateTime+Cadastro.FieldByName('DIA_INTERVALO').AsInteger)-DateOf(ADataBoleto));
      end;
    end;

    /// Só para achar o dia doo mes

    Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger:= I;

    AValorTotal       := Cadastro.FieldByName('TOTAL').AsFloat;

    ACodCondicaoPagto   := edtCondicaoPagtoÎCondicaoPagto.Text;
    ACondicaoPagto      := edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO.Text;
    ACodConta           := edtContaÎCONTAS.Text;
    if ACodCondicaoPagto <> '' then
    begin
      Entrada      := Procura('ENTRADA', 'CONDICAOPAGTO', ACodCondicaoPagto);
      APercEntrada := StrToIntDef(Procura('PERC_ENTRADA', 'CONDICAOPAGTO', ACodCondicaoPagto), 0) / 100;
    end else
    begin
      APercEntrada := 0;
    end;
    /////////////////////// codigo de pagamento por descricao ou digitado direto //////////////
    if ((ACodCondicaoPagto = '') or (Procura('TIPO', 'CONDICAOPAGTO', ACodCondicaoPagto) = '0')) AND ((Cadastro.FieldByName('DIA_INTERVALO').AsInteger = 0) and not AIntervaloMensal) then
    begin
      D := 1;
      Aux := '0';
      for I := 1 to Length(ACondicaoPagto) do
        if (ACondicaoPagto[I] = '/') or (Length(ACondicaoPagto) = I) then
        begin
          if Length(ACondicaoPagto) = I then
            if VerificaInteiro(ACondicaoPagto[I]) then
              Aux := Aux + ACondicaoPagto[I];
          Vetor_Dias[D] := StrToInt(Aux);
          D := D + 1;
          Aux := '0';
        end
        else If VerificaInteiro(ACondicaoPagto[I]) then
          Aux := Aux + ACondicaoPagto[I];
    end
    else
    ////////////////////////////////////////////////////////////////////////////////
    if (Cadastro.FieldByName('DIA_INTERVALO').AsInteger <> 0)and not AIntervaloMensal then
    begin
      for I := 1 to Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger do
      begin
        if (Entrada = 'S') then
        begin
          if (I = 1) then
            Vetor_Dias[I] := 0
          else
            Vetor_Dias[I] := Cadastro.FieldByName('DIA_INTERVALO').AsInteger * (I - 1);
        end else
          Vetor_Dias[I] := Cadastro.FieldByName('DIA_INTERVALO').AsInteger * I;
      end;
    end
    else if AIntervaloMensal then
    begin
      ADiaDoMes := StrToIntDef(Procura('CONDICAOPAGTO_DIA_PROXIMO_MES', 'PESSOAS', Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString), 0);
      AData := Date;
      for I := 1 to Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger do
      begin
        if (Entrada = 'S') then // se entrada recebida?
        begin
          if I = 1 then
            Vetor_Dias[I] := 0
          else
            Vetor_Dias[I] := SysUtils.IncMonth(AData, I - 1) - AData;
        end else
          Vetor_Dias[I] := SysUtils.IncMonth(AData, I) - AData;
        if (Vetor_Dias[I] > 0) and (ADiaDoMes > 0) then
          Vetor_Dias[I] := Vetor_Dias[I] - DayOf(AData) + ADiaDoMes;
      end;
    end;

    if (Vetor_Dias[1] = 0) and (APercEntrada > 0) then
      AValorEntrada := AValorTotal * APercEntrada
    else //if (Cadastro.FieldByName('CREDITO').AsFloat > 0) then
//    begin
//      AValorEntrada := Cadastro.FieldByName('CREDITO').AsFloat;    // Aqui decide o Qaunto do Crédito vai ser utilizado
////      AValorTotal
//    end else
      AValorEntrada := 0;

    /////////////////////// COLOCA NO FINANCEIRO ///////////////////////

    AValorDia := (AValorTotal / Cadastro.FieldByName('DIA_INTERVALO').AsInteger);
    ADias := 0;
    ADataBoleto := Cadastro.FieldByName('DATA_INICIAL').AsDateTime;
    ADiasMes := 0;
//    ADias := DaysBetween(ADataBoleto,EndOfTheMonth(ADataBoleto));
    ADiasRestantes := Cadastro.FieldByName('DIA_INTERVALO').AsInteger;
    I := 1;
    while ADiasRestantes > 0 do
    begin

      Equipamento_Rateio_Financeiro.Insert;
      Equipamento_Rateio_Financeiro.FieldByName('CODEQUIPAMENTO_RATEIO').Value  := Cadastro.FieldByName('CODIGO').Value;
      Equipamento_Rateio_Financeiro.FieldByName('CODEQUIPAMENTO').Value         := Cadastro.FieldByName('CODEQUIPAMENTO').Value;
      Equipamento_Rateio_Financeiro.FieldByName('CODIGO').AsInteger             := I;
      Equipamento_Rateio_Financeiro.FieldByName('PARCELA').AsInteger            := I;
      Equipamento_Rateio_Financeiro.FieldByName('CODCONDICAOPAGTO').AsString    := ACodCondicaoPagto;
      Equipamento_Rateio_Financeiro.FieldByName('CONDICAOPAGTO').AsString       := LeftStr(ACondicaoPagto, Equipamento_Rateio_Financeiro.FieldByName('CONDICAOPAGTO').Size);
      Equipamento_Rateio_Financeiro.FieldByName('RAZAOSOCIAL').AsString         := lblPlacaAssociado.Caption;//Cadastro.FieldByName('RAZAOSOCIAL').AsString;
      Equipamento_Rateio_Financeiro.FieldByName('DOCUMENTO').AsString           := IntToStr(I)+'/'+ Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsString;
      Equipamento_Rateio_Financeiro.FieldByName('STATUS').AsString              := 'ATIVO';
      Equipamento_Rateio_Financeiro.FieldByName('CODPLANOCONTAS').AsString      := Procura('CODPLANOCONTAS', 'CONDICAOPAGTO', ACodCondicaoPagto);
      Equipamento_Rateio_Financeiro.FieldByName('VENCTO').AsDatetime            := DateOf(EndOfTheMonth(ADataBoleto));
      Equipamento_Rateio_Financeiro.FieldByName('TIPOPAGTO').AsString           := Procura('TIPOPAGTO', 'CONDICAOPAGTO', ACodCondicaoPagto);

      ACodContaPadrao := StrToIntDef(ProcuraField('CODCONTA_PADRAO', 'TIPO_PAGAMENTO', ['DESCRICAO'], [Equipamento_Rateio_Financeiro.FieldByName('TIPOPAGTO').AsString]), 0);
      if ACodContaPadrao <> 0 then
        Equipamento_Rateio_Financeiro.FieldByName('CODCONTA').AsInteger         := ACodContaPadrao
      else
        Equipamento_Rateio_Financeiro.FieldByName('CODCONTA').AsString          := ACodConta;

      if Equipamento_Rateio_Financeiro.FieldByName('TIPOPAGTO').AsString = '' then
        Equipamento_Rateio_Financeiro.FieldByName('TIPOPAGTO').AsString         := 'DINHEIRO';
      Equipamento_Rateio_Financeiro.FieldByName('TIPO').AsString                := 'RECEBIDA';
      Equipamento_Rateio_Financeiro.FieldByName('EMISSAO').AsDateTime           := ADataAtual;
      if (i > 1) or (Entrada = 'N') then
      begin
        Equipamento_Rateio_Financeiro.FieldByName('TIPO').AsString       := 'A RECEBER';
//        Equipamento_Rateio_Financeiro.FieldByName('VENCTO').AsDateTime   := ADataAtual + (Vetor_Dias[I]);
        Equipamento_Rateio_Financeiro.FieldByName('DATAPAGTO').Clear;
      end;
      if (Entrada = 'T') then
      begin
        Equipamento_Rateio_Financeiro.FieldByName('TIPO').AsString         := 'RECEBIDA';
//        Equipamento_Rateio_Financeiro.FieldByName('VENCTO').AsDateTime     := ADataAtual + (Vetor_Dias[I]);
        Equipamento_Rateio_Financeiro.FieldByName('DATAPAGTO').AsDateTime  := ADataAtual;
      end;
      if I > 1 then
        ADataBoleto := StartOfTheMonth(ADataBoleto);


//        Preciso achar a data

      if ADiasRestantes < 30 then
      begin
        ADiasMes := DaysBetween(ADataBoleto,IncDay(ADataBoleto,ADiasRestantes))
      end
      else
        ADiasMes := DaysBetween(ADataBoleto,EndOfTheMonth(ADataBoleto))+1;

//      if IncDay(ADataBoleto, ADiasMes) > EndOfTheMonth(ADataBoleto) then
//       ShowMessage('Achei o valor');

      Equipamento_Rateio_Financeiro.FieldByName('QUANT_DIA').AsInteger :=  ADiasMes;
      Equipamento_Rateio_Financeiro.FieldByName('VALOR_DIA').AsFloat   :=  AValorDia;
      Equipamento_Rateio_Financeiro.FieldByName('VALOR').AsFloat       := RdT(ADiasMes * AValorDia, -2);
      ADias := ADias + ADiasMes;
      ADiasRestantes := Cadastro.FieldByName('DIA_INTERVALO').AsInteger - ADias;
      if ADiasRestantes > 0 then
      begin
        I := I + 1;
        ADataBoleto := StartOfTheMonth(IncMonth(ADataBoleto,1));
      end;
      Equipamento_Rateio_Financeiro.Post;
    end;

  {$REGION '/////////////////////// CODIGO PADRAO DA VENDA ////////////////////////////////'}
    Aux := '';
    if 1 = 2 then     //for I := 1 to Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger do
    begin
      Equipamento_Rateio_Financeiro.Insert;
      Equipamento_Rateio_Financeiro.FieldByName('CODEQUIPAMENTO_RATEIO').Value    := Cadastro.FieldByName('CODIGO').Value;
      Equipamento_Rateio_Financeiro.FieldByName('CODIGO').AsInteger  := I;
      Equipamento_Rateio_Financeiro.FieldByName('PARCELA').AsInteger := I;
      Equipamento_Rateio_Financeiro.FieldByName('CODCONDICAOPAGTO').AsString := ACodCondicaoPagto;
      {O tamanho do campo CONDICAOPAGTO está diferente em cada tabela. Na venda está 100, no Equipamento_Rateio_Financeiro está 30 e
       no Financeiro está 50!!! Aqui foi decidido em dar um crop no texto e manter apenas os 30 primeiros caracteres
       pois no cadastro da condição de pagamento também está 30, então não há como ter uma parcela com nome da condição
       de pagamento menor do que no cadastro}
      Equipamento_Rateio_Financeiro.FieldByName('CONDICAOPAGTO').AsString                 := LeftStr(ACondicaoPagto, Equipamento_Rateio_Financeiro.FieldByName('CONDICAOPAGTO').Size);
//      Equipamento_Rateio_Financeiro.FieldByName('CONTATOS').AsString                      := Cadastro.FieldByName('CONTATO').AsString;
//      Equipamento_Rateio_Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString     := Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
//      Equipamento_Rateio_Financeiro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString       := Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString;
//      Equipamento_Rateio_Financeiro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := Cadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger;
      Equipamento_Rateio_Financeiro.FieldByName('RAZAOSOCIAL').AsString                   := lblPlacaAssociado.Caption;//Cadastro.FieldByName('RAZAOSOCIAL').AsString;
      Equipamento_Rateio_Financeiro.FieldByName('DOCUMENTO').AsString                     := IntToStr(I) + '/' + IntToStr(Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger);// GetDocumentoParcelas(I);
      Equipamento_Rateio_Financeiro.FieldByName('STATUS').AsString                        := 'ATIVO';
      Equipamento_Rateio_Financeiro.FieldByName('CODPLANOCONTAS').AsString                := Procura('CODPLANOCONTAS', 'CONDICAOPAGTO', ACodCondicaoPagto);
//      if Equipamento_Rateio_Financeiro.FieldByName('CODPLANOCONTAS').AsString = ''  then
//        Equipamento_Rateio_Financeiro.FieldByName('CODPLANOCONTAS').AsString              := QuerVenda_Tipo.FieldByName('CODPLANOCONTAS').AsString;


      ////////// parte de carteira automatica ///////////////////
      Equipamento_Rateio_Financeiro.FieldByName('TipoPagto').AsString    := Procura('TIPOPAGTO', 'CONDICAOPAGTO', ACodCondicaoPagto);

      ACodContaPadrao := StrToIntDef(ProcuraField('CODCONTA_PADRAO', 'TIPO_PAGAMENTO', ['DESCRICAO'], [Equipamento_Rateio_Financeiro.FieldByName('TIPOPAGTO').AsString]), 0);
      if ACodContaPadrao <> 0 then
        Equipamento_Rateio_Financeiro.FieldByName('CODCONTA').AsInteger  := ACodContaPadrao
      else
        Equipamento_Rateio_Financeiro.FieldByName('CODCONTA').AsString   := ACodConta;

      if Equipamento_Rateio_Financeiro.FieldByName('TIPOPAGTO').AsString = '' then
        Equipamento_Rateio_Financeiro.FieldByName('TIPOPAGTO').AsString  := 'DINHEIRO';
      Equipamento_Rateio_Financeiro.FieldByName('TIPO').AsString         := 'RECEBIDA';
      Equipamento_Rateio_Financeiro.FieldByName('EMISSAO').AsDateTime    := ADataAtual;
      Equipamento_Rateio_Financeiro.FieldByName('VENCTO').AsDateTime     := ADataAtual;
      Equipamento_Rateio_Financeiro.FieldByName('DATAPAGTO').AsDateTime  := ADataAtual;
      if (i > 1) or (Entrada = 'N')   then
      begin
        Equipamento_Rateio_Financeiro.FieldByName('TIPO').AsString       := 'A RECEBER';
        Equipamento_Rateio_Financeiro.FieldByName('VENCTO').AsDateTime   := ADataAtual + (Vetor_Dias[I]);
        Equipamento_Rateio_Financeiro.FieldByName('DATAPAGTO').Clear;
      end;
      if (Entrada = 'T') then
      begin
        Equipamento_Rateio_Financeiro.FieldByName('TIPO').AsString         := 'RECEBIDA';
        Equipamento_Rateio_Financeiro.FieldByName('VENCTO').AsDateTime     := ADataAtual + (Vetor_Dias[I]);
        Equipamento_Rateio_Financeiro.FieldByName('DATAPAGTO').AsDateTime  := ADataAtual;
      end;

      if (AValorEntrada > 0) then
      begin
        Equipamento_Rateio_Financeiro.FieldByName('VALOR').AsFloat := RdT(AValorEntrada, -2);
        AValorTotal         := AValorTotal - AValorEntrada;
//        AQuantidadeParcelas := AQuantidadeParcelas - 1;
        AValorEntrada       := 0;
//        if (Cadastro.FieldByName('CREDITO').AsFloat > 0) then
//        begin
//          Equipamento_Rateio_Financeiro.FieldByName('TIPOPAGTO').AsString   := 'CRÉDITO';
//          Equipamento_Rateio_Financeiro.FieldByName('TIPO').AsString        := 'PAGA';
//          Equipamento_Rateio_Financeiro.FieldByName('STATUS').AsString      := 'ATIVO*';
//          Equipamento_Rateio_Financeiro.FieldByName('HISTORICO').AsString   := 'BAIXA DE CREDITO';
//          Equipamento_Rateio_Financeiro.FieldByName('DATAPAGTO').AsDateTime := ADataAtual;
//          Equipamento_Rateio_Financeiro.FieldByName('VENCTO').AsDateTime    := ADataAtual + (Vetor_Dias[I - 1])
//        end;
      end else
        Equipamento_Rateio_Financeiro.FieldByName('VALOR').AsFloat := RdT((AValorTotal / Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger) , -2);


     (* if (Equipamento_Rateio_Financeiro.FieldByName('TIPO').AsString <> 'RECEBIDA'){ or (
         (Copy(Equipamento_Rateio_Financeiro.FieldByName('TIPOPAGTO').AsString, 1, 6) = 'CHEQUE') or
         (Copy(Equipamento_Rateio_Financeiro.FieldByName('TIPOPAGTO').AsString, 1, 6) = 'CARTÃO')) }then
      begin
        Equipamento_Rateio_Financeiro.FieldByName('VENCTO').AsDateTime := ADataAtual + (Vetor_Dias[I]);
      end else
        Equipamento_Rateio_Financeiro.FieldByName('VENCTO').AsDateTime := ADataAtual;  *)

   {   //Previsão
      if (Equipamento_Rateio_Financeiro.FieldByName('TIPOPAGTO').AsString <> 'CRÉDITO') and
         (ProcuraField('PREVISAO', 'VENDA_TIPO', ['DESCRICAO'], [Cadastro.FieldByName('VENDA_TIPO').AsString]) = 'S') then
      begin
        Equipamento_Rateio_Financeiro.FieldByName('STATUS').AsString  := 'ATIVO PREVISAO';
        Equipamento_Rateio_Financeiro.FieldByName('PREVISAO').AsFloat := Equipamento_Rateio_Financeiro.FieldByName('VALOR').AsFloat;
      end;   }
      Equipamento_Rateio_Financeiro.Post;
    end;
  {$ENDREGION}
    AjustaUltimaParcela(I, ADiasMes);
  finally
//    Equipamento_Rateio_Financeiro.EnableControls;
  end;
  Equipamento_Rateio_Financeiro.Refresh;   // Atualiza Left Joins
end;


procedure TFrmEquipamento_Rateio.AjustaUltimaParcela(AQuantParcelas, DiasUltParcela :Integer);
var
  QuerX: TFDQuery;
  ATotal, Valor_Parcela, Valor_Dia: Double;
begin
  ATotal         := Cadastro.FieldByName('TOTAL').AsCurrency;

  QuerX := GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := 'select sum(VALOR) as VALOR ' +
                'from EQUIPAMENTO_RATEIO_FINANCEIRO ' +
                'where (CODEQUIPAMENTO_RATEIO = :CodEquipamento_Rateio) ' +
                '      and (CODIGO < :CodEquipamento_Rateio_Financeiro)';

    QuerX.ParamByName('CodEquipamento_Rateio').AsString               := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.ParamByName('CodEquipamento_Rateio_Financeiro').AsInteger   := AQuantParcelas;
    QuerX.Open;

    Valor_Parcela := ATotal - QuerX.FieldByName('VALOR').AsCurrency;
    Valor_Dia     := (Valor_Parcela / DiasUltParcela);
    Valor_Dia     := Valor_Dia;// Rdt(Valor_Dia, -2);
    QuerX.SQL.Text := 'update EQUIPAMENTO_RATEIO_FINANCEIRO vf set' + #13#10 +
                      'vf.valor = :Valor_Parcela, vf.Valor_Dia = :Valor_Dia where' + #13#10 +
                      'vf.CODEQUIPAMENTO_RATEIO = :CODEQUIPAMENTO_RATEIO and' + #13#10 +
                      'vf.Codigo = (select max(vf2.codigo) from EQUIPAMENTO_RATEIO_FINANCEIRO vf2' + #13#10 +
                      'where vf2.CODEQUIPAMENTO_RATEIO = :CODEQUIPAMENTO_RATEIO2)';
    QuerX.ParamByName('Valor_Dia').AsFloat                           := Valor_Dia;
    QuerX.ParamByName('Valor_Parcela').AsFloat                       := Valor_Parcela;
    QuerX.ParamByName('CODEQUIPAMENTO_RATEIO').AsString              := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.ParamByName('CODEQUIPAMENTO_RATEIO2').AsString             := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.ExecSQL;
  finally
    FreeAndNil(QuerX);
  end;
end;

procedure TFrmEquipamento_Rateio.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if Cadastro.FieldByName('DATA_INICIAL').AsDateTime > 0 then
    exit
  else
    Cadastro.FieldByName('DATA_INICIAL').AsDateTime := DataHoraSys;
end;

procedure TFrmEquipamento_Rateio.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Rateio_Financeiro.Open;
end;

procedure TFrmEquipamento_Rateio.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Rateio_Financeiro.Close;
end;

procedure TFrmEquipamento_Rateio.cxGridViewFinanceiroCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  BtnAlterar.Click;
end;

procedure TFrmEquipamento_Rateio.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      AddValorInicial(FNomeTabela , 'DESCRICAO', edtTipoCobranca, 'Rateio médio');
      AddValorInicial(FNomeTabela , 'CODPLANOCONTAS', edtPlanoÎPLANOCONTAS, '');
      AddValorInicial(FNomeTabela , 'CODCONTA', edtContaÎCONTAS, 1);
      AddValorInicial(FNomeTabela , 'DIA_INTERVALO', edtCondicaoPagtoÎCondicaoPagtoÎINTERVALO, 90);
      AddValorInicial(FNomeTabela , 'CONDICAOPAGTO', edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO, '90 Dias');
    end;
  end;
end;

procedure TFrmEquipamento_Rateio.edtPlacaÎEquipamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 Then
  begin
//    CodTrans := edtPlacaÎEquipamentoÎPLACA.Caption;
//    Consulta(TFrmEquipamentos,Self);
    Cadastro.FieldByName('CODEQUIPAMENTO').AsString := edtPlacaÎEquipamento.EditText;
  end;

//  If Key = VK_F2 Then
//  begin
//    edtPlacaPropertiesButtonClick(nil, 0);
//  end;
end;

procedure TFrmEquipamento_Rateio.edtPlacaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  I, ACodEquipamento : Integer;
begin
  AlteraDataSet(Cadastro);
  Cadastro.FieldByName('CODEQUIPAMENTO').AsString:= Codigo;
end;

procedure TFrmEquipamento_Rateio.edtPlacaPropertiesChange(Sender: TObject);
var
  QuerX: TFDQuery;
begin
  inherited;
  QuerX := GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := ' select P.RAZAOSOCIAL ' +
                      ' from EQUIPAMENTO E ' +
                      ' LEFT JOIN PESSOAS P ON P.CODIGO = E.PESSOA_ASSOCIADO_CODIGO '+
                      ' where (E.CODIGO = :Codigo)';
    QuerX.ParamByName('Codigo').AsInteger:= StrToIntDef(edtPlacaÎEquipamento.EditText,0);
    QuerX.Open;
//    lblPlacaEQUIPAMENTO.Caption   := QuerX.FieldByName('PLACA').AsString;
    lblPlacaAssociado.Caption     := QuerX.FieldByName('RAZAOSOCIAL').AsString;
//    lblPlacaCadastro.Caption      := QuerX.FieldByName('DATA').AsString;
//    lblPlacaDataExclusao.Caption     := QuerX.FieldByName('DATAEXCLUSAO').AsString;

    Try
      if (ds.State in dsEditModes) then
        Ds.DataSet.FieldByName('DATA_INICIAL').Value := QuerX.FieldByName('DATA').Value;
    except
    End;

  finally
    QuerX.Free;
  end;
end;

procedure TFrmEquipamento_Rateio.FcPrincipalCarregaDataSets(Sender: TObject);
begin
  inherited;
  FcPrincipal.AdicionarDataSet(Cadastro, 'EQUIPAMENTO_RATEIO');
end;

procedure TFrmEquipamento_Rateio.FormShow(Sender: TObject);
begin
  inherited;
//  PreencheTiposPagtoArray([TcxComboBoxProperties(cxGridViewFinanceiroTIPOPAGTO.Properties).Items]);
end;

initialization
  RegisterClass(TFrmEquipamento_Rateio);


end.
