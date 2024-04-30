unit Frame_ConSalario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Con, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer, Vcl.Menus,
  cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage,
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
  FireDAC.Comp.DataSet, System.ImageList, Vcl.ImgList, cxImageList,
  System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls,
  dxLayoutLookAndFeels, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator,
  cxDateProfileButton, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  dxCustomTileControl, dxTileControl, cxGridViewLayoutContainer,
  cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView, Vcl.StdCtrls,
  cxButtons, cxGridLevel, cxGridCustomLayoutView, cxGridCustomView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl, System.StrUtils, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TConsuSalario = class(TConsu_Frame)
    GridConsultaDBTableView1CODFUNCIONARIO: TcxGridDBColumn;
    GridConsultaDBTableView1SALARIO: TcxGridDBColumn;
    GridConsultaDBTableView1COMPETENCIA: TcxGridDBColumn;
    GridConsultaDBTableView1QTD_HORAS_TRABALHADAS_MENSAL: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR_HORA: TcxGridDBColumn;
    GridConsultaDBTableView1CODSERVICO_VINCULADO: TcxGridDBColumn;
    GridConsultaDBTableView1TOTAL_MENSAL: TcxGridDBColumn;
    GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuSalario: TConsuSalario;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, Tag.Form;

procedure TConsuSalario.WREventosConsultaSQLTrataNomes(Sender: TObject;
  var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, 'ATIVO', 'F.ATIVO');
end;

initialization
  RegisterClass(TConsuSalario);
  RegisterFrameCon(Tag_Salario, TConsuSalario);

end.
