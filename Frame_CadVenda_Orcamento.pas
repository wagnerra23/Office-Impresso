unit Frame_CadVenda_Orcamento;

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
  Vcl.StdCtrls, cxButtons, dxLayoutControl, base, dxScrollbarAnnotations, dxUIAdorners, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_Venda_Orcamento = class(TFrame_Venda_Mestre)
    btnAprovarOrcamento: TdxTileControlItem;
    BtnReprovarOrcamento: TdxTileControlItem;
    btnCancelarOrcamento: TdxTileControlItem;
    edtDT_Orcamento_Finalizado: TcxDBTextEdit;
    edtSituacaoFinanceira: TcxDBTextEdit;
    procedure btnAprovarOrcamentoClick(Sender: TdxTileControlItem);
    procedure BtnReprovarOrcamentoClick(Sender: TdxTileControlItem);
    procedure btnCancelarOrcamentoClick(Sender: TdxTileControlItem);
    procedure btnNovoClick(Sender: TdxTileControlItem);
    procedure CreateDaTelaCarregaDataSets(Sender: TObject);
    procedure btnConfirmarClick(Sender: TdxTileControlItem);
    procedure QuerVenda_TipoBeforeOpen(DataSet: TDataSet);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure WREventosCadastroValidaComponente(Sender: TObject;
      var AError: Boolean; var ErrorText: TCaption);
    procedure edtSituacaoFinanceiraPropertiesChange(Sender: TObject);
    procedure edtDT_Orcamento_FinalizadoPropertiesChange(Sender: TObject);
    procedure Definiressetipodevendacomopadro1Click(Sender: TObject);
    procedure PoupCopiarVendacomProdutosClick(Sender: TObject);
    procedure CadastroAfterInsert(DataSet: TDataSet);
  private
    class procedure GanhouOuPerdeu(ATag :Integer; ADataSetVenda,
      ADataSetFinanceiro, ADataSetProduto: TFDQuery;
      AGridProdutoTree: TcxDBTreeList; AValue: Variant); static;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Venda_Orcamento: TFrame_Venda_Orcamento;

implementation

{$R *.dfm}

uses Principal, wrFuncoes, unitFuncoes, wrPreencheLookup, StrUtils, DateUtils, wrForms, wrFuncoes_Office,
  wrConstantes, Math, cadMeta, Classes.WR, Base_Venda, Tag.Form;

procedure TFrame_Venda_Orcamento.btnAprovarOrcamentoClick(
  Sender: TdxTileControlItem);
begin
  if ShowMessageWR('Deseja trasformar este orçamento em uma venda?', MB_ICONQUESTION) = mrYes then
  begin
    VerificaSePodeAlteraDataSet;
    GanhouOuPerdeu(Tag_Venda, Cadastro, Venda_Financeiro, Venda_Produto, GridProdutoTree, 'Ganhou');
    btnConfirmar.Click;
  end;
end;

procedure TFrame_Venda_Orcamento.btnCancelarOrcamentoClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  GanhouOuPerdeu(Tag_Venda, Cadastro, Venda_Financeiro, Venda_Produto, GridProdutoTree, 'Leed');
  btnConfirmar.Click;
end;

procedure TFrame_Venda_Orcamento.btnConfirmarClick(Sender: TdxTileControlItem);
begin
  if Cadastro.state In dsEditModes then
  begin
    Cadastro.FieldByName('IS_ORCAMENTO').AsString  :='S';
    Cadastro.FieldByName('IS_PEDIDO').AsString     :='N';
    Cadastro.FieldByName('IS_VENDA').AsString      :='N';
    Cadastro.FieldByName('IS_NOTAFISCAL').AsString :='N';
  end;
  inherited;
end;

