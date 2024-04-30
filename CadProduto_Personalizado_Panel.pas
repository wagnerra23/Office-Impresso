unit CadProduto_Personalizado_Panel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxDBEdit, dxLayoutContainer, cxTextEdit,
  cxCurrencyEdit, cxClasses, dxLayoutControl, Data.DB, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutLookAndFeels, cxLabel, uWRCalculaConfiguracoes, cxImage, dxGDIPlusClasses, dxCustomTileControl, dxTileControl, cxCheckBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxButtonEdit;

type
  TFrmProduto_Personalizado_Panel = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    LiedtEspessura: TdxLayoutItem;
    edtQuantInicial: TcxDBCurrencyEdit;
    DS: TDataSource;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
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
    dxLayoutItem10: TdxLayoutItem;
    edtPercDesc: TcxDBCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    edtValorFinal: TcxCurrencyEdit;
    Grupo_Ate: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    Grupo_Descricao: TdxLayoutGroup;
    btnConfirmar: TdxTileControlItem;
    btnCancelar: TdxTileControlItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
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

  private
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

class procedure TFrmProduto_Personalizado_Panel.AbrirAdicionar(ATipoVariacao: String; ADS, ADSProduto_Preco: TDataSource);
var
  AVariacao: TFrmProduto_Personalizado_Panel;
begin
  AVariacao := TFrmProduto_Personalizado_Panel.Create(nil);
  try
    AVariacao.DS.DataSet := ADS.DataSet;
    AVariacao.DSProduto_Preco.DataSet := ADSProduto_Preco.DataSet;

    AVariacao.AtualizaView;
    AVariacao.btnNovo.Click;
    AVariacao.ShowModal;
  finally
    AVariacao.Free;
  end;
end;

class procedure TFrmProduto_Personalizado_Panel.AbrirEditar(ATipoVariacao: String; ADS, ADSProduto_Preco: TDataSource);
var
  AVariacao: TFrmProduto_Personalizado_Panel;
begin
  AVariacao := TFrmProduto_Personalizado_Panel.Create(nil);
  try
    AVariacao.DS.DataSet := ADS.DataSet;
    AVariacao.DSProduto_Preco.DataSet := ADSProduto_Preco.DataSet;

    AVariacao.btnAlterar.Click;
    AVariacao.AtualizaView;
    AVariacao.ShowModal;

  finally
    AVariacao.Free;
  end;
end;

procedure TFrmProduto_Personalizado_Panel.AtualizaView;
begin
  lblTitulo.Caption := 'Variação por ' + DS.DataSet.FieldByName('VARIACAO_TIPO').AsString;

  Grupo_Quantidade.Visible := (DS.DataSet.FieldByName('VARIACAO_TIPO').AsString = 'Preço por quantidade');

  Grupo_Padrao.Visible     := Not Grupo_Quantidade.Visible;

  AtualizaDescricao;
end;

procedure TFrmProduto_Personalizado_Panel.AtualizaDescricao;
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

function TFrmProduto_Personalizado_Panel.VerificaCamposVazios: Boolean;
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

procedure TFrmProduto_Personalizado_Panel.btnExcluirClick(Sender: TdxTileControlItem);
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

procedure TFrmProduto_Personalizado_Panel.btnNovoClick(Sender: TdxTileControlItem);
begin
  if not VerificaCamposVazios then
  begin
    ShowMessage('Alimente os campos obrigatórios');
    Exit;
  end;
  DSProduto_Preco.DataSet.Insert;
  DSProduto_Preco.DataSet.FieldByName('CODIGO').AsInteger    := GetProximoCodigo('PRODUTO_PRECO');
  DSProduto_Preco.DataSet.FieldByName('CODPRODUTO').AsString := DS.DataSet.FieldByName('CODIGO').AsString;
end;

procedure TFrmProduto_Personalizado_Panel.DSProduto_PrecoStateChange(Sender: TObject);
begin
  btnConfirmar.Visible := (DSProduto_Preco.State in [dsInsert, dsEdit]);
  btnCancelar.Visible  := (DSProduto_Preco.State in [dsInsert, dsEdit]);
  btnNovo.Visible      := (DSProduto_Preco.State = dsBrowse);
  btnAlterar.Visible   := (DSProduto_Preco.State = dsBrowse) and not DSProduto_Preco.DataSet.IsEmpty;
  btnExcluir.Visible   := (DSProduto_Preco.State = dsBrowse) and not DSProduto_Preco.DataSet.IsEmpty;
  btnSair.Visible      := (DSProduto_Preco.State = dsBrowse);
end;

procedure TFrmProduto_Personalizado_Panel.edtPercDescPropertiesEditValueChanged(Sender: TObject);
begin
  edtValorFinal.Value := PercDesconto(DS.DataSet.FieldByName('VALOR').AsFloat, edtPercDesc.editValue);
end;

procedure TFrmProduto_Personalizado_Panel.edtValorFinalPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if Not(DSProduto_Preco.DataSet.State in dsEditModes) then
    Exit;
  DSProduto_Preco.DataSet.FieldByName('PORCENTAGEM').AsFloat := PercAplicado(VarToDoubleDef(DisplayValue,0), DS.DataSet.FieldByName('VALOR').AsFloat) * -1;
end;

procedure TFrmProduto_Personalizado_Panel.btnSairClick(Sender: TdxTileControlItem);
begin
  Close;
end;

procedure TFrmProduto_Personalizado_Panel.cbTipoCalculoPropertiesChange(Sender: TObject);
begin
  Grupo_Ate.Visible := (cbTipoCalculo.EditText = 'Até');
end;

procedure TFrmProduto_Personalizado_Panel.btnCancelarClick(Sender: TdxTileControlItem);
begin
  if (DSProduto_Preco.DataSet.RecordCount > 0)  then
  begin
    DSProduto_Preco.DataSet.Cancel;
    Close;
  end;
end;

procedure TFrmProduto_Personalizado_Panel.btnConfirmarClick(Sender: TdxTileControlItem);
begin
  DSProduto_Preco.DataSet.Post;
end;

procedure TFrmProduto_Personalizado_Panel.btnAlterarClick(Sender: TdxTileControlItem);
begin
  if (DSProduto_Preco.DataSet.RecordCount > 0) and (DSProduto_Preco.DataSet.State <> dsEdit) then
    DSProduto_Preco.DataSet.Edit;
end;


end.
