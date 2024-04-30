unit frFrameVariacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrFrameMestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  uWRFormataCamposDataSet, uWRFrameEventos, Data.DB, cxClasses, dxLayoutLookAndFeels, UCBase, System.ImageList, Vcl.ImgList, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  cxCurrencyEdit, cxContainer, cxCheckBox, cxDBEdit, cxGroupBox, cxRadioGroup, cxTextEdit, cxButtonEdit, cxLabel, cxMaskEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ExtCtrls, dxCustomTileControl, dxTileControl, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FrFrameProdutoVariacaoTabela,
  uWRCalculaConfiguracoes, cxDBLabel, Vcl.DBCtrls, FrmProdutoVariacaoPanel,
  cxDropDownEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations, FrmProdutoGradePanel, UCHistDataset, FrFrame_Panel_Historico, frFrameHistorico;

type
  TFrmFrameVariacao = class(TFrmFrameMestre)
    PopupGradeConfig: TPopupMenu;
    Separador1: TMenuItem;
    Sep1: TMenuItem;
    Sep2: TMenuItem;
    Sep3: TMenuItem;
    ConcatenaodaGrade1: TMenuItem;
    NoConcatenar1: TMenuItem;
    ConcatenarnoCdigo1: TMenuItem;
    ConcatenarnaDescrio1: TMenuItem;
    MnuConcatenarNoCodFabrica: TMenuItem;
    DSProduto_Preco: TDataSource;
    WRCalc: TWRCalculaConfiguracoes;
    PnlTabGrade: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    cxLabel29: TcxLabel;
    chkVariaPreco: TcxDBCheckBox;
    pnlTabelaQuantidade: TPanel;
    tcVariacaoTipo: TdxTileControl;
    dxTileControl1Group1: TdxTileControlGroup;
    tiGrade: TdxTileControlItem;
    tiPrecoQuantidade: TdxTileControlItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    TabGradeProduto: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutSeparatorItem23: TdxLayoutSeparatorItem;
    dxLayoutGroup2: TdxLayoutGroup;
    TabTabelaQuantidade: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    edtCodFamilia: TcxDBCurrencyEdit;
    edtTamanho: TcxDBTextEdit;
    edtGradeModeloÎProduto_Grade_Modelo: TcxDBButtonEdit;
    lblGradeModeloÎProduto_Grade_ModeloÎDESCRICAO: TcxLabel;
    btnGradeConfig: TcxButton;
    edtGradeÎCor: TcxButtonEdit;
    lblGradeÎCorÎDESCRICAO: TcxLabel;
    lblGradeÎCorÎSIGLA: TcxLabel;
    edtGradeCodFabrica: TcxTextEdit;
    edtGradeTamanho: TcxTextEdit;
    edtGradeCompPadrao: TcxCurrencyEdit;
    edtGradeLargPadrao: TcxCurrencyEdit;
    edtGradeEspPadrao: TcxCurrencyEdit;
    btnCriarGrade: TcxButton;
    BtnAdicionarGradeProduto: TcxButton;
    GrupoModeloGrade: TdxLayoutGroup;
    GrupoCodigoGrade: TdxLayoutGroup;
    GrupoFamilia: TdxLayoutGroup;
    liedtCodFamilia: TdxLayoutItem;
    liedtTamanho: TdxLayoutItem;
    GrupoCriaGradeTabela: TdxLayoutGroup;
    GrupoModeloGrade1: TdxLayoutGroup;
    liedtGradeModeloÎProduto_Grade_Modelo: TdxLayoutItem;
    lilblGradeModeloÎProduto_Grade_ModeloÎDESCRICAO: TdxLayoutItem;
    libtnCriarGrade: TdxLayoutItem;
    libtnGradeConfig: TdxLayoutItem;
    GrupoAdicionaItemGrade: TdxLayoutGroup;
    liedtGradeÎCor: TdxLayoutItem;
    lilblGradeÎCorÎDESCRICAO: TdxLayoutItem;
    lilblGradeÎCorÎSIGLA: TdxLayoutItem;
    liedtGradeCompPadrao: TdxLayoutItem;
    liedtGradeLargPadrao: TdxLayoutItem;
    liedtGradeEspPadrao: TdxLayoutItem;
    liedtGradeCodFabrica: TdxLayoutItem;
    liedtGradeTamanho: TdxLayoutItem;
    liBtnAdicionarGradeProduto: TdxLayoutItem;
    GridProdutosGrade: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lichkControlarEstoque: TdxLayoutItem;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1QUANT: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1PORCENTAGEM: TcxGridDBColumn;
    cxGrid1DBTableView1DE: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUTO_VINCULADO: TcxGridDBColumn;
    dxLayoutItem4: TdxLayoutItem;
    tcMenu: TdxTileControl;
    tcControle: TdxTileControlGroup;
    tciAdcionar: TdxTileControlItem;
    tcExcluir: TdxTileControlItem;
    tiAlterar: TdxTileControlItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cbVariacaoTipo: TcxDBComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1REFERENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1SKU: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    lilblAviso: TdxLayoutItem;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    dxLayoutItem3: TdxLayoutItem;
    chkTem_Tabela_Preco_Fixo: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem6: TdxLayoutItem;
    chkTem_Tabela_Preco_QTDADePeca: TcxDBCheckBox;
    Grupo_Preco: TdxLayoutGroup;
    tcMenuItem1: TdxTileControlItem;
    cbxTEM_FILHO_PRECO_INDIVIDUAL: TcxDBCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    cxGrid1DBTableView1HISTORICO: TcxGridDBColumn;
    UCHist_DataSet1: TUCHist_DataSet;
    Produto_Filho: TFDQuery;
    procedure rgSelecionarTipoVariacaoClick(Sender: TObject);
    procedure edtCodFamiliaExit(Sender: TObject);
    procedure btnCriarGradeClick(Sender: TObject);
    procedure btnGradeConfigClick(Sender: TObject);
    procedure edtGradeCodFabricaExit(Sender: TObject);
    procedure BtnAdicionarGradeProdutoClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure PopupGradeConfigPopup(Sender: TObject);
    procedure Sep1Click(Sender: TObject);
    procedure NoConcatenar1Click(Sender: TObject);
    procedure tcVariacaoTipoItemDeactivateDetail(Sender: TdxCustomTileControl;
      AItem: TdxTileControlItem);
    procedure TileActivateDetail(Sender: TdxTileControlItem);
    procedure tciAdcionarClick(Sender: TdxTileControlItem);
    procedure cbVariacaoTipoPropertiesChange(Sender: TObject);
    procedure tiAlterarClick(Sender: TdxTileControlItem);
    procedure tcExcluirClick(Sender: TdxTileControlItem);
    procedure tcMenuItem1Click(Sender: TdxTileControlItem);
    procedure cbxTEM_FILHO_PRECO_INDIVIDUALPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxDBCheckBox3PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxGrid1DBTableView1Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FFrmProdutoVariacaoPanel: TFrmProdutoVariacaoPanel;
    FFrmProdutoGradePanel: TFrmProdutoGradePanel;
    FFrFrameHistorico: TFrameHistorico;
    FDescricaoOriginal: string;
    FVariacaoCodigosAlterados: TStringList;
    procedure VerificaSePodeAlteraDataSet;
    function SQLProdutoPreco_MaxCodigo(ACodProduto : string) : Integer;
    procedure TileCarregaFrame(Sender: TdxTileControlItem);
  public
    { Public declarations }
  class procedure CarregaFrame(var AFrame: TFrmFrameVariacao; ATileSender: TdxTileControlItem; ADS,
    ADSProduto_Grade, ADSProduto_Preco: TDataSource; AWRCalc: TWRCalculaConfiguracoes; AVariacaoCodigosAlterados: TStringList);
  end;