procedure TFrame_Venda_Orcamento.btnNovoClick(Sender: TdxTileControlItem);
begin
  inherited;
  if not (TConfig.ReadString('VENDA_TIPO_PADRAO_ORCAMENTO') = '') then
    cbxTipo_Venda.EditValue := TConfig.ReadString('VENDA_TIPO_PADRAO_ORCAMENTO')
  else
  begin
    QuerVenda_Tipo.First;
    cbxTipo_Venda.EditValue := QuerVenda_Tipo.FieldByName('DESCRICAO').AsString;
  end;
end;

procedure TFrame_Venda_Orcamento.BtnReprovarOrcamentoClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  GanhouOuPerdeu(Tag_Venda_Orcamento, Cadastro, Venda_Financeiro, Venda_Produto, GridProdutoTree, 'Perdeu');
  btnConfirmar.Click;
end;

procedure TFrame_Venda_Orcamento.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
//  WREventosCadastro.Regra_ValorInicial(Cadastro, 'VENDA'); // 'NOVO'
end;

procedure TFrame_Venda_Orcamento.CreateDaTelaCarregaDataSets(Sender: TObject);
begin
  inherited;
  FNomeTabela := 'Venda';
end;

procedure TFrame_Venda_Orcamento.Definiressetipodevendacomopadro1Click(
  Sender: TObject);
begin
  inherited;
  TConfig.SaveString('VENDA_TIPO_PADRAO_ORCAMENTO', cbxTipo_Venda.EditValue);
  ShowMessage('Tipo de orçamento "' + cbxTipo_Venda.EditValue + '" salvo como padrão.')
end;

procedure TFrame_Venda_Orcamento.edtDT_Orcamento_FinalizadoPropertiesChange(
  Sender: TObject);
begin
  inherited;
  btnAprovarOrcamento.Visible := Cadastro.FieldByName('DT_ORCAMENTO_FINALIZADO').IsNull;
  BtnReprovarOrcamento.Visible:= Cadastro.FieldByName('DT_ORCAMENTO_FINALIZADO').IsNull;
  btnCancelarOrcamento.Visible:= Not Cadastro.FieldByName('DT_ORCAMENTO_FINALIZADO').IsNull;
end;

procedure TFrame_Venda_Orcamento.edtSituacaoFinanceiraPropertiesChange(
  Sender: TObject);
var
  APodeEditar :Boolean;
begin
  inherited;
  //Se começa com Ganhou, então é verde, venda ativa, venda válida e contando...
  if edtSituacaoFinanceira.Text = 'Ganhou' then
    edtSituacaoFinanceira.Style.TextColor := clGreen
  //Senão começa com Perdeu, então verificamos se está excluída, vermelho
  else if edtSituacaoFinanceira.Text= 'Perdeu'  then
    edtSituacaoFinanceira.Style.TextColor := clRed
  //ou se for Leed ou Negociando por outro motivo, tipo agrupado, então mostra em amarelo
  else
    edtSituacaoFinanceira.Style.TextColor := $0000969D;
  APodeEditar                := Cadastro.FieldByName('DT_ORCAMENTO_FINALIZADO').IsNull;
  TabProdutos.Enabled        := APodeEditar;
  TabFinanceiro.Enabled      := APodeEditar;
  TabDadosAdicionais.Enabled := APodeEditar;
end;

class procedure TFrame_Venda_Orcamento.GanhouOuPerdeu(ATag :Integer; ADataSetVenda, ADataSetFinanceiro, ADataSetProduto :TFDQuery;
    AGridProdutoTree: TcxDBTreeList; AValue :Variant);
begin
  // Criar Estágios da Venda, VendaAudit  =  Saber onde ou como Ganhou ou Perdeu o Orçamento
  // Transferir para Pedido ou Venda;
  if MatchStr(AValue,['Leed', 'Em negociação']) then
    ADataSetVenda.FieldByName('DT_ORCAMENTO_FINALIZADO').Clear  // Antes de mudar o Valor na linha da baixo para pegar o evento de Changedo Edit
  else
    ADataSetVenda.FieldByName('DT_ORCAMENTO_FINALIZADO').AsDateTime := DataHoraSys;
  ADataSetVenda.FieldByName('SITUACAOFINANCEIRA').Value             := AValue;
  if AValue = 'Ganhou' then
  begin
    TFrmVenda_Base.FrameDuplicaVendaBase(ATag, ADataSetVenda, ADataSetFinanceiro, ADataSetProduto, AGridProdutoTree, True);
    ShowMessageWR('      Parabéns      ');
  end;
