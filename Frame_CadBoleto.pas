unit Frame_CadBoleto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, System.Generics.Collections, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxCustomTileControl, dxTileControl, dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit, Vcl.StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxCalendar, cxCurrencyEdit, cxMemo, cxLabel, Frame_Cad, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxUIAdorners;

type
  TFrame_Boleto = class(TFrmCad_Frame)
    Label74: TcxLabel;
    CbBoletoCarteira: TcxDBComboBox;
    DBComboBox4: TcxDBComboBox;
    DBEdit28: TcxDBTextEdit;
    DBMemo1: TcxDBMemo;
    DBEdit31: TcxDBCurrencyEdit;
    DBEdit29: TcxDBCurrencyEdit;
    DBEdit30: TcxDBCurrencyEdit;
    EdtBoletoDesconto: TcxDBCurrencyEdit;
    DBEdit33: TcxDBCurrencyEdit;
    DBComboBox6: TcxDBComboBox;
    DBComboBox7: TcxDBComboBox;
    DBEdit27: TcxDBCurrencyEdit;
    DBEdit35: TcxDBCurrencyEdit;
    cxDBComboBox1: TcxDBComboBox;
    EdtBaixaDevolucao: TcxDBCurrencyEdit;
    edtVencimento2: TcxDBDateEdit;
    edtDocumento2: TcxDBTextEdit;
    dxLayoutControl10Group1: TdxLayoutGroup;
    dxLayoutControl10Group2: TdxLayoutGroup;
    dxLayoutControl10Group3: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    liedtVencimento2: TdxLayoutItem;
    liedtDocumento2: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Boleto: TFrame_Boleto;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

initialization
  RegisterClass(TFrame_Boleto);
  RegisterFrameCad(Tag_Boleto, TFrame_Boleto);

end.
