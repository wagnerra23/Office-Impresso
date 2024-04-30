unit Produto_Preco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, dxLayoutContainer,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutControl, DataModuleBanco, dxLayoutLookAndFeels, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TFrmProduto_Preco = class(TForm)
    MainLayoutGroup_Root: TdxLayoutGroup;
    MainLayout: TdxLayoutControl;
    GridTabelaPrecoDBTableView1: TcxGridDBTableView;
    GridTabelaPrecoLevel1: TcxGridLevel;
    GridTabelaPreco: TcxGrid;
    LiGridTabelaPreco: TdxLayoutItem;
    DSProduto_Preco: TDataSource;
    GridTabelaPrecoDBTableView1CODIGO: TcxGridDBColumn;
    GridTabelaPrecoDBTableView1CODPRODUTO: TcxGridDBColumn;
    GridTabelaPrecoDBTableView1QUANT: TcxGridDBColumn;
    GridTabelaPrecoDBTableView1TIPO: TcxGridDBColumn;
    GridTabelaPrecoDBTableView1PORCENTAGEM: TcxGridDBColumn;
    GridTabelaPrecoDBTableView1DE: TcxGridDBColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    BtnCadProduto: TcxButton;
    LiBtnCadProduto: TdxLayoutItem;
    GridTabelaPrecoDBTableView1Valor: TcxGridDBColumn;
    procedure FormDeactivate(Sender: TObject);
    procedure BtnCadProdutoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  public
    class procedure Abrir(const AOwner: TForm; var AFrmProdutoPreco: TFrmProduto_Preco; const AProduto_Preco: TDataSet;
      const AControlePosicionar: TWinControl);
  end;

implementation

{$R *.dfm}

uses
  Base_Produto, UnitFuncoes, Principal, wrForms;

{ TFrmProduto_Preco }

class procedure TFrmProduto_Preco.Abrir(const AOwner: TForm; var AFrmProdutoPreco: TFrmProduto_Preco;
  const AProduto_Preco: TDataSet; const AControlePosicionar: TWinControl);
begin
  if AFrmProdutoPreco = nil then
    AFrmProdutoPreco := TFrmProduto_Preco.Create(AOwner);
  AFrmProdutoPreco.BtnCadProduto.Enabled   := FrmPrincipal.Action_Cad_Produto.Enabled;
  AFrmProdutoPreco.DSProduto_Preco.DataSet := AProduto_Preco;
  PosicionarControleAbaixoDe(AFrmProdutoPreco, AControlePosicionar);
  AFrmProdutoPreco.Show;
end;

procedure TFrmProduto_Preco.BtnCadProdutoClick(Sender: TObject);
begin
  CadastroModalMakeVisible(TFrmProduto, DSProduto_Preco.DataSet.FieldByName('CODPRODUTO').Value,
    'LiTabelaPrecos');
end;

procedure TFrmProduto_Preco.CreateParams(var Params: TCreateParams);
begin
  inherited;
  //Cria uma borda de form sem a barra de título
  Params.Style := Params.Style or WS_THICKFRAME;
end;

procedure TFrmProduto_Preco.FormDeactivate(Sender: TObject);
begin
  Close;
end;

procedure TFrmProduto_Preco.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

end.

