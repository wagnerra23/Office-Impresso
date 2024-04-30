unit Frame_CadPessoas_Funcionario_Ficha_Ponto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_CadPessoas_Mestre, cxCheckBox, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, Vcl.Menus, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxCalendar, cxLabel, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, ThdTimer, dxUIAdorners, uWRFormataCamposDataSet,
  frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client, FireDAC.Comp.DataSet, System.Generics.Collections, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxCustomTileControl, dxTileControl, cxDBEdit, cxMemo, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxScrollBox, cxImage, dxStatusBar, cxMaskEdit, cxTextEdit, cxGroupBox, cxRadioGroup, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxButtonEdit, cxCurrencyEdit, cxSpinEdit, cxDropDownEdit, dxLayoutControl, Vcl.StdCtrls, cxButtons, cxCustomListBox, cxCheckListBox,
  dxActivityIndicator;

type
  TFrame_Pessoas_Funcionario_Ficha_Ponto = class(TFrame_Pessoas_Mestre)
    procedure FrameEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Pessoas_Funcionario_Ficha_Ponto: TFrame_Pessoas_Funcionario_Ficha_Ponto;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

procedure TFrame_Pessoas_Funcionario_Ficha_Ponto.FrameEnter(Sender: TObject);
begin
  inherited;
  GrupoFichaPonto.MakeVisible;
end;

initialization
  RegisterClass(TFrame_Pessoas_Funcionario_Ficha_Ponto);
  RegisterFrameCad(Tag_Funcionario_Ficha_Ponto, TFrame_Pessoas_Funcionario_Ficha_Ponto);


end.
