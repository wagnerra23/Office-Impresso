unit CadProduto_Tabela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, Vcl.Menus, cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, fs_iinterpreter, dxUIAdorners, cxClasses, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, WREventos, UCBase, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDBData, cxLabel, cxButtonEdit, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCheckBox, cxCurrencyEdit, uWRFormataCamposDataSet,
  System.Generics.Collections, WRButtonsEditAdd, dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrmProduto_Tabela = class(TFrmCadM)
    Produto_Tabela_Preco: TFDQuery;
    DSProduto_Tabela_Preco: TDataSource;
    GridProduto_Tabela_PrecoDBTableView1: TcxGridDBTableView;
    GridProduto_Tabela_PrecoLevel1: TcxGridLevel;
    GridProduto_Tabela_Preco: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    edtProdutoÎProduto: TcxButtonEdit;
    liedtProdutoÎProduto: TdxLayoutItem;
    lblProdutoÎProdutoÎDESCRICAO: TcxLabel;
    lilblProdutoÎProdutoÎDESCRICAO: TdxLayoutItem;
    liedtPercDesconto: TdxLayoutItem;
    edtPercDesconto: TcxCurrencyEdit;
    liedtProdutoValorFinal: TdxLayoutItem;
    edtProdutoValorFinal: TcxCurrencyEdit;
    lichkManterDesconto: TdxLayoutItem;
    chkManterDesconto: TcxCheckBox;
    libtnAdicionarProduto: TdxLayoutItem;
    btnAdicionarProduto: TcxButton;
    libtnRemoverProduto: TdxLayoutItem;
    btnRemoverProduto: TcxButton;
    GridProduto_Tabela_PrecoDBTableView1CODPRODUTO: TcxGridDBColumn;
    GridProduto_Tabela_PrecoDBTableView1VALOR: TcxGridDBColumn;
    GridProduto_Tabela_PrecoDBTableView1PERC_DESCONTO: TcxGridDBColumn;
    GridProduto_Tabela_PrecoDBTableView1TEM_MARGEM_FIXA_CONTIBUICAO: TcxGridDBColumn;
    GridProduto_Tabela_PrecoDBTableView1DESCRICAO: TcxGridDBColumn;
    WRFormataCamposDataSets1: TWRFormataCamposDataSets;
    GridProduto_Tabela_PrecoDBTableView1PERC_ACRESCIMO: TcxGridDBColumn;
    liedtPercAcrescimo: TdxLayoutItem;
    edtPercAcrescimo: TcxCurrencyEdit;
    liedtProdutoÎProdutoÎVALOR: TdxLayoutItem;
    edtProdutoÎProdutoÎVALOR: TcxCurrencyEdit;
    TabProdutos: TdxLayoutGroup;
    GrupoTabs: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    Pessoas: TFDQuery;
    DSPessoas: TDataSource;
    GridPessoasDBTableView1: TcxGridDBTableView;
    GridPessoasLevel1: TcxGridLevel;
    GridPessoas: TcxGrid;
    dxLayoutItem11: TdxLayoutItem;
    PessoasCODIGO: TStringField;
    PessoasTIPO: TStringField;
    PessoasCNPJCPF: TStringField;
    PessoasRAZAOSOCIAL: TStringField;
    PessoasFANTASIA: TStringField;
    PessoasEMAIL: TStringField;
    PessoasFONE1: TStringField;
    PessoasUF: TStringField;
    GridPessoasDBTableView1CODIGO: TcxGridDBColumn;
    GridPessoasDBTableView1TIPO: TcxGridDBColumn;
    GridPessoasDBTableView1CNPJCPF: TcxGridDBColumn;
    GridPessoasDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    GridPessoasDBTableView1FANTASIA: TcxGridDBColumn;
    GridPessoasDBTableView1EMAIL: TcxGridDBColumn;
    GridPessoasDBTableView1FONE1: TcxGridDBColumn;
    GridPessoasDBTableView1UF: TcxGridDBColumn;
    MenuGridProdutos: TPopupMenu;
    MenuItem27: TMenuItem;
    AbrirCadastrodoProdutoi1: TMenuItem;
    PessoasCODPRODUTO_TABELA: TIntegerField;
    GridProduto_Tabela_PrecoDBTableView1VALOR_ORIGINAL: TcxGridDBColumn;
    dxLayoutItem2: TdxLayoutItem;
    edtEmpresaOrigemÎEmpresa: TcxDBButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    lblEmpresaOrigemÎEmpresaÎRAZAOSOCIAL: TLabel;
    LibtnMenu: TdxLayoutItem;
    btnMenu: TcxButton;
    poupMenu: TPopupMenu;
    Duplicartabela1: TMenuItem;
    pnlAlteraPercentual: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    LiedtAcrescimo: TdxLayoutItem;
    edtAcrescimo: TcxCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtDesconto: TcxCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    BtnAtualiza: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    btnFechar: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    AltrarPercentuais1: TMenuItem;
    N3: TMenuItem;
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure edtProdutoValorFinalPropertiesChange(Sender: TObject);
    procedure btnAdicionarProdutoClick(Sender: TObject);
    procedure WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
    procedure edtValorOriginalÎProdutoÎVALORPropertiesChange(Sender: TObject);
    procedure edtPercAcrescimoPropertiesChange(Sender: TObject);
    procedure edtPercDescontoPropertiesChange(Sender: TObject);
    procedure PessoasBeforeOpen(DataSet: TDataSet);
    procedure AbrirCadastrodoProdutoi1Click(Sender: TObject);
    procedure btnRemoverProdutoClick(Sender: TObject);
    procedure GridProduto_Tabela_PrecoDBTableView1VALORPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure GridProduto_Tabela_PrecoDBTableView1PERC_DESCONTOPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure GridProduto_Tabela_PrecoDBTableView1PERC_ACRESCIMOPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure GridProduto_Tabela_PrecoDBTableView1TEM_MARGEM_FIXA_CONTIBUICAOPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btnMenuClick(Sender: TObject);
    procedure Duplicartabela1Click(Sender: TObject);
    procedure BtnAtualizaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure pnlAlteraPercentualExit(Sender: TObject);
    procedure AltrarPercentuais1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    procedure CalculaDescontoAcrescimo(AValorFinal, AValorOriginal :Double;  var APercDesconto, APercAcrescimo :Double);
    function CalculaValorFinal(AValorOriginal, APercDesconto, APercAcrescimo :Double) :Double;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UnitFuncoes, Principal, Base, Base_Produto, wrFuncoes, wrForms, Aguarde, Tag.Form;

