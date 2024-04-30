unit Excel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSpreadSheetCore, dxSpreadSheetReportDesigner,
  Vcl.Menus, dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCoreHistory,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetClasses, dxSpreadSheetContainers, dxSpreadSheetFormulas,
  dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetGraphics,
  dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils,
  dxBarBuiltInMenu, Data.DB, dxmdaset, dxSpreadSheet, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, dxSpreadSheetCoreFormulas, dxSpreadSheetCoreStyles,
  dxSpreadSheetCoreStrs, dxSpreadSheetStyles, dxSpreadSheetFormattedTextUtils, dxSkinsCore, dxRibbonSkins,
  dxRibbonCustomizationForm, cxFontNameComboBox, cxDropDownEdit, dxSpreadSheetReportDesignerActions,
  dxSpreadSheetConditionalFormattingRulesActions, dxSpreadSheetActions, dxGallery, dxRibbonGallery, dxBar,
  dxRibbonColorGallery, cxBarEditItem, dxPrinting, cxClasses, dxRibbon, System.Actions, Vcl.ActnList, dxActions,
  System.ImageList, Vcl.ImgList, cxImageList, cxContainer, cxEdit, cxGroupBox, dxSpreadSheetFormulaBar,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxOfficeSearchBox,
  dxLayoutContainer, dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCustomListBox, cxListBox, dxLayoutControl, DataModuleBanco, Generics.Collections, cxLabel,
  uWRCalculaConfiguracoes, cxCheckBox, dxScrollbarAnnotations;

