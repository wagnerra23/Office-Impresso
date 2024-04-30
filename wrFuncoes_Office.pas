unit wrFuncoes_Office;

interface

uses
  Windows, Messages, StrUtils, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db, DBCtrls, Mask, Buttons, ExtCtrls, Math,
  ComCtrls, IBX.IBQuery, IBX.IBCustomDataSet, IBX.IBDatabase, Registry, Commctrl, SHDocVw, ShellAPI, DBCommon, Rtti,
  Variants, IBX.IBStoredProc, Menus, IdHashMessageDigest, IBX.IBSQL, ZIP, Generics.Collections, UCHistDataset,
  FireDAC.Comp.Client, FireDAC.Stan.Option, FireDAC.Stan.Param, Vcl.StdCtrls, Tlhelp32, Classes.WR, wrConstantes,
  FireDAC.Comp.DataSet, wrConversao, dxLayoutContainer, cxDropDownEdit, cxTL, cxDBTL, cxGridCustomTableView,
  cxDBLookupComboBox, cxGridCustomView, cxGridTableView, cxGraphics, cxButtons, cxGridDBTableView, cxEdit, cxDBEdit, cxSchedulerStorage,
  cxSchedulerStrs, cxScheduler, cxSchedulerDialogs, System.Diagnostics, dxScreenTip, Vcl.ImgList, { ConCep,  }
  dxGDIPlusClasses, dxSpreadSheetFunctions, dxSpreadSheetCore, pcnConversao, cxTextEdit, cxImageComboBox,
  dxSpreadSheetTypes, dxSpreadSheetCoreFormulas, dxUIAdorners, dxTokenEdit, cxDataControllerConditionalFormatting,
  cxVariants, dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules, cxImage,
  dxSpreadSheet, dxSpreadSheetReportDesigner, dxSpreadSheetUtils, dxRibbon,
  dxBar, uWRNotaFiscal, blcksock, dxLayoutControl, uWRCalculaConfiguracoes, wrFuncoes, UnitFuncoes, DateUtils, ImpTexto,
  DataModule;

  type
  TControleUnidades = class  //Singleton
  private
    FCaptionLargura: TMedidaCaption;
    FCaptionEspessura: TMedidaCaption;
    FCaptionComprimento: TMedidaCaption;
    class var FInstance: TControleUnidades;
    function GetUnidadeIndex(Index: Integer): TUnidade;
    procedure DoAtualizaCaption(const AObjeto: TObject; const ACampo: string; const AMedidaCaption: TMedidaCaption);
    procedure InternalAtualizaCaption(const AObjeto: TObject);
    constructor CreatePrivate;
  public
    FList: TList<TUnidade>;
    property Unidades[Index: Integer]: TUnidade read GetUnidadeIndex; default;
    function GetUnidade(AUnidade: string): TUnidade;
    function Count: Integer;
    procedure AtualizaCaptionsGrid(const AGridView: TcxGridDBTableView);
    procedure AtualizaCaptionsTreeView(const ATreeList: TcxDBTreeList);
    procedure AtualizaCaptionsLayoutControl(const ALayoutControl: TdxLayoutControl; const ASufixo: string = '');

    constructor Create; //Invalidado
    destructor Destroy; override;
    class function GetInstance: TControleUnidades;
    class procedure ReleaseInstance;
  published
    property CaptionComprimento: TMedidaCaption read FCaptionComprimento write FCaptionComprimento;
    property CaptionLargura: TMedidaCaption read FCaptionLargura write FCaptionLargura;
    property CaptionEspessura: TMedidaCaption read FCaptionEspessura write FCaptionEspessura;
  end;

  TBancoEstrutura = class
  strict private
    FListaUniques: TObjectList<TBancoEstruturaUniqueKey>;
    FListaForeignKeys: TObjectList<TBancoEstruturaForeignKey>;
    FTabelas: TObjectList<TBancoTabela>;
    FListaErros: TStringList;
    FMetaDadosCarregados: Boolean;
    procedure ValidarUniques;
    procedure ValidarForeignKeys;

    procedure AddUnique(const ATabela, AUniqueName: string; const ACampos: TArray<string>);
    procedure AddFK(const ATabela, AFKName: string; const ACampos: TArray<string>; const ARefTabela: string;
      const ARefCampos: TArray<string>);

    procedure CarregaListaUniques;
    procedure CarregaListaForeignKeys;

    function AddTabela: TBancoTabela;
    procedure CarregarMetaDados;
    procedure DoCheckMetaDados;
    constructor CreatePrivate;
    function GetTabelas: TObjectList<TBancoTabela>;
  public
    property ListaErros: TStringList read FListaErros;
    property Tabelas: TObjectList<TBancoTabela> read GetTabelas;
    procedure Clear;

    class procedure ValidarEstrutura(AListaErros: TStrings);

    destructor Destroy; override;
    class procedure ReleaseInstance;
  end;

  procedure ControleUnidadesAtualizaUnidades(t: TControleUnidades);

  procedure ProdutoArrumarEstoqueProducaoExecutar(t: TProdutoArrumarEstoqueProducao);

  function ProdutoArrumarEstoqueProducaoGetSQLCamposEstoque: string;     //wrFuncoes e criar o DataSet
  procedure ProdutoArrumarEstoqueProducaoArrumarEstoque(const ACodProduto: string; ADtInicial: TDate);
  procedure ProdutoArrumarEstoqueProducaoArrumarEstoqueTodosOsProdutos(ADtInicial: TDate);  // wrFuncoes
  function ProdutoArrumarEstoqueProducaoPossuiProdutosComProblema: Boolean;  // wrFuncoes
//  procedure ProdutoCalcularCustosTodos;

  procedure ProdutoExportaBalancaFilizola;
  procedure ProdutoExportaBalancaToledo;
  procedure ProdutoExportaBalancaUrano;
  procedure ProdutoExportaBalancaGertec;
//  procedure NF_EntradaProdutoAplicaCustoExtraValor(AWRCalcula: TWRCalculaConfiguracoes; AClassificacao: TCustoAdicionalClassificacao;AValor: Double);

  function VendaTipoModeloToSQLTipos(const AModelos: TArray<TVendaTipoModelo>): string;
  function VendaTipoModeloBuscaPelaVendaTipoToEnum(const AVendaTipo: string): TVendaTipoModelo; //Conversão
  procedure PreencheImgComboBoxCentroTrabalho(AImgComboBoxProperties: TcxImageComboBoxProperties; const ACampoValue: string);
  function VerificaOrderProducao(ATransacao : TIBTransaction): Double;

  procedure ControleUnidadesAtualizaCaptions(t: TControleUnidades);
  procedure PreencheComboBoxUnidade(const AComboBox: TcxCustomComboBox);
  procedure PreencheComboBoxUnidadeProperties(AProperties: TcxCustomEditProperties);
