unit CadBalanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, CadMestre, IBX.IBCustomDataSet,
  DB, IBX.IBStoredProc, IBX.IBDatabase, ExtCtrls, ComCtrls, cxEdit, StdCtrls, DBCtrls, Buttons, Gradient, cxGraphics,
  cxGridCustomTableView, Menus, IBX.IBQuery, cxCurrencyEdit, cxButtonEdit, DBGrids, cxGridLevel, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDropDownEdit, Grids, Mask, UCHist_WRGeral, UnitFuncoes, wrFuncoes, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, cxContainer, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxLabel, cxTextEdit, cxMaskEdit, cxClasses, cxGridCustomView, cxDBNavigator,
  DataModuleImpressao, frxClass, frxDBSet, dxCore, cxDateUtils, cxCalendar, uBalanco, uControleWR,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, WREventos,
  System.Generics.Collections, cxButtons, cxDBEdit, dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, Aguarde;
type
  TFrmBalanco = class(TFrmCadMestre)
    Balanco: TIBDataSet;
    cxGrid1: TcxGrid;
    cxGridBalanco: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Balanco_Produtos: TIBDataSet;
    DS_Balanco_Produto: TDataSource;
    Balanco_ProdutosCODBALANCO: TIntegerField;
    Balanco_ProdutosCODPRODUTO: TIBStringField;
    Balanco_ProdutosQUANT: TFloatField;
    cxGridBalancoCODPRODUTO: TcxGridDBColumn;
    cxGridBalancoQUANT: TcxGridDBColumn;
    cxGridBalancoDESCRICAO: TcxGridDBColumn;
    Consulta_Produto: TIBQuery;
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
    BitBtn9: TBitBtn;
    Balanco_ProdutosSaldo: TFloatField;
    Soma_Balanco: TIBQuery;
    cxGridBalancoSaldo: TcxGridDBColumn;
    cxGridBalancoESTOQUE: TcxGridDBColumn;
    Estoque_Produto: TIBDataSet;
    Estoque_ProdutoCODPRODUTO: TIBStringField;
    Estoque_ProdutoESTOQUE: TFloatField;
    Estoque_ProdutoCODEMPRESA: TIBStringField;
    DSEstoque_Produto: TDataSource;
    cxGridBalancoVALOR: TcxGridDBColumn;
    Balanco_ProdutosTotal: TFloatField;
    cxGridBalancoTotal: TcxGridDBColumn;
    Balanco_ProdutosEstoque_Valor: TFloatField;
    cxGridBalancoEstoque_Valor: TcxGridDBColumn;
    OpenDialog1: TOpenDialog;
    RichEdit1: TRichEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Balanco_Titulo: TIBDataSet;
    DSBalanco_Titulo: TDataSource;
    BitBtn13: TBitBtn;
    PopupMenu1: TPopupMenu;
    ColetordeDados1: TMenuItem;
    AtualizarEstoqueCorreaodasdivergencias1: TMenuItem;
    N1: TMenuItem;
    AgruparAgrupatodasoslocais1: TMenuItem;
    N2: TMenuItem;
    BitBtn10: TBitBtn;
    Panel4: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Balanco_TituloCODIGO: TIBStringField;
    Balanco_TituloDATA: TDateTimeField;
    cxGridDBTableView2CODIGO: TcxGridDBColumn;
    cxGridDBTableView2DATA: TcxGridDBColumn;
    ConsultarBalanosAntigos1: TMenuItem;
    BalancoCODIGO: TIntegerField;
    BalancoCODBALANCO_TITULO: TIBStringField;
    BalancoDATA: TDateTimeField;
    BalancoDT_ATUALIZACAO: TDateTimeField;
    BalancoDT_GUARDAR_VALORES: TDateTimeField;
    BalancoCODUSUARIO: TIntegerField;
    Transa_Titulo: TIBTransaction;
    Balanco_ProdutosCODBALANCO_TITULO: TIBStringField;
    Panel5: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    N3: TMenuItem;
    Balanco_ProdutosESTOQUE: TFloatField;
    Balanco_ProdutosVALOR: TFloatField;
    Produtos_Nao_Contados: TIBQuery;
    IBStringField1: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    IBStringField8: TIBStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    FloatField10: TFloatField;
    IBStringField12: TIBStringField;
    FloatField11: TFloatField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    FloatField14: TFloatField;
    IBStringField19: TIBStringField;
    FloatField15: TFloatField;
    IBStringField20: TIBStringField;
    PopupMenu_CadastroProduto: TPopupMenu;
    CadastrodeProduto1: TMenuItem;
    Produtoscomestoquenegativos1: TMenuItem;
    ComboLocal: TcxComboBox;
    Label11: TLabel;
    BalancoESTOQUE_LOCAL: TIBStringField;
    PanelLocalEstoque: TPanel;
    Gradient5: TGradient;
    Label12: TLabel;
    ComboLocal2: TcxComboBox;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Balanco_Produtos_Divegencias: TIBDataSet;
    LocalizarasPreteleirasdoproduto1: TMenuItem;
    Panel3: TPanel;
    LblCodProdutoÎProdutoÎDESCRICAO: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EdtCodProdutoÎProduto: TcxButtonEdit;
    CEdit1: TcxCurrencyEdit;
    CheckBox1: TCheckBox;
    BitBtn14: TBitBtn;
    BitBtn8: TBitBtn;
    UCHistWRGeral1: TUCHistWRGeral;
    Balanco_ProdutosDESCRICAO: TIBStringField;
    Gradient6: TGradient;
    BalancoDESCRICAO: TIBStringField;
    N4: TMenuItem;
    EnviarparaCodigodeBarras1: TMenuItem;
    Balanco_ProdutosCODFABRICA: TIBStringField;
    frxBalanco_Produtos: TfrxDBDataset;
    frxBalanco: TfrxDBDataset;
    frxBalanco_Titulo: TfrxDBDataset;
    frxEstoque_Produto: TfrxDBDataset;
    frxSoma_Balanco: TfrxDBDataset;
    frxBalanco_Produtos_Divegencias: TfrxDBDataset;
    DefinirValoresparaBalano1: TMenuItem;
    Panel7: TPanel;
    Gradient7: TGradient;
    Label13: TLabel;
    btnGerarEstoqueSintegra: TBitBtn;
    BitBtn16: TBitBtn;
    edtCustoTotalSINTEGRA: TcxCurrencyEdit;
    cxGridBalancoCUSTO: TcxGridDBColumn;
    Balanco_ProdutosATIVO: TIBStringField;
    cxGridBalancoCODFABRICA: TcxGridDBColumn;
    cxGridBalancoATIVO: TcxGridDBColumn;
    Balanco_ProdutosCUSTO: TFloatField;
    WREventosCadastro1: TWREventosCadastro;
    PnlGeraBalancoAntigo: TPanel;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    btnGearBalancoFaltante: TcxButton;
    btnAtualizaEstoque: TBitBtn;
    edtDT_Atualizado: TcxDBTextEdit;
    Balanco_ProdutosUNIDADE: TIBStringField;
    Label3: TLabel;
    cxGridBalancoUNIDADE: TcxGridDBColumn;
    chkConfirmar: TCheckBox;
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ComboEdit1PropertiesChange(Sender: TObject);
    procedure BalancoAfterOpen(DataSet: TDataSet);
    procedure BalancoBeforeClose(DataSet: TDataSet);
    procedure EdtCodProdutoÎProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure Balanco_ProdutosCalcFields(DataSet: TDataSet);
    procedure BalancoBeforeDelete(DataSet: TDataSet);
    procedure CEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Estoque_ProdutoBeforeOpen(DataSet: TDataSet);
    procedure BitBtn6Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ColetordeDados1Click(Sender: TObject);
    procedure AtualizarEstoqueClick(Sender: TObject);
    procedure Agrupar1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConsultarBalanosAntigos1Click(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure Panel4Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Balanco_TituloBeforeOpen(DataSet: TDataSet);
    procedure BitBtn13Click(Sender: TObject);
    procedure Balanco_ProdutosBeforeOpen(DataSet: TDataSet);
    procedure Soma_BalancoBeforeOpen(DataSet: TDataSet);
    procedure CadastrodeProduto1Click(Sender: TObject);
    procedure DSBalanco_TituloStateChange(Sender: TObject);
    procedure BalancoBeforePost(DataSet: TDataSet);
    procedure cxGridBalancoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure Produtoscomestoquenegativos1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure BitBtn11Click(Sender: TObject);
    procedure AtualizarEstoqueCorreaodasdivergencias1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Balanco_ProdutosAfterEdit(DataSet: TDataSet);
    procedure BitBtn5Click(Sender: TObject);
    procedure Balanco_TituloAfterOpen(DataSet: TDataSet);
    procedure EnviarparaCodigodeBarras1Click(Sender: TObject);
    procedure Balanco_TituloBeforeClose(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure btnGerarEstoqueSintegraClick(Sender: TObject);
    procedure DefinirValoresparaBalano1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnGearBalancoFaltanteClick(Sender: TObject);
    procedure GeraBalancoDoDia(AData :TDateTime; LocalEstoque :String);
    procedure btnAtualizaEstoqueClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    FControleWR: TControleWR;
    FInserindo : Boolean;
    procedure AtualizaEstoque;
  public
    AFrmAguarde : TFrmAguarde;
  end;

  TDadosBalancoAutomatico = class
    Descricao : String;
    Data : TDateTime;
  end;

  procedure CriaBalanco(ATipoBalanco: TTipoBalancoAutomatico);
  procedure CriaBalancoFaltantes(AData :TDateTime);

var
  FrmBalanco: TFrmBalanco;

implementation

uses
  Base_Produto, ImpBalanco, ConBalanco, DateUtils, CadProduto_Barras, Principal,
  CadProduto_Movimento, wrConstantes, wrForms, StrUtils, Math, Base, Tag.APP, Tag.Report;

{$R *.dfm}

procedure CriaBalanco(ATipoBalanco: TTipoBalancoAutomatico);
var
  ABalanco : TDadosBalancoAutomatico;
  ADataAtual : TDateTime;
begin
  try
    ADataAtual := DataHoraSys;
    ABalanco   := TDadosBalancoAutomatico.Create;
    FrmBalanco := TFrmBalanco(ConsultaForm(TFrmBalanco));
    try
      //Cria um novo balanço
      FrmBalanco.BitBtn10Click(nil);

      case ATipoBalanco of
          tbaAnual : begin
                       ABalanco.Data := IncYear(ADataAtual, -1);
                       ABalanco.Data := EndOfTheYear(ABalanco.Data);
                       ABalanco.Descricao := 'BALANÇO AUTOMÁTICO ANUAL - ANO DE ' + IntToStr(YearOf(ABalanco.Data));
                     end;
         tbaMensal : begin
                       ABalanco.Data := IncMonth(ADataAtual, -1);
                       ABalanco.Data := EndOfTheMonth(ABalanco.Data);
                       ABalanco.Descricao := 'BALANÇO AUTOMÁTICO MENSAL - ' + AnsiUpperCase(MESES_NOMES[MonthOf(ABalanco.Data)]) +
                                             ' DE ' + IntToStr(YearOf(ABalanco.Data));
                     end;
        tbaSemanal : begin
                       ABalanco.Data := IncWeek(ADataAtual, -1);
                       ABalanco.Data := IncDay(EndOfTheWeek(ABalanco.Data), -1);
                       ABalanco.Descricao := 'BALANÇO AUTOMÁTICO SEMANAL - SEMANA DE ' +
                                             DateTimeToStr(DateOf(IncDay(StartOfTheWeek(ABalanco.Data), -1))) + ' A ' +
                                             DateTimeToStr(DateOf(ABalanco.Data));
                     end;
      end;
      //Agrupar Todos
      FrmBalanco.Agrupar1Click(ABalanco);
      FrmBalanco.Close;
    finally
      FreeAndNil(FrmBalanco);
      ABalanco.Free;
    end;
  except end;
end;

procedure CriaBalancoFaltantes(AData :TDateTime);
var
  ABalanco : TDadosBalancoAutomatico;
  ADataAtual : TDateTime;
begin
  try
    ADataAtual := DataHoraSys;
    ABalanco   := TDadosBalancoAutomatico.Create;
    FrmBalanco := TFrmBalanco(ConsultaForm(TFrmBalanco));
    try
      FrmBalanco.BitBtn10Click(nil);
      ABalanco.Data      := EndOfTheDay(AData);
      ABalanco.Descricao := 'BALANÇO AUTOMÁTICO DIARIO - DIA DE ' +
                           DateTimeToStr(DateOf(StartOfTheDay(ABalanco.Data))) + ' A ' +
                           DateTimeToStr(DateOf(ABalanco.Data));
      FrmBalanco.Agrupar1Click(ABalanco);
      FrmBalanco.Close;
    finally
      FreeAndNil(FrmBalanco);
      ABalanco.Free;
    end;
  finally

  end;
end;

procedure TFrmBalanco.Agrupar1Click(Sender: TObject);
var
  APoint : TBookmark;
begin
  inherited;
  Balanco_Produtos.DisableControls;
  CriaSqlTrans(Transa);
  try
    Quer.SQL.Text := 'DELETE FROM BALANCO WHERE ((CODIGO = -1) or (CODIGO = 0)) AND (CODBALANCO_TITULO LIKE ' + QuotedStr(Balanco.FieldByName('CODBALANCO_TITULO').asString) + ')';
    Quer.ExecSQL;
    Quer.SQL.Text := 'DELETE FROM BALANCO_PRODUTOS WHERE ((CODBALANCO = -1) or (CODBALANCO = 0)) AND (CODBALANCO_TITULO LIKE ' + QuotedStr(Balanco.FieldByName('CODBALANCO_TITULO').asString) + ')';
    Quer.ExecSQL;
  finally
    Quer.Free;
  end;
  try
    Codigo := BalancoCODIGO.AsString;
    APoint := ds.DataSet.GetBookmark;
    if Not Assigned(AFrmAguarde) then
      AFrmAguarde := TFrmAguarde.Create(Self);
    AFrmAguarde.Mensagem := 'Atualizando ! ...';
    AFrmAguarde.Show;
    Application.ProcessMessages;
    AFrmAguarde.ProgressoMaximo := cxGridBalanco.Controller.SelectedRecordCount;
    Transa.Commit;
    Transa.StartTransaction;
    Ds.DataSet.Open;
    if not DS.DataSet.IsEmpty then
    begin
      ds.DataSet.GotoBookmark(APoint);
      if (DS.State = DSBrowse)And(Codigo <> BalancoCODIGO.AsString) then try Balanco.Locate('Codigo',Codigo,[]);except end;
    end;
  except end;
  Balanco.Insert;
  BalancoCODIGO.AsFloat             := 0;
  BalancoCODBALANCO_TITULO.AsString := Balanco_TituloCodigo.asString;

  if (Sender <> nil) and (Sender is TDadosBalancoAutomatico) then
  begin
    BalancoDESCRICAO.AsString := TDadosBalancoAutomatico(Sender).Descricao;
    BalancoDATA.AsDateTime    := TDadosBalancoAutomatico(Sender).Data;
  end else
  begin
    BalancoDESCRICAO.AsString := 'BALANÇO PATRIMONIAL ' + DataHoraSis;
    BalancoDATA.AsDateTime    := DataHoraSys;
  end;
  Soma_Balanco.Open;
  AFrmAguarde.Mensagem := 'Agrupando todos';
  Soma_Balanco.Last;
  AFrmAguarde.ProgressoMaximo := Soma_Balanco.RecordCount;
  Soma_Balanco.First;
  while not Soma_Balanco.Eof do
  begin
    try
      Balanco_Produtos.Insert;
      Balanco_ProdutosCODBALANCO_TITULO.AsString  := BalancoCODBALANCO_TITULO.asString;
      Balanco_ProdutosCODBALANCO.AsString         := BalancoCODIGO.asString;
      Balanco_ProdutosCodProduto.AsString         := Soma_Balanco.FieldByName('CODPRODUTO').AsString;
      Balanco_ProdutosQuant.AsFloat               := Soma_Balanco.FieldByName('Quant').AsFloat;
      Balanco_Produtos.Post;
    except
      Balanco_Produtos.Cancel;
    end;
    Soma_Balanco.Next;
    AFrmAguarde.AvancarProgresso;
    Application.ProcessMessages;
  end;
  AFrmAguarde.Mensagem := 'Atualizados!';
  Sleep(2000);

  AFrmAguarde.Progresso := 0;
  AFrmAguarde.Mensagem := 'Inserindo produtos não contados';
  Consulta_Produto.Close;
  Consulta_Produto.SQL.Text := 'select P.*, E.CODEMPRESA, E.ESTOQUE as ESTOQUE_P, E.CODPRODUTO ' +
                               'from PRODUTO P ' +
                               'left join PRODUTO_ESTOQUE E on (P.CODIGO = E.CODPRODUTO) ' +
                               'where (E.ESTOQUE <> 0) and( P.ATIVO = ''S'') ' +
                               '      and (E.CODEMPRESA = :Emp)';
  Consulta_Produto.Params[0].AsString := EmpresaAtiva;
  Consulta_Produto.Open;
  Consulta_Produto.Last;
  AFrmAguarde.ProgressoMaximo := Consulta_Produto.RecordCount;
  Consulta_Produto.First;
  while not Consulta_Produto.Eof do
  begin
    try
      Balanco_Produtos.Insert;
      Balanco_ProdutosCODBALANCO_TITULO.AsString := BalancoCODBALANCO_TITULO.AsString;
      Balanco_ProdutosCODBALANCO.AsString        := BalancoCodigo.AsString;
      Balanco_ProdutosCodProduto.AsString        := Consulta_Produto.FieldByName('CODIGO').AsString;
      if (Sender <> nil) and (Sender is TDadosBalancoAutomatico) then
        Balanco_ProdutosQuant.AsFloat := Consulta_Produto.FieldByName('ESTOQUE_P').AsFloat
      else
        Balanco_ProdutosQuant.AsFloat := 0;
      Balanco_Produtos.Post;
    except
      Balanco_Produtos.Cancel;
    end;
    Consulta_Produto.Next;
    AFrmAguarde.AvancarProgresso;
    Application.ProcessMessages;
  end;
  Balanco_Produtos.EnableControls;
  ds.DataSet.Post;

  Balanco_Produtos.DisableControls;
  AFrmAguarde.Mensagem := 'Divergências';
  AFrmAguarde.Progresso := 0;
  Application.ProcessMessages;
  Balanco_Produtos.Last;
  AFrmAguarde.ProgressoMaximo := Balanco_Produtos.RecordCount;
  Balanco_Produtos.First;
  Balanco_Produtos_Divegencias.Open;
  while not Balanco_Produtos.Eof do
  begin
    Application.ProcessMessages;
    if Balanco_Produtos.FieldByName('Saldo').AsFloat <> 0 then
    begin
      Balanco_Produtos_Divegencias.Insert;
      Balanco_Produtos_Divegencias.FieldByName('CODBALANCO_TITULO').AsString  := Balanco_TituloCODIGO.asString;
      Balanco_Produtos_Divegencias.FieldByName('CODBALANCO').AsInteger := -1;
      Balanco_Produtos_Divegencias.FieldByName('CodProduto').AsString  := Balanco_ProdutosCODPRODUTO.AsString;
      Balanco_Produtos_Divegencias.FieldByName('Quant').AsFloat        := Balanco_ProdutosQuant.AsFloat;
      Balanco_Produtos_Divegencias.Post;
    end;
    Balanco_Produtos.Next;
    AFrmAguarde.AvancarProgresso;
  end;
  Balanco_Produtos_Divegencias.Close;
  Balanco.Insert;
  BalancoCODIGO.AsFloat             := -1;
  BalancoCODBALANCO_TITULO.AsString := Balanco_TituloCodigo.asString;

  if (Sender <> nil) and (Sender is TDadosBalancoAutomatico) then
  begin
    BalancoDESCRICAO.AsString := 'DIVERGÊNCIAS - ' + TDadosBalancoAutomatico(Sender).Descricao;
    BalancoDATA.AsDateTime    := TDadosBalancoAutomatico(Sender).Data;
  end else
  begin
    BalancoDATA.AsDateTime    := DataHoraSys;
    BalancoDESCRICAO.AsString := 'DIVERGÊNCIAS ' + DataHoraSis;
  end;
  Balanco.Post;
  AFrmAguarde.Mensagem := 'Atualizados!';
  Sleep(2000);
  AFrmAguarde.Close;

  Balanco_Produtos.EnableControls;

  BitBtn2Click(Self);
end;

procedure TFrmBalanco.GeraBalancoDoDia(AData :TDateTime; LocalEstoque :String);
var
  QuerMovimento :TIBQuery;
  QuerProduto: TIBQuery;
begin
  QuerMovimento := GeraQuery;
  QuerProduto   := GeraQuery;
  try
    /////CABEÇALHO///
    BitBtn10.Click; //NOVO BALANCO
    BitBtn1.Click; //NOVO
    Balanco.FieldByName('DESCRICAO').AsString        := 'BALANÇO AUTOMÁTICO DIARIO ' + LocalEstoque + ' - DIA ' +
                                                         DateTimeToStr(DateOf(StartOfTheDay(AData)));
    Balanco.FieldByName('DATA').AsDateTime           :=  AData;
    ComboLocal.Text                                  :=  LocalEstoque;
  ////////////////////
    QuerMovimento.SQL.Text := 'select PM.CODPRODUTO, sum(iif(PM.TIPO_MOVIMENTO = ''S'', QUANT, 0)) as QUANTSAIDA, ' +
                      'sum(iif(PM.TIPO_MOVIMENTO = ''E'', QUANT, 0)) as QUANTENTRADA ' +
                      'from PRODUTO_MOVIMENTO PM ' +
                      'where PM.DATA between :D1 and :D2 and PRODUTO_ESTOQUE_LOCAL = ' +  QuotedStr(LocalEstoque) +
                      ' group by 1 ' +
                      'order by 1';
    QuerMovimento.ParamByName('D1').AsDateTime := AData;
    QuerMovimento.ParamByName('D2').AsDateTime := DataHoraSys;
    QuerMovimento.Open;

    QuerProduto.SQL.Text := 'Select ' + LocalEstoque + ' from Produto_estoque pe where pe.codproduto = :CodProduto';


    QuerMovimento.FetchAll;
    QuerMovimento.First;
    while not QuerMovimento.Eof do
    begin
      QuerProduto.Close;
      QuerProduto.ParamByName('CODPRODUTO').AsString := QuerMovimento.FieldByName('CODPRODUTO').AsString;
      QuerProduto.Open;

      Balanco_Produtos.Insert;
      Balanco_Produtos.FieldByName('CODBALANCO_TITULO').AsString := Balanco.FieldByName('CODBALANCO_TITULO').AsString;
      Balanco_Produtos.FieldByName('CODBALANCO').AsString        := Balanco.FieldByName('CODIGO').AsString;
      Balanco_Produtos.FieldByName('CODPRODUTO').AsString        := QuerMovimento.FieldByName('CODPRODUTO').AsString;
      Balanco_Produtos.FieldByName('QUANT').AsFloat              := QuerProduto.FieldByName(LocalEstoque).AsFloat +
                                                                    QuerMovimento.FieldByName('QUANTSAIDA').AsFloat -
                                                                    QuerMovimento.FieldByName('QUANTENTRADA').AsFloat;
      Balanco_Produtos.Post;
      QuerMovimento.Next;
    end;
  finally
    QuerMovimento.Free;
    QuerProduto.Free;
  end;
  BitBtn2.Click;
end;

procedure TFrmBalanco.AtualizarEstoqueClick(Sender: TObject);
var
  Local : String;
  ACodProduto_Movimento : Integer;
begin
  inherited;
  Local := ComboLocal2.Text;
  PanelLocalEstoque.SendToBack;
  PanelLocalEstoque.Visible := False;
  if DS.State = dsBrowse then
    Balanco.Edit;
  if Not Assigned(AFrmAguarde) then
    AFrmAguarde := TFrmAguarde.Create(Self);
  AFrmAguarde.Mensagem := 'Removendo os negativos';
  AFrmAguarde.Progresso:= 0;
  AFrmAguarde.ProgressoMaximo := Balanco_Produtos.RecordCount;
  Balanco_Produtos.DisableControls;
  Balanco_Produtos.First;
  while not Balanco_Produtos.Eof do
  begin
    if Balanco_Produtos.FieldByName('Saldo').AsFloat <> 0 then
    begin
      MovimentaEstoque(Transa,
                       Balanco_ProdutosCODPRODUTO.AsString,
                       EmpresaAtiva,
                       Local,
                       '',
                       DataHoraSys,
                       'Balanço dia : ' + DataHoraSis,
                       Balanco_ProdutosSaldo.AsFloat,
                       0,
                       CodigoUsuario,
                       '',
                       '',
                       0,
                       0,
                       0,
                       'FrmBalanco',
                       'Manual',
                       'Balanço Patrimonial',
                       ACodProduto_Movimento);
    end;
    Balanco_Produtos.Next;
    AFrmAguarde.AvancarProgresso;
    Application.ProcessMessages;
  end;
  AFrmAguarde.Close;
  Balanco_Produtos.EnableControls;
end;

procedure TFrmBalanco.AtualizaEstoque;
var
  Local : String;
  ACodProduto_Movimento : Integer;
begin
  inherited;
  PanelLocalEstoque.SendToBack;
  PanelLocalEstoque.Visible := False;
  if DS.State = dsBrowse then
    Balanco.Edit;
  if Not Assigned(AFrmAguarde) then
    AFrmAguarde := TFrmAguarde.Create(Self);
  Balanco_Produtos.Last;
  AFrmAguarde.Mensagem := 'Atualizando correções de estoque...';
  AFrmAguarde.ProgressoMaximo := Balanco_Produtos.RecordCount;
  AFrmAguarde.Show;
  Balanco_Produtos.DisableControls;
  cxGrid1.Enabled:=False;
  try
    Balanco_Produtos.First;
    while not Balanco_Produtos.Eof do
    begin
      if Balanco_Produtos.FieldByName('Saldo').AsFloat <> 0 then
      begin
        MovimentaEstoque(Transa,
                         Balanco_ProdutosCODPRODUTO.AsString,
                         EmpresaAtiva,
                         Balanco.FieldByName('ESTOQUE_LOCAL').AsString,
                         '',
                         DataHoraSys,
                         'Balanço dia : ' + DataHoraSis,
                         Balanco_ProdutosSaldo.AsFloat,
                         0,
                         CodigoUsuario,
                         '',
                         '',
                         0,
                         0,
                         0,
                         'FrmBalanco',
                         'Manual',
                         'Balanço Patrimonial',
                         ACodProduto_Movimento);
      end;
      Balanco_Produtos.Next;
      AFrmAguarde.AvancarProgresso;
      Application.ProcessMessages;
    end;
    Balanco.FieldByName('DT_ATUALIZACAO').AsDateTime := DataHoraSys;
  finally
    cxGrid1.Enabled:=True;
  end;
  Balanco_Produtos.EnableControls;
  AFrmAguarde.Close;
end;

procedure TFrmBalanco.AtualizarEstoqueCorreaodasdivergencias1Click(Sender: TObject);
begin
  inherited;
  ComboLocal2.Text := 'PRINCIPAL';
  PanelLocalEstoque.BringToFront;
  PanelLocalEstoque.Visible := True;
end;

procedure TFrmBalanco.BalancoAfterOpen(DataSet: TDataSet);
var
  QuerX : TIBQuery;
begin
  inherited;
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select DESCRICAO from PRODUTO_ESTOQUE_LOCAL';
    QuerX.Open;
    ComboLocal.Properties.Items.Clear;
    ComboLocal2.Properties.Items.Clear;
    while not QuerX.Eof do
    begin
      ComboLocal.Properties.Items.Add(QuerX.Fields[0].AsString);
      ComboLocal2.Properties.Items.Add(QuerX.Fields[0].AsString);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
  Balanco_Produtos.Open;
end;

procedure TFrmBalanco.BalancoBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Balanco_Produtos.Close;
end;

procedure TFrmBalanco.BalancoBeforeDelete(DataSet: TDataSet);
var
  QuerX : TIBQuery;
begin
  inherited;
  QuerX := GeraQuery(Transa);
  try
    QuerX.SQL.Text := 'delete from BALANCO_PRODUTOS ' +
                      'where (CODBALANCO = :CodBalanco) ' +
                      '      and (CODBALANCO_TITULO = :CodBalancoTitulo)';
    QuerX.ParamByName('CodBalanco').AsInteger      := BalancoCODIGO.AsInteger;
    QuerX.ParamByName('CodBalancoTitulo').AsString := BalancoCODBALANCO_TITULO.AsString;
    QuerX.ExecSQL;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmBalanco.BalancoBeforePost(DataSet: TDataSet);
begin
  inherited;
  BalancoCODBALANCO_TITULO.AsString := Balanco_TituloCodigo.AsString;
end;

procedure TFrmBalanco.Balanco_ProdutosAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if Balanco.State = DsBrowse then
    Balanco.Edit;
end;

procedure TFrmBalanco.Balanco_ProdutosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if ComboLocal.Text <> '' then
    Balanco_Produtos.SelectSQL[1] := ',E.' + ComboLocal.Text + ' AS ESTOQUE'
  else
    Balanco_Produtos.SelectSQL[1] := ',E.PRINCIPAL AS ESTOQUE';
  Balanco_Produtos.ParamByName('Emp').AsString := EmpresaAtiva;
end;

procedure TFrmBalanco.Balanco_ProdutosCalcFields(DataSet: TDataSet);
begin
  inherited;
  Balanco_ProdutosSaldo.AsFloat         := Balanco_ProdutosQUANT.AsFloat - Balanco_ProdutosESTOQUE.AsFloat;
  Balanco_ProdutosTotal.AsFloat         := Balanco_ProdutosSaldo.AsFloat * Balanco_ProdutosCUSTO.AsFloat;
  Balanco_ProdutosEstoque_Valor.AsFloat := Balanco_ProdutosQUANT.AsFloat * Balanco_ProdutosCUSTO.AsFloat;
end;

procedure TFrmBalanco.Balanco_TituloAfterOpen(DataSet: TDataSet);
begin
  Panel1.Enabled := not Balanco_Titulo.IsEmpty;
  Balanco.Open;
  Balanco_Produtos.Open;
end;

procedure TFrmBalanco.Balanco_TituloBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Balanco.Close;
  Balanco_Produtos.Close;
end;

procedure TFrmBalanco.Balanco_TituloBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  LimpaSQLWhere(Balanco_Titulo);
//  if MultiEmpresa then
//    Balanco_Titulo.SelectSQL[1] := 'where (CODIGO like ' + QuotedStr('%-' + EmpresaAtiva) + ')';
  {if MultiEmpresa then
  begin
    Balanco_Titulo.SelectSQL.Add('where (substring(B.CODIGO ' +
                                 'from (position(''-'' in B.CODIGO) + 1) ' +
                                 '     for char_length(B.CODIGO)) = ' + QuotedStr(EmpresaAtiva) + ')');
    if EmpresaAtiva = '1' then
      Balanco_Titulo.SelectSQL.Add('or position(''-'' in B.CODIGO) = 0');
  end else
  begin
    Balanco_Titulo.SelectSQL.Add('where (substring(B.CODIGO ' +
                                 'from (position(''-'' in B.CODIGO) + 1) ' +
                                 '     for char_length(B.CODIGO)) = ' + QuotedStr(EmpresaAtiva) + ')')
  end; }
  if Codigo <> '' then
    Balanco_Titulo.SelectSQL.Add('where B.CODIGO = :CodBalanco_Titulo');
  Balanco_Titulo.SelectSQL.Add('order by B.DATA');
  if Codigo <> '' then
    Balanco_Titulo.ParamByName('CodBalanco_Titulo').AsString := Codigo;
  DebugSalvaSQLBeforeOpen(Balanco_Titulo);
end;

procedure TFrmBalanco.BitBtn10Click(Sender: TObject);
begin
  inherited;
  if not Self.Visible or (ShowMessageWR('Deseja criar um novo Balanço?', MB_ICONQUESTION) = mrYes) then
  begin
    if not Transa_Titulo.InTransaction then
      Transa_Titulo.StartTransaction;
    VerificaGenerator(SpA.StoredProcName);
    SpA.ExecProc;
    Balanco_Titulo.Insert;
    if MultiEmpresa then
      Balanco_TituloCODIGO.AsString := SpA.Params[0].asString + '-' + EmpresaAtiva
    else
      Balanco_TituloCODIGO.AsString := SpA.Params[0].asString;
    Balanco_TituloDATA.AsDateTime   := DataHoraSys;
    Balanco_Titulo.Post;
    Codigo := Balanco_TituloCODIGO.AsString;
    Transa_Titulo.Commit;
    Transa_Titulo.StartTransaction;
    Balanco_Titulo.Open;
    Balanco_Titulo.Locate('CODIGO', Codigo, []);
    Balanco.Close;
    Balanco.Open;
  end;
end;

procedure TFrmBalanco.BitBtn11Click(Sender: TObject);
begin
  inherited;
  ComboLocal2.Text := 'PRINCIPAL';
  PanelLocalEstoque.BringToFront;
  PanelLocalEstoque.Visible := True;
end;

procedure TFrmBalanco.BitBtn12Click(Sender: TObject);
begin
  inherited;
  PanelLocalEstoque.SendToBack;
  PanelLocalEstoque.Visible := False;
end;

procedure TFrmBalanco.BitBtn13Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Panel1.Width, BitBtn13.Top);
end;

procedure TFrmBalanco.BitBtn14Click(Sender: TObject);
begin
  inherited;
  if not Balanco_Produtos.IsEmpty then
    Balanco_Produtos.Delete;
  if Balanco.State = DsBrowse then
    Balanco.Edit;
end;

procedure TFrmBalanco.btnGerarEstoqueSintegraClick(Sender: TObject);
Var
  APercentual, ASoma: Real;
  Inteiro, Decimais :Integer;
begin
  inherited;
  Mostrar(Panel7);
  BitBtn3Click(Self);
  if Not Assigned(AFrmAguarde) then
    AFrmAguarde := TFrmAguarde.Create(Self);
  AFrmAguarde.Mensagem := 'Removendo os negativos';
  AFrmAguarde.Progresso := 0;
  AFrmAguarde.ProgressoMaximo := Balanco_Produtos.RecordCount;
  AFrmAguarde.Show;

  Balanco_Produtos.DisableControls;
  Balanco_Produtos.First;
  while not Balanco_Produtos.Eof do
  begin
    try
      if Balanco_ProdutosESTOQUE.AsFloat < 0 then
      begin
        Balanco_Produtos.Edit;
        Balanco_ProdutosQuant.AsFloat := -1 * Balanco_ProdutosESTOQUE.AsFloat;
        Balanco_Produtos.Post;
      end;
    except
      Balanco_Produtos.Cancel;
    end;
    Balanco_Produtos.Next;
    AFrmAguarde.AvancarProgresso;
    Application.ProcessMessages;
  end;
  Soma_Balanco.Close;
  Soma_Balanco.Open;
  Soma_Balanco.Last;
  ASoma :=  SomaColuna(cxGridBalanco, cxGridBalancoTotal);
  APercentual := PercRelativo(edtCustoTotalSINTEGRA.value , -1 * ASoma);

  AFrmAguarde.Mensagem := 'ATUALIZANDO VALORES';
  AFrmAguarde.Progresso:= 0;
  Balanco_Produtos.First;
  while not Balanco_Produtos.Eof do
  begin
    try
      Balanco_Produtos.Edit;
      Balanco_ProdutosQUANT.AsFloat := Balanco_ProdutosESTOQUE.AsFloat;

      Inteiro := Trunc(Balanco_ProdutosESTOQUE.AsFloat);
      Decimais:= Trunc((Balanco_ProdutosESTOQUE.AsFloat - Inteiro) * 100);

      if APercentual <> 0 then
      begin
        Balanco_ProdutosQUANT.AsFloat := RoundTo(Balanco_ProdutosESTOQUE.AsFloat * (APercentual/100), - GetCasasDecimaisQuantidade);
        if Decimais = 0 then
          Balanco_ProdutosQuant.AsFloat := RoundTo( Balanco_ProdutosQuant.AsFloat, 0);
      end;
      Balanco_Produtos.Post;
    except
      Balanco_Produtos.Cancel;
    end;
    Balanco_Produtos.Next;
    AFrmAguarde.AvancarProgresso;
    Application.ProcessMessages;
  end;
  Balanco_Produtos.EnableControls;
  AFrmAguarde.Close;
//  ds.DataSet.Post;
  Application.ProcessMessages;
  Ocultar(Panel7);
  BitBtn2Click(Self);
end;

procedure TFrmBalanco.BitBtn16Click(Sender: TObject);
begin
  inherited;
  Panel7.SendToBack;
  Panel7.Visible := False;
end;

procedure TFrmBalanco.BitBtn1Click(Sender: TObject);
begin
  FInserindo := True;
  DS.DataSet.Insert;
  CriaSqlTrans(Transa);
  try
    Quer.Sql.Add('SELECT MAX(cast(CODIGO AS FLOAT)) FROM BALANCO where CODBALANCO_TITULO like '''+Balanco_Titulo.FieldByName('Codigo').AsString+'''');
    Quer.Open;
    BalancoCODIGO.AsFloat := Quer.FieldByName('Max').AsCurrency + 1;
  finally
    Quer.Free;
  end;
  DBEdit2.SetFocusWR;
  BalancoDATA.AsDateTime              := DataHoraSys;
//  Balanco.FieldByName('DT_ATUALIZACAO').AsString    := DBEdit4.Text;
//  Balanco.FieldByName('DT_GUARDAR_VALORES').AsString:= DBEdit4.Text;
  BalancoCODBALANCO_TITULO.AsString := Balanco_TituloCodigo.AsString;
  BalancoCODUSUARIO.AsInteger       := CodigoUsuario;
  ComboLocal.ItemIndex := 0;
  ComboLocal.EditingText := 'PRINCIPAL';
  FInserindo := False;
end;

procedure TFrmBalanco.BitBtn2Click(Sender: TObject);
var
  APoint : TBookmark;
begin
  try
    if Balanco.State in [dsInsert, dsEdit] then
      BalancoESTOQUE_LOCAL.AsString := ComboLocal.Text;
  except end;
  APoint := Balanco_Produtos.GetBookmark;
  inherited;
  EdtCodProdutoÎProduto.SetFocusWR;
  Balanco_Produtos.GotoBookmark(APoint);
end;

procedure TFrmBalanco.BitBtn3Click(Sender: TObject);
begin
  inherited;
  EdtCodProdutoÎProduto.SetFocusWR;
end;

procedure TFrmBalanco.BitBtn5Click(Sender: TObject);
var
  QuerX : TIBQuery;
begin
  if not DS.DataSet.IsEmpty Then
  begin
    if ShowMessageWR('Deseja excluir esta Prateleira?', MB_ICONQUESTION) = mrYes then
    begin
      QuerX := GeraQuery(Transa);
      try
        QuerX.SQL.Text := 'delete from BALANCO_PRODUTOS ' +
                          'where (CODBALANCO = :CodBalanco) ' +
                          '      and (CODBALANCO_TITULO = :CodBalancoTitulo)';
        QuerX.ParamByName('CodBalanco').AsString       := Balanco_ProdutosCODBALANCO.AsString;
        QuerX.ParamByName('CodBalancoTitulo').AsString := Balanco_ProdutosCODBALANCO_TITULO.AsString;
        QuerX.ExecSQL;
      finally
        QuerX.Free;
      end;
      ds.DataSet.Delete;
      Transa.Commit;
      Transa.StartTransaction;
      ds.DataSet.Open;
    end;
  end else
    ShowMessageWR('Nenhuma Prateleira Selecionada');
end;

procedure TFrmBalanco.BitBtn6Click(Sender: TObject);
begin
  inherited;
  Balanco_Titulo.Close;
//  Consulta(TConsuBalanco, Self);
  ConsultaModal(TConsuBalanco, Self);
  Balanco_Titulo.Open;
end;

procedure TFrmBalanco.BitBtn8Click(Sender: TObject);

begin
  inherited;
  if BalancoCODIGO.AsString = '' then
    BitBtn1Click(Nil);
  if Balanco.State = DsBrowse then
    Balanco.Edit;
  if not (CEdit1.Value > 0) then
  begin
    if MessageDlg('Deseja colocar o produto com quantidade 0(ZERO)?', mtInformation, [mbYes, mbNo], 0) = mrNo then
    begin
      CEdit1.SetFocus;
      Exit;
    end;
  end;
//  If (Label3.Caption='') Then
//  begin
   // ComboEdit1.Text := Copy(ComboEdit1.Text, 1, Length(ComboEdit1.Text) - 1);
    if (LblCodProdutoÎProdutoÎDESCRICAO.Caption = '') Then
    begin
      Panel3.Color := clRed;
      ShowMessageWR('Produto NÃO Localizado!!!!!');// + sLineBreak + 'Deseja Incluí-lo no Balanço?');
      EdtCodProdutoÎProduto.SetFocusWR;
      Exit;
    end;
//  end;
{  If CEdit2.Value=0 Then
  begin
    ShowMessage('Coloque o Valor');
    CEdit2.SetFocus;
    Exit;
  end; }
  if EdtCodProdutoÎProduto.Text <> '' then
  begin
    if Balanco_Produtos.Locate('CODPRODUTO', EdtCodProdutoÎProduto.Text, []) then
    begin
      Balanco_Produtos.Edit;
      if CheckBox1.Checked then
        Balanco_ProdutosQUANT.AsFloat := Balanco_ProdutosQUANT.AsFloat - CEdit1.Value
      else
        Balanco_ProdutosQUANT.AsFloat := Balanco_ProdutosQUANT.AsFloat + CEdit1.Value;
      Balanco_Produtos.Post
    end else
    begin
      Balanco_Produtos.Insert;
      Balanco_ProdutosCODBALANCO.asString        := BalancoCODIGO.asString;
      Balanco_ProdutosCodProduto.AsString        := EdtCodProdutoÎProduto.Text;
      Balanco_ProdutosDESCRICAO.AsString         := LblCodProdutoÎProdutoÎDESCRICAO.Caption;
      Balanco_ProdutosCODBALANCO_TITULO.AsString := BalancoCODBALANCO_TITULO.asString;
      if CheckBox1.Checked then
        Balanco_ProdutosQUANT.AsFloat  := -CEdit1.Value
      else
        Balanco_ProdutosQUANT.AsString := CEdit1.Text;
      Balanco_Produtos.Post;
    end;
    Panel3.Color := clLime;
  end;
  CEdit1.Clear;
  EdtCodProdutoÎProduto.Clear;
  EdtCodProdutoÎProduto.SetFocus;
  if chkConfirmar.Checked then
  begin
    BitBtn2Click(nil);
  end;
end;

procedure TFrmBalanco.BitBtn9Click(Sender: TObject);
begin
  inherited;
//  if not DMImpressaoImprimirPorNome(Self, 'Balanço', Sender, True) then
  if not DMImpressao.ImprimirTag(Self, Tag_Report_Balanco) then
  begin
    Application.CreateForm(TImpriBalanca, ImpriBalanca);
    try
      ImpriBalanca.Show;
    finally
      ImpriBalanca.Free;
    end;
  end;
end;

procedure TFrmBalanco.btnAtualizaEstoqueClick(Sender: TObject);
begin
  inherited;
  if ShowMessageWR('Deseja atualizar estoque?', MB_ICONQUESTION) = mrYes then
    AtualizaEstoque;
end;

procedure TFrmBalanco.btnGearBalancoFaltanteClick(Sender: TObject);
var
  QuerX : TIBQuery;
  ADataInicio, Data, AApenasDataInicio, ADataFim :TDateTime;
  Pula, ALocalEstoque :String;
  Dias, I :Integer;
begin
  inherited;
  QuerX := GeraQuery;
  if ComboLocal2.Text = '' then
  begin
    ShowMessage('Preencher o Local de Estoque');
    Exit;
  end;
  ALocalEstoque := ComboLocal2.Text;
  ADataInicio   := cxDateEdit2.Date;
  ADataFim      := cxDateEdit3.Date;
  try
    QuerX.SQL.Text := 'select DATA from BALANCO_TITULO where DATA between :D1 and :D2';
    QuerX.ParamByName('D1').AsDateTime :=  StartOfTheDay(ADataInicio);
    QuerX.ParamByName('D2').AsDateTime :=  EndOfTheDay(ADataFim);
    QuerX.Open;
    Dias := DaysBetween(ADataInicio, ADataFim);
    for I := 0 to Dias do
    begin
      Data := EndOfTheDay(IncDay(ADataInicio, I));
      Pula := 'N';
      AApenasDataInicio := DateOf(Data);
      QuerX.First;
      while not QuerX.Eof do
      begin
        if AApenasDataInicio = DateOf(QuerX.FieldByName('DATA').AsDateTime) then
          Pula := 'S';
        QuerX.Next;
      end;
      if Pula = 'N' then
        GeraBalancoDoDia(Data, ALocalEstoque);
//        CriaBalancoFaltantes(Data);
    end;
  finally
    QuerX.Free;
  end;

end;

procedure TFrmBalanco.CadastrodeProduto1Click(Sender: TObject);
begin
  inherited;
  TFrmProduto.Create(self).ShowCadastroModalItem(0, Balanco_ProdutosCODPRODUTO.AsString);
end;

procedure TFrmBalanco.CEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    BitBtn8.Click;
end;

procedure TFrmBalanco.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if CheckBox1.Checked then
    CheckBox1.Caption := 'Devolução'
  else
    CheckBox1.Caption := 'Quantidade';
end;

procedure TFrmBalanco.ColetordeDados1Click(Sender: TObject);
var
  Email, Linha, Val: String;
  Margem : Real;
  I, j, n: integer;
  codigo: String;
  Cod,Referencia,Descricao,Ref_Fornecedor,Cor,Tamanho,Aspa: String;
begin
  inherited;
  OpenDialog1.FileName  :=  '';
  OpenDialog1.Title := 'Selecione o Arquivo do Coletor';
  OpenDialog1.DefaultExt := '*.TXT';
  OpenDialog1.Filter := 'Arquivos TXT|*.TXT|Todos os Arquivos (*.*)|*.*';
  if OpenDialog1.Execute then
  begin
    RichEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
    i:=0;
    while i <= RichEdit1.Lines.Count do
    begin
      Try
        if Copy(RichEdit1.Lines.Strings[i],1,1)='!' then
        begin
          EdtCodProdutoÎProduto.Text:=Trim(Copy(RichEdit1.Lines.Strings[i],2,13));
          CEdit1.Text    :=Copy(RichEdit1.Lines.Strings[i],15,6);
          BitBtn8.Click;
        end;
      Finally
      End;
      Inc(i);
    End;
  end;
end;

procedure TFrmBalanco.EdtCodProdutoÎProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//var
//  Codigo_Limpo: TCodBarras;
begin
  inherited;
  If (Key = 13)  then
  begin
//    Codigo_Limpo := Barras_Trata(ComboEdit1.Text);
    Consulta_Produto.Close;
    Consulta_Produto.SQL.Text:=' SELECT P.*, E.CODEMPRESA, E.ESTOQUE AS ESTOQUE_P, E.CODPRODUTO                               ' +
                               ' FROM PRODUTO P                                                                               ' +
                               ' LEFT JOIN PRODUTO_ESTOQUE E ON (P.CODIGO=E.CODPRODUTO) AND (E.CODEMPRESA= '+EmpresaAtiva+ ') ' +
                               ' WHERE (P.CODIGO= ' + QuotedStr(EdtCodProdutoÎProduto.Text) + ')                              ' +
                               '             OR (P.CODFABRICA = ' + QuotedStr(EdtCodProdutoÎProduto.Text) + ')                ' +
                               '             OR (P.CODIGOEAN = ' + QuotedStr(EdtCodProdutoÎProduto.Text) + ')                 ' +
                               '        AND (ATIVO= ''S'')                                                                    ' +
                               ' ORDER BY P.DESCRICAO';
    Consulta_Produto.Open;
    Consulta_Produto.FetchAll;
    if Consulta_Produto.IsEmpty then
    begin

      Consulta_Produto.Close;
      Consulta_Produto.SQL.Text:=' SELECT P.*, E.CODEMPRESA, E.ESTOQUE AS ESTOQUE_P, E.CODPRODUTO                               ' +
                                 ' FROM PRODUTO P                                                                               ' +
                                 ' LEFT JOIN PRODUTO_ESTOQUE E ON (P.CODIGO=E.CODPRODUTO) AND (E.CODEMPRESA= '+EmpresaAtiva+ ') ' +
                                 ' WHERE (P.CODIGO= ' + QuotedStr(EdtCodProdutoÎProduto.Text) + ')                                         ' +
                                 '             OR (P.CODFABRICA = ' + QuotedStr(EdtCodProdutoÎProduto.Text) + ')                           ' +
                                 '             OR (P.DESCRICAO LIKE ' + QuotedStr('%' + EdtCodProdutoÎProduto.Text + '%') + ')             ' +
                                 '        AND (ATIVO= ''S'')                                                                    ' +
                                 ' ORDER BY P.DESCRICAO';

      Consulta_Produto.Open;
      Consulta_Produto.FetchAll;
    end;
    if Consulta_Produto.RecordCount > 1 then
      MostrarGridAbaixoDe(DBGrid2, EdtCodProdutoÎProduto)
    else
    if Consulta_Produto.RecordCount = 1 then
    begin
      if Length(EdtCodProdutoÎProduto.Text) = 13 then
      begin
        EdtCodProdutoÎProduto.Text := Consulta_Produto.FieldByName('codigo').AsString;
        if Balanco_Produtos.Locate('codproduto', Consulta_Produto.FieldByName('codigo').AsString, []) then
        begin
          Balanco_Produtos.Edit;
          if CheckBox1.Checked then
            Balanco_ProdutosQuant.AsInteger := Balanco_ProdutosQuant.AsInteger - 1
          else
            Balanco_ProdutosQuant.AsInteger := Balanco_ProdutosQuant.AsInteger + 1;
          Balanco_Produtos.Post;
          EdtCodProdutoÎProduto.Clear;
          EdtCodProdutoÎProduto.SetFocusWR;
          Key := 0;
        end else
          BitBtn8.Click;
      end else
        EdtCodProdutoÎProduto.Text := Consulta_Produto.FieldByName('codigo').AsString;
    end else
      BitBtn8.Click;
  end;
end;

procedure TFrmBalanco.ComboEdit1PropertiesChange(Sender: TObject);
begin
  inherited;
  CEdit1.Value := Barras_Trata(EdtCodProdutoÎProduto.Text).Quantidade;

end;

procedure TFrmBalanco.ConsultarBalanosAntigos1Click(Sender: TObject);
begin
  inherited;
  Mostrar(Panel4);
end;

procedure TFrmBalanco.cxGridBalancoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  try
    if AViewInfo.Item.Index = cxGridBalancoDESCRICAO.Index then
      if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGridBalancoDESCRICAO.Index], varString)) = '') then
      begin
        ACanvas.Brush.Color := clRed;
        ACanvas.Font.Color  := clWhite;
      end
      else begin
        ACanvas.Brush.Color := clWhite;
        ACanvas.Font.Color  := clBlack;
      end;
  except end;
end;

procedure TFrmBalanco.cxGridDBTableView2DblClick(Sender: TObject);
begin
  inherited;
  Panel4Exit(Self);
end;

procedure TFrmBalanco.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  Ocultar(DBGrid2);
  EdtCodProdutoÎProduto.Text := Consulta_Produto.FieldByName('Codigo').AsString;
  CEdit1.SetFocus;
end;

procedure TFrmBalanco.DBGrid2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key in [VK_RETURN, VK_UP, VK_DOWN] then DBGrid2.SetFocusWR;
  if Key = VK_RETURN then DBGrid2DblClick(Self);
end;

procedure TFrmBalanco.DefinirValoresparaBalano1Click(Sender: TObject);
begin
  inherited;
  Mostrar(Panel7);
  edtCustoTotalSINTEGRA.SetFocus;
end;

procedure TFrmBalanco.DSBalanco_TituloStateChange(Sender: TObject);
var
  AVisible : Boolean;
begin
  inherited;
  AVisible := (Balanco_Titulo.RecordCount > 0);
  BitBtn1.Visible  := AVisible;
  BitBtn2.Visible  := AVisible;
  BitBtn3.Visible  := AVisible;
  BitBtn4.Visible  := AVisible;
  BitBtn5.Visible  := AVisible;
  BitBtn8.Visible  := AVisible;
  BitBtn9.Visible  := AVisible;
  BitBtn13.Visible := AVisible;
end;

procedure TFrmBalanco.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  ComboLocal.Text := BalancoESTOQUE_LOCAL.AsString;
  cxGridBalanco.OptionsData.Editing := not ((BalancoCODIGO.AsInteger = 0 ) or (BalancoCODIGO.AsInteger = -1));
  Panel3.Enabled := cxGridBalanco.OptionsData.Editing;
end;

procedure TFrmBalanco.DSStateChange(Sender: TObject);
begin
  inherited;
  if (DS.DataSet.State = dsInsert) and not FInserindo then
  begin
    DS.DataSet.Cancel;
    BitBtn1Click(nil);
  end;
  BitBtn9.Enabled    := (ds.DataSet.State = DsBrowse);
  BitBtn10.Enabled   := (ds.DataSet.State = DsBrowse);
  BitBtn13.Enabled   := (ds.DataSet.State = DsBrowse);
  ComboLocal.Enabled := (ds.DataSet.State = dsInsert);
//  btnAtualizaEstoque.Enabled := Balanco.FieldByName('DT_ATUALIZACAO').IsNull;

end;

procedure TFrmBalanco.EnviarparaCodigodeBarras1Click(Sender: TObject);
begin
  inherited;
  if (ShowMessageWR('Deseja criar essa lista de códigos de barras? Essa operação irá apagar a lista antiga.', MB_ICONQUESTION) = idYes) then
  begin
    FrmProduto_Barras := TFrmProduto_Barras.Create(nil);
    with FrmProduto_Barras do
    try
      LockWindowUpdate(Handle);
      If 800 <> Screen.Width then
      begin
        nEscala   := ((Screen.Width - 800) / 800);
        nPorcento := Round((nEscala * 100) + 100);
        Width     := Round(Width * (nEscala + 1));
        ScaleBy(nPorcento,100);
      end;
      CriaSqlTrans(Transa);
      try
        Quer.SQL.Text := 'delete from PRODUTO_BARRAS';
        Quer.ExecSQL;
      finally
        FreeAndNil(Quer);
      end;
      Transa.Commit;
      Produto_Barras.Open;
      Balanco_Produtos.First;
      while not Balanco_Produtos.Eof do
      begin
        if (Trim(Balanco_ProdutosCODFABRICA.AsString) = '') and
            (not (ShowMessageWR('Há produtos cadastrados que não foram inseridos o código de fábrica,' + sLineBreak +
                                'portanto não irá criar o código de barrras. ' + sLineBreak +
                                'Deseja continuar?', MB_ICONQUESTION)= mrYes)) then
          exit;
        Balanco_Produtos.Next;
        end;
      Balanco_Produtos.First;
      while not Balanco_Produtos.Eof do
      begin
        if Trim(Balanco_ProdutosCODFABRICA.AsString) <> '' then
        begin
          try
            Produto_Barras.Insert;
            Produto_BarrasCodigo.AsFloat      := ProximoCodigoTrans(Transa,'PRODUTO_BARRAS');
            Produto_BarrasCodProduto.AsString := Balanco_ProdutosCODPRODUTO.AsString;
            Produto_BarrasCodBarras.AsString  := Balanco_ProdutosCODFABRICA.AsString;
            Produto_BarrasDescricao.AsString  := Balanco_ProdutosDESCRICAO.AsString;
            Produto_BarrasQuant.AsString      := Balanco_ProdutosQUANT.AsString;
            Produto_BarrasVALOR.AsFloat       := Balanco_ProdutosVALOR.AsFloat;
            Produto_Barras.Post;
          except
            Produto_Barras.Cancel;
          end;
        end;
        Balanco_Produtos.Next;
      end;
      Transa.Commit;
      Transa.StartTransaction;
      Produto_Barras.Open;
      Show;
      LockWindowUpdate(0);
      repeat
        try
          Application.HandleMessage;
        except
          Application.HandleException(nil);
        end;
      until not Visible;
    finally
      Destroy;
    end;
  end;
end;

procedure TFrmBalanco.Estoque_ProdutoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Estoque_Produto.ParamByName('Emp').AsString := EmpresaAtiva;
end;

procedure TFrmBalanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Balanco_Titulo.Close;
  if FormStyle = fsMDIChild then
  begin
    Action:=caFree;
    if (FrmPrincipal.dxTabbedMDIManager1.TabProperties.PageCount<3) then
      FrmPrincipal.dxTabbedMDIManager1.TabProperties.HideTabs:=True;
  end;
end;

procedure TFrmBalanco.FormCreate(Sender: TObject);
begin
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
  InicializaSQLWhere(Balanco_Titulo);
  FInserindo := False;
  Balanco_Titulo.Open;
  inherited;
  SPA.StoredProcName := 'GEN' + UpperCase(DSBalanco_Titulo.DataSet.Name) + EmpresaAtiva;
  Balanco_ProdutosSaldo.DisplayFormat       := DecimalQuantidade;
  Balanco_ProdutosESTOQUE.DisplayFormat     := DecimalQuantidade;
  Balanco_ProdutosCUSTO.DisplayFormat       := DecimalFinanceiro;
  Balanco_ProdutosQUANT.DisplayFormat       := DecimalQuantidade;
  Balanco_ProdutosVALOR.DisplayFormat       := DecimalFinanceiro;
end;

procedure TFrmBalanco.FormDestroy(Sender: TObject);
begin
  FControleWR.Free;
  inherited;
end;

procedure TFrmBalanco.FormShow(Sender: TObject);
begin
  inherited;
  //Foi necessário setar os botões para Visible = true
  //porque ao fechar a tela e abrir novamente os botões não apareciam
  BitBtn1.Visible  := True;
  BitBtn2.Visible  := True;
  BitBtn3.Visible  := True;
  BitBtn4.Visible  := True;
  BitBtn5.Visible  := True;
  BitBtn6.Visible  := True;
  BitBtn9.Visible  := True;
  BitBtn13.Visible := True;
  EnviarparaCodigodeBarras1.Visible := AWR_APP[TagAPP_Codigo_Barras].Ativo;
end;

procedure TFrmBalanco.Panel4Exit(Sender: TObject);
begin
  inherited;
  Ocultar(Panel4);
end;

procedure TFrmBalanco.Produtoscomestoquenegativos1Click(Sender: TObject);
begin
  inherited;
  if Not Assigned(AFrmAguarde) then
    AFrmAguarde := TFrmAguarde.Create(Self);
  BitBtn1Click(Self);
  BalancoDESCRICAO.AsString := 'PRODUTOS COM ESTOQUE NEGATIVO E ATIVOS' + DataHoraSis;
  AFrmAguarde.Mensagem := 'PRODUTOS COM ESTOQUE NEGATIVO E ATIVOS...';
  AFrmAguarde.Progresso := 0;
  AFrmAguarde.Show;
  Consulta_Produto.Close;
  Consulta_Produto.SQL.Text:=' SELECT P.*, E.CODEMPRESA, E.ESTOQUE AS ESTOQUE_P, E.CODPRODUTO FROM PRODUTO P '+
                             ' LEFT JOIN PRODUTO_ESTOQUE E ON (P.CODIGO = E.CODPRODUTO) AND (E.CODEMPRESA = '''+EmpresaAtiva+ ''')'+
                             ' WHERE (E.ESTOQUE < 0)and(P.ATIVO = '''+'S'+''')';
  Consulta_Produto.Open;
  Consulta_Produto.Last;
  AFrmAguarde.ProgressoMaximo := Consulta_Produto.RecordCount;
  Consulta_Produto.First;
  while not Consulta_Produto.Eof do
  begin
    try
      Balanco_Produtos.Insert;
      Balanco_ProdutosCODBALANCO_TITULO.asString:= BalancoCODBALANCO_TITULO.asString;
      Balanco_ProdutosCODBALANCO.asString       := BalancoCodigo.asString;
      Balanco_ProdutosCodProduto.AsString       := Consulta_Produto.FieldByName('CODIGO').AsString;
      Balanco_ProdutosQuant.AsFloat             := 0;
      Balanco_Produtos.Post;
    except
      Balanco_Produtos.Cancel;
    end;
    Consulta_Produto.Next;
    AFrmAguarde.AvancarProgresso;
    Application.ProcessMessages;
  end;
  ds.DataSet.Post;
  Application.ProcessMessages;
  AFrmAguarde.Close;
  BitBtn2Click(Self);
end;

procedure TFrmBalanco.Soma_BalancoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Soma_Balanco.ParamByName('Emp').AsString := EmpresaAtiva;
end;

initialization
  RegisterClass(TFrmBalanco);

end.