var
  FFrmVariacaoTabela: TFrmProdutoVariacaoTabela;

implementation

{$R *.dfm}

Uses unitFuncoes, Produto_Preco, wrFuncoes, Classes.WR, StrUtils, DataModule, ACBRUtil;

class procedure TFrmFrameVariacao.CarregaFrame(var AFrame: TFrmFrameVariacao; ATileSender: TdxTileControlItem; ADS,
  ADSProduto_Grade, ADSProduto_Preco: TDataSource; AWRCalc: TWRCalculaConfiguracoes; AVariacaoCodigosAlterados: TStringList);
begin
  if AFrame = nil then
  begin
    AFrame := TFrmFrameVariacao.Create(TWinControl(ATileSender.Owner), ADS);
    AFrame.DS.DataSet := ADS.DataSet;
    AFrame.DSProduto_Preco.DataSet := ADSProduto_Preco.DataSet;
    AFrame.WRCalc := AWRCalc;
    AFrame.wrFrameEventos.DoOnInicializar;
    AFrame.FVariacaoCodigosAlterados := AVariacaoCodigosAlterados;
    ATileSender.DetailOptions.DetailControl:=AFrame;
  end;
  AFrame.Produto_Filho.Open;
  AFrame.DS.AutoEdit             := ADS.AutoEdit;
  AFrame.DSProduto_Preco.AutoEdit:= ADS.AutoEdit;
//  AFrame.AtualizaViewTiles;
end;

function TFrmFrameVariacao.SQLProdutoPreco_MaxCodigo(ACodProduto: string): Integer;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select max(CODIGO) ' +
                      'from PRODUTO_PRECO ' +
                      'where (CODPRODUTO = :CodProduto)';
    QuerX.Params[0].AsString := ACodProduto;
    QuerX.Open;
    Result := QuerX.Fields[0].AsInteger + 1;
  finally
    QuerX.Free;
  end;
end;


procedure TFrmFrameVariacao.tcExcluirClick(Sender: TdxTileControlItem);
begin
  inherited;
  if Not (DSProduto_Preco.DataSet.RecordCount > 0) then
  begin
    ShowMessage('Não possui registro.');
    Exit;
  end;
  VerificaSePodeAlteraDataSet;
  DSProduto_Preco.DataSet.Delete;
end;

procedure TFrmFrameVariacao.tciAdcionarClick(Sender: TdxTileControlItem);
begin
  inherited;
  if (DS.DataSet.FieldByName('VARIACAO_TIPO').AsString = '') then
  begin
    ShowMessage('Obrigatório selecionar um Tipo de Variação para iniciar');
    Exit;
  end;

  VerificaSePodeAlteraDataSet;
  TFrmProdutoVariacaoPanel.AbrirAdicionar(DS.DataSet.FieldByName('VARIACAO_TIPO').AsString , DS, DSProduto_Preco);
  DSProduto_Preco.DataSet.Refresh;
end;

procedure TFrmFrameVariacao.tcMenuItem1Click(Sender: TdxTileControlItem);
begin
  inherited;
  if (DS.DataSet.FieldByName('VARIACAO_TIPO').AsString = '') then
  begin
    ShowMessage('Obrigatório selecionar um Tipo de Variação para iniciar');
    Exit;
  end;

  VerificaSePodeAlteraDataSet;
  TFrmProdutoGradePanel.Abrir(DS.DataSet.FieldByName('VARIACAO_TIPO').AsString , DS, DSProduto_Preco);
  DSProduto_Preco.DataSet.Refresh;
