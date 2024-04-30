unit Frame_CadVenda_Pedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_CadVenda_Mestre, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer,
  cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCore,
  dxSpreadSheetCoreFormulas, dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles,
  dxSpreadSheetCoreStrs, dxSpreadSheetConditionalFormatting,
  dxSpreadSheetConditionalFormattingRules, dxSpreadSheetClasses,
  dxSpreadSheetContainers, dxSpreadSheetFormulas, dxSpreadSheetHyperlinks,
  dxSpreadSheetFunctions, dxSpreadSheetStyles, dxSpreadSheetGraphics,
  dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils,
  dxSpreadSheetFormattedTextUtils, dxBarBuiltInMenu, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxCalendar, cxLabel, cxDropDownEdit, cxTL, cxImageComboBox, cxMaskEdit,
  cxButtonEdit, cxTextEdit, cxCurrencyEdit, cxTLdxBarBuiltInMenu,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, uWRNotaFiscal, uWRCalculaConfiguracoes,
  cxImageList, System.Actions, Vcl.ActnList, UCHist_WRGeral,
  uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, System.Generics.Collections,
  WREventos, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, dxCustomTileControl, dxTileControl, dxStatusBar,
  dxSpreadSheetFormulaBar, cxInplaceContainer, cxDBTL, cxTLData, cxDBLabel,
  cxCheckBox, cxDBEdit, cxSpinEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, dxSpreadSheet,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, base, dxScrollbarAnnotations, dxUIAdorners,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_Venda_Pedido = class(TFrame_Venda_Mestre)
    btnEnvFaturamento: TdxTileControlItem;
    RetornarOrcamento: TMenuItem;
    tiFinalizarPedido: TdxTileControlItem;
    edtDT_Envio_Faturamento: TcxDBTextEdit;
    tiCancelarPedido: TdxTileControlItem;
    CriarProjeto1: TMenuItem;
    procedure CreateDaTelaCarregaDataSets(Sender: TObject);
    procedure btnNovoClick(Sender: TdxTileControlItem);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure QuerVenda_TipoBeforeOpen(DataSet: TDataSet);
    procedure btnEnvFaturamentoClick(Sender: TdxTileControlItem);
    procedure btnAdicionarProdutoClick(Sender: TObject);
    procedure Definiressetipodevendacomopadro1Click(Sender: TObject);
    procedure RetornarOrcamentoClick(Sender: TObject);
    procedure MenuDireitaPopup(Sender: TObject);
    procedure tiFinalizarPedidoClick(Sender: TdxTileControlItem);
    procedure tiCancelarPedidoClick(Sender: TdxTileControlItem);
    procedure VerificaVisibleBotoesFinalizacao;
    procedure edtDT_Envio_FaturamentoPropertiesEditValueChanged(
      Sender: TObject);
    procedure Venda_FinanceiroAfterOpen(DataSet: TDataSet);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CriarProjeto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Venda_Pedido: TFrame_Venda_Pedido;

implementation

{$R *.dfm}

uses Principal, wrFuncoes, unitFuncoes, wrPreencheLookup, StrUtils, DateUtils, wrForms, wrFuncoes_Office,
  wrConstantes, Math, cadMeta, Base_Venda, Classes.WR, Rotinas, Tag.Form;

procedure TFrame_Venda_Pedido.btnAdicionarProdutoClick(Sender: TObject);
begin
//  ValidacaoParaAdicionarVendaProduto;
  inherited;
end;

procedure TFrame_Venda_Pedido.btnEnvFaturamentoClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  if not(venda_produto.FieldByName('CODVENDA_FATURADO').IsNull) then //ATUALMENTE NÃO EXISTE FATURAMENTO PARCIAL, QUANDO TIVER ISSO TEM QUE SER REVISADO
    CadastroTag_NormalChave(self, Tag_Venda, venda_produto.FieldByName('CODVENDA_FATURADO').AsString)
  else
    CadastroTag_NormalChave(self, Tag_Venda, Cadastro.FieldByName('CODIGO').AsString);
end;