procedure TFrmProduto_Tabela.AbrirCadastrodoProdutoi1Click(Sender: TObject);
begin
  inherited;
//  CadastroModalMakeVisible(TFrmProduto, Produto_Tabela_Preco.FieldByName('CODPRODUTO').AsString, 'TabPrecoEspecial');
  TFrmProduto.Create(Self).ShowCadastroItem(Tag_Produto_Variacao, Produto_Tabela_Preco.FieldByName('CODPRODUTO').AsString);/// Aqui deveria abria a tabela de preço eu acho
end;

{$REGION 'Adiciona/Remove'}
procedure TFrmProduto_Tabela.AltrarPercentuais1Click(Sender: TObject);
begin
  inherited;
  edtDesconto.Clear;
  edtAcrescimo.Clear;
  Mostrar(pnlAlteraPercentual);
end;

procedure TFrmProduto_Tabela.BtnAtualizaClick(Sender: TObject);
var
  AFrmAguarde: TFrmAguarde;
begin
  inherited;
  try
    VerificaSePodeAlteraDataSet(Cadastro);
    AFrmAguarde := TFrmAguarde.Create(self);
    Cadastro.DisableControls;
    Produto_Tabela_Preco.First;
    while not Produto_Tabela_Preco.Eof do
    begin
      AFrmAguarde.ProgressoMaximo := Produto_Tabela_Preco.RecordCount;
      AFrmAguarde.Mensagem := 'Atualizando Preços';
      AFrmAguarde.Show;

      Produto_Tabela_Preco.Edit;
      Produto_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat := edtAcrescimo.Value;
      Produto_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat := edtDesconto.Value;
      Produto_Tabela_Preco.FieldByName('VALOR').AsFloat := CalculaValorFinal(Produto_Tabela_Preco.FieldByName('VALOR_ORIGINAL').AsFloat, edtDesconto.Value, edtAcrescimo.Value);
      Produto_Tabela_Preco.Post;

      AFrmAguarde.AvancarProgresso;
      Produto_Tabela_Preco.Next;
    end;
    Produto_Tabela_Preco.Refresh;
    Cadastro.EnableControls;
    btnFecharClick(nil);
  finally
    AFrmAguarde.Free;
  end;