end;

procedure TFrmFrameVariacao.tcVariacaoTipoItemDeactivateDetail(
  Sender: TdxCustomTileControl; AItem: TdxTileControlItem);
begin
  inherited;
  AItem.DetailOptions.DetailControl.Visible := False;
end;

procedure TFrmFrameVariacao.tiAlterarClick(Sender: TdxTileControlItem);
begin
  inherited;
  if (DS.DataSet.FieldByName('VARIACAO_TIPO').AsString = '') then
  begin
    ShowMessage('Obrigatório selecionar um Tipo de Variação para iniciar');
    Exit;
  end;

  VerificaSePodeAlteraDataSet;
  TFrmProdutoVariacaoPanel.AbrirEditar(DS.DataSet.FieldByName('VARIACAO_TIPO').AsString , DS, DSProduto_Preco);
  DSProduto_Preco.DataSet.Refresh;
end;

procedure TFrmFrameVariacao.TileActivateDetail(Sender: TdxTileControlItem);
begin
  inherited;
  if Sender <> nil then
  begin
    if DS.Dataset.State <> dsEdit then
      DS.DataSet.Edit;
    if Sender = tiGrade then
    begin
      DS.DataSet.FieldByName('VARIACAO_TIPO').AsString := 'Grade';
//      DS.DataSet.Post;
//      Sender.DetailOptions.DetailControl := pnlProdutoGrade;
    end
    else
    if Sender = tiPrecoQuantidade then
    begin
      DS.DataSet.FieldByName('VARIACAO_TIPO').AsString := 'Quantidade';
      DS.DataSet.FieldByName('VARIACAO_VARIA_PRECO').AsString := 'S';
//      DS.DataSet.Post;
      TFrmProdutoVariacaoTabela.CarregaFrame(FFrmVariacaoTabela,
                                           pnlTabelaQuantidade,
                                           WRCalc,
                                           DSProduto_Preco);
      Sender.DetailOptions.DetailControl := FFrmVariacaoTabela;
    end;
  end;
end;

procedure TFrmFrameVariacao.TileCarregaFrame(Sender: TdxTileControlItem);
begin
  inherited;
  
end;

procedure TFrmFrameVariacao.BtnAdicionarGradeProdutoClick(Sender: TObject);

  function CodigoJaExiste(ACodigo: String): Boolean;
  var
    QuerX: TFDQuery;
  begin
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'select CODIGO from PRODUTO where (CODIGO = :Cod)';
      QuerX.Params[0].AsString := ACodigo;
      QuerX.Open;
      Result := not QuerX.IsEmpty;
    finally
      QuerX.Free;
    end;
  end;

var
  I : Integer;
  QuerX: TFDQuery;
  AConcat, ASeparador, ADescCod, AGradeModeloTipo: string;
  AField: TField;
begin
  EdtGradeCodFabrica.Text := Trim(EdtGradeCodFabrica.Text);
  EdtGradeTamanho.Text    := Trim(EdtGradeTamanho.Text);
  if EdtGradeCodFabrica.Text = '' then
  begin
    ShowMessageWR('Insira o código para este produto.');
    EdtGradeCodFabrica.Text:='Seu Código';
    EdtGradeCodFabrica.SetFocusWR;
    Exit;
  end;
  if (EdtGradeTamanho.Text = '') and
     (LblGradeÎCorÎDESCRICAO.Caption = '') and
     VarIsNull(EdtGradeCompPadrao.EditValue) and
     VarIsNull(EdtGradeLargPadrao.EditValue) and
     VarIsNull(EdtGradeEspPadrao.EditValue) then
  begin
    ShowMessageWR('Insira o tamanho ou a cor ou as medidas para este produto.');
    EdtGradeTamanho.SetFocusWR;
    Exit;
  end;

  AConcat := TConfig.ReadString('PRODUTO_GRADE_CONCATENACAO');
  AGradeModeloTipo := '';
  if (Sender is TFDQuery) then
    AGradeModeloTipo := TFDQuery(Sender).FieldByName('TIPO').AsString;

  if (AGradeModeloTipo = 'MEDIDAS') and (AConcat <> 'DESCRICAO') then
  begin
    ShowMessageWR('Grade do tipo Medidas, somente concatena a descrição.');
    PopupGradeConfig.PopupOnMouse;
    Exit;
  end;

  //Gera o sufixo do novo produto.
  ADescCod := '';
  if (AGradeModeloTipo = 'TAMANHO') or ((AGradeModeloTipo.IsEmpty) and (EdtGradeTamanho.Text <> '')) then
    ADescCod := EdtGradeTamanho.Text
  else
  if (AGradeModeloTipo = 'COR') or
     ((AGradeModeloTipo.IsEmpty) and (((AConcat = 'DESCRICAO') and (LblGradeÎCorÎDESCRICAO.Caption <> '')) or
                                      (((AConcat = 'CODIGO') or (AConcat = 'CODFABRICA'))and (EdtGradeÎCor.Text <> '')))) then
  begin
    if (AConcat = 'DESCRICAO') then
      ADescCod := LblGradeÎCorÎDESCRICAO.Caption
    else
    if (AConcat = 'CODIGO') or (AConcat = 'CODFABRICA') then
      ADescCod := EdtGradeÎCor.Text;
  end else
  begin
    if (not VarIsNull(EdtGradeCompPadrao.EditValue)) then
      ADescCod := IfThen(not ADescCod.IsEmpty, ADescCod+'x') + FormatFloat('0.00###', EdtGradeCompPadrao.Value);
    if (not VarIsNull(EdtGradeLargPadrao.EditValue)) then
      ADescCod := IfThen(not ADescCod.IsEmpty, ADescCod+'x') + FormatFloat('0.00###', EdtGradeLargPadrao.Value);
    if (not VarIsNull(EdtGradeEspPadrao.EditValue)) then
      ADescCod := IfThen(not ADescCod.IsEmpty, ADescCod+'x') + FormatFloat('0.00###', EdtGradeEspPadrao.Value);
  end;

  VerificaSePodeAlteraDataSet;
  if DS.DataSet.FieldByName('CODFAMILIA').AsString = '' then
  begin
    QuerX := SQLProdutoMaxFamilia;
    try
      DS.DataSet.FieldByName('CODFAMILIA').AsInteger := QuerX.Fields[0].AsInteger + 1;
    finally
      QuerX.Free;
    end;
  end;
  //verificando se há registro deste código
  ASeparador := TConfig.ReadString('SEPARADOR_GRADE');

