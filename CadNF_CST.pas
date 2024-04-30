unit CadNF_CST;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  fs_iinterpreter, dxUIAdorners, cxClasses, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, WREventos, UCBase,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxMemo,
  System.Generics.Collections, cxLabel;

type
  TFrmNF_CST = class(TFrmCadM)
    dxLayoutItem1: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    cxDBComboBox2: TcxDBComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxDBComboBox3: TcxDBComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxDBComboBox4: TcxDBComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxDBComboBox5: TcxDBComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxDBComboBox6: TcxDBComboBox;
    dxLayoutItem8: TdxLayoutItem;
    cxDBComboBox7: TcxDBComboBox;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNF_CST: TFrmNF_CST;

implementation

{$R *.dfm}

initialization
  RegisterClass(TFrmNF_CST);

end.
