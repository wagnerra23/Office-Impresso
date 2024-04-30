unit Frame_ConBoleto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Con, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, Vcl.Menus, cxContainer, cxLabel, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, dxScreenTip, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset, System.Generics.Collections, WREventos, frxClass,
  frxDBSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxCalendar, cxButtonEdit, dxCustomTileControl,
  dxTileControl, cxTextEdit, cxMaskEdit, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView, Vcl.StdCtrls,
  cxButtons, cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl, cxCheckBox,
  uWRFormataCamposDataSet, cxDataControllerConditionalFormattingRulesManagerDialog, cxDBEdit, cxCurrencyEdit, cxMemo, cxCustomListBox,
  cxCheckListBox, Vcl.Imaging.pngimage,Base, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations, dxPSRichEditControlLnk, DataModuleBoletos, ACBrBoleto;

type
  TFrame_ConsuBoleto = class(TConsu_Frame)
    CadGridCadastrosDBTableView1DESCRICAO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1CODIGO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1CODPEDIDO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1CODEMPRESA: TcxGridDBColumn;
    CadGridCadastrosDBTableView1Total: TcxGridDBColumn;
    CadGridCadastrosDBTableView1BOLETO_NOSSO_NR: TcxGridDBColumn;
    CadGridCadastrosDBTableView1DATA: TcxGridDBColumn;
    CadGridCadastrosDBTableView1DT_OCORRENCIA: TcxGridDBColumn;
    CadGridCadastrosDBTableView1DT_CREDITO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1VALOR_CREDITO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1DESPESA_COBRANCA: TcxGridDBColumn;
    CadGridCadastrosDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    CadGridCadastrosDBTableView1VENCTO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1DATAPAGTO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1DOCUMENTO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1VALOR: TcxGridDBColumn;
    CadGridCadastrosDBTableView1JUROS: TcxGridDBColumn;
    CadGridCadastrosDBTableView1DESCONTO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1STATUS: TcxGridDBColumn;
    CadGridCadastrosDBTableView1TIPO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1OCORRENCIA: TcxGridDBColumn;
    CadGridCadastrosDBTableView1CARTEIRA: TcxGridDBColumn;
    CadGridCadastrosDBTableView1DEMONSTRATIVO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1EMISSAO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1PROTESTO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1TIPOOCORRENCIA: TcxGridDBColumn;
    CadGridCadastrosDBTableView1DIFERENCA: TcxGridDBColumn;
    CadGridCadastrosDBTableView1ACEITE: TcxGridDBColumn;
    CadGridCadastrosDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1PESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn;
    CadGridCadastrosDBTableView1JUROS_MORA: TcxGridDBColumn;
    CadGridCadastrosDBTableView1MULTA: TcxGridDBColumn;
    CadGridCadastrosDBTableView1ESPECIE: TcxGridDBColumn;
    CadGridCadastrosDBTableView1RETORNOS_ANTERIORES: TcxGridDBColumn;
    CadGridCadastrosDBTableView1PERCENTUAL_MULTA: TcxGridDBColumn;
    CadGridCadastrosDBTableView1DESCRICAOCONTA: TcxGridDBColumn;
    CadGridCadastrosDBTableView1DATA_ARQUIVO: TcxGridDBColumn;
    ConsultaTotal: TFloatField;
    WRFormataCamposDataSets1: TWRFormataCamposDataSets;
    ConsultaDiferenca: TCurrencyField;
    GridConsultaDBTableView1SITUACAO: TcxGridDBColumn;
    Financeiro: TFDQuery;
    UC_Financeiro: TUCHist_DataSet;
    DS_Financeiro: TDataSource;
    ConsultaVENCTO: TSQLTimeStampField;
    ConsultaDATAPAGTO: TSQLTimeStampField;
    ConsultaEMISSAO: TSQLTimeStampField;
    imgBolinhas_Boleto: TcxImageList;
    ConsultaValor_Pago: TFloatField;
    ConsultaValor_Em_Aberto: TCurrencyField;
    ConsultaValor_Cancelado: TCurrencyField;
    ConsultaValor_Vencido: TFloatField;
    ConsultaValor_Sem_registro: TFloatField;
    ConsultaValor_Expirado: TFloatField;
    GridConsultaDBTableView1Valor_Sem_Registro: TcxGridDBColumn;
    GridConsultaDBTableView1Valor_Pago: TcxGridDBColumn;
    GridConsultaDBTableView1Valor_Em_Aberto: TcxGridDBColumn;
    GridConsultaDBTableView1Valor_Cancelado: TcxGridDBColumn;
    GridConsultaDBTableView1Valor_Vencido: TcxGridDBColumn;
    GridConsultaDBTableView1Valor_Expirado: TcxGridDBColumn;
    dxLayoutItem1: TdxLayoutItem;
    pnlTotal: TPanel;
    lc_Totais: TdxLayoutControl;
    edtCancelados: TcxCurrencyEdit;
    edtEm_Aberto: TcxCurrencyEdit;
    edtPagos: TcxCurrencyEdit;
    lc_TotaisGroup_Root: TdxLayoutGroup;
    liedtCancelados: TdxLayoutItem;
    liedtEm_Aberto: TdxLayoutItem;
    liedtPagos: TdxLayoutItem;
    LiedtSem_Registro: TdxLayoutItem;
    edtSem_Registro: TcxCurrencyEdit;
    liedtExpirados: TdxLayoutItem;
    edtExpirados: TcxCurrencyEdit;
    liedtVencidos: TdxLayoutItem;
    edtVencidos: TcxCurrencyEdit;
    GridConsultaDBTableView1TIPO_FINANCEIRO: TcxGridDBColumn;
    DBMemo1: TcxDBMemo;
    imgFundo: TImage;
    pnlAcoes: TPanel;
    tcAcoesPanel: TdxTileControl;
    dxTileControlGroup13: TdxTileControlGroup;
    tcFiltrosPanel_Funcionario_Retirar: TdxTileControlItem;
    dxTileControlItem5: TdxTileControlItem;
    tiConsultar: TdxTileControlItem;
    tiImprimir_Boleto: TdxTileControlItem;
    tiGerar_PDF_Boleto: TdxTileControlItem;
    tiEnviarEmail_Boleto: TdxTileControlItem;
    tiCancelar: TdxTileControlItem;
    tiBaixarBoleto: TdxTileControlItem;
    tiRegistrar: TdxTileControlItem;
    s: TdxTileControlItem;
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure ConsultaCalcFields(DataSet: TDataSet);
    procedure WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure GridConsultaDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tiImprimir_BoletoClick(Sender: TdxTileControlItem);
    procedure tiConsultarClick(Sender: TdxTileControlItem);
    procedure tiGerar_PDF_BoletoClick(Sender: TdxTileControlItem);
    procedure tiEnviarEmail_BoletoClick(Sender: TdxTileControlItem);
    procedure GridConsultaDBTableView1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
    procedure tiRegistrarClick(Sender: TdxTileControlItem);
    procedure pnlAcoesExit(Sender: TObject);
    procedure sClick(Sender: TdxTileControlItem);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ConsultaBeforeClose(DataSet: TDataSet);
    procedure FrameEnter(Sender: TObject);
    procedure FrameExit(Sender: TObject);
  private
    { Private declarations }
    FACBrBoleto: TACBrBoleto;
  public
    { Public declarations }
  end;