type
  TFrmExcel = class(TForm)
    ReportDesigner: TdxSpreadSheetReportDesigner;
    dxRibbon1: TdxRibbon;
    dxBarManager1: TdxBarManager;
    ActionList1: TActionList;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    dxSpreadSheetNewDocument: TdxSpreadSheetNewDocument;
    dxRibbonTabFile: TdxRibbonTab;
    dxBarCommon: TdxBar;
    dxBarLargeButtonNew: TdxBarLargeButton;
    dxSpreadSheetOpenDocument: TdxSpreadSheetOpenDocument;
    dxBarLargeButtonOpen: TdxBarLargeButton;
    dxSpreadSheetSaveDocumentAs: TdxSpreadSheetSaveDocumentAs;
    dxBarLargeButtonSaveAs: TdxBarLargeButton;
    dxSpreadSheetShowPrintForm: TdxSpreadSheetShowPrintForm;
    dxBarPrint: TdxBar;
    dxBarLargeButtonPrint: TdxBarLargeButton;
    dxSpreadSheetShowPrintPreviewForm: TdxSpreadSheetShowPrintPreviewForm;
    dxBarLargeButtonPrintPreview: TdxBarLargeButton;
    dxSpreadSheetShowPageSetupForm: TdxSpreadSheetShowPageSetupForm;
    dxBarLargeButtonPageSetup: TdxBarLargeButton;
    dxSpreadSheetPasteSelection: TdxSpreadSheetPasteSelection;
    dxRibbonTabHome: TdxRibbonTab;
    dxBarClipboard: TdxBar;
    dxBarLargeButtonPaste: TdxBarLargeButton;
    dxSpreadSheetCutSelection: TdxSpreadSheetCutSelection;
    dxBarButtonCut: TdxBarButton;
    dxSpreadSheetCopySelection: TdxSpreadSheetCopySelection;
    dxBarButtonCopy: TdxBarButton;
    dxSpreadSheetChangeFontName: TdxSpreadSheetChangeFontName;
    dxBarFont: TdxBar;
    cxBarEditItemFontName: TcxBarEditItem;
    dxSpreadSheetChangeFontSize: TdxSpreadSheetChangeFontSize;
    cxBarEditItemFontSize: TcxBarEditItem;
    dxSpreadSheetIncreaseFontSize: TdxSpreadSheetIncreaseFontSize;
    dxBarButtonIncreaseFontSize: TdxBarButton;
    dxSpreadSheetDecreaseFontSize: TdxSpreadSheetDecreaseFontSize;
    dxBarButtonDecreaseFontSize: TdxBarButton;
    dxSpreadSheetToggleFontBold: TdxSpreadSheetToggleFontBold;
    dxBarButtonBold: TdxBarButton;
    dxSpreadSheetToggleFontItalic: TdxSpreadSheetToggleFontItalic;
    dxBarButtonItalic: TdxBarButton;
    dxSpreadSheetToggleFontUnderline: TdxSpreadSheetToggleFontUnderline;
    dxBarButtonUnderline: TdxBarButton;
    dxSpreadSheetToggleFontStrikeout: TdxSpreadSheetToggleFontStrikeout;
    dxBarButtonStrikeout: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxSpreadSheetBordersBottom: TdxSpreadSheetBordersBottom;
    dxBarLargeButtonBottomBorder: TdxBarLargeButton;
    dxSpreadSheetBordersTop: TdxSpreadSheetBordersTop;
    dxBarLargeButtonTopBorder: TdxBarLargeButton;
    dxSpreadSheetBordersLeft: TdxSpreadSheetBordersLeft;
    dxBarLargeButtonLeftBorder: TdxBarLargeButton;
    dxSpreadSheetBordersRight: TdxSpreadSheetBordersRight;
    dxBarLargeButtonRightBorder: TdxBarLargeButton;
    dxSpreadSheetBordersNone: TdxSpreadSheetBordersNone;
    dxBarLargeButtonNoBorder: TdxBarLargeButton;
    dxSpreadSheetBordersAll: TdxSpreadSheetBordersAll;
    dxBarLargeButtonAllBorders: TdxBarLargeButton;
    dxSpreadSheetBordersOutside: TdxSpreadSheetBordersOutside;
    dxBarLargeButtonOutsideBorders: TdxBarLargeButton;
    dxSpreadSheetBordersOutsideThick: TdxSpreadSheetBordersOutsideThick;
    dxBarLargeButtonThickBoxBorder: TdxBarLargeButton;
    dxSpreadSheetBordersBottomDouble: TdxSpreadSheetBordersBottomDouble;
    dxBarLargeButtonBottomDoubleBorder: TdxBarLargeButton;
    dxSpreadSheetBordersBottomThick: TdxSpreadSheetBordersBottomThick;
    dxBarLargeButtonThickBottomBorder: TdxBarLargeButton;
    dxSpreadSheetBordersTopAndBottom: TdxSpreadSheetBordersTopAndBottom;
    dxBarLargeButtonTopandBottomBorder: TdxBarLargeButton;
    dxSpreadSheetBordersTopAndBottomThick: TdxSpreadSheetBordersTopAndBottomThick;
    dxBarLargeButtonTopandThickBottomBorder: TdxBarLargeButton;
    dxSpreadSheetBordersTopAndBottomDouble: TdxSpreadSheetBordersTopAndBottomDouble;
    dxBarLargeButtonTopandDoubleBottomBorder: TdxBarLargeButton;
    dxSpreadSheetBordersMore: TdxSpreadSheetBordersMore;
    dxBarLargeButtonMore: TdxBarLargeButton;
    dxSpreadSheetChangeFillColor: TdxSpreadSheetChangeFillColor;
    dxRibbonColorGalleryItemFillColor: TdxRibbonColorGalleryItem;
    dxSpreadSheetChangeFontColor: TdxSpreadSheetChangeFontColor;
    dxRibbonColorGalleryItemFontColor: TdxRibbonColorGalleryItem;
    dxSpreadSheetAlignVerticalTop: TdxSpreadSheetAlignVerticalTop;
    dxBarAlignment: TdxBar;
    dxBarButtonTopAlign: TdxBarButton;
    dxSpreadSheetAlignVerticalCenter: TdxSpreadSheetAlignVerticalCenter;
    dxBarButtonMiddleAlign: TdxBarButton;
    dxSpreadSheetAlignVerticalBottom: TdxSpreadSheetAlignVerticalBottom;
    dxBarButtonBottomAlign: TdxBarButton;
    dxSpreadSheetAlignHorizontalLeft: TdxSpreadSheetAlignHorizontalLeft;
    dxBarButtonAlignTextLeft: TdxBarButton;
    dxSpreadSheetAlignHorizontalCenter: TdxSpreadSheetAlignHorizontalCenter;
    dxBarButtonAlignTextCenter: TdxBarButton;
    dxSpreadSheetAlignHorizontalRight: TdxSpreadSheetAlignHorizontalRight;
    dxBarButtonAlignTextRight: TdxBarButton;
    dxSpreadSheetTextIndentDecrease: TdxSpreadSheetTextIndentDecrease;
    dxBarButtonDecreaseIndent: TdxBarButton;
    dxSpreadSheetTextIndentIncrease: TdxSpreadSheetTextIndentIncrease;
    dxBarButtonIncreaseIndent: TdxBarButton;
    dxSpreadSheetTextWrap: TdxSpreadSheetTextWrap;
    dxBarButtonWrapText: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxSpreadSheetMergeCellsAndCenter: TdxSpreadSheetMergeCellsAndCenter;
    dxBarLargeButtonMergeandCenter: TdxBarLargeButton;
    dxSpreadSheetMergeCellsAcross: TdxSpreadSheetMergeCellsAcross;
    dxBarLargeButtonMergeAcross: TdxBarLargeButton;
    dxSpreadSheetMergeCells: TdxSpreadSheetMergeCells;
    dxBarLargeButtonMergeCells: TdxBarLargeButton;
    dxSpreadSheetUnmergeCells: TdxSpreadSheetUnmergeCells;
    dxBarLargeButtonUnmergeCells: TdxBarLargeButton;
    dxBarCells: TdxBar;
    dxBarSubItem3: TdxBarSubItem;
    dxSpreadSheetInsertRows: TdxSpreadSheetInsertRows;
    dxBarLargeButtonInsertSheetRows: TdxBarLargeButton;
    dxSpreadSheetInsertColumns: TdxSpreadSheetInsertColumns;
    dxBarLargeButtonInsertSheetColumns: TdxBarLargeButton;
    dxSpreadSheetInsertSheet: TdxSpreadSheetInsertSheet;
    dxBarLargeButtonInsertSheet: TdxBarLargeButton;
    dxBarSubItem4: TdxBarSubItem;
    dxSpreadSheetDeleteRows: TdxSpreadSheetDeleteRows;
    dxBarLargeButtonDeleteSheetRows: TdxBarLargeButton;
    dxSpreadSheetDeleteColumns: TdxSpreadSheetDeleteColumns;
    dxBarLargeButtonDeleteSheetColumns: TdxBarLargeButton;
    dxSpreadSheetDeleteSheet: TdxSpreadSheetDeleteSheet;
    dxBarLargeButtonDeleteSheet: TdxBarLargeButton;
    dxBarSubItem5: TdxBarSubItem;
    dxSpreadSheetAutoFitRowHeight: TdxSpreadSheetAutoFitRowHeight;
    dxBarLargeButtonAutoFitRowHeight: TdxBarLargeButton;
    dxSpreadSheetAutoFitColumnWidth: TdxSpreadSheetAutoFitColumnWidth;
    dxBarLargeButtonAutoFitColumnWidth: TdxBarLargeButton;
    dxBarSubItem6: TdxBarSubItem;
    dxSpreadSheetHideRows: TdxSpreadSheetHideRows;
    dxBarLargeButtonHideRows: TdxBarLargeButton;
    dxSpreadSheetHideColumns: TdxSpreadSheetHideColumns;
    dxBarLargeButtonHideColumns: TdxBarLargeButton;
    dxSpreadSheetHideSheet: TdxSpreadSheetHideSheet;
    dxBarLargeButtonHideSheet: TdxBarLargeButton;
    dxSpreadSheetUnhideRows: TdxSpreadSheetUnhideRows;
    dxBarLargeButtonUnhideRows: TdxBarLargeButton;
    dxSpreadSheetUnhideColumns: TdxSpreadSheetUnhideColumns;
    dxBarLargeButtonUnhideColumns: TdxBarLargeButton;
    dxSpreadSheetUnhideSheet: TdxSpreadSheetUnhideSheet;
    dxBarLargeButtonUnhideSheet: TdxBarLargeButton;
    dxBarEditing: TdxBar;
    dxBarSubItem7: TdxBarSubItem;
    dxSpreadSheetClearAll: TdxSpreadSheetClearAll;
    dxBarLargeButtonClearAll: TdxBarLargeButton;
    dxSpreadSheetClearFormats: TdxSpreadSheetClearFormats;
    dxBarLargeButtonClearFormats: TdxBarLargeButton;
    dxSpreadSheetClearContents: TdxSpreadSheetClearContents;
    dxBarLargeButtonClearContents: TdxBarLargeButton;
    dxSpreadSheetUndo: TdxSpreadSheetUndo;
    dxBarLargeButtonUndo: TdxBarLargeButton;
    dxSpreadSheetRedo: TdxSpreadSheetRedo;
    dxBarLargeButtonRedo: TdxBarLargeButton;
    dxSpreadSheetFindAndReplace: TdxSpreadSheetFindAndReplace;
    dxBarLargeButtonFindReplace: TdxBarLargeButton;
    dxSpreadSheetInsertPicture: TdxSpreadSheetInsertPicture;
    dxRibbonTabInsert: TdxRibbonTab;
    dxBarIllustrations: TdxBar;
    dxBarLargeButtonPicture: TdxBarLargeButton;
    dxSpreadSheetShowHyperlinkEditor: TdxSpreadSheetShowHyperlinkEditor;
    dxBarLinks: TdxBar;
    dxBarLargeButtonHyperlink: TdxBarLargeButton;
    dxSpreadSheetPageMarginsGallery: TdxSpreadSheetPageMarginsGallery;
    dxRibbonTabPageLayout: TdxRibbonTab;
    dxBarPageSetup: TdxBar;
    dxRibbonGalleryItemMargins: TdxRibbonGalleryItem;
    dxRibbonGalleryItemMarginsGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemMarginsGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMarginsGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMarginsGroup1Item3: TdxRibbonGalleryGroupItem;
    dxSpreadSheetMorePageMargins: TdxSpreadSheetMorePageMargins;
    dxBarLargeButtonMorePageMargins: TdxBarLargeButton;
    dxSpreadSheetPageOrientationGallery: TdxSpreadSheetPageOrientationGallery;
    dxRibbonGalleryItemOrientation: TdxRibbonGalleryItem;
    dxRibbonGalleryItemOrientationGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemOrientationGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemOrientationGroup1Item2: TdxRibbonGalleryGroupItem;
    dxSpreadSheetPaperSizeGallery: TdxSpreadSheetPaperSizeGallery;
    dxRibbonGalleryItemSize: TdxRibbonGalleryItem;
    dxRibbonGalleryItemSizeGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemSizeGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item10: TdxRibbonGalleryGroupItem;
    dxSpreadSheetMorePaperSizes: TdxSpreadSheetMorePaperSizes;
    dxBarLargeButtonMorePaperSizes: TdxBarLargeButton;
    dxBarSubItem8: TdxBarSubItem;
    dxSpreadSheetSetPrintArea: TdxSpreadSheetSetPrintArea;
    dxBarLargeButtonSetPrintArea: TdxBarLargeButton;
    dxSpreadSheetClearPrintArea: TdxSpreadSheetClearPrintArea;
    dxBarLargeButtonClearPrintArea: TdxBarLargeButton;
    dxBarSubItem9: TdxBarSubItem;
    dxSpreadSheetInsertPageBreak: TdxSpreadSheetInsertPageBreak;
    dxBarLargeButtonInsertPageBreak: TdxBarLargeButton;
    dxSpreadSheetRemovePageBreak: TdxSpreadSheetRemovePageBreak;
    dxBarLargeButtonRemovePageBreak: TdxBarLargeButton;
    dxSpreadSheetResetAllPageBreaks: TdxSpreadSheetResetAllPageBreaks;
    dxBarLargeButtonResetAllPageBreaks: TdxBarLargeButton;
    dxSpreadSheetPrintTitles: TdxSpreadSheetPrintTitles;
    dxBarLargeButtonPrintTitles: TdxBarLargeButton;
    dxSpreadSheetAutoSumGallery: TdxSpreadSheetAutoSumGallery;
    dxRibbonTabFormulas: TdxRibbonTab;
    dxBarFunctionLibrary: TdxBar;
    dxRibbonGalleryItemAutoSum: TdxRibbonGalleryItem;
    dxRibbonGalleryItemAutoSumGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemAutoSumGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemAutoSumGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemAutoSumGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemAutoSumGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemAutoSumGroup1Item5: TdxRibbonGalleryGroupItem;
    dxSpreadSheetFinancialFormulasGallery: TdxSpreadSheetFinancialFormulasGallery;
    dxRibbonGalleryItemFinancial: TdxRibbonGalleryItem;
    dxRibbonGalleryItemFinancialGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemFinancialGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemFinancialGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemFinancialGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemFinancialGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemFinancialGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemFinancialGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemFinancialGroup1Item7: TdxRibbonGalleryGroupItem;
    dxSpreadSheetLogicalFormulasGallery: TdxSpreadSheetLogicalFormulasGallery;
    dxRibbonGalleryItemLogical: TdxRibbonGalleryItem;
    dxRibbonGalleryItemLogicalGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemLogicalGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item9: TdxRibbonGalleryGroupItem;
    dxSpreadSheetTextFormulasGallery: TdxSpreadSheetTextFormulasGallery;
    dxRibbonGalleryItemText: TdxRibbonGalleryItem;
    dxRibbonGalleryItemTextGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemTextGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item13: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item14: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item15: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item16: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item17: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item18: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item19: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item20: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item21: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item22: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item23: TdxRibbonGalleryGroupItem;
    dxSpreadSheetDateAndTimeFormulasGallery: TdxSpreadSheetDateAndTimeFormulasGallery;
    dxRibbonGalleryItemDateTime: TdxRibbonGalleryItem;
    dxRibbonGalleryItemDateTimeGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemDateTimeGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item13: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item14: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item15: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item16: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item17: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item18: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item19: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item20: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item21: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item22: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item23: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateTimeGroup1Item24: TdxRibbonGalleryGroupItem;
    dxSpreadSheetLookupAndReferenceFormulasGallery: TdxSpreadSheetLookupAndReferenceFormulasGallery;
    dxRibbonGalleryItemLookupReference: TdxRibbonGalleryItem;
    dxRibbonGalleryItemLookupReferenceGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemLookupReferenceGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item13: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item14: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item15: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupReferenceGroup1Item16: TdxRibbonGalleryGroupItem;
    dxSpreadSheetMathAndTrigFormulasGallery: TdxSpreadSheetMathAndTrigFormulasGallery;
    dxRibbonGalleryItemMathTrig: TdxRibbonGalleryItem;
    dxRibbonGalleryItemMathTrigGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemMathTrigGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item13: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item14: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item15: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item16: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item17: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item18: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item19: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item20: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item21: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item22: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item23: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item24: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item25: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item26: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item27: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item28: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item29: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item30: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item31: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item32: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item33: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item34: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item35: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item36: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item37: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item38: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item39: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item40: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item41: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item42: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item43: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item44: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item45: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item46: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item47: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item48: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item49: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item50: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item51: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item52: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item53: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item54: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item55: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item56: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item57: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item58: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item59: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item60: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item61: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item62: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item63: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item64: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item65: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item66: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item67: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item68: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathTrigGroup1Item69: TdxRibbonGalleryGroupItem;
    dxBarSubItem10: TdxBarSubItem;
    dxSpreadSheetStatisticalFormulasGallery: TdxSpreadSheetStatisticalFormulasGallery;
    dxRibbonGalleryItemStatistical: TdxRibbonGalleryItem;
    dxRibbonGalleryItemStatisticalGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemStatisticalGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item13: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item14: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item15: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item16: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item17: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item18: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item19: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item20: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item21: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item22: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item23: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item24: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item25: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item26: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item27: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item28: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item29: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item30: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item31: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item32: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item33: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item34: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item35: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item36: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item37: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item38: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item39: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item40: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item41: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item42: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item43: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item44: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item45: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item46: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item47: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item48: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item49: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item50: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item51: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item52: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item53: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item54: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item55: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item56: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item57: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item58: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item59: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item60: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item61: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item62: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item63: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item64: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item65: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item66: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item67: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item68: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item69: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item70: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item71: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item72: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item73: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item74: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item75: TdxRibbonGalleryGroupItem;
    dxSpreadSheetInformationFormulasGallery: TdxSpreadSheetInformationFormulasGallery;
    dxRibbonGalleryItemInformation: TdxRibbonGalleryItem;
    dxRibbonGalleryItemInformationGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemInformationGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item13: TdxRibbonGalleryGroupItem;
    dxSpreadSheetCompatibilityFormulasGallery: TdxSpreadSheetCompatibilityFormulasGallery;
    dxRibbonGalleryItemCompatibility: TdxRibbonGalleryItem;
    dxRibbonGalleryItemCompatibilityGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemCompatibilityGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item13: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item14: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item15: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item16: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item17: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item18: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item19: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item20: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item21: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item22: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item23: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item24: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item25: TdxRibbonGalleryGroupItem;
    dxSpreadSheetSortAscending: TdxSpreadSheetSortAscending;
    dxRibbonTabData: TdxRibbonTab;
    dxBarSortFilter: TdxBar;
    dxBarLargeButtonSortAtoZ: TdxBarLargeButton;
    dxSpreadSheetSortDescending: TdxSpreadSheetSortDescending;
    dxBarLargeButtonSortZtoA: TdxBarLargeButton;
    dxBarGrouping: TdxBar;
    dxBarSubItem11: TdxBarSubItem;
    dxSpreadSheetGroupColumns: TdxSpreadSheetGroupColumns;
    dxBarLargeButtonGroupColumns: TdxBarLargeButton;
    dxSpreadSheetGroupRows: TdxSpreadSheetGroupRows;
    dxBarLargeButtonGroupRows: TdxBarLargeButton;
    dxBarSubItem12: TdxBarSubItem;
    dxSpreadSheetUngroupColumns: TdxSpreadSheetUngroupColumns;
    dxBarLargeButtonUngroupColumns: TdxBarLargeButton;
    dxSpreadSheetUngroupRows: TdxSpreadSheetUngroupRows;
    dxBarLargeButtonUngroupRows: TdxBarLargeButton;
    dxSpreadSheetNewComment: TdxSpreadSheetNewComment;
    dxRibbonTabReview: TdxRibbonTab;
    dxBarComments: TdxBar;
    dxBarLargeButtonNewComment: TdxBarLargeButton;
    dxSpreadSheetEditComment: TdxSpreadSheetEditComment;
    dxBarLargeButtonEditComment: TdxBarLargeButton;
    dxSpreadSheetDeleteComments: TdxSpreadSheetDeleteComments;
    dxBarLargeButtonDeleteComments: TdxBarLargeButton;
    dxSpreadSheetPreviousComment: TdxSpreadSheetPreviousComment;
    dxBarLargeButtonPreviousComment: TdxBarLargeButton;
    dxSpreadSheetNextComment: TdxSpreadSheetNextComment;
    dxBarLargeButtonNextComment: TdxBarLargeButton;
    dxSpreadSheetShowHideComments: TdxSpreadSheetShowHideComments;
    dxBarLargeButtonShowHideComments: TdxBarLargeButton;
    dxSpreadSheetProtectSheet: TdxSpreadSheetProtectSheet;
    dxBarChanges: TdxBar;
    dxBarLargeButtonProtectSheet: TdxBarLargeButton;
    dxSpreadSheetProtectWorkbook: TdxSpreadSheetProtectWorkbook;
    dxBarLargeButtonProtectWorkbook: TdxBarLargeButton;
    dxSpreadSheetZoomOut: TdxSpreadSheetZoomOut;
    dxRibbonTabView: TdxRibbonTab;
    dxBarZoom: TdxBar;
    dxBarLargeButtonZoomOut: TdxBarLargeButton;
    dxSpreadSheetZoomIn: TdxSpreadSheetZoomIn;
    dxBarLargeButtonZoomIn: TdxBarLargeButton;
    dxSpreadSheetZoomDefault: TdxSpreadSheetZoomDefault;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarFreezePanes: TdxBar;
    dxBarSubItem13: TdxBarSubItem;
    dxSpreadSheetFreezePanes: TdxSpreadSheetFreezePanes;
    dxBarLargeButtonFreezePanes: TdxBarLargeButton;
    dxSpreadSheetUnfreezePanes: TdxSpreadSheetUnfreezePanes;
    dxBarLargeButtonUnfreezePanes: TdxBarLargeButton;
    dxSpreadSheetFreezeTopRow: TdxSpreadSheetFreezeTopRow;
    dxBarLargeButtonFreezeTopRow: TdxBarLargeButton;
    dxSpreadSheetFreezeFirstColumn: TdxSpreadSheetFreezeFirstColumn;
    dxBarLargeButtonFreezeFirstColumn: TdxBarLargeButton;
    dxBarConditionalFormatting: TdxBar;
    dxBarSubItem14: TdxBarSubItem;
    dxSpreadSheetConditionalFormattingTopBottomRulesGallery: TdxSpreadSheetConditionalFormattingTopBottomRulesGallery;
    dxRibbonGalleryItemTopBottomRules: TdxRibbonGalleryItem;
    dxRibbonGalleryItemTopBottomRulesGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemTopBottomRulesGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTopBottomRulesGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTopBottomRulesGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTopBottomRulesGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTopBottomRulesGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTopBottomRulesGroup1Item6: TdxRibbonGalleryGroupItem;
    dxSpreadSheetConditionalFormattingMoreRules: TdxSpreadSheetConditionalFormattingMoreRules;
    dxBarLargeButtonMoreRules: TdxBarLargeButton;
    dxSpreadSheetConditionalFormattingDataBarsGallery: TdxSpreadSheetConditionalFormattingDataBarsGallery;
    dxRibbonGalleryItemDataBars: TdxRibbonGalleryItem;
    dxRibbonGalleryItemDataBarsGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemDataBarsGroup2: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemDataBarsGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup2Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup2Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup2Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup2Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup2Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup2Item6: TdxRibbonGalleryGroupItem;
    dxSpreadSheetConditionalFormattingColorScalesGallery: TdxSpreadSheetConditionalFormattingColorScalesGallery;
    dxRibbonGalleryItemColorScales: TdxRibbonGalleryItem;
    dxRibbonGalleryItemColorScalesGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemColorScalesGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item12: TdxRibbonGalleryGroupItem;
    dxSpreadSheetConditionalFormattingIconSetsGallery: TdxSpreadSheetConditionalFormattingIconSetsGallery;
    dxRibbonGalleryItemIconSets: TdxRibbonGalleryItem;
    dxRibbonGalleryItemIconSetsGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemIconSetsGroup2: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemIconSetsGroup3: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemIconSetsGroup4: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemIconSetsGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup2Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup3Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup2Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup2Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup3Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup3Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup4Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup3Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup3Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup4Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup4Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup4Item4: TdxRibbonGalleryGroupItem;
    dxSpreadSheetConditionalFormattingNewRule: TdxSpreadSheetConditionalFormattingNewRule;
    dxBarLargeButtonNewRule: TdxBarLargeButton;
    dxBarSubItem15: TdxBarSubItem;
    dxSpreadSheetConditionalFormattingClearRulesFromSelectedCells: TdxSpreadSheetConditionalFormattingClearRulesFromSelectedCells;
    dxBarLargeButtonClearRulesFromSelectedCells: TdxBarLargeButton;
    dxSpreadSheetConditionalFormattingClearRulesFromEntireSheet: TdxSpreadSheetConditionalFormattingClearRulesFromEntireSheet;
    dxBarLargeButtonClearRulesFromEntireSheet: TdxBarLargeButton;
    dxSpreadSheetShowConditionalFormattingRulesManager: TdxSpreadSheetShowConditionalFormattingRulesManager;
    dxBarLargeButtonManageRules: TdxBarLargeButton;
    dxSpreadSheetReportDesignerSingleSheetReportMode: TdxSpreadSheetReportDesignerSingleSheetReportMode;
    dxRibbonTabReport: TdxRibbonTab;
    dxBarMode: TdxBar;
    dxBarButtonSingleSheet: TdxBarButton;
    dxSpreadSheetReportDesignerMultipleSheetsReportMode: TdxSpreadSheetReportDesignerMultipleSheetsReportMode;
    dxBarButtonMultipleSheets: TdxBarButton;
    dxSpreadSheetReportDesignerMultipleDocumentsReportMode: TdxSpreadSheetReportDesignerMultipleDocumentsReportMode;
    dxBarButtonMultipleDocuments: TdxBarButton;
    dxBarSubItem16: TdxBarSubItem;
    dxSpreadSheetReportDesignerHorizontalOrientation: TdxSpreadSheetReportDesignerHorizontalOrientation;
    dxBarLargeButtonHorizontal: TdxBarLargeButton;
    dxSpreadSheetReportDesignerVerticalOrientation: TdxSpreadSheetReportDesignerVerticalOrientation;
    dxBarLargeButtonVertical: TdxBarLargeButton;
    dxSpreadSheetReportDesignerHeaderSection: TdxSpreadSheetReportDesignerHeaderSection;
    dxBarTemplateSections: TdxBar;
    dxBarButtonHeader: TdxBarButton;
    dxSpreadSheetReportDesignerFooterSection: TdxSpreadSheetReportDesignerFooterSection;
    dxBarButtonFooter: TdxBarButton;
    dxSpreadSheetReportDesignerDetailSection: TdxSpreadSheetReportDesignerDetailSection;
    dxBarLargeButtonDetail: TdxBarLargeButton;
    dxBarSubItem17: TdxBarSubItem;
    dxSpreadSheetReportDesignerDetailLevel: TdxSpreadSheetReportDesignerDetailLevel;
    dxBarLargeButtonDetailLevel: TdxBarLargeButton;
    dxSpreadSheetReportDesignerDataMember: TdxSpreadSheetReportDesignerDataMember;
    dxBarLargeButtonDataMember: TdxBarLargeButton;
    dxSpreadSheetReportDesignerResetSection: TdxSpreadSheetReportDesignerResetSection;
    dxBarLargeButtonReset: TdxBarLargeButton;
    dxSpreadSheetReportDesignerSortFields: TdxSpreadSheetReportDesignerSortFields;
    dxBarSortGroup: TdxBar;
    dxBarLargeButtonSortFields: TdxBarLargeButton;
    dxSpreadSheetReportDesignerGroupHeaderSection: TdxSpreadSheetReportDesignerGroupHeaderSection;
    dxBarButtonGroupHeader: TdxBarButton;
    dxSpreadSheetReportDesignerGroupFooterSection: TdxSpreadSheetReportDesignerGroupFooterSection;
    dxBarButtonGroupFooter: TdxBarButton;
    dxSpreadSheetReportDesignerEditFilter: TdxSpreadSheetReportDesignerEditFilter;
    dxBarFilter: TdxBar;
    dxBarLargeButtonEditFilter: TdxBarLargeButton;
    dxSpreadSheetReportDesignerResetFilter: TdxSpreadSheetReportDesignerResetFilter;
    dxBarLargeButtonResetFilter: TdxBarLargeButton;
    dxSpreadSheetReportDesignerDesignView: TdxSpreadSheetReportDesignerDesignView;
    dxBarDesign: TdxBar;
    dxBarLargeButtonDesignView: TdxBarLargeButton;
    dxSpreadSheetReportDesignerReportPreview: TdxSpreadSheetReportDesignerReportPreview;
    dxBarLargeButtonReportPreview: TdxBarLargeButton;
    btnEscolhadeCampos: TdxBarLargeButton;
    actEscolhadeCampos: TAction;
    Splitter1: TSplitter;
    pnlEscolhaCampos: TPanel;
    actEditarRelatorio: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    dxSpreadSheetFormulaBar1: TdxSpreadSheetFormulaBar;
    dxBarSubItem18: TdxBarSubItem;
    btnPosicaoCampos: TdxBarButton;
    dxLayoutControl1: TdxLayoutControl;
    LbxModeloReferencia: TcxListBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    LicxgFieldChooserSite: TdxLayoutItem;
    cxgFieldChooserSite: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    SpreadSheet_Referencia: TFDQuery;
    DSSpreadSheet_Referencia: TDataSource;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1REFERENCIA: TcxGridDBColumn;
    GrupoReferencias: TdxLayoutGroup;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutSplitterItem2: TdxLayoutSplitterItem;
    btnSalvarFormulaNoBanco: TdxBarButton;
    Transa: TFDTransaction;
    dxBarLargeButton4: TdxBarLargeButton;
    SheetRelatorio: TdxSpreadSheet;
    dxBarPosicaoCampos: TdxBar;
    procedure dxSpreadSheetReportDesignerReportPreviewExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actEscolhadeCamposExecute(Sender: TObject);
    procedure actEditarRelatorioExecute(Sender: TObject);
    procedure LbxModeloReferenciaClick(Sender: TObject);
    procedure btnSalvarFormulaNoBancoClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure btnPosicaoCamposClick(Sender: TObject);
  private
    procedure InicializaModelosReferencia;
  public
    Class procedure Abrir(AWRCalc : TWRCalculaConfiguracoes; ARessoruce : String);
  end;