procedure TFrame_Venda_Pedido.btnNovoClick(Sender: TdxTileControlItem);
begin
  inherited;
  if not (TConfig.ReadString('VENDA_TIPO_PADRAO_PEDIDO') = '') then
    cbxTipo_Venda.EditValue := TConfig.ReadString('VENDA_TIPO_PADRAO_PEDIDO')
  else
  begin
    QuerVenda_Tipo.First;
    cbxTipo_Venda.EditValue := QuerVenda_Tipo.FieldByName('DESCRICAO').AsString;
  end;

  if not TConfig.ReadBoolean('FATURA_ORCAMENTO') then
    Cadastro.FieldByName('IS_VENDA').AsString := 'N';
end;

procedure TFrame_Venda_Pedido.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  //inherited;
//  WREventosCadastro.Regra_ValorInicial(Cadastro, 'VENDA');
  VerificaVisibleBotoesFinalizacao;
  FControleWR.FindComponente(EdtAtendenteÎPessoas).ValorComponentePessoa := TPessoaRetorno.Create(Usuario.CodigoFuncionario, 'FUN', Usuario.SequenciaFuncionario);
end;

procedure TFrame_Venda_Pedido.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  VerificaVisibleBotoesFinalizacao;
end;

procedure TFrame_Venda_Pedido.CreateDaTelaCarregaDataSets(Sender: TObject);
begin
  inherited;
  FNomeTabela:='Venda';
end;

procedure TFrame_Venda_Pedido.CriarProjeto1Click(Sender: TObject);
var
  QuerX: TFDQuery;
begin
  inherited;