//  DSProduto_Grade.DataSet.Insert;
//  for I := 0 to DSProduto_Grade.DataSet.FieldCount - 1 do
//  begin
//    if DS.DataSet.FindField(DSProduto_Grade.DataSet.Fields[i].FieldName) <> nil then
//      DSProduto_Grade.DataSet.Fields[i].Value := DS.DataSet.FieldByName(DSProduto_Grade.DataSet.Fields[i].FieldName).Value;
//  end;
//  if AConcat <> 'CODIGO' then
//  begin
////    Spa.ExecProc;
//    DSProduto_Grade.DataSet.FieldByName('CODIGO').AsFloat := GetProximoCodigoGen('CR_PRODUTO'); // Spa.Params[0].asInteger;
//  end else
//    DSProduto_Grade.DataSet.FieldByName('CODIGO').AsString := Copy(EdtGradeCodFabrica.Text, 1, (Pos(ASeparador, EdtGradeCodFabrica.Text) - 1));
//
//  if AConcat = 'DESCRICAO' then
//  begin
////    {$IFDEF DEBUG}
//    if FDescricaoOriginal = '' then
//      FDescricaoOriginal := DS.DataSet.FieldByName('DESCRICAO').AsString;
//    ADescCod := FDescricaoOriginal + ' ' +
////    {$ELSE}
////    ADescCod := Trim(SplitString(Produto.FieldByName('DESCRICAO').AsString, ASeparador)[0]) + ' ' +
////    {$ENDIF}
//    IfThen(ASeparador <> '', ASeparador + ' ', '') + ADescCod;
//    DSProduto_Grade.DataSet.FieldByName('DESCRICAO').AsString := ADescCod;
//  end else
//  if AConcat = 'CODIGO' then
//  begin
//    ADescCod := DSProduto_Grade.DataSet.FieldByName('CODIGO').AsString + ASeparador + ADescCod;
//    DSProduto_Grade.DataSet.FieldByName('CODIGO').AsString := ADescCod;
//  end;
//  if CodigoJaExiste(DSProduto_Grade.DataSet.FieldByName('CODIGO').AsString) then
//  begin
//    ShowMessageWR('Este código de produto já existe.');
//    DSProduto_Grade.DataSet.Cancel;
//    EdtGradeCodFabrica.SetFocusWR;
//    Exit;
//  end;
//  if (AConcat = 'CODFABRICA') then
//  begin
//    DSProduto_Grade.DataSet.FieldByName('CODFABRICA').AsString := EdtGradeCodFabrica.Text + ASeparador + ADescCod;
//  end else
//  begin
//    DSProduto_Grade.DataSet.FieldByName('CODFABRICA').AsString := EdtGradeCodFabrica.Text;
////    if cxeGeraCodBarras.Checked then
//    begin
//      EdtGradeCodFabrica.Text:= TConfig.ReadString('CODBARRAS');
//      if Trim(EdtGradeCodFabrica.Text) ='' then
//        EdtGradeCodFabrica.Text:='780000000000';
//      DSProduto_Grade.DataSet.FieldByName('CODIGOEAN').AsString:=EdtGradeCodFabrica.Text+DigitoCodBarras(EdtGradeCodFabrica.Text);
//      TConfig.SaveString('CODBARRAS',FloatToStr(StrToFloatDef(EdtGradeCodFabrica.Text,780000000000)+1));
//    end;
//  end;
//
//  DSProduto_Grade.DataSet.FieldByName('CODCOR').AsString        := IfThen(EdtGradeÎCor.Text <> '', EdtGradeÎCor.Text, DSProduto_Grade.DataSet.FieldByName('CODCOR').AsString);
//  DSProduto_Grade.DataSet.FieldByName('TAMANHO').AsString       := EdtGradeTamanho.Text;
//  DSProduto_Grade.DataSet.FieldByName('ATIVO').AsString         := 'S';
//  DSProduto_Grade.DataSet.FieldByName('DT_CADASTRO').AsDateTime := DataHoraSys;
//  DSProduto_Grade.DataSet.Post;

  //Adiciona a composição do produto
  QuerX := GeraFDQuery(TFDQuery(DS.DataSet).Transaction);
  try
 (*
    QuerX.SQL.Text := 'select * ' +
                      'from PRODUTO_COMPOSICAO ' +
                      'where (CODPRODUTO_COMPOSICAO = :Cod)';
    QuerX.Params[0].AsString := DS.DataSet.FieldByName('CODIGO').AsString;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      Produto_Composicao.Insert;
      for I := 0 to QuerX.FieldCount - 1 do
      begin
        AField := Produto_Composicao.FindField(QuerX.Fields[I].FieldName);
        if AField <> nil then
          AField.Value := QuerX.Fields[I].Value;
      end;
      Produto_Composicao.FieldByName('CODPRODUTO_COMPOSICAO').AsString := DSProduto_Grade.DataSet.FieldByName('CODIGO').AsString;
      Produto_Composicao.Post;
      QuerX.Next;
    end;   *)

    //Adiciona Tabela de Preço
    QuerX.Close;
    QuerX.SQL.Text := 'SELECT *                 ' +
                      'FROM PRODUTO_PRECO       ' +
                      'WHERE (CODPRODUTO = :Cod)';
    QuerX.Params[0].AsString := DS.DataSet.FieldByName('CODIGO').AsString;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      DSProduto_Preco.DataSet.Insert;    //DSProduto_Preco
      for I := 0 to QuerX.FieldCount - 1 do
      begin
        AField := DSProduto_Preco.DataSet.FindField(QuerX.Fields[I].FieldName);
        if AField <> nil then
          AField.Value := QuerX.Fields[I].Value;
      end;
