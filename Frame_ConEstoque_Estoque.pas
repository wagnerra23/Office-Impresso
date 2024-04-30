unit Frame_ConEstoque_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Con, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  Vcl.Menus, cxContainer, cxLabel, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxScreenTip, cxGridTableView, cxGridDBTableView, FireDAC.Comp.Client,
  cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset,
  System.Generics.Collections, WREventos, frxClass, frxDBSet, System.ImageList,
  Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint,
  Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.DataSet, dxPSCore,
  dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton, cxDropDownEdit,
  cxCalendar, cxButtonEdit, dxCustomTileControl, dxTileControl, cxTextEdit,
  cxMaskEdit, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridCustomTableView, cxGridDBLayoutView, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGrid, dxLayoutControl,
  cxCurrencyEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations, uWRFormataCamposDataSet;

type
  TFrame_ConsuEstoque_Estoque = class(TConsu_Frame)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1CODFABRICA: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1UNIDADE: TcxGridDBColumn;
    tcAgrupadorItem1: TdxTileControlItem;
    tcAgrupadorItem2: TdxTileControlItem;
    tcAgrupadorItem3: TdxTileControlItem;
    tcAgrupadorItem4: TdxTileControlItem;
    tcAgrupadorItem5: TdxTileControlItem;
    tcFiltrosPanelItem1: TdxTileControlItem;
    tcFiltrosPanelItem2: TdxTileControlItem;
    tcAgrupadorItem6: TdxTileControlItem;
    Produto_Estoque_Local: TFDQuery;
    ConsultaCUSTO_TOTAL: TFloatField;
    ConsultaCODIGO: TStringField;
    ConsultaCODFABRICA: TStringField;
    ConsultaDESCRICAO: TStringField;
    ConsultaUNIDADE: TStringField;
    ConsultaESTOQUE_MIN: TFloatField;
    ConsultaESTOQUE_MAX: TFloatField;
    ConsultaDIAS_PARA_COMPRAR_MIN: TIntegerField;
    ConsultaDIAS_PARA_COMPRAR_MAX: TIntegerField;
    ConsultaCODEMPRESA: TStringField;
    ConsultaCODPRODUTO: TStringField;
    ConsultaCODEMPRESA_1: TStringField;
    ConsultaESTOQUE: TFloatField;
    ConsultaPRINCIPAL: TFloatField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    ConsultaCUSTO: TFloatField;
    ConsultaVALOR: TFloatField;
    ConsultaCODPRODUTO_CATEGORIA: TStringField;
    ConsultaCATEGORIA: TStringField;
    ConsultaCODPRODUTO_GRUPO: TStringField;
    ConsultaGRUPO: TStringField;
    ConsultaCODPRODUTO_MARCA: TIntegerField;
    ConsultaMARCA: TStringField;
    ConsultaCODPRODUTO_TIPO: TIntegerField;
    ConsultaTIPO: TStringField;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    liTotalSelecionado: TcxLabel;
    GridConsultaDBTableView1CUSTO_TOTAL: TcxGridDBColumn;
    GridConsultaDBTableView1ESTOQUE_MIN: TcxGridDBColumn;
    GridConsultaDBTableView1ESTOQUE_MAX: TcxGridDBColumn;
    GridConsultaDBTableView1DIAS_PARA_COMPRAR_MIN: TcxGridDBColumn;
    GridConsultaDBTableView1CODEMPRESA: TcxGridDBColumn;
    GridConsultaDBTableView1ESTOQUE: TcxGridDBColumn;
    GridConsultaDBTableView1LOCAL: TcxGridDBColumn;
    GridConsultaDBTableView1CUSTO: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUTO_CATEGORIA: TcxGridDBColumn;
    GridConsultaDBTableView1CATEGORIA: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUTO_GRUPO: TcxGridDBColumn;
    GridConsultaDBTableView1GRUPO: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUTO_MARCA: TcxGridDBColumn;
    GridConsultaDBTableView1MARCA: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUTO_TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1TIPO: TcxGridDBColumn;
    ConsultaEstoque_Previsto: TFloatField;
    GridConsultaDBTableView1Estoque_Previsto: TcxGridDBColumn;
    WRFormataCamposDataSets1: TWRFormataCamposDataSets;
    dxTileControl1Item1: TdxTileControlItem;
    dxLayoutItem1: TdxLayoutItem;
    EdtTotal: TcxCurrencyEdit;
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure GridConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ConsultaBeforeClose(DataSet: TDataSet);
    procedure Produto_Estoque_LocalAfterOpen(DataSet: TDataSet);
    procedure ConsultaCalcFields(DataSet: TDataSet);
    procedure GridConsultaDBTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure tcAgrupadorItem1Click(Sender: TdxTileControlItem);
    procedure tcAgrupadorItem2Click(Sender: TdxTileControlItem);
    procedure tcAgrupadorItem3Click(Sender: TdxTileControlItem);
    procedure tcAgrupadorItem4Click(Sender: TdxTileControlItem);
    procedure tcAgrupadorItem5Click(Sender: TdxTileControlItem);
    procedure tcAgrupadorItem6Click(Sender: TdxTileControlItem);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuEstoque_Estoque: TFrame_ConsuEstoque_Estoque;
  FCriouFields: String;