var
  FrmExcel: TFrmExcel;

implementation

{$R *.dfm}

uses
  ExcelRealatorio, CadSpreadSheet_Referencia, ConSpreadSheet_Referencia, Principal, DataModule, wrFuncoes,
  UnitFuncoes, dxSpreadSheetSelection, wrForms;

class procedure TFrmExcel.Abrir(AWRCalc : TWRCalculaConfiguracoes; ARessoruce : String);
Var
  ADetail: TdxSpreadSheetReportDetail;
begin
  try
    with TFrmExcel.Create(FrmPrincipal) do
    try
      PopupMode := pmAuto;
      AWRCalc.CarregaSpreadSheet(ReportDesigner, ARessoruce);
      ReportDesigner.DataBinding.DataSource  := AWRCalc.DSProduto;
      if ARessoruce = 'CalcProduto' then
      begin
        ADetail := ReportDesigner.DataBinding.Details.Add;
        ADetail.SectionID := 1;
        ADetail.DetailKeyFieldName := 'CODPRODUTO_COMPOSICAO';
        ADetail.MasterKeyFieldName := 'CODIGO';
        ADetail.DataSource         := AWRCalc.DSComposicao;
      end;
      if ARessoruce = 'CalcVenda' then
      begin
        ADetail := ReportDesigner.DataBinding.Details.Add;
        ADetail.SectionID := 1;
        ADetail.DetailKeyFieldName := 'CODPRODUTO';
        ADetail.MasterKeyFieldName := 'CODIGO';
        ADetail.DataSource         := AWRCalc.DSProduto;
