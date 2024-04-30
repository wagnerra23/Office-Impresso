unit FrmProdutoGradePanel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxDBEdit, dxLayoutContainer, cxTextEdit,
  cxCurrencyEdit, cxClasses, dxLayoutControl, Data.DB, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutLookAndFeels, cxLabel, uWRCalculaConfiguracoes, cxImage, dxGDIPlusClasses, dxCustomTileControl, dxTileControl, cxCheckBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxButtonEdit, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, uControleWR, Frame_CadProduto_Mestre, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmProdutoGradePanel = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    DS: TDataSource;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    dxLayoutItem6: TdxLayoutItem;
    lblTitulo: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    tcMenu: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    btnAplicar: TdxTileControlItem;
    dxLayoutStandardLookAndFeelEquacao: TdxLayoutStandardLookAndFeel;
    cxLabel3: TcxLabel;
    btnCancelar: TdxTileControlItem;
    dxLayoutItem2: TdxLayoutItem;
    cbVariacao: TcxDBLookupComboBox;
    DSProduto_Preco: TDataSource;
    dxLayoutItem3: TdxLayoutItem;
    GridRecursos: TcxGrid;
    GridEtapas: TcxGridDBTableView;
    GridEtapasDESCRICAO: TcxGridDBColumn;
    GridEtapasDT_ALTERACAO: TcxGridDBColumn;
    GridRecursosLevel1: TcxGridLevel;
    DSProdutoGradeModeloItem: TDataSource;
    ProdutoGradeModeloItem: TFDQuery;
    procedure btnCancelarClick(Sender: TdxTileControlItem);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAplicarClick(Sender: TdxTileControlItem);

  private
    FControleWR: TControleWR;
    FFrmProduto_Frame: TFrame_Produto_Mestre;

  public
    class procedure Abrir(ATipoVariacao: String; ADS, ADSProduto_Preco: TDataSource); static;
  end;

implementation

Uses wrFuncoes_Office, UnitFuncoes, Classes.WR, wrFuncoes, StrUtils, Produto_Preco, wrPreencheLookup;

{$R *.dfm}

class procedure TFrmProdutoGradePanel.Abrir(ATipoVariacao: String; ADS, ADSProduto_Preco: TDataSource);
var
  AVariacao: TFrmProdutoGradePanel;
begin
  AVariacao := TFrmProdutoGradePanel.Create(nil);
  try
    AVariacao.DS.DataSet := ADS.DataSet;
    AVariacao.DSProduto_Preco.DataSet := ADSProduto_Preco.DataSet;
    AVariacao.FControleWR := TControleWR.Create;
    AVariacao.FControleWR.Inicializar(AVariacao);
    PreencheLookupGradeModelo(AVariacao.cbVariacao.Properties);
    AVariacao.ProdutoGradeModeloItem.Open;
    AVariacao.ShowModal;
  finally
    AVariacao.ProdutoGradeModeloItem.Close;
    AVariacao.Free;
  end;
end;

procedure TFrmProdutoGradePanel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DSProduto_Preco.DataSet.Cancel;
  if Assigned(FFrmProduto_Frame) then
    FFrmProduto_Frame.Free;
  Close;
end;

procedure TFrmProdutoGradePanel.btnAplicarClick(Sender: TdxTileControlItem);
var
  ADescricao, ACodProdutoCriado: string;
  AValor: Double;
begin
  if MessageDlg('Deseja criar um novo produto?', mtConfirmation, mbYesNo, 0) = mrNo then
    Exit;

  if Not Assigned(FFrmProduto_Frame) then
    FFrmProduto_Frame:= TFrame_Produto_Mestre.Create(Self);

  FFrmProduto_Frame.FrameEnter(FFrmProduto_Frame);

  ADescricao := DS.DataSet.FieldByName('DESCRICAO').AsString;
  AValor := DS.DataSet.FieldByName('VALOR').AsFloat;

  ProdutoGradeModeloItem.First;
  while not ProdutoGradeModeloItem.eof do
  begin
    if not DSProduto_Preco.DataSet.Locate('REFERENCIA', ProdutoGradeModeloItem.FieldByName('DESCRICAO').AsString, []) then
    begin
//      with FFrmProduto_Frame do
//      begin
//        btnNovo.Click;
//        Cadastro.FieldByName('DESCRICAO').AsString  := ADescricao + ' - ' + ProdutoGradeModeloItem.FieldByName('DESCRICAO').AsString;
//        Cadastro.FieldByName('VALOR').AsFloat       := AValor;
//        Cadastro.FieldByName('CODFABRICA').AsString := '';
//        Cadastro.FieldByName('CODIGOEAN').AsString  := '';
//        cbxCodProduto_Tipo.ItemIndex := 0;
//        ACodProdutoCriado :=  Cadastro.FieldByName('CODIGO').AsString;
//        btnConfirmar.Click;
//      end;

      DSProduto_Preco.DataSet.Insert;
      DSProduto_Preco.DataSet.FieldByName('CODIGO').AsInteger    := GetProximoCodigo('PRODUTO_PRECO', TFDQuery(DS.DataSet).Transaction);//ProximoCodigoTransFD(TFDQuery(DS.DataSet).Transaction, 'PRODUTO_PRECO');
      DSProduto_Preco.DataSet.FieldByName('CODPRODUTO').AsString :=   DS.DataSet.FieldByName('CODIGO').AsString;
      DSProduto_Preco.DataSet.FieldByName('CODPRODUTO_VINCULADO').AsString :=  ACodProdutoCriado;
      DSProduto_Preco.DataSet.FieldByName('REFERENCIA').AsString := ProdutoGradeModeloItem.FieldByName('DESCRICAO').AsString;
      DSProduto_Preco.DataSet.Post;
    end;
    ProdutoGradeModeloItem.Next;
  end;
  Close;
end;

procedure TFrmProdutoGradePanel.btnCancelarClick(Sender: TdxTileControlItem);
begin
  Close;
end;

end.
