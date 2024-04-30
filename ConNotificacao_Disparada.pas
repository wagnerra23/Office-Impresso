unit ConNotificacao_Disparada;

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
  cxGrid, dxLayoutControl, System.StrUtils, dxScrollbarAnnotations, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TConsuNotificacao_Disparada = class(TConsu_Frame)
    Historico_Seguidor: TFDQuery;
    DSHistorico_Seguidor: TDataSource;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1CODEMPRESA: TcxGridDBColumn;
    GridConsultaDBTableView1CODSLA: TcxGridDBColumn;
    GridConsultaDBTableView1MODULO: TcxGridDBColumn;
    GridConsultaDBTableView1TABELA: TcxGridDBColumn;
    GridConsultaDBTableView1CHAVE_PK1: TcxGridDBColumn;
    GridConsultaDBTableView1CHAVE_PK2: TcxGridDBColumn;
    GridConsultaDBTableView1CHAVE_PK3: TcxGridDBColumn;
    GridConsultaDBTableView1MENSAGEM: TcxGridDBColumn;
    GridConsultaDBTableView1CONDICAO: TcxGridDBColumn;
    GridConsultaDBTableView1QUANT_SEGUIDORES: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1TABELA: TcxGridDBColumn;
    cxGrid1DBTableView1CODTABELA: TcxGridDBColumn;
    cxGrid1DBTableView1CODUSUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1TEM_NOVO: TcxGridDBColumn;
    cxGrid1DBTableView1TEM_EDITAR: TcxGridDBColumn;
    cxGrid1DBTableView1TEM_EXCLUIR: TcxGridDBColumn;
    cxGrid1DBTableView1TEM_NOTIFICACAO: TcxGridDBColumn;
    cxGrid1DBTableView1TEM_TODOS: TcxGridDBColumn;
    cxGrid1DBTableView1CODPESSOA: TcxGridDBColumn;
    cxGrid1DBTableView1CODHISTORICO_SLA: TcxGridDBColumn;
    cxGrid1DBTableView1TEM_EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    tcAgrupadorItem1: TdxTileControlItem;
    GridConsultaDBTableView1SLA: TcxGridDBColumn;
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ConsultaBeforeClose(DataSet: TDataSet);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure tiAgrupar_DesagruparClick(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuNotificacao_Disparada: TConsuNotificacao_Disparada;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

procedure TConsuNotificacao_Disparada.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Historico_Seguidor.Open;
end;

procedure TConsuNotificacao_Disparada.ConsultaBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Historico_Seguidor.Close;
end;

procedure TConsuNotificacao_Disparada.tiAgrupar_DesagruparClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  if Sender.Text1.Value = 'SLA'  then
//    AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1SLA, TdxSortOrder.soAscending);

end;

procedure TConsuNotificacao_Disparada.WREventosConsultaGetFiltrosConsulta(
  Sender: TObject);
Var
  ACampo_Codigo: String;
  ACampo_Sql: String;
begin
  inherited;
//  GridConsultaDBTableView1.DataController.BeginUpdate;
//  GridConsultaDBTableView1.DataController.Groups.ClearGrouping;
//  GridConsultaDBTableView1.DataController.EndUpdate;
//  inherited;
//  // Aqui abre a SubGrid
//  LiGridSubGrid.Visible:= (GridConsultaDBTableView1.GroupedColumnCount > 0);
//
//  // Aqui agrupa no Grid principal a Situação e ordena pelo NF_DT_EMISSAO
//  GridConsultaDBTableView1.DataController.BeginUpdate;
//  GridConsultaDBTableView1.DataController.Groups.ClearGrouping;
//  GridConsultaDBTableView1.Columns[GridConsultaDBTableView1CODSLA.Index].GroupIndex := 0;
//  GridConsultaDBTableView1.Columns[GridConsultaDBTableView1CODSLA.Index].SortOrder := TdxSortOrder.soDescending;
//  GridConsultaDBTableView1.DataController.EndUpdate;
//
//  // Aqui monta o subgrid de acordo com as colunas agrupadas no Grid principal
//  if GridConsultaDBTableView1.GroupedColumnCount > 0 then
//  begin
//    with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
//    try
//      AgrupaSubGrid('CODSLA', 'SLA', 'HS.CODSLA' );
//    finally
//    end;
//    LiGridSubGrid.Visible:= True;
//  end;
  LiGridSubGrid.Visible:= (GridConsultaDBTableView1.GroupedColumnCount > 0);
  if GridConsultaDBTableView1.GroupedColumnCount > 0 then
  begin
    with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
    try
      ACampo_Codigo    := FieldName;
//      if Consulta.FieldByName(FieldName).AutoGenerateValue <> TAutoRefreshFlag(arNone) then
//      begin
//        if FieldName = 'SLA' then
//        begin
//          ACampo_Codigo    := 'CODSLA';
//          ACampo_Sql       := 'HS.SLA';
//        end;
//      end;
      ACampo_Sql := 'HS.COD'+ACampo_Codigo;
      AgrupaSubGrid('CODSLA', 'SLA', 'HS.CODSLA' );
    finally
    end;
    LiGridSubGrid.Visible:= True;
  end;
  SplitSubGrid.Visible:= LiGridSubGrid.Visible;
end;

procedure TConsuNotificacao_Disparada.WREventosConsultaSQLTrataNomes(
  Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, 'ATIVO', 'HS.ATIVO');
end;

initialization
  RegisterClass(TConsuNotificacao_Disparada);
  RegisterFrameCon(Tag_Notificacao_Disparada, TConsuNotificacao_Disparada);

end.