//        FSprMemProduto.IndexFieldNames := 'ORDEM'; // Tem que estar ordenado, nçao esta por eu não sei
      end;
      if ARessoruce = 'CalcCompra' then
      begin
        ADetail := ReportDesigner.DataBinding.Details.Add;
        ADetail.SectionID := 1;
        ADetail.DetailKeyFieldName := 'CODNF_ENTRADA';
        ADetail.MasterKeyFieldName := 'CODIGO';
        ADetail.DataSource         := AWRCalc.DSProduto;
      end;
      Show;
      repeat
        try
          Application.HandleMessage;
        except
          Application.HandleException(nil);
        end;
      until not Visible;
    finally
    end;
  finally
//    BringToFront;
  end;
end;

procedure TFrmExcel.actEditarRelatorioExecute(Sender: TObject);
begin
  ReportDesigner.Visible:= True;
  SheetRelatorio.Visible:= False;
  actEscolhadeCampos.Enabled:= True;
end;

procedure TFrmExcel.actEscolhadeCamposExecute(Sender: TObject);
begin
  pnlEscolhaCampos.Visible := actEscolhadeCampos.Checked or btnPosicaoCampos.Down;
  ReportDesigner.FieldChooser.Show;
end;

procedure TFrmExcel.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  ARow, AColumn: Integer;
begin
  try
    dxStringToReference(SpreadSheet_Referencia.FieldByName('REFERENCIA').AsString, AColumn, ARow);
    SheetRelatorio.ActiveSheetAsTable.Selection.SelectCell(ARow, AColumn);
  except end;