end;


procedure TFrmProduto_Tabela.btnAdicionarProdutoClick(Sender: TObject);
begin
  VerificaSePodeAlteraDataSet;
  if edtProdutoÎProduto.Text = '' then
  begin
    edtProdutoÎProduto.SetFocusWR;
    raise EWRException.Create('Informe o código do produto');
  end;
  if (edtProdutoÎProduto.Text <> '') and (lblProdutoÎProdutoÎDESCRICAO.Caption = '') then
  begin
    edtProdutoÎProduto.SetFocusWR;
    raise EWRException.Create('Produto Não Cadastrado');
  end;
  if edtProdutoValorFinal.Value < 0 then
  begin
    edtProdutoValorFinal.SetFocusWR;
    raise EWRException.Create('Valor não Permitido!');
  end;

  Produto_Tabela_Preco.DisableControls;
  try
    if Produto_Tabela_Preco.Locate('CODPRODUTO', edtProdutoÎProduto.Text) then
      Produto_Tabela_Preco.Edit
    else
    begin
      Produto_Tabela_Preco.Insert;
      Produto_Tabela_Preco.FieldByName('CODPRODUTO_TABELA').Value := Cadastro.FieldByName('CODIGO').Value;
      Produto_Tabela_Preco.FieldByName('CODPRODUTO').AsString     := edtProdutoÎProduto.Text;
    end;
    Produto_Tabela_Preco.FieldByName('VALOR').AsFloat          := edtProdutoValorFinal.Value;
    Produto_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat  := edtPercDesconto.Value;
    Produto_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat := edtPercAcrescimo.Value;
    if chkManterDesconto.Checked then
      Produto_Tabela_Preco.FieldByName('TEM_MARGEM_FIXA_CONTIBUICAO').AsString := 'S'
    else
      Produto_Tabela_Preco.FieldByName('TEM_MARGEM_FIXA_CONTIBUICAO').AsString := 'N';

    Produto_Tabela_Preco.Post;
    Produto_Tabela_Preco.Refresh;

    Produto_Tabela_Preco.Locate('CODPRODUTO', edtProdutoÎProduto.Text);
  finally
    Produto_Tabela_Preco.EnableControls;
  end;

  edtProdutoÎProduto.SetFocusWR;
  edtProdutoÎProduto.Clear;
  edtPercDesconto.Clear;
end;

procedure TFrmProduto_Tabela.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Produto_Tabela_Preco.Refresh;
end;

procedure TFrmProduto_Tabela.btnMenuClick(Sender: TObject);
begin
  inherited;
  poupMenu.PopupOnMouse;
end;

procedure TFrmProduto_Tabela.btnRemoverProdutoClick(Sender: TObject);
begin
  inherited;
  if Produto_Tabela_Preco.IsEmpty then
    Exit;

  VerificaSePodeAlteraDataSet;
  try
    Produto_Tabela_Preco.Delete;
  except
  end;
end;
{$ENDREGION}

{$REGION 'Abre tela'}
procedure TFrmProduto_Tabela.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Produto_Tabela_Preco.Open;
  Pessoas.Open;
