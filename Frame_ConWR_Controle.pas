unit Frame_ConWR_Controle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Con, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxContainer, cxLabel, Vcl.Menus, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, FireDAC.Comp.Client,
  cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset,
  System.Generics.Collections, WREventos, frxClass, frxDBSet,
  FireDAC.Comp.DataSet, System.ImageList, Vcl.ImgList, cxImageList,
  System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls,
  dxLayoutLookAndFeels, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator,
  cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, dxCustomTileControl, cxGridViewLayoutContainer,
  cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView, cxGridLevel,
  cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutControl, dxTileControl;

type
  TConsuWR_Controle = class(TConsu_Frame)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1MODULO: TcxGridDBColumn;
    GridConsultaDBTableView1APLICATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1Tabela: TcxGridDBColumn;
    GridConsultaDBTableView1TAGS: TcxGridDBColumn;
    GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn;
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuWR_Controle: TConsuWR_Controle;

implementation

{$R *.dfm}

Uses Base, Tag.Form, StrUtils, UnitFuncoes;


procedure TConsuWR_Controle.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
Var
  ACampo_Codigo, ACampo_Sql : String;
begin
  inherited;
  SQLWhere.addAnd('WP.TEM_NA_CONSULTA = ''S''');
  // Aqui deve aparecer a Coisa do SubGrid
  LiGridSubGrid.Visible:= (GridConsultaDBTableView1.GroupedColumnCount > 0);
  if GridConsultaDBTableView1.GroupedColumnCount > 0 then
  begin
    with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
    try
      ACampo_Codigo    := FieldName;
      if ACampo_Codigo = 'APLICATIVO' then
        ACampo_Sql       := 'wa.descricao'
      else if ACampo_Codigo = 'MODULO' then
        ACampo_Sql       := 'wm.descricao'
      else if MatchStr(ACampo_Codigo,['CODIGO','DESCRICAO', 'OBSERVACAO', 'CODWR_APP','ATIVO']) then
        ACampo_Sql       := 'wc.'+ACampo_Codigo
      else begin
//        if Consulta.FieldByName(FieldName).AutoGenerateValue <> TAutoRefreshFlag(arNone) then
//          ACampo_Codigo    := 'COD'+FieldName;

        ACampo_Sql       := 'wp.'+ACampo_Codigo;
      end;
      AgrupaSubGrid(ACampo_Codigo, FieldName, ACampo_Sql );
    finally
    end;
  end;
  SplitSubGrid.Visible:= LiGridSubGrid.Visible;
end;

procedure TConsuWR_Controle.WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
begin
  inherited;
  if ASQL = 'ATIVO' then
    ASQL := ReplaceStr(ASQL, 'ATIVO', '(wc.ATIVO)')
  else
    ASQL := ReplaceStr(ASQL, '(ATIVO', '(wc.ATIVO'); //

end;

initialization
  RegisterClass(TConsuWR_Controle);
  RegisterFrameCon(Tag_WR_Controle, TConsuWR_Controle);

end.
