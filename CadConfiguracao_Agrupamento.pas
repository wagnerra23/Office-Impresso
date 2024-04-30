unit CadConfiguracao_Agrupamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, Vcl.Menus, cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, fs_iinterpreter, dxUIAdorners, cxClasses, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, WREventos, UCBase, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxMemo, cxRichEdit, cxDBRichEdit, cxLabel, cxButtonEdit,
  System.Generics.Collections, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  WRButtonsEditAdd;

type
  TFrmConfiguracao_Agrupamento = class(TFrmCadM)
    LiedtForm: TdxLayoutItem;
    edtForm: TcxDBTextEdit;
    edtObservacao: TcxDBRichEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtCodConfiguracao_FiltroÎConfiguracao_Filtro: TcxDBButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    LblCodConfiguracao_FiltroÎConfiguracao_FiltroÎDESCRICAO: TcxLabel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    LiedtCampo1: TdxLayoutItem;
    edtCampo1: TcxDBTextEdit;
    LiedtOrdem1: TdxLayoutItem;
    edtOrdem1: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    LiedtOrdem2: TdxLayoutItem;
    edtOrdem2: TcxDBTextEdit;
    LiedtCampo2: TdxLayoutItem;
    edtCampo2: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    LiedtOrdem3: TdxLayoutItem;
    edtOrdem3: TcxDBTextEdit;
    LiedtCampo3: TdxLayoutItem;
    edtCampo3: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

initialization
  RegisterClass(TFrmConfiguracao_Agrupamento);

end.