end;

procedure TFrmProduto_Tabela.PessoasBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Pessoas.ParamByName('Codigo').AsInteger := Cadastro.FieldByName('Codigo').AsInteger;
end;

procedure TFrmProduto_Tabela.pnlAlteraPercentualExit(Sender: TObject);
begin
  inherited;
  Ocultar(pnlAlteraPercentual);
end;

procedure TFrmProduto_Tabela.WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
begin
  inherited;
  WRFormataCamposDataSets1.AdicionarDataSet(Produto_Tabela_Preco, 'PRODUTO_TABELA_PRECO');
end;
{$ENDREGION}

{$REGION 'Calculo'}
procedure TFrmProduto_Tabela.CalculaDescontoAcrescimo(AValorFinal, AValorOriginal :Double;  var APercDesconto, APercAcrescimo :Double);
begin
  if AValorFinal < AValorOriginal  then
  begin
    APercAcrescimo := 0;
    APercDesconto := Rdt(PercDescontoAplicado(AValorOriginal, AValorFinal), -2);
  end else
  begin
    APercDesconto  := 0;
    APercAcrescimo := Rdt(PercAplicado(AValorFinal, AValorOriginal), -2);
  end;
end;

function TFrmProduto_Tabela.CalculaValorFinal(AValorOriginal, APercDesconto, APercAcrescimo :Double) :Double;
begin
  Result      :=  AValorOriginal
                 - (AValorOriginal * Perc(APercDesconto))
                 + (AValorOriginal * Perc(APercAcrescimo));
end;

procedure TFrmProduto_Tabela.btnFecharClick(Sender: TObject);
begin
  inherited;
  Ocultar(pnlAlteraPercentual);
end;

procedure TFrmProduto_Tabela.Duplicartabela1Click(Sender: TObject);
Var
  QuerX, QuerXPreco : TFDQuery;
begin
  inherited;
  QuerX:= GeraFDQuery(TransaFD);
  QuerX.SQL.Text:= 'Select * from PRODUTO_TABELA where (Codigo = :Codigo)';
  QuerX.ParamByName('Codigo').AsString:= edtCodigo.Text;
  QuerX.Open;
  btnNovo.Click;
  DSCopiarCamposIguais(QuerX, Cadastro, ['CODIGO']);

  QuerXPreco:= GeraFDQuery(TransaFD);
  QuerXPreco.SQL.Text:= ' select PTP.*, P.DESCRICAO, P.VALOR AS VALOR_ORIGINAL '+
                   ' from PRODUTO_TABELA_PRECO PTP '+
                   ' left join PRODUTO P on (P.CODIGO = PTP.CODPRODUTO) '+
                   ' where (PTP.CODPRODUTO_TABELA = :CODIGO) ';
  QuerXPreco.ParamByName('Codigo').AsString:= QuerX.FieldByName('Codigo').AsString;
  QuerXPreco.Open;
  QuerXPreco.First;
  while not QuerXPreco.Eof do
  begin
    Produto_Tabela_Preco.Insert;
    DSCopiarCamposIguais(QuerXPreco, Produto_Tabela_Preco, ['CODIGO']);
    Produto_Tabela_Preco.FieldByName('CODPRODUTO_TABELA').Value := Cadastro.FieldByName('CODIGO').Value;
    Produto_Tabela_Preco.Post;
    QuerXPreco.Next;
  end;
  QuerX.Free;
  QuerXPreco.Free;
  ShowMessage('Dupicada Tabela com sucesso');
end;

////////////////////////EDITS\\\\\\\\\\\\\\\\\\\\\\\\\\\\
procedure TFrmProduto_Tabela.edtPercAcrescimoPropertiesChange(Sender: TObject);
begin
  inherited;
  if edtPercAcrescimo.Focused then
  begin
    edtPercDesconto.Value := 0;
    edtProdutoValorFinal.Value := CalculaValorFinal(edtProdutoÎProdutoÎVALOR.value, edtPercDesconto.Value, edtPercAcrescimo.Value);
  end;