var
  Frame_ConsuBoleto: TFrame_ConsuBoleto;

implementation

{$R *.dfm}
Uses unitFuncoes, StrUtils, DateUtils, Financeiro, ACBrUtil, ShellApi, wrFuncoes, Principal,
  SQL.Contas, Tag.Form, Classes.Boletos;

procedure TFrame_ConsuBoleto.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Financeiro.Open;
end;

procedure TFrame_ConsuBoleto.ConsultaBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Financeiro.Close;
end;

procedure TFrame_ConsuBoleto.ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  Consulta.FieldByName('DIFERENCA').AsCurrency := Consulta.FieldByName('JUROS').AsCurrency -
                                                  Consulta.FieldByName('DESCONTO').AsCurrency;
  Consulta.FieldByName('Total').AsCurrency     := Consulta.FieldByName('VALOR').AsCurrency +
                                                  Consulta.FieldByName('JUROS').AsCurrency -
                                                  Consulta.FieldByName('DESCONTO').AsCurrency;

  if MatchSTR(Consulta.FieldByName('SITUACAO').AsString, ['','Sem Registro']) then
    Consulta.FieldByName('Valor_Sem_Registro').AsCurrency := Consulta.FieldByName('Total').AsCurrency
  else if Consulta.FieldByName('SITUACAO').AsString = 'PAGO' then
    Consulta.FieldByName('Valor_Pago').AsCurrency         := Consulta.FieldByName('Total').AsCurrency
  else if Consulta.FieldByName('SITUACAO').AsString = 'EMABERTO' then
    Consulta.FieldByName('Valor_EM_Aberto').AsCurrency    := Consulta.FieldByName('Total').AsCurrency
  else if Consulta.FieldByName('SITUACAO').AsString = 'VENCIDO' then
    Consulta.FieldByName('Valor_Vencido').AsCurrency      := Consulta.FieldByName('Total').AsCurrency
  else if Consulta.FieldByName('SITUACAO').AsString = 'CANCELADO' then
    Consulta.FieldByName('Valor_Cancelado').AsCurrency    := Consulta.FieldByName('Total').AsCurrency
  else if Consulta.FieldByName('SITUACAO').AsString = 'EXPIRADO' then
    Consulta.FieldByName('Valor_Expirado').AsCurrency     := Consulta.FieldByName('Total').AsCurrency