//      DSProduto_Preco.DataSet.FieldByName('CODPRODUTO').AsString := DSProduto_Grade.DataSet.FieldByName('CODIGO').AsString;
      DSProduto_Preco.DataSet.FieldByName('CODIGO').AsInteger    := SQLProdutoPreco_MaxCodigo(DSProduto_Preco.DataSet.FieldByName('CODPRODUTO').AsString);
      DSProduto_Preco.DataSet.Post;
      QuerX.Next;
    end;

{    //Adiciona Wizard
    InstanceFrameProdutoWizard;
    QuerX.Close;
    QuerX.SQL.Text := 'SELECT *                 ' +
                      'from PRODUTO_WIZARD      ' +
                      'WHERE (CODPRODUTO = :Cod)';
    QuerX.Params[0].AsString := ProdutoCODIGO.AsString;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      with FFrameProdutoWizard do
      begin
        Produto_Wizard.Insert;
        for I := 0 to QuerX.FieldCount - 1 do
          Produto_Wizard.FieldByName(QuerX.Fields[I].FieldName).Value := QuerX.Fields[I].Value;
        Produto_WizardCODPRODUTO.AsString := Produto_GradeCODIGO.AsString;
        Produto_Wizard.Post;
        QuerX.Next;
      end;
    end;

    QuerX.Close;
    QuerX.SQL.Text := 'SELECT *                          ' +
                      'from PRODUTO_WIZARD_MATERIA_PRIMA ' +
                      'WHERE (CODPRODUTO = :Cod)';
    QuerX.Params[0].AsString := ProdutoCODIGO.AsString;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      with FFrameProdutoWizard do
      begin
        Produto_Wizard_Materia_Prima.Insert;
        for I := 0 to QuerX.FieldCount - 1 do
          Produto_Wizard_Materia_Prima.FieldByName(QuerX.Fields[I].FieldName).Value := QuerX.Fields[I].Value;
        Produto_Wizard_Materia_PrimaCODPRODUTO.AsString := Produto_GradeCODIGO.AsString;
        Produto_Wizard_Materia_Prima.Post;
        QuerX.Next;
      end;
    end; }

  finally
    QuerX.Free;
  end;
//  btnConfirmarClick(nil);                  issO AQUI É FODA pRECISA APERTAR ESSE BOTÃO PARA CONFIRMAR TUDO
  //EdtGradeCodFabrica.Text := '';
  //EdtGradeTamanho.Text    := '';
  //EdtGradeCodCor.Text     := '';
end;

procedure TFrmFrameVariacao.btnCriarGradeClick(Sender: TObject);
var
  I : integer;
  ACampo, ASeparador, ACodSemSeparador, AConcat, ADescCod, ATiposMedidas,
  AGradeModeloTipo: String;
  QuerX, QuerGradeModelo: TFDQuery;
  AMedida: TArray<string>;
begin
  inherited;
  btnCriarGrade.Tag := 1;
  if Trim(lblGradeModeloÎProduto_Grade_ModeloÎDESCRICAO.Caption) = '' then
  begin
    ShowMessage('Escolha um Modelo de Grade.');
    Exit;
  end;

  QuerX := GeraFDQuery(TFDQuery(DS.DataSet).Transaction);
  QuerGradeModelo := GeraFDQuery;
  try
    QuerGradeModelo.SQL.Text := 'select * from PRODUTO_GRADE_MODELO where (CODIGO = :CodGrade)';
    QuerGradeModelo.Params[0].AsInteger := DS.DataSet.FieldByName('CODGRADE_MODELO').AsInteger;
    QuerGradeModelo.Open;

    AConcat          := TConfig.ReadString('PRODUTO_GRADE_CONCATENACAO');
    AGradeModeloTipo := QuerGradeModelo.FieldByName('TIPO').AsString;

    if (AGradeModeloTipo = 'MEDIDAS') and (AConcat <> 'DESCRICAO') then
    begin
      ShowMessageWR('Grade do tipo Medidas, somente concatena a descrição.');
      PopupGradeConfig.PopupOnMouse;
      Exit;
    end;

    ASeparador := TConfig.ReadString('SEPARADOR_GRADE');

    ACodSemSeparador := SplitString(DS.DataSet.FieldByName('CODIGO').AsString, ASeparador)[0];
    ATiposMedidas := PadRight(QuerGradeModelo.FieldByName('TIPOSMEDIDAS').AsString, 3, 'N');
    if MatchStr(AConcat, ['CODFABRICA', 'DESCRICAO']) then
    begin
      if DS.DataSet.FieldByName('CODFABRICA').AsString.Trim.IsEmpty then
        EdtGradeCodFabrica.Text := DS.DataSet.FieldByName('CODIGO').AsString
      else
        EdtGradeCodFabrica.Text := DS.DataSet.FieldByName('CODFABRICA').AsString;
      EdtGradeTamanho.Text := DS.DataSet.FieldByName('TAMANHO').AsString.Trim;
    end;
    for I := 1 to 30 do //Tamanhos do Modelo da Grade
    begin
      QuerX.Close;
      ACampo := 'T' + IntToStr(i);
      if Trim(QuerGradeModelo.FieldByName(ACampo).AsString) = '' then
        Continue;

