unit CadVenda_Situacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, CadM, Data.DB, IBX.IBCustomDataSet, cxGridDBTableView, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer, dxLayoutControlAdapters,
  dxLayoutContainer, dxLayoutcxEditAdapters, cxGridCustomTableView, cxGridTableView, UCBase, dxLayoutLookAndFeels,
  Vcl.ImgList, IBX.IBStoredProc, IBX.IBDatabase, Vcl.ExtCtrls, cxTextEdit, cxDBEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxDBNavigator, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxStatusBar,
  System.ImageList, cxDataControllerConditionalFormattingRulesManagerDialog, WREventos,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  UCHistDataset, cxLabel, cxMaskEdit, cxDropDownEdit, frxClass, frxDBSet, dxUIAdorners,
  fs_iinterpreter, System.Generics.Collections, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxCheckBox;

type
  TFrmVenda_Situacao = class(TFrmCadM)
    CadastroCODIGO: TIntegerField;
    CadastroDESCRICAO: TStringField;
    CadastroDT_ALTERACAO: TSQLTimeStampField;
    CadastroATIVO: TStringField;
    dxLayoutItem1: TdxLayoutItem;
    chkTem_Fatura: TcxDBCheckBox;
    dxLayoutGroup1: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TFrmVenda_Situacao);

end.
