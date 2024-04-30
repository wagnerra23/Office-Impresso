unit Frame_CadRequisicao_Motivo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Cad, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  System.Generics.Collections, WREventos, UCBase, cxClasses,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxCustomTileControl, dxTileControl, dxStatusBar, dxLayoutContainer,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, Vcl.StdCtrls, cxButtons, cxTextEdit,
  dxLayoutControl, dxCore, cxCheckBox, dxColorEdit, dxDBColorEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxUIAdorners;

type
  TFrame_Requisicao_Motivo = class(TFrmCad_Frame)
    dxLayoutItem1: TdxLayoutItem;
    dxDBColorEdit1: TdxDBColorEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem4: TdxLayoutItem;
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Requisicao_Motivo: TFrame_Requisicao_Motivo;

implementation

{$R *.dfm}

uses UnitFuncoes, Base, Tag.Form;


procedure TFrame_Requisicao_Motivo.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      AddChavePrimaria('PRODUTO_REQUISICAO_MOTIVO', 'CODIGO', edtCodigo);
      AddValorInicial('PRODUTO_REQUISICAO_MOTIVO', 'ATIVO',cbxAtivo,'S');
    end;
  end;
end;

initialization
  RegisterClass(TFrame_Requisicao_Motivo);
  RegisterFrameCad(Tag_Estoque_Requisicao_Motivo, TFrame_Requisicao_Motivo);
end.
