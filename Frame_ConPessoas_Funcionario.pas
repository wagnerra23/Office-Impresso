unit Frame_ConPessoas_Funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_ConPessoas_Mestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  Data.DB, cxDBData, dxRatingControl, cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, UCBase, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset, System.Generics.Collections,
  WREventos, frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls,
  dxLayoutLookAndFeels, FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxCalendar, cxTextEdit,
  dxCustomTileControl, dxTileControl, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView, cxGridLevel, cxGridCustomLayoutView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxButtonEdit, dxLayoutControl,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations,
  uWRFormataCamposDataSet;

type
  TFrame_ConsuPessoas_Funcionario = class(TFrame_ConsuPessoas_Mestre)
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuPessoas_Funcionario: TFrame_ConsuPessoas_Funcionario;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, Tag.Form;

procedure TFrame_ConsuPessoas_Funcionario.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
  SQLWhere.AddAnd('P.IS_FUN = ''S'' ');
end;

initialization
  RegisterClass(TFrame_ConsuPessoas_Funcionario);
  RegisterFrameCon(Tag_Pessoas_Funcionario, TFrame_ConsuPessoas_Funcionario);

end.