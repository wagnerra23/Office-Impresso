unit Frame_Painel_Empresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, DB,
  cxLookAndFeelPainters, dxCustomTileControl, dxTileControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, DBClient, cxGridChartView, cxGridDBChartView, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGrid, ExtCtrls, cxTextEdit, cxCurrencyEdit, cxImage,
  cxMemo, cxSplitter, MidasLib, cxNavigator, dxDateRanges, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutContainer,
  dxLayoutControlAdapters, System.Generics.Collections, WREventos, frxClass,
  frxDBSet, dxTileBar, dxLayoutControl, dxLayoutcxEditAdapters, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, cxImageList, Frame_Painel_Mestre, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TPainel_Empresa = class(TPainel_Mestre)
  private
  public
  end;

implementation

{$R *.dfm}

uses Base, Tag.Form;

initialization
  RegisterFramePainel(Tag_BI_Empresa, TPainel_Empresa);

end.
