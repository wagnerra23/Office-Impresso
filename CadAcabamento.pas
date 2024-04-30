unit CadAcabamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, dxLayoutControlAdapters, dxLayoutContainer,
  dxLayoutcxEditAdapters, UCBase, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, IBX.IBCustomDataSet,
  IBX.IBStoredProc, IBX.IBDatabase, Vcl.ExtCtrls, cxTextEdit, cxDBEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxStatusBar, IBX.IBQuery,
  cxDataControllerConditionalFormattingRulesManagerDialog, WREventos,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  frxClass, frxDBSet, UCHistDataset, cxMaskEdit, cxDropDownEdit, cxButtonEdit, dxUIAdorners, fs_iinterpreter,
  System.Generics.Collections, cxLabel;

type
  TFrmAcabamento = class(TFrmCadM)
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
  RegisterClass(TFrmAcabamento);

end.
