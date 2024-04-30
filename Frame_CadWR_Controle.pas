unit Frame_CadWR_Controle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Cad, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxContainer, cxEdit, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxUIAdorners,
  uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  System.Generics.Collections, WREventos, UCBase, cxClasses,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxCustomTileControl, dxTileControl, dxStatusBar, dxLayoutContainer,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, Vcl.StdCtrls, cxButtons, cxTextEdit,
  dxLayoutControl, cxLabel, cxDBLabel, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxButtonEdit, Frame_Cad_Pocket;

type
  TFrame_WR_Controle = class(TFrmCad_Frame_Pocket)
    LiPnlPermissoes: TdxLayoutGroup;
    lipnlConfiguracoes: TdxLayoutGroup;
    LiPnlRelatorio: TdxLayoutGroup;
    LiPnlValoresIniciais: TdxLayoutGroup;
    liPnlKPI: TdxLayoutGroup;
    Observação: TcxDBLabel;
    dxLayoutItem1: TdxLayoutItem;
    liPnlValidacoes: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    Configuracoes: TFDQuery;
    DSConfiguracoes: TDataSource;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    KPI: TFDQuery;
    DSKPI: TDataSource;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_WR_Controle: TFrame_WR_Controle;

implementation

{$R *.dfm}

Uses Base, Tag.Form, StrUtils;


procedure TFrame_WR_Controle.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Configuracoes.Open;
  KPI.Open;
end;

procedure TFrame_WR_Controle.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Configuracoes.Close;
  KPI.Close;
end;

initialization
  RegisterClass(TFrame_WR_Controle);
  RegisterFrameCad(Tag_WR_Controle, TFrame_WR_Controle);

end.
