unit CadPlanilha_Tempo;

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
  cxTextEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxLabel;

type
  TFrmPlanilha_Tempo = class(TFrmCadM)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPlanilha_Tempo: TFrmPlanilha_Tempo;

implementation

{$R *.dfm}

end.