end;

procedure TFrmExcel.btnPosicaoCamposClick(Sender: TObject);
begin
  if btnPosicaoCampos.Down then
    InicializaModelosReferencia;
  GrupoReferencias.Visible := btnPosicaoCampos.Down;
  pnlEscolhaCampos.Visible := actEscolhadeCampos.Checked or btnPosicaoCampos.Down;
end;

procedure TFrmExcel.btnSalvarFormulaNoBancoClick(Sender: TObject);
begin
  DSPost(SpreadSheet_Referencia);
  SpreadSheet_Referencia.First;
  while not SpreadSheet_Referencia.Eof do
  begin
    if Trim(SpreadSheet_Referencia.FieldByName('REFERENCIA').AsString) = '' then
    begin
      ShowMessageWR('Você deve preencher todas as referências da lista de nomes.', MB_ICONWARNING);
      Exit;
    end;
    SpreadSheet_Referencia.Next;
  end;
  ComitaTransacao(Transa);
end;

procedure TFrmExcel.dxBarLargeButton4Click(Sender: TObject);
begin
  ConsultaModalFiltro(TConsuSpreadSheet_Referencia, '');
end;

procedure TFrmExcel.dxSpreadSheetReportDesignerReportPreviewExecute(Sender: TObject);
begin
  SheetRelatorio.ClearAll;
  ReportDesigner.Build(SheetRelatorio);
  SheetRelatorio.Sheets[0].Caption:= ReportDesigner.Sheets[0].Caption;
  ReportDesigner.Visible:= False;
  SheetRelatorio.Visible:= True;
  actEscolhadeCampos.Enabled:= False;