end;

procedure TFrame_ConsuBoleto.FrameEnter(Sender: TObject);
begin
  inherited;
  FACBrBoleto := TACBrBoleto.Create(Self);
end;

procedure TFrame_ConsuBoleto.FrameExit(Sender: TObject);
begin
  inherited;
//  FACBrBoleto.Free;
end;

procedure TFrame_ConsuBoleto.tiRegistrarClick(Sender: TdxTileControlItem);
var
  AModoBoleto : TModoImpressaoBoleto;
  I: integer;
  QuerConta: TFDQuery;
begin
  inherited;
  // Aqui deve abrir o financeiro e imprimir
  QuerConta:= SQLConta_CarregaDoBoleto(Financeiro.FieldByName('CODCONTA').AsInteger);
{  FDMBoletos.DefineBanco(QuerConta.FieldByName('CODBANCO').AsInteger, QuerConta.FieldByName('CARTEIRA').AsString, QuerConta.FieldByName('COOPERATIVA').AsString,
                         QuerConta.FieldByName('TIPO_CONVENIO').AsString);       }
//  BoletoUtils_ConfiguraCedente(FACBrBoleto, QuerConta);
//  BoletoUtilsWS_Registrar_ConBoleto(FACBrBoleto, Consulta, Financeiro, QueryDragAndDrop, QuerConta, GridConsultaDBTableView1);
  Consulta.Refresh;

  {$REGION 'Código Comentado'}
//  try
//    for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
//    begin
//      GridConsultaDBTableView1.DataController.ChangeFocusedRecordIndex(GridConsultaDBTableView1.Controller.SelectedRecords[i].RecordIndex);
//
//      if Consulta.FieldByName('PODE_IMPRIMIR').AsString = 'S' then
//        Continue;
//
//      try
////        ADMBoletos.RegistrarBoletoWS(Financeiro);
//        TransaDragAndDrop.StartTransaction;
//
//        QueryDragAndDrop.Close;
//        QueryDragAndDrop.ParamByName('Codigo').AsString := Consulta.FieldByName('Codigo').AsString;
//        QueryDragAndDrop.ParamByName('CODEMPRESA').AsString := Consulta.FieldByName('CODEMPRESA').AsString;
//        QueryDragAndDrop.ParamByName('CODPEDIDO').AsString := Consulta.FieldByName('CODPEDIDO').AsString;
//        QueryDragAndDrop.Open;
//
//        QueryDragAndDrop.Edit;
//        QueryDragAndDrop.FieldByName('PODE_IMPRIMIR').AsString := 'S';
//        QueryDragAndDrop.Post;
//
//        TransaDragAndDrop.Commit;
//      except
//        on E:Exception do
//          ShowMessage(E.Message);
//      end;
//
//    end;
//  finally
//    ADMBoletos.Free;
//  end;