//      if not MatchStr(AConcat, ['CODFABRICA', 'DESCRICAO']) then
//        EdtGradeCodFabrica.Text := ACodSemSeparador;

      if (AGradeModeloTipo = 'TAMANHO') then
        EdtGradeTamanho.Text := QuerGradeModelo.FieldByName(ACampo).AsString
      else
        if (AGradeModeloTipo = 'COR') then
            EdtGradeÎCor.Text := QuerGradeModelo.FieldByName(ACampo).AsString
        else
          if (AGradeModeloTipo = 'MEDIDAS') then
          begin
            AMedida :=  QuerGradeModelo.FieldByName(ACampo).AsString.Split([';']);
            if (High(AMedida) <> 2) then
              Continue;

            if (ATiposMedidas[1] = 'S') then
              EdtGradeCompPadrao.Value := AMedida[0].ToDouble
            else
              EdtGradeCompPadrao.Clear;
            if (ATiposMedidas[2] = 'S') then
              EdtGradeLargPadrao.Value := AMedida[1].ToDouble
            else
              EdtGradeLargPadrao.Clear;
            if (ATiposMedidas[3] = 'S') then
              EdtGradeEspPadrao.Value := AMedida[2].ToDouble
            else
              EdtGradeEspPadrao.Clear;
            if (EdtGradeCompPadrao.Value <= 0.0) and (EdtGradeLargPadrao.Value <= 0.0) and (EdtGradeEspPadrao.Value <= 0.0) then
              Continue;
          end;

      if I = 1 then
      begin
        //Na primeira passada, apenas modifica o produto atual
        ADescCod := '';
        if (AGradeModeloTipo = 'TAMANHO') then
          ADescCod := EdtGradeTamanho.Text
        else
        if (AGradeModeloTipo = 'COR') then
        begin
          if (AConcat = 'DESCRICAO') then
            ADescCod := LblGradeÎCorÎDESCRICAO.Caption
          else
          if (AConcat = 'CODIGO') or (AConcat = 'CODFABRICA') then
            ADescCod := EdtGradeÎCor.Text;
        end else
        if (AGradeModeloTipo = 'MEDIDAS') then
        begin
          if (not VarIsNull(EdtGradeCompPadrao.EditValue)) then
            ADescCod := IfThen(not ADescCod.IsEmpty, ADescCod+'x') + FormatFloat('0.00###', EdtGradeCompPadrao.Value);
          if (not VarIsNull(EdtGradeLargPadrao.EditValue)) then
            ADescCod := IfThen(not ADescCod.IsEmpty, ADescCod+'x') + FormatFloat('0.00###', EdtGradeLargPadrao.Value);
          if (not VarIsNull(EdtGradeEspPadrao.EditValue)) then
            ADescCod := IfThen(not ADescCod.IsEmpty, ADescCod+'x') + FormatFloat('0.00###', EdtGradeEspPadrao.Value);
        end;

        if AConcat = 'DESCRICAO' then
        begin
          VerificaSePodeAlteraDataSet;
          FDescricaoOriginal := DS.DataSet.FieldByName('DESCRICAO').AsString;
          ADescCod := FDescricaoOriginal + ' ' +
                      IfThen(ASeparador <> '', ASeparador + ' ', '')+ ADescCod;
          DS.DataSet.FieldByName('DESCRICAO').AsString := ADescCod;
          if (DS.DataSet.FieldByName('CODFABRICA').AsString.Trim.IsEmpty) then
            DS.DataSet.FieldByName('CODFABRICA').AsString := EdtGradeCodFabrica.Text;
//          if cxeGeraCodBarras.Checked then
          begin
            EdtGradeCodFabrica.Text:= TConfig.ReadString('CODBARRAS');
            if Trim(EdtGradeCodFabrica.Text) ='' then
              EdtGradeCodFabrica.Text:='780000000000';
            DS.DataSet.FieldByName('CODIGOEAN').AsString:=EdtGradeCodFabrica.Text+DigitoCodBarras(EdtGradeCodFabrica.Text);
            TConfig.SaveString('CODBARRAS',FloatToStr(StrToFloatDef(EdtGradeCodFabrica.Text,780000000000)+1));
          end;

          DS.DataSet.Post;
        end else if AConcat = 'CODIGO' then
        begin
          if DS.DataSet.State = dsInsert then
          begin
            ADescCod := DS.DataSet.FieldByName('CODIGO').AsString + ASeparador + ADescCod;
            DS.DataSet.FieldByName('CODIGO').AsString := ADescCod;
          end
          else
          begin
            if (AGradeModeloTipo <> 'MEDIDAS') then
              EdtGradeCodFabrica.Text := ACodSemSeparador + ASeparador + QuerGradeModelo.FieldByName(ACampo).AsString
            else
              EdtGradeCodFabrica.Text := ACodSemSeparador + ASeparador + ADescCod;
            QuerX.SQL.Text := 'select CODIGO from PRODUTO where (CODIGO = :Cod)';
            QuerX.Params[0].AsString := EdtGradeCodFabrica.Text;
            QuerX.Open;
