unit Frame_CadCor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, WREventos,
  UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxLayoutContainer,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxSkinsCore,
  fs_iinterpreter, dxUIAdorners, System.Generics.Collections, cxLabel,
  WRButtonsEditAdd, Frame_Cad, uWRFormataCamposDataSet, dxCustomTileControl,
  dxTileControl, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_Cor = class(TFrmCad_Frame)
    LiEdtSigla: TdxLayoutItem;
    EdtSigla: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, Tag.Form;

initialization
  RegisterClass(TFrame_Cor);
  RegisterFrameCad(Tag_Cor, TFrame_Cor);

end.
