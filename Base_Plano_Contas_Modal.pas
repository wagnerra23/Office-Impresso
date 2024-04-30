unit Base_Plano_Contas_Modal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Plano_Contas, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxCustomTileControl, cxClasses, dxTileControl,
  Frame_CadPlano_Contas, cxContainer, cxEdit, Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxTextEdit, cxCurrencyEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, dxUIAdorners, uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.DataSet, System.Generics.Collections, WREventos,
  UCBase, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, cxDBEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxImage, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDropDownEdit, Vcl.StdCtrls, cxButtons, cxCheckBox,
  cxMaskEdit, cxButtonEdit, cxLabel, dxLayoutControl, dxGDIPlusClasses;

type
  TFrmPlanoContas_Modal = class(TBasePlanoContas)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPlanoContas_Modal: TFrmPlanoContas_Modal;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

initialization
  RegisterClass(TFrmPlanoContas_Modal);
  RegisterBase_Normal(Tag_Plano_Contas, TFrmPlanoContas_Modal);

end.