//  IF Not GeraTokenInter THEN
//    Exit;
////  GeraBoletoBancoInter(False);
//  try
//    BancoInter.SeuNumero := Copy(RemoveAcento(Financeiro.FieldByName('DOCUMENTO').AsString),1,10);
////    BancoInter.NossoNumero:= Financeiro.FieldByName('BOLETO_NOSSO_NR').AsString;
//    BancoInter.ValorNominal := Financeiro.FieldByName('Total').AsFloat;
//    BancoInter.DataVencimento := Financeiro.FieldByName('VENCTO').AsDateTime;
//    BancoInter.Linha1 := RemoveAcento(RemoveCaracterEspecial(DBMemo1.Lines[0]));
//    BancoInter.Linha2 := RemoveAcento(RemoveCaracterEspecial(DBMemo1.Lines[1]));
//    BancoInter.Linha3 := RemoveAcento(RemoveCaracterEspecial(DBMemo1.Lines[2]));
//    BancoInter.Linha4 := RemoveAcento(RemoveCaracterEspecial(DBMemo1.Lines[3]));
//    BancoInter.Linha5 := RemoveAcento(RemoveCaracterEspecial(DBMemo1.Lines[4]));
//
////    BancoInter.Linha2 := Copy(RemoveAcento(RemoveCaracterEspecial(Boletos.FieldByName('DEMONSTRATIVO').AsString)),71,140);
////    BancoInter.Linha3 := Copy(RemoveAcento(Boletos.FieldByName('DEMONSTRATIVO').AsString),141,210);
////    BancoInter.Linha4 := Copy(RemoveAcento(Boletos.FieldByName('DEMONSTRATIVO').AsString),211,280);
////    BancoInter.Linha5 := Copy(RemoveAcento(Boletos.FieldByName('DEMONSTRATIVO').AsString),281,350);
//
//
//    BancoInter.DtDesconto := incDay(Financeiro.FieldByName('VENCTO').AsDateTime, 0);
//    BancoInter.Desconto_Taxa := 0; // 0 -> 100
//
////    BancoInter.DtMulta := incDay(Financeiro.FieldByName('VENCTO').AsDateTime, 2);
//    BancoInter.DtMulta := incDay(Financeiro.FieldByName('VENCTO').AsDateTime, 2);
//
//    QuerX := GeraFDQuery;
//    try
//      QuerX.SQL.Text := ' Select P.CNPJCPF, P.TIPO, P.RAZAOSOCIAL, P.ENDERECO, P.NUMERO, P.PROXIMIDADE, P.BAIRRO, '+
//                        ' P.UF, P.CEP, P.EMAIL, P.FONE1, C.DESCRICAO AS CIDADE '+
//                        ' from PESSOAS P '+
//                        ' LEFT JOIN CIDADES C ON C.CODIGO = P.CODCIDADE '+
//                        ' where P.Codigo = :Codigo';
//      QuerX.ParamByName('Codigo').AsString:=Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
//      QuerX.Open;
//      if QuerX.RecordCount > 0 then
//      begin
//        // Dados fictícios, retirado do site 4devs.com.br/gerador_de_pessoas
//        BancoInter.CpfCnpj     := OnlyNumberWR(QuerX.FieldByName('CNPJCPF').AsString);
//        BancoInter.TipoPessoa  := 'FISICA';
//        if QuerX.FieldByName('TIPO').AsString='J' then
//          BancoInter.TipoPessoa  := 'JURIDICA';
//        BancoInter.Nome        := Copy(RemoveAcento(RemoveCaracterEspecial(QuerX.FieldByName('RAZAOSOCIAL').AsString)),1,100);  //max 100
//        BancoInter.Endereco    := Copy(RemoveAcento(RemoveCaracterEspecial(QuerX.FieldByName('ENDERECO').AsString)),1,90);     //max 90
//        BancoInter.Numero      := Copy(RemoveAcento(RemoveCaracterEspecial(QuerX.FieldByName('NUMERO').AsString)),1,10);                     //max 10
//        BancoInter.Complemento := Copy(RemoveAcento(RemoveCaracterEspecial(QuerX.FieldByName('PROXIMIDADE').AsString)),1,30);  //max 30
//        BancoInter.Bairro      := Copy(RemoveAcento(RemoveCaracterEspecial(QuerX.FieldByName('BAIRRO').AsString)),1,60);       // max 60
//        BancoInter.Cidade      := RemoveAcento(RemoveCaracterEspecial(QuerX.FieldByName('CIDADE').AsString));
//        BancoInter.UF          := Copy(QuerX.FieldByName('UF').AsString,1,2);
//        BancoInter.CEP         := OnlyNumberWR(QuerX.FieldByName('CEP').AsString);                       // max 8
//        BancoInter.Email       := Copy(RemoveAcento(QuerX.FieldByName('EMAIL').AsString),1,50);       //max 50
////        BancoInter.DDD         := Copy(RemoveCaracterEspecial(QuerX.FieldByName('FONE1').AsString),1,2);       //max 2
////        BancoInter.Telefone    := Copy(RemoveCaracterEspecial(QuerX.FieldByName('FONE1').AsString),3, RemoveCaracterEspecial(QuerX.FieldByName('FONE1').AsString).Length -1);       //max 9
//      end else
//      begin
//        ShowMessage('Não localizou o cacdastro do Tomador(Cliente)');
//        Exit;
//      end;
//    finally
//      QuerX.Free;
//    end;
//
//{$REGION 'Exemplo'}
////    BancoInter.SeuNumero := 'ixxiiMeus';
////    BancoInter.ValorNominal := 11;
////    BancoInter.DataVencimento := incDay(date, 30);
////     Não pode ter acento ou caracteres especiais na solicitação.
//    // Dados fictícios, retirado do site 4devs.com.br/gerador_de_pessoas
// (*   BancoInter.CpfCnpj := '96730102268';
//    BancoInter.TipoPessoa := 'FISICA'; // JURIDICA
//    BancoInter.Nome := 'Thomas Claudio Bernardes';
//    BancoInter.Endereco := 'Avenida 13 de Novembro';
//    BancoInter.Numero := '697';
//    BancoInter.Complemento := 'Casa';
//    BancoInter.Bairro := 'Centro';
//    BancoInter.Cidade := 'Apui';
//    BancoInter.UF := 'AM';
//    BancoInter.CEP := '69265000';
//    BancoInter.Email := 'thomas_claudio_bernardes@lidertel.com.br';
//    BancoInter.DDD := '97';
//    BancoInter.Telefone := '981200415';                       *)
////    BancoInter.Linha1 := 'Curti nosso canal | CortesDEV';
////    BancoInter.Linha2 := 'Desenvolvido por Delmar de Lima';
////    BancoInter.DtDesconto := incDay(date, 20);
////    BancoInter.TaxaDesconto := 1; // 0 -> 100
//{$ENDREGION}
//
//  //  Validar as informações antes, servidor não da pista do que pode ser
//  // Olhar os campos obrigatorios
////    if BancoInter.Cidade = '' then
////      ShowMessage('Sem Cidade');
////
////    if BancoInter.SeuNumero = '' then
////      ShowMessage('Sem Documento');
////
////    BancoInter.PostBoleto;
////
////    ShowMessage('Olha o que retorna '+ slineBreak+
////       BancoInter.SeuNumero + slineBreak+
////       BancoInter.NossoNumero + slineBreak+
////       BancoInter.LinhaDigitavel);
//
//     if (BancoInter.NossoNumero <>'') and (Financeiro.FieldByName('BOLETO_NOSSO_NR').AsString <> BancoInter.NossoNumero) then
//     begin
//       Financeiro.Edit;
//       Financeiro.FieldByName('BOLETO_NOSSO_NR').AsString:=BancoInter.NossoNumero;
//       Financeiro.Post;
//     end;
//  except
//  end;
{$ENDREGION}
end;