end;

procedure TFrmExcel.FormShow(Sender: TObject);
begin
  SheetRelatorio.Align:= alClient;
  actEscolhadeCampos.Enabled:= False;
  ReportDesigner.Visible:= False;
  SheetRelatorio.Visible:= True;
  SheetRelatorio.ClearAll;
  ReportDesigner.Build(SheetRelatorio);
  SheetRelatorio.Sheets[0].Caption:= ReportDesigner.Sheets[0].Caption;
end;

procedure TFrmExcel.InicializaModelosReferencia;
var
  AStr: TStringList;
begin
  if LbxModeloReferencia.Count > 0 then
    Exit;


  {$REGION 'Produto'}
  AStr := TStringList.Create;
  AStr.Add('COMP');
  AStr.Add('LARG');
  AStr.Add('ESPESSURA');
  AStr.Add('QTDADEPECA');
  AStr.Add('QUANT');
  AStr.Add('CALC_QPESO_BRUTO');
  AStr.Add('CALC_QPESO_LIQUIDO');
  AStr.Add('CALC_QPESO_BRUTO_TOTAL');
  AStr.Add('CALC_QPESO_LIQUIDO_TOTAL');

//  AStr.Add('MARGEM');

  AStr.Add('CUSTO');
  AStr.Add('CUSTO_TOTAL');