end;

procedure TFrmProduto_Tabela.edtPercDescontoPropertiesChange(Sender: TObject);
begin
  inherited;
  if edtPercDesconto.Focused then
  begin
    edtPercAcrescimo.Value := 0;
    edtProdutoValorFinal.Value := CalculaValorFinal(edtProdutoÎProdutoÎVALOR.value, edtPercDesconto.Value, edtPercAcrescimo.Value);
  end;
end;

procedure TFrmProduto_Tabela.edtProdutoValorFinalPropertiesChange(Sender: TObject);
var
  APercDesconto, APercAcrescimo :Double;
begin
  inherited;
  APercDesconto := edtPercDesconto.Value;
  APercAcrescimo := edtPercAcrescimo.Value;

  CalculaDescontoAcrescimo(edtProdutoValorFinal.Value, edtProdutoÎProdutoÎVALOR.Value, APercDesconto, APercAcrescimo);

  edtPercDesconto.Value  := APercDesconto;
  edtPercAcrescimo.Value := APercAcrescimo;
end;

procedure TFrmProduto_Tabela.edtValorOriginalÎProdutoÎVALORPropertiesChange(Sender: TObject);
begin
  inherited;
  edtProdutoValorFinal.Value := CalculaValorFinal(edtProdutoÎProdutoÎVALOR.value, edtPercDesconto.Value, edtPercAcrescimo.Value);
end;
////////////////////GRID\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

procedure TFrmProduto_Tabela.GridProduto_Tabela_PrecoDBTableView1PERC_ACRESCIMOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  ValidaAlteraDataSet(Cadastro);
  if Produto_Tabela_Preco.State = dsBrowse then
    Produto_Tabela_Preco.Edit;
  Produto_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat := 0;
  Produto_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat := strtofloatdef(DisplayValue,0);
  Produto_Tabela_Preco.FieldByName('VALOR').AsFloat  := CalculaValorFinal(Produto_Tabela_Preco.FieldByName('VALOR_ORIGINAL').AsFloat, Produto_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat, strtofloatdef(DisplayValue,0));{Acrescimo}
end;

procedure TFrmProduto_Tabela.GridProduto_Tabela_PrecoDBTableView1PERC_DESCONTOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  ValidaAlteraDataSet(Cadastro);
  if Produto_Tabela_Preco.State = dsBrowse then
    Produto_Tabela_Preco.Edit;
  Produto_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat := 0;
  Produto_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat := strtofloatdef(DisplayValue,0);
  Produto_Tabela_Preco.FieldByName('VALOR').AsFloat  := CalculaValorFinal(Produto_Tabela_Preco.FieldByName('VALOR_ORIGINAL').AsFloat, strtofloatdef(DisplayValue,0){Desconto}, Produto_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat);
end;

procedure TFrmProduto_Tabela.GridProduto_Tabela_PrecoDBTableView1TEM_MARGEM_FIXA_CONTIBUICAOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  ValidaAlteraDataSet(Cadastro);
end;

procedure TFrmProduto_Tabela.GridProduto_Tabela_PrecoDBTableView1VALORPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  APercDesconto, APercAcrescimo :Double;
begin
  inherited;
  ValidaAlteraDataSet(Cadastro);
  if Produto_Tabela_Preco.State = dsBrowse then
    Produto_Tabela_Preco.Edit;
  APercDesconto  := Produto_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat;
  APercAcrescimo := Produto_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat;

  CalculaDescontoAcrescimo(DisplayValue, Produto_Tabela_Preco.FieldByName('VALOR_ORIGINAL').AsFloat, APercDesconto, APercAcrescimo);

  Produto_Tabela_Preco.FieldByName('VALOR').AsFloat := strtofloatdef(DisplayValue,0);

  Produto_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat := APercDesconto;
  Produto_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat := APercAcrescimo;
end;
{$ENDREGION}


initialization
  RegisterClass(TFrmProduto_Tabela);

end.