procedure TFrame_ConsuBoleto.sClick(Sender: TdxTileControlItem);
begin
  inherited;
  pnlAcoes.Left:= mouse.CursorPos.X;
  pnlAcoes.Top := tcAcoes.Top + tcAcoes.Height;
  Mostrar(pnlAcoes);
  pnlAcoes.SetFocusWR;
end;

procedure TFrame_ConsuBoleto.tiConsultarClick(Sender: TdxTileControlItem);
var
  AModoBoleto : TModoImpressaoBoleto;
  QuerConta: TFDQuery;
begin
  inherited;
  // Aqui deve abrir o financeiro e imprimir
  QuerConta:=SQLConta_CarregaDoBoleto(Consulta.FieldByName('CODCONTA').AsInteger);
//  FDMBoletos.DefineBanco(QuerConta.FieldByName('CODBANCO').AsInteger, QuerConta.FieldByName('CARTEIRA').AsString, QuerConta.FieldByName('COOPERATIVA').AsString,
//                         QuerConta.FieldByName('TIPO_CONVENIO').AsString);
//  BoletoUtils_ConfiguraCedente(FACBrBoleto, QuerConta);
  try
//    BoletoUtilsWS_ConsultaWS(FACBrBoleto, Consulta.FieldByName('CODCONTA').AsInteger);
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;