//  AStr.Add('CALC_VLUCRO');
  AStr.Add('CALC_PLUCRO_DESEJADO');


  //AStr.Add('VDESC');
  //AStr.Add('VDESC_MANUAL');
  //AStr.Add('VOUTRO');
  //AStr.Add('VOUTRO_MANUAL');
  //AStr.Add('NF_VFRETE');

  //AStr.Add('CALC_VCOMPRA_EXTRA');

  //RENDIMENTO - Compra
  AStr.Add('QTDADEPECA_RENDIMENTO');
  AStr.Add('COMP_RENDIMENTO');
  AStr.Add('LARG_RENDIMENTO');
  AStr.Add('ESPESSURA_RENDIMENTO');
  AStr.Add('QUANT_RENDIMENTO');

  AStr.Add('VALOR_COMPRA');
  // Extras Impostos
  AStr.Add('VDESC');
  AStr.Add('VOUTRO');
  AStr.Add('VDESC_MANUAL');
  AStr.Add('VOUTRO_MANUAL');
  AStr.Add('NF_VFRETE');
  AStr.Add('NF_VICMSST');
  AStr.Add('NF_IPI_VIPI');
  AStr.Add('CALC_VCOMPRA_EXTRA');
  AStr.Add('CALC_VCOMPRA_RATEADO');


  AStr.Add('CALC_VCOMPRA_TOTAL');
  AStr.Add('CALC_VFRETE_CTE');
  AStr.Add('CALC_VDIFAL');
  AStr.Add('CALC_PDIFAL');
//  AStr.Add('CUSTO_TOTAL');


  //Markup
  AStr.Add('CALC_PVENDA_DESCONTO');
  AStr.Add('CALC_PVENDA_OUTRO');
  AStr.Add('CALC_PVENDA_IMPOSTO_IPI');
  AStr.Add('CALC_PVENDA_IMPOSTO_ICMS_ST');
  AStr.Add('CALC_PVENDA_CUSTO_FIXO');
  AStr.Add('CALC_PVENDA_CUSTO_VARIAVEL');
  AStr.Add('CALC_PVENDA_CUSTO_FINANCEIRO');
  AStr.Add('CALC_PVENDA_COMISSAO_REP');
  AStr.Add('CALC_PVENDA_COMISSAO_FUN');
  AStr.Add('CALC_PVENDA_COMISSAO_AGENCIA');
  AStr.Add('CALC_PVENDA_COMISSAO_PRODUCAO');
  AStr.Add('CALC_PVENDA_FRETE');
  AStr.Add('CALC_PMARGEM_CONTRIBUICAO');

  AStr.Add('CALC_PMARKUP');

  AStr.Add('VALOR');
  AStr.Add('TOTAL');
  AStr.Add('LinhaProduto');
  AStr.Add('ORDEM');
  AStr.Add('SEQUENCIA');
  LbxModeloReferencia.AddItem('CalcProduto', AStr);
{$ENDREGION}
  {$REGION 'Venda'}
  AStr := TStringList.Create;
  AStr.Add('COMP');
  AStr.Add('LARG');
  AStr.Add('ESPESSURA');
  AStr.Add('QTDADEPECA');
  AStr.Add('QUANT');
  AStr.Add('CALC_QPESO_BRUTO');
  AStr.Add('CALC_QPESO_LIQUIDO');
  AStr.Add('CALC_QPESO_BRUTO_TOTAL');
  AStr.Add('CALC_QPESO_LIQUIDO_TOTAL');

//  AStr.Add('MARGEM');

  AStr.Add('CUSTO');
  AStr.Add('CUSTO_TOTAL');


  //IBPT - De Olho NO Imposto
  AStr.Add('NF_VALIQ_ESTADUAL');
  AStr.Add('NF_VALIQ_IMPORTACAO');
  AStr.Add('NF_VALIQ_MUNICIPAL');
  AStr.Add('NF_VALIQ_NACIONAL');

  //Markup
//  AStr.Add('CALC_PVENDA_DESCONTO');
  AStr.Add('CALC_PVENDA_OUTRO');
  AStr.Add('CALC_PVENDA_IMPOSTO');
  AStr.Add('CALC_PVENDA_IMPOSTO_IPI');
  AStr.Add('CALC_PVENDA_IMPOSTO_ICMS_ST');
  AStr.Add('CALC_PVENDA_CUSTO_FIXO');
  AStr.Add('CALC_PVENDA_CUSTO_VARIAVEL');
  AStr.Add('CALC_PVENDA_CUSTO_FINANCEIRO');
  AStr.Add('CALC_PVENDA_COMISSAO_REP');
  AStr.Add('CALC_PVENDA_COMISSAO_FUN');
  AStr.Add('CALC_PVENDA_COMISSAO_AGENCIA');
  AStr.Add('CALC_PVENDA_COMISSAO_PRODUCAO');
  AStr.Add('CALC_PVENDA_FRETE');
  AStr.Add('CALC_PVENDA_PERDA_PRODUCAO');

  AStr.Add('CALC_PVENDA_TOTAL');
  AStr.Add('CALC_VVENDA_SUGERIDO');
  AStr.Add('CALC_PVENDA_LUCRO_DESEJADO');
  AStr.Add('CALC_VENDA_MINIMO_VALOR');
  AStr.Add('CALC_PMARGEM_CONTRIBUICAO');

  AStr.Add('VALOR_RELATORIO');
  AStr.Add('TOTAL_RELATORIO');
  AStr.Add('CALC_VLUCRO');

  AStr.Add('CALC_PMARKUP');

  AStr.Add('VALOR');
  AStr.Add('TOTAL');
  AStr.Add('LinhaProduto');
  AStr.Add('ORDEM');
  AStr.Add('SEQUENCIA');

       //Lucro
  AStr.Add('CALC_VALOR_ORIGINAL');
  AStr.Add('CALC_PDESC_MANUAL');
  //AStr.Add('CALC_VDESC_MANUAL')!!!!;
  AStr.Add('CALC_POUTRO_MANUAL');
  //AStr.Add('CALC_VOUTRO_MANUAL');
  AStr.Add('PDESC');
  AStr.Add('VDESC');
  AStr.Add('POUTRO');
  AStr.Add('VOUTRO');
