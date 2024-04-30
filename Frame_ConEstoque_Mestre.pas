unit Frame_ConEstoque_Mestre;

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
  cxButtons, cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxCurrencyEdit,
  dxScrollbarAnnotations, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_ConsuEstoque_Mestre = class(TConsu_Frame)
    ConsultaQuantCalculada: TCurrencyField;
    GridConsultaDBTableView1QuantCalculada: TcxGridDBColumn;
    GridConsultaDBTableView1QUANT_ATUAL: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO_GRUPO: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO_CATEGORIA: TcxGridDBColumn;
    GridConsultaDBTableView1UNIDADE: TcxGridDBColumn;
    GridConsultaDBTableView1MODULO: TcxGridDBColumn;
    ConsultaModulo: TStringField;
    GridConsultaDBTableView1IS_PENDENTE: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO: TcxGridDBColumn;
    GridConsultaDBTableView1CUSTO_VENDA_TOTAL: TcxGridDBColumn;

    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure tiAgrupar_DesagruparClick(Sender: TdxTileControlItem);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure ConsultaCalcFields(DataSet: TDataSet);
    procedure GridConsultaDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure GridConsultaDBTableView1DataControllerSummaryDefaultGroupSummaryItemsSummary(
      ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
      var OutArguments: TcxSummaryEventOutArguments);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuEstoque_Mestre: TFrame_ConsuEstoque_Mestre;

implementation

{$R *.dfm}

Uses StrUtils, wrFuncoes, unitfuncoes;

procedure TFrame_ConsuEstoque_Mestre.ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if Consulta.FieldByName('TIPO_MOVIMENTO').AsString = 'S' then
    Consulta.FieldByName('QuantCalculada').AsFloat:=-Consulta.FieldByName('Quant').AsFloat
  else
    Consulta.FieldByName('QuantCalculada').AsFloat:=Consulta.FieldByName('Quant').AsFloat;
  if Consulta.FieldByName('FORM').AsString = 'FrmVenda' then
    Consulta.FieldByName('MODULO').AsString:='Venda'
  else
  if Consulta.FieldByName('FORM').AsString = 'FrmNF_Entrada' then
    Consulta.FieldByName('MODULO').AsString:='Compra'
  else
  if Consulta.FieldByName('FORM').AsString = 'FrmProduto' then
    Consulta.FieldByName('MODULO').AsString:='Produto'
  else
  if Consulta.FieldByName('FORM').AsString = 'FrmBalanco' then
    Consulta.FieldByName('MODULO').AsString:='Balanço'
  else
  if Consulta.FieldByName('FORM').AsString = 'FrmProducao' then
    Consulta.FieldByName('MODULO').AsString:='Produção';
end;

procedure TFrame_ConsuEstoque_Mestre.GridConsultaDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Item.Index = GridConsultaDBTableView1QuantCalculada.Index then
  begin
    try
      if (VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1QuantCalculada.Index], varDouble) < 0) then
        ACanvas.Font.Color := clRed
      else
        ACanvas.Font.Color := clGreen;
    except

    end;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.Item.Index = GridConsultaDBTableView1QUANT_ATUAL.Index then
  begin
    try
      if (VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1QUANT_ATUAL.Index], varDouble) < 0) then
        ACanvas.Font.Color := clRed
      else
        ACanvas.Font.Color := clGreen;
    except

    end;
    ACanvas.Font.Style := [fsBold];
    ACanvas.Brush.Color := clMoneyGreen;
  end;
  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1IS_PENDENTE.Index], varString)) = 'S')
  then
  begin
    if AViewInfo.Focused or AViewInfo.Selected then
      ACanvas.Brush.Color := $0098FCFA  // Amarelo
    else
      ACanvas.Brush.Color := $0098FCFA; // Amarelo
  end
end;

procedure TFrame_ConsuEstoque_Mestre.GridConsultaDBTableView1DataControllerSummaryDefaultGroupSummaryItemsSummary(
  ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
  var OutArguments: TcxSummaryEventOutArguments);
var
  ATipo: Variant;
  AValor: Double;
  AItem: TcxGridTableSummaryItem;
begin
  inherited;
  AItem := TcxGridTableSummaryItem(Arguments.SummaryItem);
  if (AItem.Column = GridConsultaDBTableView1CUSTO_VENDA_TOTAL) and (AItem.Kind = skSum) then
  begin
    ATipo := VarToStrDef(GridConsultaDBTableView1.DataController.Values[Arguments.RecordIndex, GridConsultaDBTableView1PRODUTO_CATEGORIA.Index], '');

    AValor := VarToDoubleDef(GridConsultaDBTableView1.DataController.Values[Arguments.RecordIndex, GridConsultaDBTableView1CUSTO_VENDA_TOTAL.Index], 0);
    OutArguments.Value := -AValor;

  end;
