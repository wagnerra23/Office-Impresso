unit CadConfiguracoes_Grid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, Vcl.Menus, cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxUIAdorners, cxClasses, frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, WREventos, UCBase, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxStatusBar, dxLayoutContainer, cxButtonEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxTextEdit, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxMemo, fs_iinterpreter,
  System.Generics.Collections, cxLabel;

type
  TFrmConfiguracoes_Grid = class(TFrmCadM)
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TFrmConfiguracoes_Grid);

end.