//   Funções Publicas
  function ProdutoControleUnidades: TControleUnidades;

  procedure ProdutoAtualizaViewUnidade(const AUnidade: string; ALiComprimento, ALiLargura, ALiEspessura: TdxLayoutItem);
  procedure ProdutoAtualizaViewUnidadeCaption(ALiComprimento, ALiLargura, ALiEspessura: TdxLayoutItem);
  procedure ProdutoAtualizaViewUnidadeEnabled(const AUnidade: string; AEdtComprimento, AEdtLargura, AEdtEspessura: TcxCustomEdit);  //Funcao
  function ProdutoMedidaToDescricao(const AMedida: TProdutoMedida): string;
  function ProdutoGetMedidas(const AStrUnidade: string; const AQtdadePeca, AComp, ALarg, AEsp, AQuant: Double): TMedidas;
  function ProdutoGetMedidasDataSet(const ADataSet: TDataSet): TMedidas;
//  function ProdutoVinculoMedidaToDescricao(t: TProdutoVinculoMedida): string;
  procedure DM_ProdutoArrumarEstoqueProducaoBuscaItensProdutoMovimento(t: TProdutoArrumarEstoqueProducao);// Não é usada, só chama na rotina abaixo
  // Revisar as funções abaixo, deois de aplicar a Composição do Item
  function  DM_ProdutoArrumarEstoqueProducaoMontarSQLProdutos(t: TProdutoArrumarEstoqueProducao): string; // wrFuncoes   Onde isso é Usado??
  procedure BancoEstruturaCarregaEstruturaFilhos;
  function BancoEstruturaTableByName(const ANomeTabela: string): TBancoTabela;
  function BancoEstrutura: TBancoEstrutura;

var FBancoEstrutura: TBancoEstrutura;
  { TControleUnidades }

implementation

procedure TControleUnidades.AtualizaCaptionsGrid(const AGridView: TcxGridDBTableView);
var
  I: Integer;
begin
  for I := 0 to AGridView.ColumnCount - 1 do
    InternalAtualizaCaption(AGridView.Columns[i]);
end;

procedure TControleUnidades.AtualizaCaptionsLayoutControl(const ALayoutControl: TdxLayoutControl; const ASufixo: string = '');
var
  I: Integer;
  AItem: TdxLayoutItem;
  ADataBinding: TcxDBEditDataBinding;
begin
  for I := 0 to ALayoutControl.AbsoluteItemCount - 1 do
  begin
    if not (ALayoutControl.AbsoluteItems[i] is TdxLayoutItem) then
      Continue;

    AItem := TdxLayoutItem(ALayoutControl.AbsoluteItems[i]);
    try
    ADataBinding := GetDevDataBinding(AItem.Control);
    Except
      ShowMessage(AItem.Name);
    end;

    if ADataBinding <> nil then
    begin
      case IndexStr(ADataBinding.DataField, ['COMP', 'LARG', 'ESPESSURA']) of
        0: AItem.CaptionOptions.Text := CaptionComprimento.Descricao + ASufixo;
        1: AItem.CaptionOptions.Text := CaptionLargura.Descricao + ASufixo;
        2: AItem.CaptionOptions.Text := CaptionEspessura.Descricao + ASufixo;
      end;
    end;
  end;
end;

procedure TControleUnidades.AtualizaCaptionsTreeView(const ATreeList: TcxDBTreeList);
var
  I: Integer;
begin
  for I := 0 to ATreeList.ColumnCount - 1 do
    InternalAtualizaCaption(ATreeList.Columns[i]);
end;

procedure TControleUnidades.DoAtualizaCaption(const AObjeto: TObject; const ACampo: string;
  const AMedidaCaption: TMedidaCaption);
var
  AFieldName: PChar;
begin
  if AObjeto is TcxDBTreeListColumn then
    AFieldName := PChar(Pointer(TcxDBTreeListColumn(AObjeto).DataBinding.FieldName))
  else if AObjeto is TcxGridDBColumn then
    AFieldName := PChar(Pointer(TcxGridDBColumn(AObjeto).DataBinding.FieldName))
  else
    Assert(False, 'Objeto não tratado em TControleUnidades.InternalAtualizaCaption: ' + AObjeto.ClassName);

  if MatchStr(AFieldName, [ACampo, 'COMPRA_' + ACampo, ACampo + '_PADRAO']) then
  begin
    if AObjeto is TcxDBTreeListColumn then
      TcxDBTreeListColumn(AObjeto).Caption.Text := AMedidaCaption.Descricao
    else if AObjeto is TcxGridDBColumn then
      TcxGridDBColumn(AObjeto).Caption := AMedidaCaption.Descricao;
  end;
end;

procedure TControleUnidades.InternalAtualizaCaption(const AObjeto: TObject);
begin
  DoAtualizaCaption(AObjeto, 'COMP', CaptionComprimento);
  DoAtualizaCaption(AObjeto, 'LARG', CaptionLargura);
  DoAtualizaCaption(AObjeto, 'ESPESSURA', CaptionEspessura);
end;

function TControleUnidades.Count: Integer;
begin
  Result := FList.Count;
end;

constructor TControleUnidades.Create;
begin
  raise EWRException.Create('Utilize o método GetInstance para instanciar este objeto');
end;

constructor TControleUnidades.CreatePrivate;
begin
  FList := TList<TUnidade>.Create;
  FCaptionLargura     := TMedidaCaption.Create;
  FCaptionEspessura   := TMedidaCaption.Create;
  FCaptionComprimento := TMedidaCaption.Create;
end;

destructor TControleUnidades.Destroy;
begin
  FList.Free;
  FCaptionLargura.Free;
  FCaptionEspessura.Free;
  FCaptionComprimento.Free;
  inherited;
end;

function TControleUnidades.GetUnidade(AUnidade: string): TUnidade;
var
  I: Integer;
begin
  AUnidade := Trim(AUnidade);
  Result.Clear;
  for I := 0 to FList.Count - 1 do
  begin
    if FList[i].Unidade = AUnidade then
      Exit(FList[i]);
  end;
end;

function TControleUnidades.GetUnidadeIndex(Index: Integer): TUnidade;
begin
  Result := FList[Index];
end;

class procedure TControleUnidades.ReleaseInstance;
begin
  FreeAndNil(TControleUnidades.FInstance);
end;
//  function SQLProdutoLocaisEstoque: TFDQuery;

function SQLProdutoLocaisEstoque: TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select DESCRICAO ' +
                     'from PRODUTO_ESTOQUE_LOCAL';   //criar a tabela no data module DataSet
  Result.Open;
end;

function ProdutoArrumarEstoqueProducaoGetSQLCamposEstoque: string;     //wrFuncoes e criar o DataSet
var
  QuerX: TFDQuery;
  AListaCampos: TStringList;
  I: Integer;
begin
  Result := '';
  QuerX := SQLProdutoLocaisEstoque;
  try
    AListaCampos := TStringList.Create;
    try
      while not QuerX.Eof do
      begin
        AListaCampos.Add(AnsiUpperCase(QuerX.Fields[0].AsString));
        QuerX.Next;
      end;

      if AListaCampos.IndexOf('PRINCIPAL') < 0 then
        AListaCampos.Add('PRINCIPAL');

      for I := 0 to AListaCampos.Count - 1 do
      begin
        if Result <> '' then
          Result := Result + ' + ';
        Result := Result + 'coalesce(' + AListaCampos[i] + ', 0)';
      end;
    finally
      AListaCampos.Free;
    end;
  finally
    QuerX.Free;
  end;
