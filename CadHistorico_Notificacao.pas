unit CadHistorico_Notificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, System.Generics.Collections, WREventos, UCBase,
  cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxLabel, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxUIAdorners, WRButtonsEditAdd;

type
  TFrmHistorico_Notificacao = class(TFrmCadM)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHistorico_Notificacao: TFrmHistorico_Notificacao;

implementation

{$R *.dfm}

end.
