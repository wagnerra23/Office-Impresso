unit Frame_ConAPI_OImpresso;

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
  Frame_CadAPI_OImpresso_Mestre, Frame_OImpresso_Pessoas, Frame_OImpresso_Produtos,
  dxScrollbarAnnotations, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_ConsuAPI_OImpresso = class(TConsu_Frame)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1DATA: TcxGridDBColumn;
    GridConsultaDBTableView1MODULO: TcxGridDBColumn;
    GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn;
    GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn;
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaATIVO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    ConsultaDATA: TSQLTimeStampField;
    ConsultaMODULO: TStringField;
    ConsultaOBSERVACAO: TMemoField;
    ConsultaCODUSUARIO: TIntegerField;
    tcAgrupadorModulo: TdxTileControlItem;
    ConsultaUSUARIO: TStringField;
    GridConsultaDBTableView1USUARIO: TcxGridDBColumn;
    tiSincronizarContatos: TdxTileControlItem;
    tiSincronizarVenda: TdxTileControlItem;
    tiSincronizarFinanceiro: TdxTileControlItem;
    tiSincronizarProduto: TdxTileControlItem;
    tiTokemGerado: TdxTileControlItem;
    dxTileControl1Item1: TdxTileControlItem;
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure tcAgrupadorModuloClick(Sender: TdxTileControlItem);
    procedure TimerThreadsTimer(Sender: TObject);
    procedure SincronizarPessoas;
    procedure SincronizarProdutos;
    procedure tiSincronizarContatosClick(Sender: TdxTileControlItem);
    procedure tiSincronizarProdutoClick(Sender: TdxTileControlItem);
  private
    FPessoas_OImpresso: TFrmOImpresso_Pessoas;
    FProdutos_OImpresso: TFrmOImpresso_Produtos;
  public
    { Public declarations }
  end;

var
  Frame_ConsuAPI_OImpresso: TFrame_ConsuAPI_OImpresso;
  AAPI_OImpresso: array [0..10] of TFrmOImpresso_Mestre;

implementation

{$R *.dfm}

Uses Base, wrFuncoes, Tag.Form;

procedure TFrame_ConsuAPI_OImpresso.tcAgrupadorModuloClick(Sender: TdxTileControlItem);
begin
  inherited;
//  AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1MODULO, TdxSortOrder.soDescending);
end;

procedure TFrame_ConsuAPI_OImpresso.SincronizarPessoas;
begin
  if not Assigned(FPessoas_OImpresso) then
    FPessoas_OImpresso := TFrmOImpresso_Pessoas(ACadFrameClasses[Tag_API_Oimpresso_Pessoas].Create(TForm(Self.Owner)));
  FPessoas_OImpresso.FrameEnter(FPessoas_OImpresso);
  FPessoas_OImpresso.Sincronizar;
  Consulta.Refresh;
end;

procedure TFrame_ConsuAPI_OImpresso.SincronizarProdutos;
begin
  if not Assigned(FProdutos_OImpresso) then
    FProdutos_OImpresso := TFrmOImpresso_Produtos(ACadFrameClasses[Tag_API_Oimpresso_Produtos].Create(TForm(Self.Owner)));
  FProdutos_OImpresso.FrameEnter(FProdutos_OImpresso);
  FProdutos_OImpresso.Sincronizar;
  Consulta.Refresh;
end;

procedure TFrame_ConsuAPI_OImpresso.TimerThreadsTimer(Sender: TObject);
begin
  inherited;
  // Deve conter as aberturas de telas
  // Manter em cache
  // Chamar a rotina interna sincronizar
 { if Not Assigned(AAPI_OImpresso[0]) then
    AAPI_OImpresso[0] := TFrmOImpresso_Mestre(ABaseClass_Pocket[Tag_API_Oimpresso_Pessoas].Create(TForm(Self.Owner)));
  AAPI_OImpresso[0].Sincronizar;  }
end;

procedure TFrame_ConsuAPI_OImpresso.tiSincronizarContatosClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  SincronizarPessoas;
end;

procedure TFrame_ConsuAPI_OImpresso.tiSincronizarProdutoClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  SincronizarProdutos;
end;

procedure TFrame_ConsuAPI_OImpresso.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
Var
  ACampo_Codigo: String;
  ACampo_Sql: String;
begin
  inherited;
  LiGridSubGrid.Visible:= (GridConsultaDBTableView1.GroupedColumnCount > 0);
  if GridConsultaDBTableView1.GroupedColumnCount > 0 then
  begin
    with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
    try
      ACampo_Codigo      := FieldName;
      if ACampo_Codigo = 'USUARIO' then
      begin
        ACampo_Sql       := 'U.'+ACampo_Codigo;
      end
      else begin
        if Consulta.FieldByName(FieldName).AutoGenerateValue <> TAutoRefreshFlag(arNone) then
          ACampo_Codigo  := 'COD'+FieldName;

        ACampo_Sql       := 'O.'+ACampo_Codigo;
      end;
      AgrupaSubGrid(ACampo_Codigo, FieldName, ACampo_Sql );
    finally
    end;
    LiGridSubGrid.Visible:= True;
  end;

  SplitSubGrid.Visible:= LiGridSubGrid.Visible;
end;

initialization
  RegisterClass(TFrame_ConsuAPI_OImpresso);
  RegisterFrameCon(Tag_API_Oimpresso, TFrame_ConsuAPI_OImpresso);

end.