//  if Cadastro.FieldByName('CODPROJETO').AsInteger > 0 then
//  begin
//    ShowMessage('Já foi gerado um projeto para esse pedido Nº: ' + IntToStr(Cadastro.FieldByName('CODPROJETO').AsInteger));
//    Exit;
//  end;
  BtnAlterar.Click;
  try
    QuerX := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'select * from projeto where codvenda = '''+  Cadastro.FieldByName('CODIGO').AsString + '''';
      QuerX.Open;
      if QuerX.RecordCount = 0 then
      begin
        QuerX.SQL.Text := 'select * from projeto';
        QuerX.Open;
        QuerX.Insert;
        QuerX.FieldByName('CODIGO').AsInteger                       := trunc(GetProximoCodigoGen('CR_PROJETO'));
        Cadastro.FieldByName('CODPROJETO').AsInteger                := QuerX.FieldByName('CODIGO').AsInteger;
        QuerX.FieldByName('CODVENDA').AsString                      := Cadastro.FieldByName('CODIGO').AsString;
        QuerX.FieldByName('DESCRICAO').AsString                     := Cadastro.FieldByName('RAZAOSOCIAL').AsString;
        QuerX.FieldByName('DT_EMISSAO').AsDateTime                  := DataHoraSys;
        QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString     := Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
        QuerX.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := Cadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger;
        QuerX.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString       := Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString;
        QuerX.FieldByName('DT_INICIO').AsDateTime                   := Cadastro.FieldByName('PROJETO_DT_INICIO').AsDateTime;
        QuerX.FieldByName('DT_FIM').AsDateTime                      := Cadastro.FieldByName('PROJETO_DT_FIM').AsDateTime;
        QuerX.FieldByName('ATIVO').AsString                         := Cadastro.FieldByName('ATIVO').AsString;
        QuerX.Post;
        BtnConfirmar.Click;
      end;
    finally
      QuerX.free;
    end;
  except
    btnCancelar.Click;
  end;
end;

procedure TFrame_Venda_Pedido.Definiressetipodevendacomopadro1Click(
  Sender: TObject);
begin
  inherited;
  TConfig.SaveString('VENDA_TIPO_PADRAO_PEDIDO', cbxTipo_Venda.EditValue);
  ShowMessage('Tipo de Pedido "' + cbxTipo_Venda.EditValue + '" salvo como padrão.')
end;

procedure TFrame_Venda_Pedido.edtDT_Envio_FaturamentoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  VerificaVisibleBotoesFinalizacao;
end;

procedure TFrame_Venda_Pedido.MenuDireitaPopup(Sender: TObject);
begin
  inherited;
  RetornarOrcamento.Enabled := (Cadastro.State = dsBrowse) and
                          (Cadastro.FieldByName('dt_faturamento').IsNull) and
                          (Cadastro.FieldByName('NotaFiscal').IsNull); // Tornar isso mais simples, regra única
end;

procedure TFrame_Venda_Pedido.QuerVenda_TipoBeforeOpen(DataSet: TDataSet);
var                                                               // tem que passar o sql para TConfig e migrar
  AFiltroSQL: string;
begin
//  inherited;
  QuerVenda_Tipo.SQL.Text := 'select * ' +
                             'from VENDA_TIPO ' +
                             'where (ATIVO = ''S'') and (MODELO = ''VENDA'') ';
  AFiltroSQL := GetSQLPermissaoTipo('VENDA_TIPO_NEGAR_USUARIO'); { TODO -oFelipe -cTConfig : Migrar isso para TConfig, apenas GetSQLPermissaoTipo('VENDA_TIPO_NEGAR_USUARIO') }
  if AFiltroSQL <> '' then
    QuerVenda_Tipo.SQL.Add('and not (DESCRICAO in (' + AFiltroSQL + '))');
  QuerVenda_Tipo.SQL.Add('order by 1 asc');
end;

procedure TFrame_Venda_Pedido.RetornarOrcamentoClick(Sender: TObject);
begin
  inherited;
  //Arrumar isso aqui, não pode só trocar o tipo assim sem nenhuma validação
  //Usar o método TFrmVenda.MigrarTipoDaVenda(ACodVenda, ANovoVendaTipo: string), mas este método também tem que ser
  //ajustado, então fazer tudo de uma vez quando for mexer
  // criar um substituto para o venda audt, toda vez que mudar e gerar um código novo, tem que ser guardado, isso gera avalização de vendedores PROSPECÇÃO ATIVA

  //nÃO PODE DEIXAR PASSAR VENDA COM NOTA E FATURADAS
  if Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime> 0 then
  begin
    ShowMessage('Não pode retornar para Orçamento, por que ja foi faturado. '+ sLineBreak +
                'Cancele o faturamento Primeiro! ');
    Exit;
  end;
  if not Cadastro.FieldByName('NOTAFISCAL').IsNull then
  begin
    ShowMessage('Não pode retornar para Orçamento, por que tem número de nota informado. '+ sLineBreak +
                'Apague o número da nota fiscal Primeiro! ');
//    edtNotaFiscal.SetFocusWR;

    Exit;
  end;
  VerificaSePodeAlteraDataSet;
  Cadastro.FieldByName('VENDA_TIPO').AsString   := 'ORÇAMENTO';
  Cadastro.FieldByName('IS_ORCAMENTO').AsString := 'S';
  Cadastro.FieldByName('IS_VENDA').AsString     := 'N';
  Cadastro.Post;
end;

procedure TFrame_Venda_Pedido.tiCancelarPedidoClick(Sender: TdxTileControlItem);
begin
  inherited;
  if Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime <> 0 then
  begin
    ShowMessage('Venda já está faturada');
    Exit;
  end;

  VerificaSePodeAlteraDataSet;
  Cadastro.FieldByName('DT_ENVIO_FATURAMENTO').Clear;
  Cadastro.FieldByName('IS_VENDA').AsString     := 'N';
  btnConfirmar.Click;
end;

procedure TFrame_Venda_Pedido.tiFinalizarPedidoClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  Cadastro.FieldByName('DT_ENVIO_FATURAMENTO').AsDateTime := DataHoraSys;
  Cadastro.FieldByName('IS_VENDA').AsString     := 'S';
  btnConfirmar.Click;
end;

procedure TFrame_Venda_Pedido.Venda_FinanceiroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  VerificaVisibleBotoesFinalizacao;
end;

procedure TFrame_Venda_Pedido.VerificaVisibleBotoesFinalizacao;
begin
  if Cadastro.FieldByName('IS_VENDA').AsString <> 'S' then
  begin
    tiFinalizarPedido.Visible := True;
    tiCancelarPedido.Visible := False;
    btnEnvFaturamento.Visible := False;
    edtDT_Envio_Faturamento.Visible := False;
  end
  else
  begin
    tiFinalizarPedido.Visible := False;
    tiCancelarPedido.Visible := True;
    btnEnvFaturamento.Visible := True;
  end;

  edtDT_Envio_Faturamento.Visible := Cadastro.FieldByName('DT_ENVIO_FATURAMENTO').AsDateTime <> 0;
end;

initialization
RegisterClass(TFrame_Venda_Pedido);
RegisterFrameCad(Tag_Venda_Pedido, TFrame_Venda_Pedido);

end.