//  if AValue = 'Perdeu' then
//    ADataSetVenda.FieldByName('DT_ORCAMENTO_FINALIZADO').AsDateTime := DataHoraSys;
end;



procedure TFrame_Venda_Orcamento.PoupCopiarVendacomProdutosClick(
  Sender: TObject);
begin
  inherited;
  if ShowMessageWR('Deseja duplicar?', MB_ICONQUESTION) = mrYes then
    TFrmVenda_Base.FrameDuplicaVendaBase(Tag_Venda_Orcamento, Cadastro, Venda_Financeiro, Venda_Produto ,GridProdutoTree, False);
end;

procedure TFrame_Venda_Orcamento.QuerVenda_TipoBeforeOpen(DataSet: TDataSet);
var                                                               // tem que passar o sql para TConfig e migrar
  AFiltroSQL: string;
begin
//  inherited;
  QuerVenda_Tipo.SQL.Text := 'select * ' +
                             'from VENDA_TIPO ' +
                             'where (ATIVO = ''S'') and (MODELO = ''ORCAMENTO'') ';
  AFiltroSQL := GetSQLPermissaoTipo('VENDA_TIPO_NEGAR_USUARIO'); { TODO -oFelipe -cTConfig : Migrar isso para TConfig, apenas GetSQLPermissaoTipo('VENDA_TIPO_NEGAR_USUARIO') }
  if AFiltroSQL <> '' then
    QuerVenda_Tipo.SQL.Add('and not (DESCRICAO in (' + AFiltroSQL + '))');
  QuerVenda_Tipo.SQL.Add('order by 1 asc');
end;

procedure TFrame_Venda_Orcamento.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      with AddAcoesTabela('CONFIRMAR','', 'Regras necessárias para poder Confimar.','S') do
      begin
        AddAcoesTabela('CONFIRMAR','', 'Regras necessárias para poder Confimar.','N');
        AddObrigatorio('VENDA', 'TELEFONE', edtResponsavelÎPessoasÎFONE1, 'Informe o Telefone para contato com o cliente que solicitou o orçamento.');
        AddObrigatorioValidaComponente('VENDA', 'CONDICAOPAGTO', edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO, 'Obrigatório informar Condição de Pagamento para imprimir.');
      end;
      with AddAcoesTabela('ADDPRODUTO','', '') do
      begin
        AddObrigatorioInativoValidaComponente('VENDA_PRODUTO', 'CODPRODUTO', edtCodProduto, 'Obrigatório informar um produto cadastrado.');
      end;
      with AddAcoesTabela('IMPRIMIR','', '') do
      begin

      end;
    end;
  end;
end;

procedure TFrame_Venda_Orcamento.WREventosCadastroValidaComponente(
  Sender: TObject; var AError: Boolean; var ErrorText: TCaption);
begin
  inherited;
  if(sender = edtCodProduto) then
  begin
    {if  (WREventosCadastro.AcaoTabelaAtiva = 'ADDPRODUTO') and
        (BuscaProdutoCadastrado) then
    begin
      AError := True;
      ErrorText := 'Obrigatório informar um produto cadastrado.';
    end;}
  end;
  if(sender = edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO) then
  begin
    if  (WREventosCadastro.AcaoTabelaAtiva = 'CONFIRMAR') and
        (Cadastro.FieldByName('CONDICAOPAGTO').AsString = '') then
    begin
      AError := True;
      ErrorText := 'Obrigatório informar Condição de Pagamento para imprimir.';
    end;
  end;
end;


initialization
RegisterClass(TFrame_Venda_Orcamento);
RegisterFrameCad(Tag_Venda_Orcamento, TFrame_Venda_Orcamento);

end.
