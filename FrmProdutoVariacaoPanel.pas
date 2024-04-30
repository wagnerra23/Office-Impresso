unit FrmProdutoVariacaoPanel;

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
  dxSkinOffice2019White, uControleWR, Frame_CadProduto_Mestre;

type
  TFrmProdutoVariacaoPanel = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    LiedtEspessura: TdxLayoutItem;
    edtQuantInicial: TcxDBCurrencyEdit;
    DS: TDataSource;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    cxLabel1: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    Grupo_Padrao: TdxLayoutGroup;
    Grupo_Quantidade: TdxLayoutGroup;
    Grupo_Valor: TdxLayoutGroup;
    Grupo_Medidas: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    lblTitulo: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    tcMenu: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    btnNovo: TdxTileControlItem;
    btnSair: TdxTileControlItem;
    dxLayoutItem3: TdxLayoutItem;
    edtDescricao: TcxLabel;
    btnExcluir: TdxTileControlItem;
    dxLayoutStandardLookAndFeelEquacao: TdxLayoutStandardLookAndFeel;
    DSProduto_Preco: TDataSource;
    cxLabel3: TcxLabel;
    btnAlterar: TdxTileControlItem;
    edtReferencia: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    edtSKU: TcxDBTextEdit;
    cbTipoCalculo: TcxDBComboBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    edtQuant: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtValorInicial: TcxDBCurrencyEdit;
    liedtPercDesc: TdxLayoutItem;
    edtPercDesc: TcxDBCurrencyEdit;
    liedtValorFinal: TdxLayoutItem;
    edtValorFinal: TcxCurrencyEdit;
    Grupo_Ate: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    Grupo_Descricao: TdxLayoutGroup;
    btnConfirmar: TdxTileControlItem;
    btnCancelar: TdxTileControlItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem12: TdxLayoutItem;
    edtCodProdutoÎPRODUTO: TcxDBButtonEdit;
    GrupoVincularProduto: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    edtCodProdutoÎPRODUTOÎDESCRICAO: TcxLabel;
    btnCriarProduto: TcxButton;
    libtnCriarProduto: TdxLayoutItem;
    procedure btnSairClick(Sender: TdxTileControlItem);
    procedure btnNovoClick(Sender: TdxTileControlItem);
    procedure btnExcluirClick(Sender: TdxTileControlItem);
    procedure btnAlterarClick(Sender: TdxTileControlItem);
    procedure DSProduto_PrecoStateChange(Sender: TObject);
    procedure btnConfirmarClick(Sender: TdxTileControlItem);
    procedure btnCancelarClick(Sender: TdxTileControlItem);
    procedure cbTipoCalculoPropertiesChange(Sender: TObject);
    procedure edtPercDescPropertiesEditValueChanged(Sender: TObject);
    procedure edtValorFinalPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCriarProdutoClick(Sender: TObject);
    procedure edtCodProdutoÎPRODUTOExit(Sender: TObject);

  private
    FControleWR: TControleWR;
    FFrmProduto_Frame: TFrame_Produto_Mestre;
    procedure AtualizaDescricao;
    procedure AtualizaView;
    function VerificaCamposVazios: Boolean;

  public
    { Public declarations }
    class procedure AbrirAdicionar(ATipoVariacao: String; ADS, ADSProduto_Preco: TDataSource);
    class procedure AbrirEditar(ATipoVariacao: String; ADS, ADSProduto_Preco: TDataSource); static;
  end;

implementation

Uses wrFuncoes_Office, UnitFuncoes, Classes.WR, wrFuncoes, StrUtils, Produto_Preco;

{$R *.dfm}

class procedure TFrmProdutoVariacaoPanel.AbrirAdicionar(ATipoVariacao: String; ADS, ADSProduto_Preco: TDataSource);
var
  AVariacao: TFrmProdutoVariacaoPanel;
begin
  AVariacao := TFrmProdutoVariacaoPanel.Create(nil);
  try
    AVariacao.DS.DataSet := ADS.DataSet;
    AVariacao.DSProduto_Preco.DataSet := ADSProduto_Preco.DataSet;
    AVariacao.FControleWR := TControleWR.Create;
    AVariacao.FControleWR.Inicializar(AVariacao);

    AVariacao.AtualizaView;
    AVariacao.btnNovo.Click;
    AVariacao.ShowModal;
  finally
    AVariacao.Free;
  end;
end;

class procedure TFrmProdutoVariacaoPanel.AbrirEditar(ATipoVariacao: String; ADS, ADSProduto_Preco: TDataSource);
var
  AVariacao: TFrmProdutoVariacaoPanel;
