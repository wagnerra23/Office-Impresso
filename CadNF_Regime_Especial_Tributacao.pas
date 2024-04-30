unit CadNF_Regime_Especial_Tributacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client, FireDAC.Comp.DataSet, WREventos,
  UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxLayoutContainer,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxSkinsCore, dxUIAdorners,
  fs_iinterpreter, System.Generics.Collections, cxLabel;

type
  TFrmNF_Regime_Especial_Tributacao = class(TFrmCadM)
    CadastroCODIGO: TIntegerField;
    CadastroDESCRICAO: TStringField;
    CadastroATIVO: TStringField;
    CadastroDT_ALTERACAO: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TFrmNF_Regime_Especial_Tributacao);

end.