//  IF Not GeraTokenInter THEN
//   Exit;
//  for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
//  begin
//
//    GridConsultaDBTableView1.DataController.ChangeFocusedRecordIndex(GridConsultaDBTableView1.Controller.SelectedRecords[i].RecordIndex);
    (*
    BancoInter.NossoNumero := Poem_Zeros(Consulta.FieldByName('BOLETO_NOSSO_NR').AsString, 11);
    if BancoInter.ConsultBoleto then
    begin
  //    ShowMessage(
  //    'Situação '+BancoInter.Situacao + slineBreak +
  //    'Valor '+ FloatToStr(BancoInter.ValorPago)+ slineBreak +
  //    'Data Situação: '+FormatDateTime('dd/mm/yyyy', BancoInter.DataHoraSituacao)
  //    );
      QueryDragAndDrop.Close;
      QueryDragAndDrop.SQL.Text:=' select * from BOLETOS '+
                                 ' where (CODIGO = :CODIGO)and (CODEMPRESA = :CODEMPRESA)and (CODPEDIDO = :CODPEDIDO)';
      QueryDragAndDrop.ParamByName('Codigo').AsInteger   := Consulta.FieldByName('Codigo').AsInteger;
      QueryDragAndDrop.ParamByName('CodPedido').AsString := Consulta.FieldByName('CodPedido').AsString;
      QueryDragAndDrop.ParamByName('CodEmpresa').AsString:= Consulta.FieldByName('CodEmpresa').AsString;
      QueryDragAndDrop.Open;
      if (QueryDragAndDrop.RecordCount > 0 ) then
      begin
        QueryDragAndDrop.Edit;
        QueryDragAndDrop.FieldByName('SITUACAO').AsString:=BancoInter.Situacao;
        QueryDragAndDrop.Post;
      end;
      if BancoInter.Situacao = 'PAGO' then
      begin
        Financeiro.Close;
        Financeiro.ParamByName('Codigo').AsInteger:=Consulta.FieldByName('Codigo').AsInteger;
        Financeiro.ParamByName('CodPedido').AsString:=Consulta.FieldByName('CodPedido').AsString;
        Financeiro.ParamByName('CodEmpresa').AsString:=Consulta.FieldByName('CodEmpresa').AsString;
        Financeiro.Open;
        if (Financeiro.RecordCount > 0) and (Financeiro.FieldByName('TIPO').AsString = 'A RECEBER') then
        begin
          TransaDragAndDrop.StartTransaction;
          Financeiro.Edit;
          if BancoInter.ValorPago > Financeiro.FieldByName('VALOR').AsFloat then
            Financeiro.FieldByName('JUROS').AsFloat := BancoInter.ValorPago - Financeiro.FieldByName('VALOR').AsFloat;
          if BancoInter.ValorPago < Financeiro.FieldByName('VALOR').AsFloat then
            Financeiro.FieldByName('DESCONTO').AsFloat        := Financeiro.FieldByName('VALOR').AsFloat - BancoInter.ValorPago;
          Financeiro.FieldByName('CODUSUARIO').AsInteger      := CodigoUsuario;
          Financeiro.FieldByName('TIPO').AsString             := 'RECEBIDA';
          Financeiro.FieldByName('DATAPAGTO').AsDateTime      := BancoInter.DataHoraSituacao;
          Financeiro.FieldByName('LANCAMENTO_FUTURO').AsString := 'N';
          Financeiro.Post;
          TransaDragAndDrop.Commit;
        end;
      end;
    end; *)
//  end;

  RefreshConsulta;
//  ShowMessage('Terminou a Consulta ');
end;

procedure TFrame_ConsuBoleto.tiImprimir_BoletoClick(Sender: TdxTileControlItem);
var
  AModoBoleto : TModoImpressaoBoleto;
begin
  inherited;
  // Aqui deve abrir o financeiro e imprimir
  FACBrBoleto.ImprimirMensagemPadrao := false;
    //Quando for atualização automática do boleto, a form não fica visível