//oi
//oi2
//oii


  AStr.Add('CALC_VVENDA_CUSTO_FIXO');
  AStr.Add('CALC_VVENDA_CUSTO_VARIAVEL');
  AStr.Add('CALC_VVENDA_CUSTO_FINANCEIRO');
  AStr.Add('CALC_VVENDA_COMISSAO_PRODUCAO');
  AStr.Add('COMISSAO_REPRESENTANTE');
  AStr.Add('CALC_VVENDA_COMISSAO_REP');
  AStr.Add('COMISSAO');
  AStr.Add('CALC_VVENDA_COMISSAO_FUN');
  AStr.Add('COMISSAO_AGENCIA');
  AStr.Add('CALC_VVENDA_COMISSAO_AGENCIA');


  AStr.Add('CALC_VVENDA_IMPOSTO');

  AStr.Add('NF_VICMS');
  AStr.Add('NF_VICMSST');
  AStr.Add('NF_II_VII ');
  AStr.Add('NF_ISSQN_VISSQN');
  AStr.Add('NF_COFINS_VCOFINS');
  AStr.Add('NF_PIS_VPIS');
  AStr.Add('NF_IPI_VIPI');
  AStr.Add('NF_VFRETE');
  AStr.Add('NF_VFRETE');
  AStr.Add('NF_VALOR_ISS_RETIDO');



  AStr.Add('CALC_VALOR_ORIGINAL');
  //AStr.Add('NAO_DEDUZ_ISS_RETIDO_TOTAL_NOTA');
  //AStr.Add('NF_VALOR_ISS_RETIDO');
  AStr.Add('TOTAL_CUSTOS');
  AStr.Add('TOTAL_COMISSOES');
  AStr.Add('TOTAL_IMPOSTOS');
  AStr.Add('LUCRO');

  LbxModeloReferencia.AddItem('CalcVenda', AStr);
{$ENDREGION}
  {$REGION 'Compra'}
  AStr := TStringList.Create;
  AStr.Add('QUANT_COMPRA');
  AStr.Add('VALOR_COMPRA');
  AStr.Add('TOTAL_COMPRA');

  // Extras Impostos
  AStr.Add('VDESC');
  AStr.Add('VOUTRO');
  AStr.Add('CALC_VDESC_MANUAL');
  AStr.Add('CALC_VOUTRO_MANUAL');
  AStr.Add('NF_VFRETE');
  AStr.Add('NF_VICMSST');
  AStr.Add('NF_IPI_VIPI');
  AStr.Add('CALC_VFRETE_CTE');
  AStr.Add('CALC_VDIFAL');
  AStr.Add('CALC_PDIFAL');
  AStr.Add('CALC_VCOMPRA_CUSTOS_VINCULADOS');
  AStr.Add('CALC_VCOMPRA_RATEADO');

  // Conversão de Unidade
  AStr.Add('QTDADEPECA_RENDIMENTO');
  AStr.Add('COMP_RENDIMENTO');
  AStr.Add('LARG_RENDIMENTO');
  AStr.Add('ESPESSURA_RENDIMENTO');
  AStr.Add('QUANT_RENDIMENTO');
  AStr.Add('QUANT');

  AStr.Add('CUSTO_TOTAL');

  AStr.Add('QTDADEPECA_SUBUNIDADE');
  AStr.Add('COMP_SUBUNIDADE');
  AStr.Add('LARG_SUBUNIDADE');
  AStr.Add('ESPESSURA_SUBUNIDADE');
  AStr.Add('QUANT_SUBUNIDADE');


  // Custo médio
  AStr.Add('TEM_CUSTO_MEDIO');
  AStr.Add('CALC_VANTERIOR_CUSTO');
  AStr.Add('CALC_QANTERIOR_ESTOQUE');

  // Custo Unitário
  AStr.Add('CUSTO');

  //Markup
  AStr.Add('CALC_PVENDA_DESCONTO');
  AStr.Add('CALC_PVENDA_IMPOSTOS');
  AStr.Add('CALC_PVENDA_PERDA_PRODUCAO');
  AStr.Add('CALC_PVENDA_OUTRO');
  AStr.Add('CALC_PVENDA_IMPOSTO_IPI');
  AStr.Add('CALC_PVENDA_IMPOSTO_ICMS_ST');
  AStr.Add('CALC_PVENDA_CUSTO_FIXO');
  AStr.Add('CALC_PVENDA_CUSTO_VARIAVEL');
  AStr.Add('CALC_PVENDA_CUSTO_FINANCEIRO');
  AStr.Add('CALC_PVENDA_COMISSAO_REP');
  AStr.Add('CALC_PVENDA_COMISSAO_FUN');
  AStr.Add('CALC_PVENDA_COMISSAO_AGENCIA');
  AStr.Add('CALC_PVENDA_COMISSAO_PRODUCAO');
  AStr.Add('CALC_PVENDA_FRETE');

  AStr.Add('CALC_PMARKUP');
  AStr.Add('CALC_VCOMPRA_EXTRA');
  AStr.Add('CALC_VCOMPRA_TOTAL');



  AStr.Add('CALC_VLUCRO');
  AStr.Add('CALC_PLUCRO_DESEJADO');

  AStr.Add('MARGEM');
  AStr.Add('CALC_PMARGEM_CONTRIBUICAO');

  AStr.Add('VALOR');
  AStr.Add('TOTAL');

  AStr.Add('CALC_QPESO_BRUTO');
  AStr.Add('CALC_QPESO_BRUTO_TOTAL');
  AStr.Add('CALC_QPESO_LIQUIDO');
  AStr.Add('CALC_QPESO_LIQUIDO_TOTAL');

  AStr.Add('CALC_QPESO_BRUTO_COMPRA');
  AStr.Add('CALC_QPESO_LIQUIDO_COMPRA');

  AStr.Add('CALC_PVENDA_TOTAL');
  AStr.Add('CALC_VVENDA_SUGERIDO');
  AStr.Add('CALC_PVENDA_LUCRO_DESEJADO');
  AStr.Add('CALC_VENDA_MINIMO_VALOR');

  AStr.Add('LinhaProduto');
  AStr.Add('ORDEM');
  AStr.Add('SEQUENCIA');

  LbxModeloReferencia.AddItem('CalcCompra', AStr);
{$ENDREGION}

end;

procedure TFrmExcel.LbxModeloReferenciaClick(Sender: TObject);
var
  AStr: TStringList;
  ANome: string;
  I: Integer;
begin
  ANome := LbxModeloReferencia.Items[LbxModeloReferencia.ItemIndex];
  AStr  := TStringList(LbxModeloReferencia.Items.Objects[LbxModeloReferencia.ItemIndex]);

  DSPost(SpreadSheet_Referencia);
  SpreadSheet_Referencia.Close;
  SpreadSheet_Referencia.ParamByName('SpreadSheet').AsString := ANome;
  SpreadSheet_Referencia.Open;

  for I := 0 to AStr.Count - 1 do
  begin
    if not SpreadSheet_Referencia.Locate('DESCRICAO', AStr[i], []) then
    begin
      SpreadSheet_Referencia.Insert;
      SpreadSheet_Referencia.FieldByName('CODIGO').AsInteger     := Trunc(GetProximoCodigoGen('CR_SPREADSHEET_REFERENCIA'));
      SpreadSheet_Referencia.FieldByName('DESCRICAO').AsString   := AStr[i];
      SpreadSheet_Referencia.FieldByName('SPREADSHEET').AsString := ANome;
      SpreadSheet_Referencia.FieldByName('ATIVO').AsString       := 'S';
      SpreadSheet_Referencia.Post;
    end;
  end;
end;

end.