end;

function ProdutoArrumarEstoqueProducaoPossuiProdutosComProblema: Boolean;
var
  AInst: TProdutoArrumarEstoqueProducao;
begin
  AInst := TProdutoArrumarEstoqueProducao.Create;
  try
    AInst.DtInicial  := 0;
    AInst.CodProduto := '';
//    AInst.ApenasVerSeTem := True;
    DM_ProdutoArrumarEstoqueProducaoBuscaItensProdutoMovimento(AInst);
    Result := (AInst.FListaQuantMovimentar.Count > 0);
  finally
    AInst.Free;
  end;
end;

procedure DM_ProdutoArrumarEstoqueProducaoBuscaItensProdutoMovimento(t: TProdutoArrumarEstoqueProducao); // wrFuncao e criar o dataSet   Essa Função é Filha da outra e não é usada
var
  QuerX, QuerPMR: TFDQuery;
  AProduto: TProdutoQuantPair;
  APMExcluir: TProdutoMovimentoCodigo;
  ACodProdutoDbg: string;
  AVenda: TProdutoQuantMovimentosVenda;
  I, J: Integer;
begin
  QuerX := GeraFDQuery(t.FTransa);
  QuerPMR := GeraFDQuery(t.FTransa);
  try
  {  if FFrmAguarde <> nil then
      FFrmAguarde.Mensagem := 'Analizando movimentos dos produtos...';    }
    QuerPMR.SQL.Text := 'select first 1 * ' +                                      // criar o DataSet
                        'from PRODUTO_MOVIMENTO ' +
                        'where (CODIGO > :Codigo) and ' +
                        '      (CODEMPRESA = :CodEmpresa) and ' +
                        '      (abs(datediff(second, DATA, :Data)) <= 1) and ' +
                        '      (CODPRODUTO = :CodProduto) and ' +
                        '      (CODVENDA = :CodVenda) and ' +
                        '      (coalesce(CODVENDA, '''') <> '''') and ' +
                        '      (TIPO_MOVIMENTO is distinct from :TipoMov) and ' +
                        '      (PRODUTO_ESTOQUE_LOCAL = :Local) and ' +
                        '      (QUANT = :Quant)';

    QuerX.SQL.Text := 'select * ' +
                      'from PRODUTO_MOVIMENTO ' +
                      'where (DATA >= :Data)';
    if t.CodEmpresa <> '' then
      QuerX.SQL.Add('and (CODEMPRESA = :CodEmpresa)');
    if t.CodProduto <> '' then
      QuerX.SQL.Add('and (CODPRODUTO = :CodProduto)');

    //Parâmetros
    if t.CodEmpresa <> '' then
      QuerX.ParamByName('CodEmpresa').AsString := t.CodEmpresa;
    if t.CodProduto <> '' then
      QuerX.ParamByName('CodProduto').AsString := t.CodProduto;

    QuerX.ParamByName('Data').AsDate := t.DtInicial;
    QuerX.Open;
    QuerX.FetchAll;
 {   if FFrmAguarde <> nil then
    begin
      FFrmAguarde.ProgressoMaximo := QuerX.RecordCount;
      FFrmAguarde.Progresso       := 0;
    end;     }
    while not QuerX.Eof do
    begin
      //Verifica se este item já não foi processado
      AProduto := t.GetProdutoMovimentar(QuerX.FieldByName('CODPRODUTO').AsString, QuerX.FieldByName('CODEMPRESA').AsString);
      AVenda   := AProduto.GetVenda(QuerX.FieldByName('CODVENDA').AsString);
      if AVenda.EstaNaListaExcluir(QuerX) then
      begin
        QuerX.Next;
        Continue;
      end;

      ACodProdutoDbg := QuerX.FieldByName('CODPRODUTO').AsString;

      QuerPMR.Close;
      QuerPMR.ParamByName('Codigo').AsInteger    := QuerX.FieldByName('CODIGO').AsInteger;
      QuerPMR.ParamByName('CodEmpresa').AsString := QuerX.FieldByName('CODEMPRESA').AsString;
      QuerPMR.ParamByName('Data').AsDateTime     := QuerX.FieldByName('DATA').AsDateTime;
      QuerPMR.ParamByName('CodProduto').AsString := QuerX.FieldByName('CODPRODUTO').AsString;
      QuerPMR.ParamByName('CodVenda').AsString   := QuerX.FieldByName('CODVENDA').AsString;
      QuerPMR.ParamByName('Local').AsString      := QuerX.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString;
      QuerPMR.ParamByName('TipoMov').AsString    := QuerX.FieldByName('TIPO_MOVIMENTO').AsString;
      QuerPMR.ParamByName('Quant').AsFloat       := QuerX.FieldByName('QUANT').AsFloat;
      QuerPMR.Open;

      //Verifica se encontrou algo e também valida a HORA da data, pois em versões antigas o banco não armazenava
      //a hora, fazendo com que este SQL seja inútil neste caso
      if not QuerPMR.IsEmpty and (TimeOf(QuerPMR.FieldByName('DATA').AsDateTime) > 0) then
      begin
        AVenda.QuantDuplicidades := AVenda.QuantDuplicidades + 1;

        //A quantidade que deve ser movimentada no estoque é feito por VENDA, ou seja, quanto q cada venda deu de
        //divergência no estoque. Assim, caso o código da venda seja vazio, tudo resulta em uma única instância do
        //objeto e a quantidade é toda semana nesta instância com codvenda vazio
        AVenda.Quant := AVenda.Quant + QuerX.FieldByName('QUANT').AsFloat;

        //Separa o item repetido para que seja excluído
        APMExcluir := TProdutoMovimentoCodigo.Create;
        APMExcluir.Codigo     := QuerPMR.FieldByName('CODIGO').AsInteger;
        APMExcluir.CodEmpresa := QuerPMR.FieldByName('CODEMPRESA').AsString;
        AVenda.ListaExcluir.Add(APMExcluir);

        //Se estiver apenas verificando se há algum produto com problema, achando 1 já sai da rotina
        if t.ApenasVerSeTem then
          Exit;
      end;

   {   if FFrmAguarde <> nil then
        FFrmAguarde.AvancarProgresso;     }
      QuerX.Next;
    end;

    //Aplica o filtro da quantidade de duplicidades. Verifica cada venda para saber quantas duplicidades houve.
    //Exclui as vendas que nã correspondem ao filtro
    if t.QuantDuplicidades <> 0 then
    begin
      for I := t.FListaQuantMovimentar.Count - 1 downto 0 do
      begin
        AProduto := t.FListaQuantMovimentar[i];
        for J := AProduto.Vendas.Count - 1 downto 0 do
        begin
          AVenda := AProduto.Vendas[J];

          if not (((t.QuantDuplicidades = -1) and (AVenda.QuantDuplicidades >= 2)) or
                  ((t.QuantDuplicidades > 0)  and (AVenda.QuantDuplicidades = t.QuantDuplicidades))) then
            AProduto.Vendas.Remove(AVenda);
        end;

        //Se não sobrou nenhuma venda neste produto, exclui ele...
        if AProduto.Vendas.Count = 0 then
          t.FListaQuantMovimentar.Remove(AProduto);
      end;
    end;
  finally
    QuerX.Free;
    QuerPMR.Free;
  end;