implementation

{$R *.dfm}

uses Base, UnitFuncoes, wrConstantes, wrFuncoes, Classes.WR, StrUtils, Tag.Form;

procedure TFrame_ConsuEstoque_Estoque.ConsultaAfterOpen(DataSet: TDataSet);
begin
  Produto_Estoque_Local.Open;

  inherited;

end;

procedure TFrame_ConsuEstoque_Estoque.ConsultaBeforeClose(
  DataSet: TDataSet);
begin
  inherited;
  Produto_Estoque_Local.Close;

end;

procedure TFrame_ConsuEstoque_Estoque.ConsultaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if Consulta.FieldByName('ESTOQUE').AsFloat > 0 then
    Consulta.FieldByName('CUSTO_TOTAL').AsFloat := Trunc(Consulta.FieldByName('ESTOQUE').AsFloat * Consulta.FieldByName('CUSTO').AsFloat)
  else
    Consulta.FieldByName('CUSTO_TOTAL').AsFloat := 0;
end;

procedure TFrame_ConsuEstoque_Estoque.FrameEnter(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrame_ConsuEstoque_Estoque.GridConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  AValue, AValue2 : Variant;
  ARecord: TcxCustomGridRecord;
  Column : TcxGridDBColumn;
  I, J: Integer;
begin
  inherited;
  ARecord := AViewInfo.GridRecord;
  if not (ARecord is TcxGridGroupRow) then
  begin
    if AViewInfo.Item.Index = GridConsultaDBTableView1ESTOQUE.Index then
    begin
  //      try
      AValue := ARecord.Values[GridConsultaDBTableView1ESTOQUE.Index];
      AValue2 := ARecord.Values[GridConsultaDBTableView1ESTOQUE_MIN.Index];
      if AValue < AValue2 then
        ACanvas.Font.Color := clRed
      else
        ACanvas.Font.Color := clGreen;
      if (AValue < 0) then
        ACanvas.Brush.Color := $009EA8FC;


  //      except
  //
  //      end;
      ACanvas.Font.Style := [fsBold];
    end;

  end;
  if Produto_Estoque_Local.State = dsBrowse then
  begin
    Produto_Estoque_Local.First;
    while not Produto_Estoque_Local.Eof do
    begin
      Column := GridConsultaDBTableView1.GetColumnByFieldName(Produto_Estoque_Local.FieldByName('DESCRICAO').AsString);
      if Column <> nil then
      begin
        if AViewInfo.Item.Index = GridConsultaDBTableView1.Columns[Column.Index].Index then
        begin
          AValue := ARecord.Values[Column.Index];
          AValue2 := ARecord.Values[GridConsultaDBTableView1ESTOQUE_MIN.Index];
          if AValue < AValue2 then
            ACanvas.Font.Color := $005353FF
          else
            ACanvas.Font.Color := $0042FF42;
        end;
      end;
      Produto_Estoque_Local.Next;
    end;
  end;


//  for FColumnIndex[J] := 0 to -1 do
//  begin
//    if AViewInfo.Item.Index = GridConsultaDBTableView1.Columns[FColumnIndex[J]].Index then
//    begin
//      AValue := ARecord.Values[Column.Index];
//      AValue2 := ARecord.Values[GridConsultaDBTableView1ESTOQUE_MIN.Index];
//      if AValue < AValue2 then
//        ACanvas.Font.Color := clRed
//      else
//        ACanvas.Font.Color := clGreen;
//    end;
//  end;




end;

procedure TFrame_ConsuEstoque_Estoque.GridConsultaDBTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
var
  AIndex: Integer;
  AValue: Variant;
begin
  inherited;
  AIndex := GridConsultaDBTableView1.DataController.Summary.FooterSummaryItems.IndexOfItemLink(GridConsultaDBTableView1CUSTO_TOTAL);
  AValue := GridConsultaDBTableView1.DataController.Summary.FooterSummaryValues[AIndex];

  if not VarIsNull(AValue) then
    EdtTotal.Value := VarAsType(AValue, varDouble);
end;

procedure TFrame_ConsuEstoque_Estoque.Produto_Estoque_LocalAfterOpen(
  DataSet: TDataSet);
var
  I :Integer;
  Column :TcxGridDBColumn;
begin
  inherited;
  if not (FCriouFields = 'S') then
  begin
    try
      I := GridConsultaDBTableView1ESTOQUE.Index;
      I := I -1;
  //    J := 0;
      if Produto_Estoque_Local.State = dsBrowse then
      begin
        Produto_Estoque_Local.First;
        while not Produto_Estoque_Local.Eof do
        begin
          Column := GridConsultaDBTableView1.CreateColumn;
          GridConsultaDBTableView1.Columns[Column.Index].DataBinding.FieldName := Produto_Estoque_Local.FieldByName('DESCRICAO').AsString;
          GridConsultaDBTableView1.Columns[Column.Index].Caption := Produto_Estoque_Local.FieldByName('DESCRICAO').AsString;
          Column.Index := I + 1;
  //        FColumnIndex[J] := Column.Index;
  //        J := J + 1;
          Produto_Estoque_Local.Next;
        end;
        FCriouFields := 'S';
      end;
    finally
  //
    end;
  end;
end;

procedure TFrame_ConsuEstoque_Estoque.tcAgrupadorItem1Click(
  Sender: TdxTileControlItem);
begin
  inherited;
//  AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1DESCRICAO, TdxSortOrder.soDescending);
end;

procedure TFrame_ConsuEstoque_Estoque.tcAgrupadorItem2Click(
  Sender: TdxTileControlItem);
begin
  inherited;
//  AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1CATEGORIA, TdxSortOrder.soDescending);
end;

procedure TFrame_ConsuEstoque_Estoque.tcAgrupadorItem3Click(
  Sender: TdxTileControlItem);
begin
  inherited;
//  AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1TIPO, TdxSortOrder.soDescending);
end;

procedure TFrame_ConsuEstoque_Estoque.tcAgrupadorItem4Click(
  Sender: TdxTileControlItem);
begin
  inherited;
//  AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1GRUPO, TdxSortOrder.soDescending);
end;

procedure TFrame_ConsuEstoque_Estoque.tcAgrupadorItem5Click(
  Sender: TdxTileControlItem);
begin
  inherited;
//  AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1MARCA, TdxSortOrder.soDescending);
end;

procedure TFrame_ConsuEstoque_Estoque.tcAgrupadorItem6Click(
  Sender: TdxTileControlItem);
begin
  inherited;
//  AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1EMPRESA, TdxSortOrder.soDescending);
end;

procedure TFrame_ConsuEstoque_Estoque.WREventosConsultaGetFiltrosConsulta(
  Sender: TObject);
Var
  ACampo_Codigo: String;
  ACampo_Sql: String;
begin
  inherited;
  SQLWhere.AddAnd('PG.CODNF_NATUREZA_OPERACAO = 0');
  LiGridSubGrid.Visible:= (GridConsultaDBTableView1.GroupedColumnCount > 0);
  if GridConsultaDBTableView1.GroupedColumnCount > 0 then
  begin
    with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
    try
      ACampo_Codigo    := FieldName;
      if ACampo_Codigo = 'DESCRICAO' then
      begin
        ACampo_Sql    := 'P.CODIGO';
        ACampo_Codigo := 'CODIGO';
      end
      else
      if ACampo_Codigo = 'CATEGORIA' then
      begin
        ACampo_Sql := 'P.CODPRODUTO_CATEGORIA';
        ACampo_Codigo := 'CODPRODUTO_CATEGORIA';
      end
      else
      if ACampo_Codigo = 'TIPO' then
      begin
        ACampo_Sql := 'CODPRODUTO_TIPO';
        ACampo_Codigo := 'CODPRODUTO_TIPO';
      end
      else
      if ACampo_Codigo = 'GRUPO' then
      begin
        ACampo_Sql := 'CODPRODUTO_GRUPO';
        ACampo_Codigo := 'CODPRODUTO_GRUPO';
      end
      else
      if ACampo_Codigo = 'MARCA' then
      begin
        ACampo_Sql := 'CODPRODUTO_MARCA';
        ACampo_Codigo := 'CODPRODUTO_MARCA';
      end
      else
      if ACampo_Codigo = 'EMPRESA' then
      begin
        ACampo_Sql := 'CODEMPRESA';
        ACampo_Codigo := 'CODEMPRESA';
      end

//      else if ACampo_Codigo = 'USUARIO_CONTA' then
//      begin
//        ACampo_Sql       := 'UC.USUARIO';
//        ACampo_Codigo    := 'USUARIO';
//      end
//      else if ACampo_Codigo = 'PLANOCONTAS' then   // C.DESCRICAO as CONTA, U.USUARIO, UC.USUARIO as USUARIO_CONTA
//      begin
//        ACampo_Sql       := 'PC.DESCRICAO';
//        ACampo_Codigo    := 'CODPLANOCONTAS';
//      end



      else
      begin
//        if Consulta.FieldByName(FieldName).AutoGenerateValue <> TAutoRefreshFlag(arNone) then
//          ACampo_Codigo    := 'COD'+FieldName;
//
//        ACampo_Sql       := ACampo_Codigo;
      end;
       AgrupaSubGrid(ACampo_Codigo, FieldName, ACampo_Sql );
    finally
    end;
    LiGridSubGrid.Visible:= True;
  end;
end;

procedure TFrame_ConsuEstoque_Estoque.WREventosConsultaSQLTrataNomes(
  Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, 'ATIVO', 'P.ATIVO');
  ASQL := ReplaceText(ASQL, 'CODPRODUTO_CATEGORIA', 'P.CODPRODUTO_CATEGORIA');
end;

procedure TFrame_ConsuEstoque_Estoque.WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
begin
  inherited;
  ConsultaVALOR.DisplayFormat        := DecimalFinanceiro;
  ConsultaCUSTO.DisplayFormat        := DecimalFinanceiro;
  ConsultaCUSTO_TOTAL.DisplayFormat  := DecimalFinanceiro;
end;

initialization
  RegisterClass(TFrame_ConsuEstoque_Estoque);
  RegisterFrameCon(Tag_Estoque_Estoque, TFrame_ConsuEstoque_Estoque);

end.
