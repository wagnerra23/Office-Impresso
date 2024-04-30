unit Frame_ConVenda_Orcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_ConVenda_Mestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  Data.DB, cxDBData, cxCalendar, cxLabel, cxCurrencyEdit, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, dxBar, dxRibbon, uWRFormataCamposDataSet,
  cxEditRepositoryItems, UCBase, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset, System.Generics.Collections, WREventos, frxClass,
  frxDBSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxInplaceContainer, cxDBTL, cxTLData,
  dxActivityIndicator, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, cxButtonEdit, dxCustomTileControl, dxTileControl, uButtonFlat, cxGridViewLayoutContainer,
  cxGridLayoutView, cxGridDBLayoutView, cxGridLevel, cxGridChartView, cxGridDBChartView, cxGridCustomLayoutView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtons, cxTextEdit, dxLayoutControl, dxScrollbarAnnotations,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_ConsuVenda_Orcamento = class(TFrame_ConsuVenda_Mestre)
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuVenda_Orcamento: TFrame_ConsuVenda_Orcamento;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, wrForms, Frame_CadVenda_Mestre, Tag.Form;

procedure TFrame_ConsuVenda_Orcamento.dxTileControl1Item1Click(Sender: TdxTileControlItem);
var
  ACodVendaNew, Tipo: string;
  I: Integer;
  QuerX, QuerAux: TFDQuery;
  AGridRecord: TcxCustomGridRecord;
  AFrmVenda: TFrame_Venda_Mestre;
begin
  ShowMessage('Função desativada.');
  Exit;
  for I := 0 to GridConsultaDBTableView1.DataController.GetSelectedCount - 1 do
  begin
    AGridRecord := GridConsultaDBTableView1.Controller.SelectedRows[I]; // DataController.SelectRows(i, GridConsultaDBTableView1DT_FATURAMENTO.Index))) and (ATipoCopiaPedido <> tcpNotaFiscal) then
    if not VarisNull(AGridRecord.Values[GridConsultaDBTableView1DT_FATURAMENTO.Index]) then
    begin
      ShowMessage('Não pode faturar vendas ja faturadas');
      Exit;
    end;
  end;
  if GridProdutos.DataController.RecordCount <> GridProdutos.DataController.GetSelectedCount then
    Tipo := 'Parcial'
  else
    Tipo := 'Integral';
  for I := 0 to GridProdutos.DataController.GetSelectedCount - 1 do
  begin
    if not VarSameValueWR(GridProdutos.DataController.Values[I, GridProdutosCODVENDA.Index],
      Consulta.FieldByName('CODIGO').AsString) then
    begin
      Tipo := 'Agrupado';
    end;
  end;
  if (MessageBox(0, PWideChar('Deseja Aprovar Orçamento?' + '(' + Tipo + ')'), '', MB_ICONQUESTION
    or MB_YESNO or MB_DEFBUTTON1) = idYes) then
  begin
//    AFrmVenda:=TFrmVenda(ConsultaForm(TFrmVenda));
    AFrmVenda := TFrame_Venda_Mestre(CadastroTag_Frame(nil, Tag_Venda));
    with AFrmVenda do
    try
      CloseOpen_AbrirRegistro(Consulta.FieldByName('CODIGO').AsString);
      ACodVendaNew := FrameCopiarVendaEFinanceiro(AFrmVenda, Consulta, venda_Financeiro, Venda_Produto, '');
      for I := 0 to GridProdutos.DataController.GetSelectedCount - 1 do
      begin
        FrameCopiarVendaProdutos(GridProdutos.DataController.Values[GridProdutos.Controller.SelectedRows[I].RecordIndex,
          GridProdutosCODVENDA.Index], GridProdutos.DataController.Values[GridProdutos.Controller.SelectedRows
          [I].RecordIndex, GridProdutosCODIGO.Index], ACodVendaNew, True);
      end;
      QuerAux := GeraFDQuery(TransaFD);
      QuerAux.SQL.Text := 'update VENDA P set P.STATUS = ''ATIVO APROVADO''' +
        GetSQLVendasSelecionadas(false);
      QuerAux.ParamByName('Codigo').AsString := Consulta.FieldByName('CODIGO').AsString;
      QuerAux.ExecSQL;
      TransaFD.Commit;
      CloseOpen_AbrirRegistro(ACodVendaNew);
      Cadastro.Edit;
      if Tipo = 'Agrupado' then
        Cadastro.FieldByName('STATUS').AsString := 'ATIVO AGRUPADO'
      else
        Cadastro.FieldByName('STATUS').AsString := 'ATIVO';
      Cadastro.FieldByName('IS_VENDA').AsString := 'S';
      Cadastro.FieldByName('IS_NOTAFISCAL').Clear;
      Cadastro.FieldByName('IS_ORCAMENTO').Clear;
      Cadastro.FieldByName('DT_COMPETENCIA').AsDateTime := Cadastro.FieldByName('DT_EMISSAO').AsDateTime;
      Cadastro.FieldByName('OBSERVACAO').AsString := Cadastro.FieldByName('OBSERVACAO').AsString +
        sLineBreak + 'Pedido(s): ' + FVendasSelecionadas.DelimitedTextWR;
//      RateioDescontoAcrescimoFrete;
      WRCalc.SuperCalc;
    finally
//      FormStyle := fsMDIChild;
      MainLayout.EndUpdate;
      Application.ProcessMessages;
      Show;
    end;
  end;
end;

procedure TFrame_ConsuVenda_Orcamento.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
  SQLWhere.AddAnd('P.IS_ORCAMENTO = ''S''');
end;

initialization
  RegisterClass(TFrame_ConsuVenda_Orcamento);
  RegisterFrameCon(Tag_Venda_Orcamento, TFrame_ConsuVenda_Orcamento);

end.
