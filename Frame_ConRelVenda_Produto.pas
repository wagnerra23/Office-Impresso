unit Frame_ConRelVenda_Produto;

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
  dxScreenTip, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper,
  UCHistDataset, System.Generics.Collections, WREventos, frxClass, frxDBSet,
  System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator,
  cxDateProfileButton, cxDropDownEdit, cxCalendar, cxButtonEdit,
  dxCustomTileControl, dxTileControl, cxTextEdit, cxMaskEdit, uButtonFlat,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView,
  cxGridDBLayoutView, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutControl, cxCurrencyEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TFrame_ConsuRelVenda_Produto = class(TConsu_Frame)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1CODVENDA: TcxGridDBColumn;
    GridConsultaDBTableView1PARENT: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUTO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1UNIDADE: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR_COMPRA: TcxGridDBColumn;
    GridConsultaDBTableView1CUSTO: TcxGridDBColumn;
    GridConsultaDBTableView1MARGEM: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR: TcxGridDBColumn;
    GridConsultaDBTableView1QUANT: TcxGridDBColumn;
    GridConsultaDBTableView1TOTAL: TcxGridDBColumn;
    GridConsultaDBTableView1TOTAL_RELATORIO: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR_RELATORIO: TcxGridDBColumn;
    GridConsultaDBTableView1QTDADEPECA: TcxGridDBColumn;
    GridConsultaDBTableView1LARG: TcxGridDBColumn;
    GridConsultaDBTableView1COMP: TcxGridDBColumn;
    GridConsultaDBTableView1ESPESSURA: TcxGridDBColumn;
    GridConsultaDBTableView1ACABAMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1CODIGOEAN: TcxGridDBColumn;
    GridConsultaDBTableView1MEDIDAS: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_VALOR_ORIGINAL: TcxGridDBColumn;
    GridConsultaDBTableView1CUSTO_FABR: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_VOUTRO_MANUAL: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_POUTRO_MANUAL: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_VDESC_MANUAL: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_PDESC_MANUAL: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_VLUCRO: TcxGridDBColumn;
    GridConsultaDBTableView1VDESC: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_VOUTRO: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_POUTRO: TcxGridDBColumn;
    GridConsultaDBTableView1CODFABRICA: TcxGridDBColumn;
    GridConsultaDBTableView1CODACABAMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUTO_GRUPO: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUTO_MARCA: TcxGridDBColumn;
    GridConsultaDBTableView1PDESC: TcxGridDBColumn;
    GridConsultaDBTableView1POUTRO: TcxGridDBColumn;
    GridConsultaDBTableView1VOUTRO: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR_MINIMO_VENDA: TcxGridDBColumn;
    GridConsultaDBTableView1TIPO_DESCONTO: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO_TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUTO_CATEGORIA: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_PRODUCAO_ENVIADO: TcxGridDBColumn;
    GridConsultaDBTableView1CUSTO_TOTAL: TcxGridDBColumn;
    GridConsultaDBTableView1PROTOCOLO: TcxGridDBColumn;
    GridConsultaDBTableView1TOTAL_IMPOSTOS: TcxGridDBColumn;
    GridConsultaDBTableView1DT_FATURAMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1SITUACAO: TcxGridDBColumn;
    GridConsultaDBTableView1VENDA_TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO_MARCA: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO_GRUPO: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO_CATEGORIA: TcxGridDBColumn;
    tcAgrupadorItem1: TdxTileControlItem;
    tcAgrupadorItem2: TdxTileControlItem;
    tcAgrupadorItem3: TdxTileControlItem;
    tcAgrupadorItem4: TdxTileControlItem;
    tcAgrupadorItem5: TdxTileControlItem;
    tcAgrupadorItem6: TdxTileControlItem;
    tcAgrupadorItem7: TdxTileControlItem;
    tcFiltrosPanelItem1: TdxTileControlItem;
    tcFiltrosPanelItem2: TdxTileControlItem;
    tcFiltrosPanelItem3: TdxTileControlItem;
    tcFiltrosPanelItem4: TdxTileControlItem;
    ConsultaDT_COMPETENCIA: TDateField;
    ConsultaDT_EMISSAO: TSQLTimeStampField;
    ConsultaDT_FATURAMENTO: TSQLTimeStampField;
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure GridConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure tcFiltrosPanelItem4Click(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuRelVenda_Produto: TFrame_ConsuRelVenda_Produto;

implementation

{$R *.dfm}

uses
  Base, UnitFuncoes, wrConstantes, wrFuncoes, Classes.WR, StrUtils, Tag.Form;

procedure TFrame_ConsuRelVenda_Produto.GridConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  AValue, AValue2 : Variant;
  ARecord: TcxCustomGridRecord;
  Column : TcxGridDBColumn;
begin
  inherited;
  ARecord := AViewInfo.GridRecord;
  if not (ARecord is TcxGridGroupRow) then
  begin
    if AViewInfo.Item.Index = GridConsultaDBTableView1QUANT.Index then
    begin
  //      try
      AValue := ARecord.Values[GridConsultaDBTableView1QUANT.Index];
      if (AValue < 0) then
      begin
        ACanvas.Brush.Color := $009EA8FC;
        ACanvas.Font.Color := clRed;
      end
      else
       ACanvas.Font.Color := clGreen;

  //      except
  //
  //      end;
      ACanvas.Font.Style := [fsBold];
    end;

  end;
end;

procedure TFrame_ConsuRelVenda_Produto.tcFiltrosPanelItem4Click(
  Sender: TdxTileControlItem);
begin
  inherited;
  btnFiltro_Filtro.Caption := 'Devoluções';
  RefreshConsulta;
end;

procedure TFrame_ConsuRelVenda_Produto.WREventosConsultaGetFiltrosConsulta(
  Sender: TObject);
begin
  inherited;
  if btnFiltro_Filtro.Caption = 'Devoluções' then
    SQLWhere.AddAnd('VP.QUANT < 0');
end;

procedure TFrame_ConsuRelVenda_Produto.WREventosConsultaSQLTrataNomes(
  Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, 'ATIVO', '''S''');
end;

initialization
  RegisterClass(TFrame_ConsuRelVenda_Produto);
  RegisterFrameCon(Tag_RelVenda_Produto, TFrame_ConsuRelVenda_Produto);

end.