end;


function DM_ProdutoArrumarEstoqueProducaoMontarSQLProdutos(t: TProdutoArrumarEstoqueProducao): string;  //wrFuncoes   Onde isso é Usado??
var
  I: Integer;
  AStr: string;
begin
  Result := '';
  AStr   := '';
 { if FFrmAguarde <> nil then
    FFrmAguarde.Show;   }
  DM_ProdutoArrumarEstoqueProducaoBuscaItensProdutoMovimento(t);

  for I := 0 to t.FListaQuantMovimentar.Count - 1 do
  begin
    if AStr <> '' then
      AStr := AStr + ', ';
    AStr := AStr + QuotedStr(t.FListaQuantMovimentar[i].CodProduto);

    //O Firebird não aceita mais de 1500 itens na cláusula "in", aqui separa em conjuntos de 1000 itens
    if ((I > 0) and (I mod 1000 = 0)) or (I = t.FListaQuantMovimentar.Count - 1) then
    begin
      if Result <> '' then
        Result := Result + ' or ';
      Result := Result + '(P.CODIGO in (' + AStr + '))';
      AStr := '';
    end;
  end;

  if Result = '' then
    ShowMessageWR('Nenhum produto encontrado');

 { if FFrmAguarde <> nil then
    FFrmAguarde.Close;      }
end;
//  function SQLProdutoBalanca: TFDQuery;


function SQLProdutoBalanca: TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select * ' +
                     'from PRODUTO ' +
                     'where (char_length(CODIGO) < 6)';
  Result.Open;
end;


procedure ProdutoExportaBalancaToledo;
var
  AArquivo : string;
  QuerX: TFDQuery;
begin
  AArquivo := IncludeTrailingPathDelimiter(GetEnvironmentVariable('PROGRAMFILES')) + 'TOLEDO\MGV5\TXITENS.TXT';
  ForceDirectories(ExtractFilePath(AArquivo));
  AssignFile(TImpTexto.PrintText, AArquivo);      //Arquivos de programas\TOLEDO\MGV5\
  ReWrite(TImpTexto.PrintText);
  QuerX := SQLProdutoBalanca;
  try
    While Not (QuerX.EOF) do
    begin
      Writeln(TImpTexto.PrintText,
      '01'+ // Departamento
      '00'+ // Etiqueta
      '0'+  //Tipo
      FormatFloat('000000',StrToFloatDef(QuerX.FieldByName('CODIGO').AsString,0))+//CODIGO
      ReplaceStr(FormatFloat('0000.00',QuerX.FieldByName('VALOR').AsFloat),',', '')+
      '000'+//Validade
      StrTamanho(Copy(QuerX.FieldByName('DESCRICAO').AsString,1,25),25)+//DESCRICAO DO PRODUTO COM 22 CASAS
      StrTamanho(Copy(QuerX.FieldByName('DESCRICAO').AsString,26,25),25)+//DESCRICAO DO PRODUTO COM 22 CASAS

      StrTamanho('',50)+//Extra 01
      StrTamanho('',50)+//Extra 02
      StrTamanho('',50)+//Extra 03
      StrTamanho('',50)+//Extra 04
      StrTamanho('',50)//Extra 05
      );
  {   If Not IsNull(Produto('CODIGO')) Then CodProduto = CCur(Produto('CODIGO'));
      If Not IsNull(Produto('VVenda')) Then preco = Replace(Replace(Format(TbProduto('VVenda'), '##,##0.00'), ',', ''), '.', '');
      Validade = '000';
      If Not IsNull(TbProduto('DESCRICAO')) Then Descricao01 = Mid(TbProduto('DESCRICAO'), 1, 25);
      If Not IsNull(TbProduto('DESCRICAO')) Then Descricao02 = Mid(TbProduto('DESCRICAO'), 26, 25);
      If Not IsNull(TbProduto('DESCRICAO')) Then DescricaoFilizola = Mid(TbProduto('DESCRICAO'), 1, 22);

      If TipBalanca = 'TOLEDO' Then

          Linha = Format(Mid(Departamento, 1, 2), '00')
          Linha = Linha & Format(Mid(Etiqueta, 1, 2), '00')
          Linha = Linha & Format(Mid(Tipo, 1, 1), '0')
          Linha = Linha & Format(Mid(CodProduto, 1, 6), '000000')
          Linha = Linha & Format(Mid(preco, 1, 6), '000000')
          Linha = Linha & Format(Mid(Validade, 1, 3), '000')
          Linha = Linha & Mid(Descricao01, 1, 25)
          Linha = Linha & Mid(Descricao02, 1, 25)
          Linha = Linha & Mid(Extra01, 1, 50)
          Linha = Linha & Mid(Extra02, 1, 50)
          Linha = Linha & Mid(Extra03, 1, 50)
          Linha = Linha & Mid(Extra04, 1, 50)
          Linha = Linha & Mid(Extra05, 1, 50)
          Print #1, Linha

      ElseIf TipBalanca = 'FILIZOLA' Then
          Linha = Linha & Format(Mid(CodProduto, 1, 6), '000000')
          Linha = Linha & 'p'
          Linha = Linha & Mid(DescricaoFilizola, 1, 22)
          Linha = Linha & Format(Mid(preco, 1, 7), '0000000') & '000'
          Print #1, Linha
      End;       }
      QuerX.Next;
    end;
    QuerX.Close;
  finally
    QuerX.Free;
    CloseFile(TImpTexto.PrintText);
    ShowMessageWR('Arquivo salvo em: ' + AArquivo);
  end;
end;

procedure ProdutoExportaBalancaFilizola;
var
  QuerX: TFDQuery;
