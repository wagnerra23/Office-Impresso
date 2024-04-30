unit CadLocal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, CadM, Data.DB, IBX.IBCustomDataSet, cxGridDBTableView, UCHist_WRGeral, UCHistDataset,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsdxStatusBarPainter,
  dxSkinscxPCPainter, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxContainer, dxLayoutControlAdapters, dxLayoutContainer, dxLayoutcxEditAdapters, cxGridCustomTableView,
  cxGridTableView, UCBase, dxLayoutLookAndFeels, Vcl.ImgList, IBX.IBStoredProc, IBX.IBDatabase, Vcl.ExtCtrls,
  cxTextEdit, cxDBEdit, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxDBNavigator, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxStatusBar, System.Actions, Vcl.ActnList, FireDAC.Stan.Intf, FireDAC.Comp.Client, cxDBLabel,
  cxLabel, Vcl.Imaging.pngimage, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, dxScreenTip,
  System.ImageList, cxDataControllerConditionalFormattingRulesManagerDialog, WREventos,
  frxClass, frxDBSet, cxMaskEdit, cxDropDownEdit, dxUIAdorners,
  System.Generics.Collections;

type
  TFrmLocal = class(TFrmCadM)
    CadastroCODIGO: TIntegerField;
    CadastroDESCRICAO: TStringField;
    CadastroDT_ALTERACAO: TSQLTimeStampField;
    CadastroATIVO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TFrmLocal);

end.