//            if QuerX.IsEmpty then
//              TrocaCodigoProduto(edtCodigo.Text, EdtGradeCodFabrica.Text);   /// Bucha de canhão aqui da merda isso
          end;
        end else if AConcat = 'CODFABRICA' then
        begin
          VerificaSePodeAlteraDataSet;
          DS.DataSet.FieldByName('CODFABRICA').AsString := EdtGradeCodFabrica.Text + ASeparador + ADescCod;
          DS.DataSet.Post;
        end else
        begin
          if DS.DataSet.FieldByName('CODFABRICA').AsString.Trim.IsEmpty then
          begin
            VerificaSePodeAlteraDataSet;
            DS.DataSet.FieldByName('CODFABRICA').AsString := EdtGradeCodFabrica.Text;
          end;
        end;

        VerificaSePodeAlteraDataSet;

        if (AGradeModeloTipo = 'TAMANHO') then
          DS.DataSet.FieldByName('TAMANHO').AsString := QuerGradeModelo.FieldByName(ACampo).AsString
        else if (AGradeModeloTipo = 'COR') then
          DS.DataSet.FieldByName('CODCOR').AsString  := QuerGradeModelo.FieldByName(ACampo).AsString;

        if (EdtGradeÎCor.Text <> '') and (AGradeModeloTipo <> 'COR') then
          DS.DataSet.FieldByName('CODCOR').AsString := EdtGradeÎCor.Text;

        Codigo := DS.DataSet.FieldByName('CODIGO').AsString;
        DS.DataSet.Post;
      end else
        btnAdicionarGradeProdutoClick(QuerGradeModelo);
    end;
    //Limpa os campos preenchidos para cadastrar a grade.
    EdtGradeCodFabrica.Clear;
    EdtGradeTamanho.Clear;
    EdtGradeÎCor.Clear;
    EdtGradeCompPadrao.Clear;
    EdtGradeLargPadrao.Clear;
    EdtGradeEspPadrao.Clear;
  finally
    QuerX.Free;
    QuerGradeModelo.Free;
    btnCriarGrade.Tag := 0;
  end;
end;

procedure TFrmFrameVariacao.btnGradeConfigClick(Sender: TObject);
begin
  inherited;
  PopupGradeConfig.PopupOnMouse;
end;

procedure TFrmFrameVariacao.cbVariacaoTipoPropertiesChange(Sender: TObject);
begin
  inherited;
  tcControle.Enabled := (cbVariacaoTipo.Text <> '');
  lilblAviso.Visible := not (tcControle.Enabled);
end;

procedure TFrmFrameVariacao.cbxTEM_FILHO_PRECO_INDIVIDUALPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if not Assigned(FVariacaoCodigosAlterados) then
    FVariacaoCodigosAlterados := TStringList.Create;
  DSProduto_Preco.Dataset.First;
  while not DSProduto_Preco.Dataset.eof do
  begin
    FVariacaoCodigosAlterados.AddIfNotExists(DSProduto_Preco.Dataset.FieldByName('CODIGO').AsString);
    DSProduto_Preco.Dataset.Next;
  end;
end;

procedure TFrmFrameVariacao.cxDBCheckBox3PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if not Assigned(FVariacaoCodigosAlterados) then
    FVariacaoCodigosAlterados := TStringList.Create;
  DSProduto_Preco.Dataset.First;
  while not DSProduto_Preco.Dataset.eof do
  begin
    FVariacaoCodigosAlterados.AddIfNotExists(DSProduto_Preco.Dataset.FieldByName('CODIGO').AsString);
    DSProduto_Preco.Dataset.Next;
  end;
end;

procedure TFrmFrameVariacao.cxGrid1DBTableView1Column2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Debug('ABRE HISTÓRICO');
  TFrame_Panel_Historico.Abrir(FFrFrameHistorico, Self, UCHist_DataSet1, TFDQuery(DS.Dataset).Transaction);
end;

procedure TFrmFrameVariacao.cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
//  if (AViewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1ATIVO.Index] = 'N') then
//  begin
//    ACanvas.Brush.Color := $008080FF;
//  end;
end;

procedure TFrmFrameVariacao.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  tiAlterar.Click;
end;

procedure TFrmFrameVariacao.edtCodFamiliaExit(Sender: TObject);
const
  Ext : Array[0..6] of String = ('gif', 'png', 'jpg', 'jpeg', 'bmp', 'tif', 'tiff');
var
  QuerX: TFDQuery;
  Filter, ExtAtual : String;
