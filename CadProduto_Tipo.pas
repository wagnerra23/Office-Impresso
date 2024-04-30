unit CadProduto_Tipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, cxCheckBox, cxDBEdit, frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxTextEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxSkinsCore, cxImageList, cxImageComboBox, dxUIAdorners, cxButtonEdit,
  fs_iinterpreter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridChartView, cxGridDBChartView, System.Generics.Collections, cxLabel;

type
  TFrmProduto_Tipo = class(TFrmCadM)
    lichkPode_Alterar_Estoque: TdxLayoutItem;
    chkPode_Alterar_Estoque: TcxDBCheckBox;
    edtClassificacao: TcxDBImageComboBox;
    liedtClassificacao: TdxLayoutItem;
    ImgProduto_Tipo16x16: TcxImageList;
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure WREventosCadastroFK_Excluir(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  wrPreencheLookup;

procedure TFrmProduto_Tipo.btnExcluirClick(Sender: TObject);
begin
  if Cadastro.FieldByName('CODIGO').AsInteger > 4 then
    inherited
  else
    ShowMessage('Não pode excluir nativos do sistema!');
end;

procedure TFrmProduto_Tipo.FormCreate(Sender: TObject);
begin
  inherited;
  PreencheImageComboBoxProduto_TipoClassificacao(edtClassificacao.Properties);
end;

procedure TFrmProduto_Tipo.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      AddValorInicial(FNomeTabela , 'PODE_ALTERAR_ESTOQUE', chkPode_Alterar_Estoque, 'S');
    end;
  end;
end;

procedure TFrmProduto_Tipo.WREventosCadastroFK_Excluir(Sender: TObject);
begin
  inherited;
  //    DefineFKnaExclusao('CODPRODUTO_TIPO', 'PRODUTO'); // Quero Usar na exclusão de itensLOTE
end;

initialization
  RegisterClass(TFrmProduto_Tipo);

end.