begin
  if not DirectoryExists('C:\Filizola\') then
    CreateDir('C:\Filizola\');
  AssignFile(TImpTexto.PrintText,'C:\Filizola\CADTXT.TXT');
  ReWrite(TImpTexto.PrintText);
  QuerX := SQLProdutoBalanca;
  try
    While Not (QuerX.EOF) do
    begin
      writeln(TImpTexto.PrintText,
      FormatFloat('000000',StrToFloatDef(QuerX.FieldByName('CODIGO').AsString,0))+//CODIGO
      'p'+
      StrTamanho(Copy(QuerX.FieldByName('DESCRICAO').AsString,1,22),22)+//DESCRICAO DO PRODUTO COM 22 CASAS
      AnsiReplaceStr(FormatFloat('00000.000',QuerX.FieldByName('VALOR').AsFloat),',', '')+'00');
      QuerX.Next;
    end;
    QuerX.Close;
  finally
    QuerX.Free;
    CloseFile(TImpTexto.PrintText);
    ShowMessageWR('Arquivo salvo em: C:\Filizola\CADTXT.TXT');
  end;
end;


procedure ProdutoExportaBalancaUrano;
var
  Unidade: String;
  QuerX: TFDQuery;
begin
  AssignFile(TImpTexto.PrintText,'C:\PRODUTOS.TXT');      //Arquivos de programas\TOLEDO\MGV5\
  ReWrite(TImpTexto.PrintText);

  QuerX := GeraFDQueryFast;
  try
    QuerX.SQL.Text := 'SELECT * FROM PRODUTO WHERE CHAR_LENGTH(CODIGO)<6';
    QuerX.Open;
    QuerX.First;
    While Not (QuerX.EOF) do
    begin
      if UpperCase(QuerX.FieldByName('UNIDADE').AsString) = 'KG' then
        Unidade := '0'
      else
        Unidade := '6';

      writeln(TImpTexto.PrintText,
      FormatFloat('000000',StrToFloatDef(QuerX.FieldByName('CODIGO').AsString,0))+//CODIGO
      '*',//Flag Deve ou nao ser transmitido ??? Com * transmite
      Unidade+//TIPO 0=VALOR 1=Peso 6= UNidade
      StrTamanho(Copy(QuerX.FieldByName('DESCRICAO').AsString,1,20),20)+//DESCRICAO DO PRODUTO COM 20 CASAS
      FormatFloat('0000.00',QuerX.FieldByName('VALOR').AsFloat)+
      '00000'+//Validade
      'D'+
      StrTamanho('',5)+//CODIGO_TEXTO_1
      StrTamanho('',5)+//CODIGO_TEXTO_2
      StrTamanho('',5)+//CODIGO_TEXTO_3
      StrTamanho('',5)//CODIGO_INFONUTR
      );
      QuerX.Next;
    end;
    QuerX.Close;
  finally
    QuerX.Free;
    CloseFile(TImpTexto.PrintText);
    ShowMessageWR('Arquivo salvo em: C:\PRODUTOS.TXT');
  end;
end;

procedure ProdutoExportaBalancaGertec;
var
  QuerX: TFDQuery;
  AListaPreco : TStringList;
  ASaveDialog : TSaveDialog;
  Reg : TRegistry;
begin
  QuerX := GeraFDQuery;
  AListaPreco := TStringList.Create;
  try
    QuerX.SQL.Text := 'select P.CODIGO, P.CODFABRICA, P.DESCRICAO, P.VALOR ' +
                      'from PRODUTO P ' +
                      'where (coalesce(P.CODFABRICA, '''') <> '''')';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AListaPreco.Add(QuerX.FieldByName('CODFABRICA').AsString + '|' +
                      Trim(QuerX.FieldByName('DESCRICAO').AsString) + '|' +
                      FormatFloat('0.00', QuerX.FieldByName('VALOR').AsFloat) + '|');
      QuerX.Next;
    end;
    ASaveDialog := TSaveDialog.Create(nil);
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;
      if (Reg.ReadStringWR('CaminhoGertecBuscaPreco') <> '') then
        ASaveDialog.InitialDir := ExtractFilePath(Reg.ReadStringWR('CaminhoGertecBuscaPreco'))
      else
        ASaveDialog.InitialDir := GetDirSistema;
      Reg.CloseKey;
      ASaveDialog.Filter   := 'Arquivos txt|*.txt';
      ASaveDialog.FileName := 'PRICETAB.TXT';
      if ASaveDialog.Execute then
      begin
        AListaPreco.SaveToFile(ASaveDialog.FileName);
        ShowMessageWR('Arquivo de lista de preços gerado com sucesso em: ' + ASaveDialog.FileName);
//        if Reg.OpenKey(Sistema.RegPath + Name, True) then
//          Reg.WriteString('CaminhoGertecBuscaPreco', ASaveDialog.FileName);
      end;
    finally
      ASaveDialog.Free;
      Reg.Free;
    end;
  finally
    QuerX.Free;
    AListaPreco.Free;
  end;
end;

function VendaTipoModeloBuscaPelaVendaTipoToEnum(const AVendaTipo: string): TVendaTipoModelo;
var
  QuerX: TFDQuery;
begin
  QuerX := SQLVendaTipoModeloBuscaPelaVendaTipo(AVendaTipo);
  try
    Result := VendaTipoModeloStrToEnum(QuerX.Fields[0].AsString);
  finally
    QuerX.Free;
  end;
end;

function VendaTipoModeloToSQLTipos(const AModelos: TArray<TVendaTipoModelo>): string;
var
  AModelo: TVendaTipoModelo;
  QuerX: TFDQuery;
begin
  {Retorna a DESCRICAO de todos os tipos de venda que são dos modelos informados}
  Result := QuotedStr(''); //Inicializa com uma string vazia para garantir um retorno válido, assim não precisa verificar
                           //onde chamou se o retorno foi <> ''
  QuerX := SQLVendaTipoBuscaModelos(AModelos);
  try
    while not QuerX.Eof do
    begin
      Result := Result + ', ' + QuotedStr(QuerX.Fields[0].AsString);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;


procedure PreencheImgComboBoxCentroTrabalho(AImgComboBoxProperties: TcxImageComboBoxProperties; const ACampoValue: string);
var
  AItem: TcxImageComboBoxItem;
  QuerX: TDataSet;
begin
  QuerX := SQLCentrosTrabalho;
  AImgComboBoxProperties.BeginUpdate;
  try
    AImgComboBoxProperties.Items.Clear;
    while not QuerX.Eof do
    begin
      AItem := AImgComboBoxProperties.Items.Add;
      AItem.Value       := QuerX.FieldByName(ACampoValue).Value;
      AItem.Description := QuerX.FieldByName('DESCRICAO').AsString;
      AItem.ImageIndex  := QuerX.FieldByName('ICONE').AsInteger;
      QuerX.Next;
    end;
  finally
    AImgComboBoxProperties.EndUpdate(False);
    QuerX.EnableControls;
  end;
end;

procedure ControleUnidadesAtualizaUnidades(t: TControleUnidades);   //wrFuncoes e Correto o DataSet
var
  QuerX: TIBQuery;
  AUnidade: TUnidade;
begin
  t.FList.Clear;
  QuerX := SQLUnidades;
  try
    while not QuerX.Eof do
    begin
      AUnidade.Unidade         := Trim(QuerX.FieldByName('UNIDADE').AsString);
      AUnidade.Descricao       := Trim(QuerX.FieldByName('DESCRICAO').AsString);
      AUnidade.CalcComprimento := (QuerX.FieldByName('CALC_COMPRIMENTO').AsInteger = 1);
      AUnidade.CalcLargura     := (QuerX.FieldByName('CALC_LARGURA').AsInteger = 1);
      AUnidade.CalcEspessura   := (QuerX.FieldByName('CALC_ESPESSURA').AsInteger = 1);
      try
        AUnidade.Formula       := Trim(QuerX.FieldByName('FORMULA').AsString);   // fEITO DEPOIS, NÃO QUERO QUE DE ERRO
      except   end;
      t.FList.Add(AUnidade);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

function VerificaOrderProducao(ATransacao : TIBTransaction): Double;
var
  QuerX : TWRDataSet;
begin
  QuerX := SQLAgendaMaxOrdenacao(ATransacao);
  try
    Result := QuerX.Fields[0].AsInteger + 1;
  finally
    QuerX.Free;
  end;
end;


procedure ProdutoArrumarEstoqueProducaoArrumarEstoque(const ACodProduto: string; ADtInicial: TDate); // wrFuncoes
var
  AInst: TProdutoArrumarEstoqueProducao;
begin
  AInst := TProdutoArrumarEstoqueProducao.Create;
  try
    AInst.DtInicial  := ADtInicial;
    AInst.CodProduto := ACodProduto;
    ProdutoArrumarEstoqueProducaoExecutar(AInst);
  finally
    AInst.Free;
  end;
end;


procedure ProdutoArrumarEstoqueProducaoArrumarEstoqueTodosOsProdutos(ADtInicial: TDate);  // wrFuncoes
var
  AInst: TProdutoArrumarEstoqueProducao;
begin
  AInst := TProdutoArrumarEstoqueProducao.Create;
  try
    AInst.DtInicial := ADtInicial;
    ProdutoArrumarEstoqueProducaoExecutar(AInst);
  finally
    AInst.Free;
  end;
end;
///////////////////////////////////////////////////////////////////////////

class function TControleUnidades.GetInstance: TControleUnidades;
begin
  if not Assigned(FInstance) then
  begin
    FInstance := TControleUnidades.CreatePrivate;
    ControleUnidadesAtualizaUnidades(FInstance);
    ControleUnidadesAtualizaCaptions(FInstance);
  end;
  Result := FInstance;
end;

procedure ProdutoAtualizaViewUnidade(const AUnidade: string; ALiComprimento, ALiLargura, ALiEspessura: TdxLayoutItem);  //Funcao
var
  AUnidadeRec: TUnidade;
begin
  AUnidadeRec := ProdutoControleUnidades.GetUnidade(AUnidade);
  ALiComprimento.Visible := AUnidadeRec.CalcComprimento;
  ALiLargura.Visible     := AUnidadeRec.CalcLargura;
  ALiEspessura.Visible   := AUnidadeRec.CalcEspessura;
  ALiComprimento.CaptionOptions.Text := ProdutoControleUnidades.CaptionComprimento.Abreviacao;
  ALiLargura.CaptionOptions.Text     := ProdutoControleUnidades.CaptionLargura.Abreviacao;
  ALiEspessura.CaptionOptions.Text   := ProdutoControleUnidades.CaptionEspessura.Abreviacao;
end;

procedure ProdutoAtualizaViewUnidadeCaption(ALiComprimento, ALiLargura, ALiEspessura: TdxLayoutItem);  //Funcao
begin
  ALiComprimento.CaptionOptions.Text := ProdutoControleUnidades.CaptionComprimento.Abreviacao;
  ALiLargura.CaptionOptions.Text     := ProdutoControleUnidades.CaptionLargura.Abreviacao;
  ALiEspessura.CaptionOptions.Text   := ProdutoControleUnidades.CaptionEspessura.Abreviacao;
end;

procedure ProdutoAtualizaViewUnidadeEnabled(const AUnidade: string; AEdtComprimento, AEdtLargura, AEdtEspessura: TcxCustomEdit);  //Funcao
var
  AUnidadeRec: TUnidade;
begin
  AUnidadeRec := ProdutoControleUnidades.GetUnidade(AUnidade);
  AEdtComprimento.Enabled := AUnidadeRec.CalcComprimento;
  AEdtLargura.Enabled     := AUnidadeRec.CalcLargura;
  AEdtEspessura.Enabled   := AUnidadeRec.CalcEspessura;
end;

function ProdutoMedidaToDescricao(const AMedida: TProdutoMedida): string;  //Conversao
begin
  case AMedida of
    pmComprimento: Result := ProdutoControleUnidades.CaptionComprimento.Descricao;
    pmLargura:     Result := ProdutoControleUnidades.CaptionLargura.Descricao;
    pmEspessura:   Result := ProdutoControleUnidades.CaptionEspessura.Descricao;
    pmQtdadePeca:  Result := 'Qtdade. Peças';
    pmQuant:       Result := 'Quantidade';
  end;
end;

procedure ControleUnidadesAtualizaCaptions(t: TControleUnidades); //wrFuncoes
begin
  t.CaptionComprimento.Descricao  := CoalesceStr(TConfig.ReadString('MEDIDA_1DIM_DESC'), 'Comprimento');
  t.CaptionComprimento.Abreviacao := CoalesceStr(TConfig.ReadString('MEDIDA_1DIM_ABREV'), 'Comp');
  t.CaptionComprimento.Inicial    := CoalesceStr(TConfig.ReadString('MEDIDA_1DIM_INICIAL'), 'C');
  t.CaptionLargura.Descricao      := CoalesceStr(TConfig.ReadString('MEDIDA_2DIM_DESC'), 'Largura');
  t.CaptionLargura.Abreviacao     := CoalesceStr(TConfig.ReadString('MEDIDA_2DIM_ABREV'), 'Larg');
  t.CaptionLargura.Inicial        := CoalesceStr(TConfig.ReadString('MEDIDA_2DIM_INICIAL'), 'L');
  t.CaptionEspessura.Descricao    := CoalesceStr(TConfig.ReadString('MEDIDA_3DIM_DESC'), 'Espessura');
  t.CaptionEspessura.Abreviacao   := CoalesceStr(TConfig.ReadString('MEDIDA_3DIM_ABREV'), 'Esp');
  t.CaptionEspessura.Inicial      := CoalesceStr(TConfig.ReadString('MEDIDA_3DIM_INICIAL'), 'E');
end;

procedure PreencheComboBoxUnidade(const AComboBox: TcxCustomComboBox);     // Criar wrPreenche
var
  I: Integer;
begin
  AComboBox.Properties.BeginUpdate;
  try
    AComboBox.Properties.Items.Clear;
    for I := 0 to ProdutoControleUnidades.Count - 1 do
      AComboBox.Properties.Items.Add(ProdutoControleUnidades[i].Unidade);
  finally
    AComboBox.Properties.EndUpdate(False);
  end;
end;

procedure PreencheComboBoxUnidadeProperties(AProperties: TcxCustomEditProperties);
var
  I: Integer;
begin
  TcxComboBoxProperties(AProperties).BeginUpdate;
  try
    TcxComboBoxProperties(AProperties).Items.Clear;
    for I := 0 to ProdutoControleUnidades.Count - 1 do
      TcxComboBoxProperties(AProperties).Items.Add(ProdutoControleUnidades[i].Unidade);
  finally
    TcxComboBoxProperties(AProperties).EndUpdate(False);
  end;
end;

function ProdutoControleUnidades: TControleUnidades;   //wrFunções
begin
  Result := TControleUnidades.GetInstance;
end;

function ProdutoGetMedidas(const AStrUnidade: string; const AQtdadePeca, AComp, ALarg, AEsp, AQuant : Double): TMedidas;
  procedure LAddStr(var AStr: string; const AAdd: string);
  begin
    if AStr <> '' then
      AStr := AStr + ' x ';
    AStr := AStr + AAdd;
  end;
var
  AUnidade: TUnidade;
  AFator: Integer;
begin
  AUnidade := ProdutoControleUnidades.GetUnidade(Trim(AStrUnidade));
  Result.Clear;
  if AUnidade.CalcComprimento then
  begin
    LAddStr(Result.Medidas, FormatFloat(DecimalQuantidade, AComp));
    LAddStr(Result.CaptionLetras, ProdutoControleUnidades.CaptionComprimento.Inicial);
    LAddStr(Result.CaptionAbreviado, ProdutoControleUnidades.CaptionComprimento.Abreviacao);
    LAddStr(Result.Caption, ProdutoControleUnidades.CaptionComprimento.Descricao);
  end;
  if AUnidade.CalcLargura then
  begin
    LAddStr(Result.Medidas, FormatFloat(DecimalQuantidade, ALarg));
    LAddStr(Result.CaptionLetras, ProdutoControleUnidades.CaptionLargura.Inicial);
    LAddStr(Result.CaptionAbreviado, ProdutoControleUnidades.CaptionLargura.Abreviacao);
    LAddStr(Result.Caption, ProdutoControleUnidades.CaptionLargura.Descricao);
  end;
  if AUnidade.CalcEspessura then
  begin
    LAddStr(Result.Medidas, FormatFloat(DecimalQuantidade, AEsp));
    LAddStr(Result.CaptionLetras, ProdutoControleUnidades.CaptionEspessura.Inicial);
    LAddStr(Result.CaptionAbreviado, ProdutoControleUnidades.CaptionEspessura.Abreviacao);
    LAddStr(Result.Caption, ProdutoControleUnidades.CaptionEspessura.Descricao);
  end;
  Result.Quant := AQtdadePeca;

  if Result.Medidas <> '' then
    Result.Medidas := FormatFloat(DecimalQuantidade, AQtdadePeca) + ' x (' + Result.Medidas + ')'
  else
    Result.Medidas := FormatFloat(DecimalQuantidade, AQtdadePeca);

  Result.Quant       := RoundTo(AQuant, -GetCasasDecimaisQuantidade);   //Isso pode dar problema o Valor tem que ser recalculado
  Result.Comprimento := AComp;
  Result.Largura     := ALarg;
  Result.Espessura   := AEsp;
end;
     {
function ProdutoVinculoMedidaToDescricao(t: TProdutoVinculoMedida): string;   // Conversao
begin
  case t of
    pvmComprimento:  Result := ProdutoMedidaToDescricao(pmComprimento);
    pvmLargura:      Result := ProdutoMedidaToDescricao(pmLargura);
    pvmEspessura:    Result := ProdutoMedidaToDescricao(pmEspessura);
    pvmQtdadePeca:   Result := ProdutoMedidaToDescricao(pmQtdadePeca);
    pvmPerimetro:    Result := 'Perímetro';
    pvmQuant:        Result := 'Quantidade';
    pvmAreaQuadrada: Result := 'Área Quadrada';
    pvmAreaCubica:   Result := 'Área Cúbica';
  end;
end;     }

function ProdutoGetMedidasDataSet(const ADataSet: TDataSet): TMedidas;
begin
  Result := ProdutoGetMedidas(ADataSet.FieldByName('UNIDADE').AsString,
                              ADataSet.FieldByName('QTDADEPECA').AsFloat,
                              ADataSet.FieldByName('COMP').AsFloat,
                              ADataSet.FieldByName('LARG').AsFloat,
                              ADataSet.FieldByName('ESPESSURA').AsFloat,
                              ADataSet.FieldByName('QUANT').AsFloat);
end;

{ TBancoEstrutura }

function BancoEstrutura: TBancoEstrutura;
begin
  if FBancoEstrutura  = nil then
    FBancoEstrutura := TBancoEstrutura.Create;
  Result:=FBancoEstrutura;
end;

procedure TBancoEstrutura.AddFK(const ATabela, AFKName: string; const ACampos: TArray<string>; const ARefTabela: string;
  const ARefCampos: TArray<string>);
var
  AForeignKey: TBancoEstruturaForeignKey;
begin
  AForeignKey := TBancoEstruturaForeignKey.Create;
  AForeignKey.Tabela    := ATabela;
  AForeignKey.FKName    := AFKName;
  AForeignKey.Campos    := ACampos;
  AForeignKey.RefTabela := ARefTabela;
  AForeignKey.RefCampos := ARefCampos;
  FListaForeignKeys.Add(AForeignKey);
end;

function TBancoEstrutura.AddTabela: TBancoTabela;
begin
  Result := TBancoTabela.Create;
  FTabelas.Add(Result);
end;

procedure TBancoEstrutura.AddUnique(const ATabela, AUniqueName: string; const ACampos: TArray<string>);
var
  AUnique: TBancoEstruturaUniqueKey;
begin
  AUnique := TBancoEstruturaUniqueKey.Create;
  AUnique.Tabela     := ATabela;
  AUnique.UniqueName := AUniqueName;
  AUnique.Campos     := ACampos;
  FListaUniques.Add(AUnique);
end;

procedure TBancoEstrutura.CarregaListaForeignKeys;
begin
  //Adicionar aqui a lista de Foreign Keys existentes no banco
  AddFK('PRODUTO_FORNECEDOR', 'FK_PRODUTO_FORNECEDOR_FOR', ['PESSOA_FORNECEDOR_CODIGO'], 'PESSOAS', ['CODIGO']);
  AddFK('PRODUTO_FORNECEDOR', 'FK_PRODUTO_FORNECEDOR_PRODUTO', ['CODPRODUTO'], 'PRODUTO', ['CODIGO']);
end;

procedure TBancoEstrutura.CarregaListaUniques;
begin
  //Adicionar aqui a lista de Unique Keys existentes no banco

  //Verificar esta unique, talvez não esteja correta....
//  AddUnique('PRODUTO_FORNECEDOR', 'UNQ1_PRODUTO_FORNECEDOR', ['PESSOA_FORNECEDOR_CODIGO', 'CODFABRICA']);
end;

procedure TBancoEstrutura.CarregarMetaDados;
var
  QuerX: TFDQuery;
begin
  FTabelas.Clear;
  QuerX := GeraFDQuery;
  try
    QuerX.FetchOptions.Mode := fmAll;
    QuerX.SQL.Text := 'select RDB$RELATION_NAME ' +
                      'from RDB$RELATIONS ' +
                      'where not (RDB$RELATION_NAME like ''%$%'')';
    QuerX.Open;
    FTabelas.Capacity := QuerX.RecordCount;
    while not QuerX.Eof do
    begin
      AddTabela.Nome := Trim(QuerX.Fields[0].AsString);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
  FMetaDadosCarregados := True;
  BancoEstruturaCarregaEstruturaFilhos;
end;

procedure TBancoEstrutura.Clear;
begin
  FTabelas.Clear;
end;

constructor TBancoEstrutura.CreatePrivate;
begin
  FListaErros   := TStringList.Create;
  FListaUniques := TObjectList<TBancoEstruturaUniqueKey>.Create;
  FListaForeignKeys := TObjectList<TBancoEstruturaForeignKey>.Create;
  FTabelas := TObjectList<TBancoTabela>.Create;
  CarregaListaUniques;
  CarregaListaForeignKeys;
end;

destructor TBancoEstrutura.Destroy;
begin
  FListaUniques.Free;
  FListaForeignKeys.Free;
  FListaErros.Free;
  FTabelas.Free;
  inherited;
end;

procedure TBancoEstrutura.DoCheckMetaDados;
begin
  if not FMetaDadosCarregados then
    CarregarMetaDados;
end;

function TBancoEstrutura.GetTabelas: TObjectList<TBancoTabela>;
begin
  DoCheckMetaDados;
  Result := FTabelas;
end;

class procedure TBancoEstrutura.ReleaseInstance;
begin
  FreeAndNil(FBancoEstrutura);
end;

class procedure TBancoEstrutura.ValidarEstrutura(AListaErros: TStrings);
var
  ABanco: TBancoEstrutura;
begin
  ABanco := TBancoEstrutura.Create;
  try
    ABanco.ValidarUniques;
    ABanco.ValidarForeignKeys;

    AListaErros.Text := ABanco.ListaErros.Text;
  finally
    ABanco.Free;
  end;
end;

procedure TBancoEstrutura.ValidarForeignKeys;
var
  AForeignKey: TBancoEstruturaForeignKey;
begin
  for AForeignKey in FListaForeignKeys do
  begin
    if not ExisteConstraint(AForeignKey.FKName) then
      FListaErros.Add('- A ForeignKey "' + AForeignKey.FKName + '" não foi encontrada na tabela "' + AForeignKey.Tabela + '"');
  end;
end;

procedure TBancoEstrutura.ValidarUniques;
var
  AUnique: TBancoEstruturaUniqueKey;
begin
  for AUnique in FListaUniques do
  begin
    if not ExisteConstraint(AUnique.UniqueName) then
      FListaErros.Add('- A UniqueKey "' + AUnique.UniqueName + '" não foi encontrada na tabela "' + AUnique.Tabela + '"');
  end;
end;

procedure ProdutoArrumarEstoqueProducaoExecutar(t: TProdutoArrumarEstoqueProducao);
begin
  if ShowMessageWR('Deseja realmente ajustar o estoque a partir do dia ' + DateToStr(t.DtInicial) + '? Esta operação ' +
     'é irreversível!!!', MB_ICONQUESTION) <> mrYes then
    Exit;
{  if FFrmAguarde <> nil then
    FFrmAguarde.Show;      }
  DM_ProdutoArrumarEstoqueProducaoBuscaItensProdutoMovimento(t);
  DM_ProdutoArrumarEstoqueProducaoAplicaAlteracoesEstoque(t);
  ComitaTransacao(t.FTransa);
 { if FFrmAguarde <> nil then
    FFrmAguarde.Close;      }
  ShowMessageWR('Concluído');
end;

function BancoEstruturaTableByName(const ANomeTabela: string): TBancoTabela;
var
  I: Integer;
begin
  try
    for I := 0 to BancoEstrutura.Tabelas.Count - 1 do
    begin
      if AnsiSameText(BancoEstrutura.Tabelas[i].Nome, ANomeTabela) then
        Exit(BancoEstrutura.Tabelas[i]);
    end;
  except  end;
  Result := nil;
end;

procedure BancoEstruturaCarregaEstruturaFilhos;
begin
  with BancoEstruturaTableByName('NF_ENTRADA') do
  begin
    with AddFilho(BancoEstruturaTableByName('NF_ENTRADA_PRODUTOS')) do
      AddFilho(BancoEstruturaTableByName('NF_ENTRADA_PRODUTOS_CUSTO_AD'));

    //TODO: Ativar esta linha quando o Centro de Trabalho estiver funcionando na NF_Entrada
    //AddFilho(BancoEstruturaTableByName('NF_ENTRADA_CENTRO_TRABALHO'));
    AddFilho(BancoEstruturaTableByName('NF_ENTRADA_PARCELAS'));
  end;

  with BancoEstruturaTableByName('VENDA') do
  begin
    with AddFilho(BancoEstruturaTableByName('VENDA_PRODUTO')) do
    begin
      AddFilho(BancoEstruturaTableByName('VENDA_PRODUTO_CUSTO_ADICIONAL'));
      AddFilho(BancoEstruturaTableByName('VENDA_PRODUTO_CENTRO_TRABALHO'));
    end;
    AddFilho(BancoEstruturaTableByName('VENDA_FINANCEIRO'));
  end;

  with BancoEstruturaTableByName('PRODUTO') do
  begin
    AddFilho(BancoEstruturaTableByName('PRODUTO_COMPOSICAO'));
    AddFilho(BancoEstruturaTableByName('PRODUTO_CUSTO_ADICIONAL'));
    AddFilho(BancoEstruturaTableByName('PRODUTO_CENTRO_TRABALHO'));
    AddFilho(BancoEstruturaTableByName('PRODUTO_ESTOQUE'));
    AddFilho(BancoEstruturaTableByName('PRODUTO_MOVIMENTO'));
    AddFilho(BancoEstruturaTableByName('PRODUTO_PRECO'));
    AddFilho(BancoEstruturaTableByName('PRODUTO_FORNECEDOR'));
  end;

  with BancoEstruturaTableByName('PRODUCAO') do
  begin
   // AddFilho(BancoEstruturaTableByName('PRODUCAO_ANEXO'));  deleteda
    AddFilho(BancoEstruturaTableByName('PRODUCAO_CENTRO_TRABALHO'));
    AddFilho(BancoEstruturaTableByName('PRODUCAO_CUSTO_ADICIONAL'));
//    with AddFilho(BancoEstruturaTableByName('PRODUCAO')) do
    begin
//      AddFilho(BancoEstruturaTableByName('PRODUCAO_OS_RECURSO'));
//      AddFilho(BancoEstruturaTableByName('PRODUCAO_OS_TEMPO'));
    end;
  end;

  with BancoEstruturaTableByName('PESSOAS') do
  begin
    AddFilho(BancoEstruturaTableByName('PESSOAS_CONTATO'));
    AddFilho(BancoEstruturaTableByName('PESSOAS_PRODUTO'));
    AddFilho(BancoEstruturaTableByName('PESSOAS_REPRESENTANTE'));
    AddFilho(BancoEstruturaTableByName('FUNCIONARIO_ANOTACOES'));
    AddFilho(BancoEstruturaTableByName('FUNCIONARIO_BENEFICIARIO'));
    AddFilho(BancoEstruturaTableByName('FUNCIONARIO_DEMISSAO'));
    AddFilho(BancoEstruturaTableByName('FUNCIONARIO_FERIAS'));
    AddFilho(BancoEstruturaTableByName('FUNCIONARIO_FUNCAO'));
    AddFilho(BancoEstruturaTableByName('FUNCIONARIO_HORARIO'));
    AddFilho(BancoEstruturaTableByName('FUNCIONARIO_PENSAO'));
    AddFilho(BancoEstruturaTableByName('FUNCIONARIO_SALARIO'));
    AddFilho(BancoEstruturaTableByName('CLIENTES_EQUIPAMENTO'));
    AddFilho(BancoEstruturaTableByName('CLIENTES_PRODUTO'));
    AddFilho(BancoEstruturaTableByName('CLIENTES_SPC'));
    //AddFilho(BancoEstruturaTableByName('CLIENTES_VEICULO'));   // essa tabela não existe
  end;
end;

initialization

finalization
  TControleUnidades.ReleaseInstance;

end.



