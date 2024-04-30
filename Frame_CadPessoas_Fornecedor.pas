unit Frame_CadPessoas_Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_CadPessoas_Mestre, cxCheckBox, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxCalendar, cxLabel, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, ThdTimer, uWRFormataCamposDataSet, frxClass,
  frxDBSet, UCHistDataset, FireDAC.Comp.Client, FireDAC.Comp.DataSet, System.Generics.Collections, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxCustomTileControl, dxTileControl, cxDBEdit, cxMemo, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxScrollBox, cxImage, dxStatusBar, cxMaskEdit, cxTextEdit, cxGroupBox, cxRadioGroup, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxButtonEdit, cxCurrencyEdit, cxSpinEdit, cxDropDownEdit, dxLayoutControl, Vcl.StdCtrls, cxButtons, cxCustomListBox, cxCheckListBox,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations,
  dxUIAdorners, dxActivityIndicator;

type
  TFrame_Pessoas_Fornecedor = class(TFrame_Pessoas_Mestre)
    procedure WREventosCadastroLayoutChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Pessoas_Fornecedor: TFrame_Pessoas_Fornecedor;

implementation

{$R *.dfm}

Uses Base, Tag.Form, Tag.App;

procedure TFrame_Pessoas_Fornecedor.WREventosCadastroLayoutChange(
  Sender: TObject);
begin
  inherited;
  GrupoHistoricoDeCompras.Visible := AWR_APP[TagAPP_Compra].Ativo;
end;

initialization
  RegisterClass(TFrame_Pessoas_Fornecedor);
  RegisterFrameCad(Tag_Pessoas_Fornecedor, TFrame_Pessoas_Fornecedor);

end.