//    if (not Self.Visible) or (Imprimir_Direto = 'Email') then
//      AModoBoleto := mibApenasPDF
//    else if Imprimir_Direto = 'Sim' then
//      AModoBoleto := mibImprimirDireto
//    else
  AModoBoleto := mibMostrarPreview;
//    ADMBoletos.GerarBoletoACBr(Financeiro, ADummy, AModoBoleto);
//        btnConfirmarClick(nil);
end;

procedure TFrame_ConsuBoleto.tiEnviarEmail_BoletoClick(Sender: TdxTileControlItem);
begin
  inherited;
  // Deve abrir o Boleto, e enviar
  // EnviarEmailBoleto(False);
end;

procedure TFrame_ConsuBoleto.tiGerar_PDF_BoletoClick(Sender: TdxTileControlItem);
begin
  inherited;
//  IF Not GeraTokenInter THEN
//   Exit;
//  BancoInter.NossoNumero := Poem_Zeros(Financeiro.FieldByName('BOLETO_NOSSO_NR').AsString, 11);
//  BancoInter.DownloadPDF;
////  edtArqPDF.Text := BancoInter.ArqPDF;
//  if FileExists(BancoInter.ArqPDF) then
//    ShellExecute(Handle, nil, PChar(BancoInter.ArqPDF), nil, nil, SW_SHOWNORMAL);
end;
                  {
function TFrame_ConsuBoleto.GeraTokenInter: Boolean;
Var
  QuerX : TFDQuery;
begin
  inherited;
  Result:=False;
  if Not Assigned(BancoInter)  then
  begin
    BancoInter := TBancoInter.Create(Self);
    BancoInter.Scope := 'extrato.read boleto-cobranca.read boleto-cobranca.write';
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := ' Select ClientID, CertFile, KeyFile, ClientSecret from Contas where Codigo = :Codigo';
      QuerX.ParamByName('Codigo').AsInteger:=Consulta.FieldByName('CODCONTA').AsInteger;
      QuerX.Open;
      if QuerX.RecordCount > 0 then
      begin
  //    Abre e salva os arquivos no lugar certo
  //    Abre e salva os arquivos no lugar certo

        if not FileExists(ExtractFilePath(ParamStr(0)) + 'certificado.crt') then
          TBlobField(QuerX.FieldByName('CERTFILE')).SaveToFile(ExtractFilePath(ParamStr(0)) + 'certificado.crt');
        if not FileExists(ExtractFilePath(ParamStr(0)) + 'chave.key') then
          TBlobField(QuerX.FieldByName('KeyFile')).SaveToFile(ExtractFilePath(ParamStr(0)) + 'chave.key');
        BancoInter.CertFile := ExtractFilePath(ParamStr(0)) + 'certificado.crt';
        BancoInter.KeyFile := ExtractFilePath(ParamStr(0)) + 'chave.key';
        BancoInter.ClientID :=Trim( QuerX.FieldByName('ClientID').AsString);
        BancoInter.ClientSecret := Trim(QuerX.FieldByName('ClientSecret').AsString);
      end;
    finally
      QuerX.Free;
    end;
  end;
  if (BancoInter.Token = '') or (BancoInter.TokenTime < now) then
  begin
    BancoInter.GetToken;
    if BancoInter.Token = '' then
    begin
      ShowMessage('Erro ao obter o Token de Acesso');
      Exit;
    end;
  end;
  Result:=True;
end;
        }
procedure TFrame_ConsuBoleto.GridConsultaDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
  var
  ADataAtual, ADataVencto : TDateTime;
  AValue : Variant;
