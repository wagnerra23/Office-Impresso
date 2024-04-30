unit Frame_CadBalanco_Patrimonial_Classificacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadMestre, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, IBCustomDataSet, StdCtrls,
  DBCtrls, DB, IBStoredProc, IBDatabase, ExtCtrls, ComCtrls, cxLabel, Mask,
  cxNavigator, cxDBNavigator, Buttons, Gradient, UCHistDataset, dxSkinsCore, Frame_Cad,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  uWRFormataCamposDataSet, frxClass, frxDBSet, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, System.Generics.Collections, WREventos, UCBase,
  cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList,
  dxCustomTileControl, dxTileControl, dxStatusBar, dxLayoutContainer,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxButtons, cxTextEdit, dxLayoutControl, dxUIAdorners, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_Balanco_Patr_Classificacao = class(TFrmCad_Frame)
    dxLayoutItem1: TdxLayoutItem;
    cbBalancoClassificacao: TcxDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Balanco_Patr_Classificacao: TFrame_Balanco_Patr_Classificacao;

implementation

{$R *.dfm}

Uses UnitFuncoes, Base, Tag.Form;

initialization
  RegisterClass(TFrame_Balanco_Patr_Classificacao);
  RegisterFrameCad(Tag_Balanco_Patrimonial_Classificacao, TFrame_Balanco_Patr_Classificacao);
end.