end;

procedure TFrame_ConsuEstoque_Mestre.tiAgrupar_DesagruparClick(Sender: TdxTileControlItem);
begin
  inherited;
//  edtRapidoAgrupar.text := Sender.Text1.Value;
  if Sender.Text1.Value = 'Grupo de Produto'  then
//    AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1PRODUTO_GRUPO, TdxSortOrder.soDescending);
  if Sender.Text1.Value = 'Categoria de Produto'  then
//    AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1PRODUTO_CATEGORIA, TdxSortOrder.soDescending);
  if Sender.Text1.Value = 'Unidade'  then
//    AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1UNIDADE, TdxSortOrder.soDescending);
//  if Sender.Text1.Value = 'NCM'  then
//    AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1CODNF_NCM, TdxSortOrder.soDescending);
//  if Sender.Text1.Value = 'Tipo de Produto'  then
//    AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1PRODUTO_TIPO, TdxSortOrder.soDescending);
//  if Sender.Text1.Value = 'Fornecedor Padrão'  then
//    AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1FORNECEDOR, TdxSortOrder.soDescending);
end;

procedure TFrame_ConsuEstoque_Mestre.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
Var I : Integer;
  ACampo_Codigo: String;
  ACampo_Sql: String;
begin
  inherited;
  LiGridSubGrid.Visible:= (GridConsultaDBTableView1.GroupedColumnCount > 0);
  if GridConsultaDBTableView1.GroupedColumnCount > 0 then
  begin
    with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
    try
      ACampo_Codigo    := FieldName;
//        PreencheSeForOCampo(FieldName, 'CODPRODUTO_TIPO', 'PRODUTO_TIPO',  'P.CODPRODUTO_TIPO');
//        PreencheSeForOCampo(FieldName, 'CODLOCAL_APLICACAO', 'LOCAL_APLICACAO', 'P.CODLOCAL_APLICACAO');
//        PreencheSeForOCampo(FieldName, 'CODPRODUTO_GRUPO', 'PRODUTO_GRUPO',  'P.CODPRODUTO_GRUPO');
//        PreencheSeForOCampo(FieldName, 'CODCLASSIFICACAO', 'CLASSIFICACAO', 'P.CODCLASSIFICACAO');
//        PreencheSeForOCampo(FieldName, 'CODCOR', 'COR', 'P.CODCOR');
//        PreencheSeForOCampo(FieldName, 'CODFORNECEDOR', 'FORNECEDOR', 'P.CODFORNECEDOR');
//        if MatchStr(FieldName, [] then
      if ACampo_Codigo = 'CLASSIFICACAO' then
      begin
        ACampo_Sql       := 'PT.'+ACampo_Codigo;
      end
      else if ACampo_Codigo = 'FORNECEDOR' then
      begin
        ACampo_Sql       := 'P.PESSOA_RESPONSAVEL_CODIGO';
        ACampo_Codigo    := 'PESSOA_RESPONSAVEL_CODIGO';
      end
      else if ACampo_Codigo = 'PRODUTO_CATEGORIA' then
      begin
        ACampo_Sql       := 'P.CODPRODUTO_CATEGORIA';
        ACampo_Codigo    := 'CODPRODUTO_CATEGORIA';
      end
      else begin
        if Consulta.FieldByName(FieldName).AutoGenerateValue <> TAutoRefreshFlag(arNone) then
          ACampo_Codigo    := 'COD'+FieldName;

        ACampo_Sql       := 'M.'+ACampo_Codigo;
      end;
      AgrupaSubGrid(ACampo_Codigo, FieldName, ACampo_Sql);
    finally
    end;
    LiGridSubGrid.Visible:= True;
  end;
  SplitSubGrid.Visible:= LiGridSubGrid.Visible;
end;

procedure TFrame_ConsuEstoque_Mestre.WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, 'ATIVO', 'M.ATIVO');
  ASQL := ReplaceText(ASQL, 'DT_ALTERACAO', 'M.DT_ALTERACAO');
  ASQL := ReplaceText(ASQL, 'DATA', 'M.DATA');
  ASQL := ReplaceText(ASQL, 'ATUALIZADO', 'M.ATUALIZADO');
  ASQL := ReplaceText(ASQL, 'DESCRICAO', 'P.DESCRICAO');
  ASQL := ReplaceText(ASQL, 'COR', 'C.DESCRICAO');
  ASQL := ReplaceText(ASQL, 'USUARIO', 'U.LOGIN');
  ASQL := ReplaceText(ASQL, 'PRODUTO_CATEGORIA', 'PC.DESCRICAO');
  ASQL := ReplaceText(ASQL, 'PRODUTO_GRUPO', 'GP.DESCRICAO');
end;

end.