begin
  AVariacao := TFrmProdutoVariacaoPanel.Create(nil);
  try
    AVariacao.FControleWR := TControleWR.Create;
    AVariacao.FControleWR.Inicializar(AVariacao);
    AVariacao.DS.DataSet := ADS.DataSet;
    AVariacao.DSProduto_Preco.DataSet := ADSProduto_Preco.DataSet;

    AVariacao.btnAlterar.Click;
    AVariacao.AtualizaView;
    AVariacao.ShowModal;

  finally
    AVariacao.Free;
  end;
end;

procedure TFrmProdutoVariacaoPanel.AtualizaView;
begin
  lblTitulo.Caption := 'Variação por ' + DS.DataSet.FieldByName('VARIACAO_TIPO').AsString;

  Grupo_Quantidade.Visible := (DS.DataSet.FieldByName('VARIACAO_TIPO').AsString = 'Preço por quantidade');

  Grupo_Padrao.Visible     := Not Grupo_Quantidade.Visible;

  GrupoVincularProduto.Visible :=  (DS.DataSet.FieldByName('VARIACAO_TIPO').AsString = 'Cor e Tamanho');


//  liedtValorFinal.Enabled := DS.DataSet.FieldByName('TEM_FILHO_PRECO_INDIVIDUAL').AsString = 'S';
//  liedtPercDesc.Enabled := DS.DataSet.FieldByName('TEM_FILHO_PRECO_INDIVIDUAL').AsString = 'S';

  AtualizaDescricao;
end;

procedure TFrmProdutoVariacaoPanel.AtualizaDescricao;
begin
  if not VerificaCamposVazios then
    edtDescricao.Caption := 'Preencha os Campos Obrigatórios'
  else
  if DS.DataSet.FieldByName('VARIACAO_TIPO').AsString = 'Cor e Tamanho' then
    edtDescricao.Caption := edtReferencia.Text
  else
  begin
    edtDescricao.Caption := edtReferencia.Text;

    if edtDescricao.Caption <> '' then
      edtDescricao.Caption := edtDescricao.Caption + ' ';

    edtDescricao.Caption := edtDescricao.Caption + 'Maior que ';
    if cbTipoCalculo.EditText = 'Até' then
    begin
      edtDescricao.Caption := edtDescricao.Caption + FormatFloat('0.##', edtQuantInicial.Value) + ' ';
      edtDescricao.Caption := edtDescricao.Caption + cbTipoCalculo.EditText + ' ';
    end;

    edtDescricao.Caption := edtDescricao.Caption + FormatFloat('0.##', edtQuant.Value);
  end;
end;

function TFrmProdutoVariacaoPanel.VerificaCamposVazios: Boolean;
begin
  if DS.DataSet.FieldByName('VARIACAO_TIPO').AsString = 'Cor e Tamanho' then
    Result := (edtReferencia.Text <> '')
  else
  if cbTipoCalculo.EditText = 'Até' then
  begin
    Result := (cbTipoCalculo.EditText <> '') and
              (edtQuantInicial.Text <> '') and
              (edtQuant.Text <> '');
  end
  else
    Result := (cbTipoCalculo.EditText <> '') and
              (edtQuant.Text <> '');

end;

procedure TFrmProdutoVariacaoPanel.btnExcluirClick(Sender: TdxTileControlItem);
begin
  if Not DSProduto_Preco.DataSet.RecordCount > 0 then
  begin
    ShowMessage('Sem Registro para excluir');
    Exit;
  end;
  if ShowMessageWR('Deseja excluir esta Variação?', MB_ICONQUESTION) = mrYes then
  begin
    DSProduto_Preco.DataSet.Delete;
    Close;
  end;
end;

procedure TFrmProdutoVariacaoPanel.btnNovoClick(Sender: TdxTileControlItem);
begin
  DSProduto_Preco.DataSet.Insert;
  DSProduto_Preco.DataSet.FieldByName('CODIGO').AsInteger    := GetProximoCodigo('PRODUTO_PRECO', TFDQuery(DS.DataSet).Transaction);//ProximoCodigoTransFD(TFDQuery(DS.DataSet).Transaction, 'PRODUTO_PRECO');
  DSProduto_Preco.DataSet.FieldByName('CODPRODUTO').AsString := DS.DataSet.FieldByName('CODIGO').AsString;
end;

