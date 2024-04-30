unit Frame_CadPessoas_Funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_CadPessoas_Mestre, cxCheckBox, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxCalendar, cxLabel, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, ThdTimer, UCHistDataset, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, System.Generics.Collections, WREventos, frxClass, frxDBSet, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList,
  Vcl.ExtCtrls, cxDBEdit, cxMemo, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxScrollBox, cxImage, dxStatusBar, cxMaskEdit, cxTextEdit, cxGroupBox,
  cxRadioGroup, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxButtonEdit, cxCurrencyEdit, cxSpinEdit,
  cxDropDownEdit, dxLayoutControl, Vcl.StdCtrls, cxButtons, cxCustomListBox, cxCheckListBox, uWRFormataCamposDataSet, dxCustomTileControl, dxTileControl,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations,
  dxUIAdorners, dxActivityIndicator;

type
  TFrame_Pessoas_Funcionario = class(TFrame_Pessoas_Mestre)
    procedure WREventosCadastroLayoutChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Pessoas_Funcionario: TFrame_Pessoas_Funcionario;

implementation

{$R *.dfm}

Uses Base, Tag.Form, Tag.App;

procedure TFrame_Pessoas_Funcionario.WREventosCadastroLayoutChange(
  Sender: TObject);
begin
  inherited;
  GrupoFuncionario.Visible        := AWR_APP[TagAPP_RH_Funcionarios].Ativo;
  GrupoFunAnexo.Visible           := AWR_APP[TagAPP_Anexo].Ativo;
  GrupoFichaPonto.Visible         := AWR_APP[TagAPP_RH_Ficha_Ponto].Ativo;
end;

initialization
  RegisterClass(TFrame_Pessoas_Funcionario);
  RegisterFrameCad(Tag_Pessoas_Funcionario, TFrame_Pessoas_Funcionario);

end.
