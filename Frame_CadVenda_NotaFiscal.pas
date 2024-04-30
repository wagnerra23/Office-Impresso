unit Frame_CadVenda_NotaFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_CadVenda_Mestre, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer,
  cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCore,
  dxSpreadSheetCoreFormulas, dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles,
  dxSpreadSheetCoreStrs, dxSpreadSheetConditionalFormatting,
  dxSpreadSheetConditionalFormattingRules, dxSpreadSheetClasses,
  dxSpreadSheetContainers, dxSpreadSheetFormulas, dxSpreadSheetHyperlinks,
  dxSpreadSheetFunctions, dxSpreadSheetStyles, dxSpreadSheetGraphics,
  dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils,
  dxSpreadSheetFormattedTextUtils, dxBarBuiltInMenu, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxCalendar, cxLabel, cxDropDownEdit, cxTL, cxImageComboBox, cxMaskEdit,
  cxButtonEdit, cxTextEdit, cxCurrencyEdit, cxTLdxBarBuiltInMenu,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, uWRNotaFiscal, uWRCalculaConfiguracoes,
  cxImageList, System.Actions, Vcl.ActnList, UCHist_WRGeral,
  uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, System.Generics.Collections,
  WREventos, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, dxCustomTileControl, dxTileControl, dxStatusBar,
  dxSpreadSheetFormulaBar, cxInplaceContainer, cxDBTL, cxTLData, cxDBLabel,
  cxCheckBox, cxDBEdit, cxSpinEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, dxSpreadSheet,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, FrFrameMestre, base, dxScrollbarAnnotations, dxUIAdorners,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_Venda_NotaFiscal = class(TFrame_Venda_Mestre)
    dxLayoutItem2: TdxLayoutItem;
    PnlNotaFiscal: TPanel;
    GrupoNotaFiscal: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    pnlNFSe: TPanel;
    TabNFSe: TdxLayoutGroup;
    procedure GrupoTabsPrincipalTabChanged(Sender: TObject);
  private
    FFrameNotaFiscal: TFrmFrameMestre;
    FFrameVendaNFSe: TFrmFrameMestre;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Venda_NotaFiscal: TFrame_Venda_NotaFiscal;

implementation

{$R *.dfm}

uses Principal, wrFuncoes, unitFuncoes, wrPreencheLookup, StrUtils, DateUtils, wrForms, wrFuncoes_Office,
  wrConstantes, Math, cadMeta, Base_Venda, Classes.WR, Rotinas, CadVendaFrameNotaFiscal, frFrameVendaNFSe, Tag.Form;


procedure TFrame_Venda_NotaFiscal.GrupoTabsPrincipalTabChanged(Sender: TObject);
begin
  inherited;
  if GrupoNotaFiscal.ActuallyVisible then
  begin
    TFrmVendaFrameNotaFiscal.CarregaFrame(FFrameNotaFiscal, PnlNotaFiscal, DS,
      wrNotaFiscal);
    WREventosCadastro.ValidaBuscaComponetesFrame(TWinControl(FFrameNotaFiscal));
  end;
  if TabNFSe.ActuallyVisible then
  begin
    TFrameVendaNFSe.CarregaFrameNota(FFrameVendaNFSe, pnlNFSe, DS,
      wrNotaFiscal); //
    WREventosCadastro.ValidaBuscaComponetesFrame(TWinControl(FFrameVendaNFSe));
  end;
end;

initialization
  RegisterClass(TFrame_Venda_NotaFiscal);
  RegisterFrameCad(Tag_Venda_NotaFiscal, TFrame_Venda_NotaFiscal);

end.