begin
  inherited;
  if AViewInfo.Item.Index = CadGridCadastrosDBTableView1Total.Index then
  begin
    ACanvas.Brush.Color := clMoneyGreen;
  end;

  if AViewInfo.Item.Index = GridConsultaDBTableView1SITUACAO.Index then
  begin
    AValue := AViewInfo.GridRecord.Values[GridConsultaDBTableView1SITUACAO.Index];
    if AValue = 'Não registrado' then
      ACanvas.Brush.Color := clYellow
    else if AValue = 'EMABERTO' then
      ACanvas.Brush.Color := clWebPapayaWhip
    else if AValue = 'PAGO' then
      ACanvas.Brush.Color := clGreen
    else if AValue = 'VENCIDO' then
      ACanvas.Brush.Color := clWebDarkOrange
    else if AValue = 'BAIXADO' then
      ACanvas.Brush.Color := clWebLavender
    else if AValue = 'CANCELADO' then
      ACanvas.Brush.Color := clRed;
  end;

  if AViewInfo.Item.Index = CadGridCadastrosDBTableView1VENCTO.Index then
  begin
    AValue := AViewInfo.GridRecord.Values[CadGridCadastrosDBTableView1VENCTO.Index];
    if not VarIsNull(AValue) then
    begin
      ADataVencto := AValue;
      ADataVencto := DateOf(ADataVencto);
      ADataAtual  := DateOf(Now);
      if ADataVencto < ADataAtual then
        ACanvas.Brush.Color := clRed
      else if ADataVencto = ADataAtual then
        ACanvas.Brush.Color := clYellow
      else if ADataVencto = IncDay(ADataAtual, 1) then
        ACanvas.Brush.Color := clMoneyGreen
      else if ADataVencto = IncDay(ADataAtual, 2) then
        ACanvas.Brush.Color := clSkyBlue;
    end;
  end;
end;

procedure TFrame_ConsuBoleto.GridConsultaDBTableView1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
begin
  inherited;
  edtExpirados.Value    := SomaColuna(GridConsultaDBTableView1, GridConsultaDBTableView1Valor_Expirado);
  edtCancelados.Value   := SomaColuna(GridConsultaDBTableView1, GridConsultaDBTableView1Valor_Cancelado);
  edtSem_Registro.Value := SomaColuna(GridConsultaDBTableView1, GridConsultaDBTableView1Valor_Sem_Registro);
  edtEm_Aberto.Value    := SomaColuna(GridConsultaDBTableView1, GridConsultaDBTableView1Valor_Em_Aberto);
  edtVencidos.Value     := SomaColuna(GridConsultaDBTableView1, GridConsultaDBTableView1Valor_Vencido);
  edtPagos.Value        := SomaColuna(GridConsultaDBTableView1, GridConsultaDBTableView1Valor_Pago);
end;

procedure TFrame_ConsuBoleto.pnlAcoesExit(Sender: TObject);
begin
  inherited;
  Ocultar(pnlAcoes);
end;

procedure TFrame_ConsuBoleto.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
Var I : Integer;
  ACampo_Codigo: String;
  ACampo_Sql: String;
begin
  inherited;
//  case cxCheckListBox1.ItemIndex
  LiGridSubGrid.Visible:= (GridConsultaDBTableView1.GroupedColumnCount > 0);
  if GridConsultaDBTableView1.GroupedColumnCount > 0 then
  begin
    with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
    try
      ACampo_Codigo    := FieldName;
      if ACampo_Codigo = 'DESCRICAOCONTA' then    //
      begin
        ACampo_Sql       := 'C.'+ACampo_Codigo;
      end
      else if ACampo_Codigo = 'FORNECEDOR' then
      begin
        ACampo_Sql       := 'P.PESSOA_RESPONSAVEL_CODIGO';
        ACampo_Codigo    := 'PESSOA_RESPONSAVEL_CODIGO';
      end
      else begin
        if Consulta.FieldByName(FieldName).AutoGenerateValue <> TAutoRefreshFlag(arNone) then
          ACampo_Codigo    := 'COD'+FieldName;

        ACampo_Sql       := 'P.'+ACampo_Codigo;
      end;
      AgrupaSubGrid(ACampo_Codigo, FieldName, ACampo_Sql );
    finally
    end;
    LiGridSubGrid.Visible:= True;
  end;
  SplitSubGrid.Visible:= LiGridSubGrid.Visible;
end;

procedure TFrame_ConsuBoleto.WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
begin
  inherited;
//  ASQL := ReplaceText(ASQL, '(COR', '(C.DESCRICAO');
  if ASQL = 'ATIVO' then
    ASQL := ReplaceStr(ASQL, 'ATIVO', 'B.ATIVO')
  else
    ASQL := ReplaceStr(ASQL, '(ATIVO', '(B.ATIVO'); //
end;

procedure TFrame_ConsuBoleto.WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
begin
  inherited;
  WRFormataCamposDataSets1.AdicionarDataSet(Consulta, 'BOLETOS');
end;

initialization
  RegisterClass(TFrame_ConsuBoleto);
  RegisterFrameCon(Tag_Boleto, TFrame_ConsuBoleto);

end.
