unit Frame_CadPessoas_OImpresso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_CadPessoas_Mestre, cxCheckBox, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxCalendar, cxLabel, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, ThdTimer, uWRFormataCamposDataSet, frxClass,
  frxDBSet, UCHistDataset, FireDAC.Comp.Client, FireDAC.Comp.DataSet, System.Generics.Collections, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxCustomTileControl, dxTileControl, cxDBEdit, cxMemo, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxScrollBox, cxImage, dxStatusBar, cxMaskEdit, cxTextEdit, cxGroupBox, cxRadioGroup, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxButtonEdit, cxCurrencyEdit, cxSpinEdit, cxDropDownEdit, dxLayoutControl, Vcl.StdCtrls, cxButtons, cxCustomListBox, cxCheckListBox,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations,
  dxUIAdorners, dxActivityIndicator;

type
  TFrame_Pessoas_OImpresso = class(TFrame_Pessoas_Mestre)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Pessoas_OImpresso: TFrame_Pessoas_OImpresso;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

initialization
  RegisterClass(TFrame_Pessoas_OImpresso);
  RegisterFrameCad(Tag_Pessoas_OImpresso, TFrame_Pessoas_OImpresso);

end.