procedure TFrmProdutoVariacaoPanel.DSProduto_PrecoStateChange(Sender: TObject);
begin
  btnConfirmar.Visible := (DSProduto_Preco.State in [dsInsert, dsEdit]);
  btnCancelar.Visible  := (DSProduto_Preco.State in [dsInsert, dsEdit]);
  btnNovo.Visible      := (DSProduto_Preco.State = dsBrowse);
  btnAlterar.Visible   := (DSProduto_Preco.State = dsBrowse) and not DSProduto_Preco.DataSet.IsEmpty;
  btnExcluir.Visible   := (DSProduto_Preco.State = dsBrowse) and not DSProduto_Preco.DataSet.IsEmpty;
  btnSair.Visible      := (DSProduto_Preco.State = dsBrowse);
end;

procedure TFrmProdutoVariacaoPanel.edtCodProdutoÎPRODUTOExit(Sender: TObject);
begin
  // Se for um produto com nome diferente deve verificar se o TEM_FILHO_DESCRICAO_INDIVIDUAL está habilitado
  if TcxDBButtonEdit(Sender).EditValue = '' then
    Exit;

  if Pos(DS.Dataset.FieldByName('DESCRICAO').AsString,edtCodProdutoÎPRODUTOÎDESCRICAO.Caption) = 0 then
    if DS.Dataset.FieldByName('TEM_FILHO_DESCRICAO_INDIVIDUAL').AsString <> 'S' then
    begin
      ShowMessage('O produto não pode ter descrição diferente do pai');
//      TcxDBButtonEdit(Sender).Clear;
      TcxDBButtonEdit(Sender).EditValue := '';
    end;
end;

procedure TFrmProdutoVariacaoPanel.edtPercDescPropertiesEditValueChanged(Sender: TObject);
begin
  edtValorFinal.Value :=  PercDesconto(DS.DataSet.FieldByName('VALOR').AsFloat, VarToDoubleDef(edtPercDesc.editValue));
end;

procedure TFrmProdutoVariacaoPanel.edtValorFinalPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if Not(DSProduto_Preco.DataSet.State in dsEditModes) then
    Exit;
  DSProduto_Preco.DataSet.FieldByName('PORCENTAGEM').AsFloat := PercAplicado(VarToDoubleDef(DisplayValue,0), DS.DataSet.FieldByName('VALOR').AsFloat) * -1;
end;

procedure TFrmProdutoVariacaoPanel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DSProduto_Preco.DataSet.Cancel;
  if Assigned(FFrmProduto_Frame) then
    FFrmProduto_Frame.Free;
  Close;
end;

procedure TFrmProdutoVariacaoPanel.btnSairClick(Sender: TdxTileControlItem);
begin
  Close;
end;

procedure TFrmProdutoVariacaoPanel.cbTipoCalculoPropertiesChange(Sender: TObject);
begin
  Grupo_Ate.Visible := (cbTipoCalculo.EditText = 'Até');
end;

procedure TFrmProdutoVariacaoPanel.btnCancelarClick(Sender: TdxTileControlItem);
begin
  Close;
end;

procedure TFrmProdutoVariacaoPanel.btnConfirmarClick(Sender: TdxTileControlItem);
begin
  if not VerificaCamposVazios then
  begin
    ShowMessage('Alimente os campos obrigatórios');
    Exit;
  end;
  DSProduto_Preco.DataSet.Post;
  Close;
end;

procedure TFrmProdutoVariacaoPanel.btnCriarProdutoClick(Sender: TObject);
var
  ADescricao: string;
begin
//  if MessageDlg('Deseja criar um novo produto?', mtConfirmation, mbYesNo, 0) = mrNo then
//    Exit;
//
//  if Not Assigned(FFrmProduto_Frame) then
//    FFrmProduto_Frame:= TFrame_Produto_Mestre.Create(Self);
//
//  FFrmProduto_Frame.FrameEnter(FFrmProduto_Frame);
//
//  ADescricao := DS.DataSet.FieldByName('DESCRICAO').AsString;
//  with FFrmProduto_Frame do
//  begin
//    btnNovo.Click;
//    Cadastro.FieldByName('DESCRICAO').AsString  := ADescricao + ' - ' + edtReferencia.Text;
//    Cadastro.FieldByName('VALOR').AsFloat       := edtValorFinal.EditValue;
//    Cadastro.FieldByName('CODFABRICA').AsString := edtSKU.Text;
//    Cadastro.FieldByName('CODIGOEAN').AsString  := edtSKU.Text;
//    cbxCodProduto_Tipo.ItemIndex := 0;
//    btnConfirmar.Click;
//    edtCodProdutoÎPRODUTO.Text := edtCodigo.Text;
//  end;
end;

procedure TFrmProdutoVariacaoPanel.btnAlterarClick(Sender: TdxTileControlItem);
begin
  if (DSProduto_Preco.DataSet.RecordCount > 0) and (DSProduto_Preco.DataSet.State <> dsEdit) then
    DSProduto_Preco.DataSet.Edit;
end;


end.