begin
  inherited;
  if DS.DataSet.State = dsEdit then
  begin
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'SELECT FIRST 1 CODFAMILIA FROM PRODUTO WHERE (CODIGO = :Codigo)';
      QuerX.ParamByName('Codigo').AsString := DS.DataSet.FieldByName('CODIGO').AsString;
      QuerX.Open;
      if QuerX.Fields[0].AsInteger <> DS.DataSet.FieldByName('CODFAMILIA').AsInteger then
      begin
        Filter := '';
        for ExtAtual in Ext do
        begin
          Filter := Filter + QuerX.FieldByName('CODFAMILIA').AsString + '-*.' + ExtAtual + ';';
        end;
      {  ViewFotos.Filter    := Filter;
        ViewFotos.Directory := Fotos;
        ViewFotos.Enabled   := True;
        if ViewFotos.Count > 0 then
        begin
          if MessageBox(0, 'Este produto pertence a uma família que possui fotos associadas. Ao modificar a família deste ' +
                           'produto, o sistema pode transferir as fotos para a nova família para você. Deseja que as fotos ' +
                           'sejam transferidas?' + #13#10 + 'Atenção: Caso existam outros produtos na ' +
                           'família atual, estes perderão a referência com as fotos.', '', MB_ICONWARNING or MB_YESNO) = IDYES then
          begin
            TFotos.TransfereFotos(QuerX.FieldByName('CODFAMILIA').AsInteger, Produto.FieldByName('CODFAMILIA').AsInteger);
            ShowMessage('Fotos transferidas com sucesso.');
          end;
        end;  }
      end;
    finally
      QuerX.Free;
    end;
  end;
end;

procedure TFrmFrameVariacao.edtGradeCodFabricaExit(Sender: TObject);
var
  QuerX: TFDQuery;
begin
  inherited;
  EdtGradeCodFabrica.Text := Trim(EdtGradeCodFabrica.Text);
  if not MatchStr(EdtGradeCodFabrica.Text, ['', DS.DataSet.FieldByName('CODIGO').AsString, DS.DataSet.FieldByName('CODFABRICA').AsString]) then
  begin
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'SELECT CODIGO, CODFABRICA, DESCRICAO FROM PRODUTO WHERE (CODIGO = ' + QuotedStr(EdtGradeCodFabrica.Text) + ') OR (CODFABRICA = ' + QuotedStr(EdtGradeCodFabrica.Text) + ')';
      QuerX.Open;
      if not QuerX.IsEmpty then
      begin
        ShowMessageWR('Este produto já está cadastrado. Descrição: '+DS.DataSet.FieldByName('DESCRICAO').AsString );
//        CloseOpen_AbrirRegistro(QuerX.FieldByName('CODIGO').AsString);
        EdtGradeTamanho.Text := DS.DataSet.FieldByName('TAMANHO').AsString;
      end;
    finally
      QuerX.Free;
    end;
  end;
end;

procedure TFrmFrameVariacao.NoConcatenar1Click(Sender: TObject);
const
  AConcat : Array[0..3] of String = ('', 'CODIGO', 'DESCRICAO', 'CODFABRICA');
begin
  TConfig.SaveString('PRODUTO_GRADE_CONCATENACAO', AConcat[TMenuItem(Sender).Tag]);
end;

procedure TFrmFrameVariacao.PopupGradeConfigPopup(Sender: TObject);
var
  ASeparador, AConcat : String;
  I : Integer;
begin
  ASeparador := TConfig.ReadString('SEPARADOR_GRADE');
  for I := 0 to PopupGradeConfig.Items.Items[0].Count - 1 do
  begin
    if (I = 0) and (ASeparador = '') then
      PopupGradeConfig.Items.Items[0].Items[0].Checked := True
    else if Trim(PopupGradeConfig.Items.Items[0].Items[I].Caption) = ASeparador then
      PopupGradeConfig.Items.Items[0].Items[I].Checked := True
    else
      PopupGradeConfig.Items.Items[0].Items[I].Checked := False;
  end;

  AConcat := TConfig.ReadString('PRODUTO_GRADE_CONCATENACAO');
  PopupGradeConfig.Items.Items[1].Items[0].Checked := (AConcat = '');
  PopupGradeConfig.Items.Items[1].Items[1].Checked := (AConcat = 'CODIGO');
  PopupGradeConfig.Items.Items[1].Items[2].Checked := (AConcat = 'DESCRICAO');
  PopupGradeConfig.Items.Items[1].Items[3].Checked := (AConcat = 'CODFABRICA');
end;

procedure TFrmFrameVariacao.rgSelecionarTipoVariacaoClick(Sender: TObject);
begin
  inherited;
//  if rgSelecionarTipoVariacao.ItemIndex = 0 then
//  begin
//    TabGradeProduto.MakeVisible;
//  end;
//
//  if rgSelecionarTipoVariacao.ItemIndex = 1 then
//  begin
// {   TFrmProdutoVariacaoTabela.CarregaFrame(FFrameProdutoVariacaoTabela,
//                                           pnlTabelaQuantidade,
//                                           WRCalc,
//                                           DSProdutoPreco);    }
//    TabTabelaQuantidade.MakeVisible;
//  end;
end;

procedure TFrmFrameVariacao.Sep1Click(Sender: TObject);
var
  ASeparador : String;
begin
  if TMenuItem(Sender).Tag > 0 then
    ASeparador := Trim(TMenuItem(Sender).Caption)
  else
    ASeparador := '';
    TConfig.SaveString('SEPARADOR_GRADE',Copy(ASeparador, 1, 1));

end;

procedure TFrmFrameVariacao.VerificaSePodeAlteraDataSet;
begin
  if Not DS.AutoEdit then   // Regra não pode ser burlada
  begin
    ShowMessageWR('Não pode alterar esse registro. ');
    Abort;
  end;
  if not (DS.DataSet.State in [dsEdit, dsInsert]) then
    DS.DataSet.Edit;
end;

end.
