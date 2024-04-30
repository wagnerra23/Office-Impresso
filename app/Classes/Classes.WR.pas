unit Classes.WR;

interface

  ///////////////////////////////////////////// DOCUMENTAÇÃO ///////////////////////////////////////////////////////////
  ///  SEÇÃO 1: FOTOS
  ///  SEÇÃO 2: BOLETOS - Configuração
  ///  SEÇÃO 3: PRODUTOS - Classes referente ao cadastro do produto
  ///  SEÇÃO 4: MEDIDAS - Trabalhava com a antiga forma de cálcular as medidas
  ///  SEÇÂO 5: PESSOAS - Cacadastro de tipos e outros
  ///  SEÇÃO 6: ARQUIVOS - Configuração
  ///  SEÇÃO 7: CONFIG - Configuração
  ///  SEÇÃO 8: USUARIO - Configuração
  ///  SEÇÃO 9: DICA - Configuração
  ///  SEÇÃO 10: TEMPO - Configuração
  ///  SEÇÃO 11: DRE - Configuração
  ///  SEÇÃO 12: BANCO - Configuração
  ///  SEÇÃO 13: TConsultaTEC - Configuração

Uses
  Windows, Messages, System.StrUtils, sysutils, Classes, Graphics, Controls, Forms, Dialogs, Db, DBCtrls, Mask, Buttons,
  ComCtrls, IBX.IBQuery, IBX.IBCustomDataSet, IBX.IBDatabase, Registry, Commctrl, ShellAPI, System.DateUtils, ActnList,
  Variants, Menus, IBX.IBSQL, ZIP, Generics.Collections, wrConversao, FireDAC.Comp.Client, FireDAC.Stan.Param, Tlhelp32,
  IniFiles, wrFormataCampo, cxTL, cxDBTL, cxScheduler, UCHistDataset, UCHist_Base, dxServerModeData, System.Diagnostics,
  dxScreenTip, cxImage, cxHint, cxGraphics, dxGDIPlusClasses, Vcl.AppEvnts, UnitFuncoes, ExtCtrls, fs_iinterpreter,
  Math, FireDAC.Stan.Option, dxSpreadSheet, dxSpreadSheetCore, dxSpreadSheetTypes, cxEdit, cxGridDBTableView, cxLabel,
  cxGridCustomView, cxDropDownEdit, dxLayoutContainer, cxButtons, dxLayoutControl, cxDBEdit, cxTextEdit, pcnNFe, dxCore,
  ACBrBase, ACBrDFe, ACBrNFe, cxGridTableView, cxCurrencyEdit, dxMessages, cxEditConsts, cxVariants,
  cxDataControllerConditionalFormatting, dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  cxGridCustomTableView, uWRNotaFiscal, blcksock;

type
  TBancoTabela = class;
  TStatusFatura = (tsfFatura, tsfCancelafatura, tsfNota);
  TSupportedExportType = (exHTML, exXML, exExcel97, exExcel, exPDF, exText);
  TSupportedExportTypes = set of TSupportedExportType;
  TExportEvent = procedure(AExportType: TSupportedExportType; ADataOnly: Boolean) of object;

  TcxComboBoxHelper = class helper for TcxComboBox
  public
    function GetItemSelecionado: string;
    function GetObjetoSelecionado: TObject;
  end;

  TSistema = record
    Ano : String;
    Versao : String;
    Nome : String;
    Ativado : Boolean;
    RegPath : String;
  end;

  TCadSetorStatus = record
    Codigo : Integer;
    Descricao : String;
    Cor : Integer;
    Ativo : Boolean;
  end;

  TArqFam = record
    Arquivo : string;
    Familia : string;
  end;

  TCodNome = record //Record de propósito geral, para utilização por qualquer situação que necessite de Código/Nome
    Codigo : Integer;
    Nome : String;
  end;


{$REGION '////////////////////////// FOTOS ///////////////////////////////////'}
 { TFotos = class
  public
    class procedure DefinePadrao(AArquivo, AFamilia, ACodProduto: string);
    class procedure TornarExclusivo(AArquivo, ACodProduto: string);
    class function GetFotoPadrao(Familia, ACodProduto: string): string;
    class procedure TransfereFotos(FamiliaOrigem, FamiliaDestino: Integer);
    class procedure AdicionarFoto(Arquivo, Familia: string);
    class function ProximoNome(CaminhoArquivo: string; AIniciandoEm: Integer = 0): string;
    class function ArquivoExisteWC(Arquivo: string): Boolean; //WC = WildCard
    class function ExtensaoAceita(Extensao: string): Boolean;
    class procedure AjustaNomeArquivo(var ANomeArquivo: string);
    class procedure CarregaFotoPessoa(AImage: TcxImage; ACodPessoa: string);

    class procedure ImportarModelo1;
    class procedure ImportarModelo2;
  private
    class function TamanhoArquivo(Arquivo: string): Integer;
  end;   }

  TProcFoto = procedure(const Picture: TPicture; ACodProduto : String) of object;

  TCarregaImagem = class(TThread)
  private
    FFamilia: string;
    FCallback: TProcFoto;
    FCodProduto: string;
    FCaminho: string;
    procedure ExecutaCallback;
  public
    property Callback: TProcFoto read FCallback write FCallback;
    property Familia: string read FFamilia write FFamilia;
    property Codigo: string read FCodProduto write FCodProduto;
    property Caminho: string read FCaminho write FCaminho;

    procedure Execute; override;
    constructor Create;
  end;
{$ENDREGION}

{$REGION '////////////////////////// PRODUTO /////////////////////////////////'}

  TProdutoTipo = class(TPersistent)
  private
    FCodigo: Integer;
    FDescricao: string;
  public
    procedure ReadProdutoTipo(AQuery: TDataSet); overload;
    procedure ReadProdutoTipo(ACodProdutoTipo: Integer); overload;
    procedure ReadProdutoTipoFromCodProduto(ACodProduto: string);
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: string read FDescricao write FDescricao;
    procedure Assign(Source: TPersistent); override;
  end;

  TProdutoArrumarEstoqueProducao = class;

  TProdutoMovimentoCodigo = class
  private
    FCodEmpresa: string;
    FCodigo: Integer;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property CodEmpresa: string read FCodEmpresa write FCodEmpresa;
  end;

  TProdutoQuantMovimentosVenda = class
  private
    FQuantMovimentos: Integer;
    FCodVenda: string;
    FQuant: Double;
    FListaExcluir: TObjectList<TProdutoMovimentoCodigo>;
  public
    FOwner: TProdutoArrumarEstoqueProducao;
    property CodVenda: string read FCodVenda write FCodVenda;
    property Quant: Double read FQuant write FQuant;
    property QuantDuplicidades: Integer read FQuantMovimentos write FQuantMovimentos;
    property ListaExcluir: TObjectList<TProdutoMovimentoCodigo> read FListaExcluir;

    function EstaNaListaExcluir(AQuery: TDataSet): Boolean;

    constructor Create(AOwner: TProdutoArrumarEstoqueProducao);
    destructor Destroy; override;
  end;

  TProdutoQuantPair = class
  private
    FOwner: TProdutoArrumarEstoqueProducao;
    FCodProduto: string;
    FCodEmpresa: string;
    FListaVendas: TObjectList<TProdutoQuantMovimentosVenda>;
  public
    property CodProduto: string read FCodProduto write FCodProduto;
    property CodEmpresa: string read FCodEmpresa write FCodEmpresa;
    property Vendas: TObjectList<TProdutoQuantMovimentosVenda> read FListaVendas;

    function GetVenda(ACodVenda: string): TProdutoQuantMovimentosVenda;

    constructor Create(AOwner: TProdutoArrumarEstoqueProducao);
    destructor Destroy; override;
  end;

  TProdutoArrumarEstoqueProducao = class
  private
    FDtInicial: TDate;
    FCodProduto: string;
//    FFrmAguarde: TFrmAguarde;
    FApenasVerSeTem: Boolean;
    FCodEmpresa: string;
    FQuantDuplicidades: Integer;

  public
    FTransa: TFDTransaction;
    FListaQuantMovimentar: TObjectList<TProdutoQuantPair>;
    function GetProdutoMovimentar(const ACodProduto, ACodEmpresa: string): TProdutoQuantPair;

    constructor Create;
    destructor Destroy; override;

    property DtInicial: TDate read FDtInicial write FDtInicial;
    property CodProduto: string read FCodProduto write FCodProduto;
    property CodEmpresa: string read FCodEmpresa write FCodEmpresa;
    property ApenasVerSeTem: Boolean read FApenasVerSeTem write FApenasVerSeTem;
    property QuantDuplicidades: Integer read FQuantDuplicidades write FQuantDuplicidades;
  end;
{$ENDREGION}

{$REGION '////////////////////////// MEDIDAS /////////////////////////////////'}
  TUnidade = record //Transformar em classe quando houver tempo disponível
    Unidade: string;
    Descricao: string;

    //Parâmetros de Medidas são usados para Estoque e Valor Financeiro
    CalcComprimento: Boolean;
    CalcLargura: Boolean;
    CalcEspessura: Boolean;
    Formula: String;
    function UnidadeCalculada: Boolean;
    procedure Clear;
  end;

  TMedidas = record //Transformar em classe quando houver tempo disponível
    Medidas: string;            //Ex: 1,00 x 2,80 x 0,50 (Casas decimais dependem da configuração do sistema)
    Caption: string;            //Ex: Comprimento x Largura x Espessura
    CaptionLetras: string;      //Ex: C x L x E
    CaptionAbreviado: string;   //Ex: Comp x Larg x Esp
    Comprimento: Double;
    Largura: Double;
    Espessura: Double;
    Quant: Double;
    Perimetro: Double;
    procedure Clear;
  end;

  TMedidaCaption = class
  private
    FInicial: string;
    FDescricao: string;
    FAbreviacao: string;
  public
    property Descricao: string read FDescricao write FDescricao;
    property Abreviacao: string read FAbreviacao write FAbreviacao;
    property Inicial: string read FInicial write FInicial;
  end;

  //Representa simplesmente Medidas, não é responsável por controlar quantidades ou área. Essas informações são
  //referentes a um produto ou algo que utilize medidas e dependem de como esse "produto" é calculado.
  //Quant e Quantidade de Peças são relativas a um produto, não as medidas...
  TMedidasBase = class(TPersistent)
  private
    FComprimento: Double;
    FLargura: Double;
    FEspessura: Double;
    procedure MedidasChanged; virtual;
    procedure SetComprimento(const Value: Double);
    procedure SetEspessura(const Value: Double);
    procedure SetLargura(const Value: Double);
  public
    property Comprimento: Double read FComprimento write SetComprimento;
    property Largura: Double read FLargura write SetLargura;
    property Espessura: Double read FEspessura write SetEspessura;

    procedure Assign(Source: TPersistent); override;
    procedure Clear; virtual;
  end;


{$ENDREGION}

{$REGION '////////////////////////// PESSOAS /////////////////////////////////'}

  TConsuCEPRetorno = record
    CEP: string;
    UF: string;
    Endereco: string;
    Bairro: string;
    CodCidade: Variant;
    Cidade: string;
    Complemento: string;
    procedure Clear;
  end;

  TEnderecoCobranca = record
    Responsavel : string;
    CNPJCPF : string;
    TipoPessoa : string;
    Endereco : String;
    Numero : string;
    Cidade : String;
    Bairro : String;
    UF : String;
    CEP : String;
    Complemento : string;
    Email : string;
  end;

  TPessoaSequencia = record
    CodPessoa     : string;
    SequenciaTipo : String;
  end;

  TPessoaTipo = class
  private
    FCodigo: string;
    FDescricao: string;
    FAtivo: Boolean;
    FPermicoes: TPermissoesPessoaTipo;
  public
    property Codigo: string read FCodigo write FCodigo;
    property Descricao: string read FDescricao write FDescricao;
    property Ativo: Boolean read FAtivo write FAtivo;
    property Permissoes: TPermissoesPessoaTipo read FPermicoes write FPermicoes;
    procedure Assign(APessoaTipo: TPessoaTipo);
    constructor Create;
  end;

  TPessoaRetorno = class
  private
    FSequencia: Integer;
    FCodigo: variant;
    FPessoaTipo: TPessoaTipo;
  public
    property Codigo: variant read FCodigo write FCodigo;
    property Tipo: TPessoaTipo read FPessoaTipo write FPessoaTipo;
    property Sequencia: Integer read FSequencia write FSequencia;
    procedure Assign(APessoaRetorno: TPessoaRetorno);
    procedure Clear;

    constructor Create; overload;
    constructor Create(const ACodigo, ATipo: string; ASequencia: Integer); overload;
  end;

  TListaPessoaTipo = class //Singleton
  private
    FLista: TObjectList<TPessoaTipo>;
    class var FInstance: TListaPessoaTipo;
    constructor CreatePrivate;
    function GetPessoaTipo(Index: Integer): TPessoaTipo;
  public
    property Items[Index: Integer]: TPessoaTipo read GetPessoaTipo; default;
    function GetTipo(const ACodigo: string): TPessoaTipo;
    function GetTipoByName(ADescricao: string): TPessoaTipo;
    procedure PreencheTiposPessoaPeloCodigo(const ACodPessoa: string; AStrings: TStrings);
    procedure PreencheTiposPessoa(ADataSet: TDataSet; AStrings: TStrings; AFiltrarPorPermissao: TPermissoesPessoaTipo = []);
    function Count: Integer;
    procedure Atualizar;

    constructor Create; //Invalidado
    destructor Destroy; override;
    class function GetInstance : TListaPessoaTipo;
  end;
{$ENDREGION}

{$REGION '////////////////////////// ARQUIVOS ////////////////////////////////'}
///   - Trabalha com Arquivos  DocumentoWord, Excel
  TDocumentoWordExportFormat = (wdExportFormatPDF = 17);

  TDocumentoWord = class
  private
    FDoc: Variant;
    FDocs: Variant;
    FWinWord: Variant;
    const
      wdReplaceAll = 2;
  public
    procedure PreencheTags(const ATag: string; ADataSet: TDataSet);
    procedure PreencheTag(const ATag, AValor: string);
    procedure Salvar(const ACaminho: string);
    procedure Exportar(const ACaminho: string; AFormato: TDocumentoWordExportFormat);
    procedure Abrir;
    procedure Imprimir;
    procedure Inicializar(const ACaminhoDocumento: string);
    constructor Create;
    destructor Destroy; override;
  end;
  {$IFDEF COMERCIAL}
 (* TImportarVendaExcel = class
  private
    FSpreadSheet: TdxSpreadSheet;
    FArquivoOuPasta: string;
  public
    constructor Create;
    destructor Destroy; override;

    property ArquivoOuPasta: string read FArquivoOuPasta write FArquivoOuPasta;

//    procedure Importar(ACad: TForm);
  end;   *)
  {$ENDIF}
{$ENDREGION}

{$REGION '////////////////////////// CONFIG //////////////////////////////////'}

  TConfigValue = class
  strict private
    FValor: string;
    FConfig: string;
    FCodEmpresa: Integer;
    FCodUsuario: Integer;
  public
    property CodEmpresa: Integer read FCodEmpresa write FCodEmpresa;
    property Config: string read FConfig write FConfig;
    property Valor: string read FValor write FValor;
    property CodUsuario: Integer read FCodUsuario write FCodUsuario;
  end;

  TConfig = class //Classe para leitura e gravação das configurações do sistema
  strict private
    FListaConfigs: TObjectList<TConfigValue>;
    FConfigsCarregadas: Boolean;
    FUltimaDtAlteracao: TDateTime;

    class var FInstance: TConfig;
    const FORMATO_DATA_CONFIG = 'DD/MM/YYYY hh:mm:ss';
    const FORMATO_FLOAT = '0.########'; //8 dígitos facultativos

    procedure InternalSave(AConfig: string; const AValue: string; ACodUsuario: Integer; AIsGlobal: Boolean = False);
    function InternalRead(const AConfig: string; ACodUsuario: Integer; AIsGlobal: Boolean = False): string;

    procedure InternalSaveEmpresa(AConfig: string; const AValue: string; ACodUsuario: Integer; ACodEmpresa: Integer = 0);
    function InternalReadEmpresa(const AConfig: string; ACodUsuario: Integer; ACodEmpresa: Integer = 0): string;

    function GetConfig(const AConfig: string; const ACodEmpresa, ACodUsuario: Integer): TConfigValue;
    function AddConfig(const AConfig, AValue: string; const ACodEmpresa, ACodUsuario: Integer): TConfigValue;

    procedure InternalCarregar;
    procedure InternalAtualizar;

    constructor CreatePrivate;
  public
    //Configurações por usuário/empresa
    //Por padrão as configurações são aplicadas igualmente para todos os usuários SEPARANDO POR EMPRESA, mas é possível
    //definir um código de usuário também para que esta configuração seja exclusiva do Usuário naquela empresa
    class procedure SaveString(const AConfig, AValue: string; ACodUsuario: Integer = 0);
    class procedure SaveInteger(const AConfig: string; AValue: Integer; ACodUsuario: Integer = 0);
    class procedure SaveInt64(const AConfig: string; AValue: Int64; ACodUsuario: Integer = 0);
    class procedure SaveBoolean(const AConfig: string; AValue: Boolean; ACodUsuario: Integer = 0);
    class procedure SaveDateTime(const AConfig: string; AValue: TDateTime; ACodUsuario: Integer = 0);
    class procedure SaveFloat(const AConfig: string; AValue: Double; ACodUsuario: Integer = 0);
    class function ReadString(const AConfig: string; ACodUsuario: Integer = 0): string;
    class function ReadInteger(const AConfig: string; ACodUsuario: Integer = 0): Integer;
    class function ReadInt64(const AConfig: string; ACodUsuario: Integer = 0): Int64;
    class function ReadBoolean(const AConfig: string; ACodUsuario: Integer = 0): Boolean;
    class function ReadDateTime(const AConfig: string; ACodUsuario: Integer = 0): TDateTime;
    class function ReadFloat(const AConfig: string; ACodUsuario: Integer = 0): Double;

    // Configuração para puxar alimentando o código da empresa
    class procedure SaveDateTimeEmpresa(const AConfig: string; AValue: TDateTime; ACodEmpresa: Integer; ACodUsuario: Integer = 0);
    class procedure SaveIntegerEmpresa(const AConfig: string; AValue: Integer; ACodEmpresa: Integer; ACodUsuario: Integer = 0);
    class procedure SaveStringEmpresa(const AConfig, AValue: string; ACodEmpresa: Integer; ACodUsuario: Integer = 0);

    class function ReadDateTimeEmpresa(const AConfig: string; ACodEmpresa: Integer; ACodUsuario: Integer = 0): TDateTime;
    class function ReadIntegerEmpresa(const AConfig: string; ACodEmpresa: Integer; ACodUsuario: Integer = 0): Integer;
    class function ReadStringEmpresa(const AConfig: string; ACodEmpresa: Integer; ACodUsuario: Integer = 0): string;


    //Configurações globais do sistema. Independe de usuário ou empresa
    class procedure SaveGlobalString(const AConfig, AValue: string);
    class procedure SaveGlobalInteger(const AConfig: string; AValue: Integer);
    class procedure SaveGlobalInt64(const AConfig: string; AValue: Int64);
    class procedure SaveGlobalBoolean(const AConfig: string; AValue: Boolean);
    class procedure SaveGlobalDateTime(const AConfig: string; AValue: TDateTime);
    class function ReadGlobalString(const AConfig: string): string;
    class function ReadGlobalInteger(const AConfig: string): Integer;
    class function ReadGlobalInt64(const AConfig: string): Int64;
    class function ReadGlobalBoolean(const AConfig: string): Boolean;
    class function ReadGlobalDateTime(const AConfig: string): TDateTime;

    class procedure Carregar;  //Carrega as configurações do banco
    class procedure Atualizar; //Carrega apenas se for necessário, se algo mudou

    constructor Create;
    destructor Destroy; override;

    class function GetInstance: TConfig;
    class procedure ReleaseInstance;
  end;

  TConfigGridValue = class
  strict private
    FDescricao: string;
    FFormClassName: string;
    FGridStream: TMemoryStream;
    FCodUsuario: Integer;
    FDtAlteracao: TDateTime;
    FIniFile: string;
  public
    property FormClassName: string read FFormClassName write FFormClassName;
    property Descricao: string read FDescricao write FDescricao;
    property CodUsuario: Integer read FCodUsuario write FCodUsuario;
    property GridStream: TMemoryStream read FGridStream;
    property IniFile: string read FIniFile write FIniFile;
    property DtAlteracao: TDateTime read FDtAlteracao write FDtAlteracao;

    constructor Create;
    destructor Destroy; override;
  end;

  TConfigGrid = class
  private
    FLista: TObjectList<TConfigGridValue>;
    class var FInstance: TConfigGrid;

    constructor CreatePrivate;
    procedure LimparForm(const AFormClassName: string);
    procedure LimpaColunasVazias(const AView: TcxGridDBTableView);

    function GetFullObjectName(const AView: TComponent): string;

    function GetDtUltimaAlteracao(const AFormClassName: string): TDateTime;
    function GetConfig(const AFormClassName, ADescricao: string): TConfigGridValue;
    function CriaConfigSeNaoExistir(const AFormClassName, ADescricao: string): TConfigGridValue;

    procedure GravarNoBanco(const AConfig: TConfigGridValue);
    procedure GravaIniSeAlterado(const AConfig: TConfigGridValue; const AIni: TStrings);
  public
    procedure GravaConfigGrid(const AGridView: TcxCustomGridView; const ANomeConfig: string);
    procedure GravaConfigTreeList(const AGridView: TcxCustomTreeList; const ANomeConfig: string);
    procedure GravaConfigTreeListIni(const AGridView: TcxCustomTreeList; const ANomeConfig: string);
    procedure CarregaConfigGridClasse(const AGridView: TcxCustomGridView; const ANomeConfig: string);
    procedure CarregaConfigTreeList(const AGridView: TcxCustomTreeList; const ANomeConfig: string);
    procedure CarregaConfigTreeListIni(const AGridView: TcxCustomTreeList; const ANomeConfig: string);

    procedure Carregar(const AFormClassName: String);  //Carrega as configurações do banco
    procedure Atualizar(const AFormClassName: String); //Carrega apenas se for necessário, se algo mudou
    procedure Limpar;

    constructor Create;
    destructor Destroy; override;

    class function GetInstance: TConfigGrid;
    class procedure ReleaseInstance;
  end;

{$ENDREGION}

{$REGION '////////////////////////// USUARIO /////////////////////////////////'}

  TUsuario = class
  strict private
    FPrivilegiado: Boolean;
    FCodigo: Integer;
    FLogin: string;
    FNome: string;
    FCodigoFuncionario: string;
    FNomeFuncionario: string;
    FPerfil: Integer;
    FSequenciaFuncionario: Integer;
    FFuncionario_Limite_Desconto: Real;
    FEmail: string;
    class var FInstance: TUsuario;
    constructor CreatePrivate;
  public
    property Codigo: Integer read FCodigo;
    property Nome: string read FNome;
    property Login: string read FLogin;
    property Email: string read FEmail;
    property Privilegiado: Boolean read FPrivilegiado;
    property CodigoFuncionario: string read FCodigoFuncionario;
    property NomeFuncionario: string read FNomeFuncionario;
    property SequenciaFuncionario: Integer read FSequenciaFuncionario write FSequenciaFuncionario;
    property Perfil: Integer read FPerfil write FPerfil;
    property Funcionario_Limite_Desconto: Real read FFuncionario_Limite_Desconto write FFuncionario_Limite_Desconto;

    procedure Atualizar;
    procedure CarregarUsuario(const ACodUsuario: Integer);

    constructor Create;

    class function GetInstance: TUsuario;
    class procedure ReleaseInstance;
  end;
{$ENDREGION}

{$REGION '////////////////////////// TEMPO ///////////////////////////////////'}
  TListaHorasSemana = class;

  TCalculaTempo = class
  private
    class var FTempo: TStopWatch;
  public
    class procedure Finalizar(const ACaption: string = '');
    class procedure Iniciar;
  end;

  THoraSemana = class
    DiaSemana : TDiaSemana;
    MinutosATrabalhar: Integer;
  end;

  TListaHorasSemana = class
  private
    FLista : TObjectList<THoraSemana>;
    FCodFuncionario : string;
    function GetItems(Index: Integer): THoraSemana;
  public
    property Items[Index: Integer]: THoraSemana read GetItems;
    property CodFuncionario: string read FCodFuncionario write FCodFuncionario;
    function GetHoraSemana(ADiaSemana: TDiaSemana): THoraSemana;
    function BuscaDiaSemana(AData: TDate): THoraSemana;
    function GetTotalHorasSemana: Double;
    function GetTotalHorasMes: Double;
    procedure Atualizar;
    procedure Clear;

    constructor Create;
    destructor Destroy; override;
  end;

  //Intervalo de Tempo
{  TCalculaIntervaloTempo = class;

  TIntervaloTempo = class
    DtInicio : TDateTime;
    DtFim : TDateTime;
  end;      }
{
  TListaIntervaloTempo = class
  private
    FLista : TList<TIntervaloTempo>;
    FOwner : TCalculaIntervaloTempo;
    function GetItems(Index: Integer): TIntervaloTempo;
  public
    property Items[Index: Integer]: TIntervaloTempo read GetItems; default;
    function Add: TIntervaloTempo;
    function GetTempoTotal: Integer;
    function GetTempoTotalAsString: string;
    procedure Clear;

    constructor Create(AOwner: TCalculaIntervaloTempo);
    destructor Destroy; override;
  end;

  TCalculaIntervaloTempo = class
  private
    FListaIntervalos : TListaIntervaloTempo;
    FModoCalculo: TModoCalculoTempo;
  public
    property Intervalos: TListaIntervaloTempo read FListaIntervalos;
    property ModoCalculo: TModoCalculoTempo read FModoCalculo write FModoCalculo;
    procedure CarregarDaAgenda(ACodFuncionario, AProtocolo: string);
    procedure Clear;
    function GetTempoTotal: Integer;
    function GetTempoTotalAsString: string;

    constructor Create;
    destructor Destroy; override;
  end;      }
{$ENDREGION}

{$REGION '////////////////////////// DRE /////////////////////////////////////'}

  //Relacionamento entre Planos de Contas
 { TItemRelacionamento = class
  private
    FItem2Codigo: string;
    FItem1Codigo: string;
    FItem2Tabela: string;
    FItem1Tabela: string;
    FPeso: Double;
    FQuant: Double;
  public
    property Item1Codigo: string read FItem1Codigo write FItem1Codigo;
    property Item2Codigo: string read FItem2Codigo write FItem2Codigo;
    property Item1Tabela: string read FItem1Tabela write FItem1Tabela;
    property Item2Tabela: string read FItem2Tabela write FItem2Tabela;
    property Peso: Double read FPeso write FPeso;
    property Quant: Double read FQuant write FQuant;

    constructor Create;
  end;

  TItemLista = class
  private
    FLista : TList<TItemRelacionamento>;
    function GetItems(Index: Integer): TItemRelacionamento;
  public
    property Items[Index: Integer]: TItemRelacionamento read GetItems; default;
    function GetRelacionamento(AItem1Codigo, AItem2Codigo: string): TItemRelacionamento;
    function AddSeNaoExiste(AItem1Codigo, AItem1Tabela, AItem2Codigo, AItem2Tabela: string): TItemRelacionamento;
    function IsRelacionamentoValido(AItem1Codigo, AItem2Codigo: string): Boolean;
    function Add: TItemRelacionamento;
    function Count: Integer;
    function GetPesoRelacao(ACodItem1, ACodItem2: string): Double;

    constructor Create;
    destructor Destroy; override;
  end;     }

{$ENDREGION}

{$REGION '////////////////////////// BANCO ///////////////////////////////////'}

  TBancoEstruturaUniqueKey = class
  private
    FUniqueName: string;
    FTabela: string;
    FCampos: TArray<string>;
  public
    property Tabela: string read FTabela write FTabela;
    property UniqueName: string read FUniqueName write FUniqueName;
    property Campos: TArray<string> read FCampos write FCampos;
  end;

  TBancoEstruturaForeignKey = class
  private
    FTabela: string;
    FFKName: string;
    FCampos: TArray<string>;
    FRefTabela: string;
    FRefCampos: TArray<string>;
  public
    property Tabela: string read FTabela write FTabela;
    property FKName: string read FFKName write FFKName;
    property Campos: TArray<string> read FCampos write FCampos;
    property RefTabela: string read FRefTabela write FRefTabela;
    property RefCampos: TArray<string> read FRefCampos write FRefCampos;
  end;

  TBancoCampo = class
  private
    FDominio: string;
    FTemPK: Boolean;
    FTemUnique: Boolean;
    FNome: string;
    FTemFK: Boolean;
    FTipo: TFieldType;
    FTamanho: Integer;
  public
    property Nome: string read FNome write FNome;
    property Tipo: TFieldType read FTipo write FTipo;
    property Tamanho: Integer read FTamanho write FTamanho;
    property Dominio: string read FDominio write FDominio;
    property TemUnique: Boolean read FTemUnique write FTemUnique;
    property TemFK: Boolean read FTemFK write FTemFK;
    property TemPK: Boolean read FTemPK write FTemPK;
  end;

  TBancoTabela = class
  strict private
    FCampos: TObjectList<TBancoCampo>;
    FMetadadosCarregados: Boolean;
    FNome: string;
    FFilhos: TList<TBancoTabela>;
    procedure DoCheckMetaDados;
    function AddCampo: TBancoCampo;
    function GetCampos: TObjectList<TBancoCampo>;
    function GetChavePrimaria: TArray<TBancoCampo>;
  public
    property Nome: string read FNome write FNome;
    property Campos: TObjectList<TBancoCampo> read GetCampos;
    property ChavePrimaria: TArray<TBancoCampo> read GetChavePrimaria;
    property Filhos: TList<TBancoTabela> read FFilhos;
    function FieldByName(const ANomeCampo: string): TBancoCampo;
    function ExisteCampo(const ANomeCampo: string): Boolean;
    function AddFilho(const AFilho: TBancoTabela): TBancoTabela;

    procedure CarregarMetaDados;

    constructor Create;
    destructor Destroy; override;
  end;

{$ENDREGION}

{$REGION '////////////////////////// TConsultaTEC ////////////////////////////'}

  TConsultaTECPanel = class
  private
    class var FCaminhoConsultaTEC : string;
  public
    class function ConsutaTECPanel(Tipo : boolean; Codigo : string; Transacao : TFDTransaction) : Boolean;
    class function ProcessaRetornoConsutaTECVendaeCondicional(Tipo : boolean; Codigo : string; Transacao : TFDTransaction) : Boolean;
    class function GerarXMLConsultaTECVendaeCondicional(Tipo : boolean; Codigo : string; Transacao : TFDTransaction) :Boolean;
    class function ConverteData(AData: String) : TDateTime;
  end;
{$ENDREGION}

{$REGION 'Removidos'}

 { TArquivoListViewRec = record
    Nome : string;
    CodItemVenda : Integer;
  end;    }

 { TArquivosListView = class
  private
    FArquivos : TList<TArquivoListViewRec>;
  public
    procedure CarregaArquivosListView(const ACaminho: string);
    property Arquivos : TList<TArquivoListViewRec> read FArquivos write FArquivos;
    destructor Destroy; override;
  end;     }
            (*
  TConfigCamposFormValidations = class;
  TConfigCamposFormRegras = class;

  //Contexto da instância do componente
  {Tem que refatorar essa classe, criar um único método pra retornar se deve validar ou não com todas as regras}
  TConfigCamposComponente = class
  private
    FOwner: TConfigCamposFormValidations;
    FListaRegras: TList<TConfigCamposFormRegras>; //Lista de Regras que estão sendo aplicadas neste componente
    FComponente: TComponent;
    FOldComponenteOnValidate: TcxEditValidateEvent;

    procedure ComponenteOnValidate(Sender: TObject; var DisplayValue: TcxEditValue; var ErrorText: TCaption; var Error: Boolean);
    procedure SetComponente(const Value: TComponent);
    procedure AtualizaListaRegras;
    function DeveValidarEsteComponente: Boolean;
  public
    property Componente: TComponent read FComponente write SetComponente;
    function ExecutarValidacao(const AErros: TStrings): Boolean;

    constructor Create(AOwner: TConfigCamposFormValidations);
    destructor Destroy; override;
  end;

  TConfigCamposFormValidationsGrid = class
  private  //Ainda em desenvolvimento, prioriedade é o treelist
    FGridView: TcxGridDBTableView;
    procedure SetGridView(const Value: TcxGridDBTableView);
  public
    property GridView: TcxGridDBTableView read FGridView write SetGridView;
  end;

  {Classe que controla os eventos e validações em TreeLists. Ela mantem e vincula os eventos e faz a validação dos Nodes}
  TConfigCamposFormValidationsTreeList = class
  private
    type
      //Cada regra que não foi validada tem uma instância dessa classe. É um buffer pra desempenho
      TInnerRegraInvalidada = class
        Coluna: TObject;
        Node: TObject;
        Hint: string;
      end;
  private
    FOwner: TConfigCamposFormValidations;
    FTreeList: TcxDBTreeList;
    FOldOnCustomDraw: TcxTreeListCustomDrawEditCellEvent;
    FOldOnGetCellHint: TcxTreeListGetCellHintEvent;
    FOldOnValidateEvents: TDictionary<TObject {Coluna}, TcxEditValidateEvent {Evento OnValidate da Coluna}>;
    FRegrasInvalidadas: TObjectList<TInnerRegraInvalidada>; //Lista de regras que não passaram na validação

    procedure SetTreeList(const Value: TcxDBTreeList);
    procedure TreeListCustomDraw(Sender: TcxCustomTreeList; ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
    procedure TreeListOnValidate(Sender: TObject; var DisplayValue: TcxEditValue; var ErrorText: TCaption; var Error: Boolean);
    procedure TreeListGetCellHint(Sender: TcxCustomTreeList; ACell: TObject; var AText: string; var ANeedShow: Boolean);
    procedure InicializaEventosValidate;

    //Regras inválidas
    function CriaRegraInvalida(const AColuna, ANode: TObject): TInnerRegraInvalidada;
    procedure ExcluiRegraInvalida(const AColuna, ANode: TObject);
    function GetRegraInvalida(const AColuna, ANode: TObject): TInnerRegraInvalidada;
  public
    property TreeList: TcxDBTreeList read FTreeList write SetTreeList;
    function ExecutarValidacao(const AErros: TStrings): Boolean;

    constructor Create(AOwner: TConfigCamposFormValidations);
    destructor Destroy; override;
  end;

  //Contexto da Instância da Form
  TConfigCamposFormValidations = class
  private
    FComponentes: TObjectList<TConfigCamposComponente>;
    FTreeLists: TObjectList<TConfigCamposFormValidationsTreeList>;
    FDataSet: TDataSet;
    FForm: TForm;
//    FOldAfterInsert: TDataSetNotifyEvent;
    FScript: TfsScript;
    FGruposSendoValidados: TStringList;
//    procedure DSAfterInsert(DataSet: TDataSet);
    procedure SetDataSet(const Value: TDataSet);
    procedure SetForm(const Value: TForm);
  protected
    function VerificaExpressao(const AConfig: TConfigCamposFormRegras; out AErro: string): Boolean;
    function ExecutarExpressao(const AConfig: TConfigCamposFormRegras; AComponente: TObject; const AValor: Variant;
      out AErro: string): Boolean;
  public
    property DataSet: TDataSet read FDataSet write SetDataSet;
    property Form: TForm read FForm write SetForm;
    property Componentes: TObjectList<TConfigCamposComponente> read FComponentes;
    property GruposSendoValidados: TStringList read FGruposSendoValidados write FGruposSendoValidados;
    function DeveValidarGrupo(const AGrupos: TStrings): Boolean;
    procedure ControlarTreeList(ATreeList: TcxDBTreeList);
    function ValidarTreeLists(const AErros: TStrings): Boolean;
    function ValidarComponentes(const AErros: TStrings): Boolean;

    constructor Create;
    destructor Destroy; override;
  end;

  TConfigCamposFormComponent = class
  private
    FForm: string;
    FComponente: string;
    FGrupos: TStringList;
  public
    property Form: string read FForm write FForm;
    property Componente: string read FComponente write FComponente;
    property Grupos: TStringList read FGrupos;
    procedure Assign(ASource: TConfigCamposFormComponent);

    constructor Create;
    destructor Destroy; override;
  end;

  TConfigCamposFormRegras = class
  public
    type TValorInicialTConfigModo = (vicmValor, vicmIfThen);
  private
    FCodigo: Integer;
    FTabela: string;
    FCampo: string;
    FHint: string;
    FCaption: string;
    FObrigatorio: Boolean;
    FImpedirDuplicidade: Boolean;
    FRangeCheck: Boolean;
    FRange: TWRRange;
    FCampoDuplo: string;
    FCampoDuploPreenchido: Boolean;
    FValorInicial: Variant;
    FValorInicialDtAtual: Boolean;
    FFormatacao: string;
    FValidarExpressao: string;
    FValidarExpressaoMensagem: string;
    FForms: TObjectList<TConfigCamposFormComponent>;
    FObservacao: string;
    FImpedirDuplicidadeSQLWhere: string;
    FPadrao: TConfigCamposFormRegras;
    FValorInicialTConfigModo: TValorInicialTConfigModo;
    FValorInicialTConfigFalse: Variant;
    FValorInicialTConfigTrue: Variant;
    FValorInicialTConfig: string;
    FAtivo: Boolean;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Tabela: string read FTabela write FTabela;
    property Campo: string read FCampo write FCampo;

    //Quanto a config tem um equivalente padrão, aqui faz a referência
    property Padrao: TConfigCamposFormRegras read FPadrao write FPadrao;

    //Explicação da regra, pra que serve e por que foi feita. Usar para mostrar ao usuário como a regra funciona
    //e também para nós programadores meros mortais entendermos pra que raios a regra foi feita...
    property Observacao: string read FObservacao write FObservacao;

    //Lista de forms/componentes em que esta regra será aplicada
    property Forms: TObjectList<TConfigCamposFormComponent> read FForms;
    procedure AddForm(const AGrupo, AForm, AComponente: string);
    function GetFormComponente(const AForm, AComponente: string): TConfigCamposFormComponent;
    function TemEsseComponente(const AForm, AComponente: string): Boolean;

    property ValorInicial: Variant read FValorInicial write FValorInicial;
    property ValorInicialDtAtual: Boolean read FValorInicialDtAtual write FValorInicialDtAtual;
    property ValorInicialTConfigModo: TValorInicialTConfigModo read FValorInicialTConfigModo write FValorInicialTConfigModo;
    property ValorInicialTConfig: string read FValorInicialTConfig write FValorInicialTConfig;
    property ValorInicialTConfigTrue: Variant read FValorInicialTConfigTrue write FValorInicialTConfigTrue;
    property ValorInicialTConfigFalse: Variant read FValorInicialTConfigFalse write FValorInicialTConfigFalse;

    //Personalização do Campo
    property Caption: string read FCaption write FCaption;
    property Hint: string read FHint write FHint;
    property Formatacao: string read FFormatacao write FFormatacao;
    function GetDisplayFormat: string; //O campo "Formatacao" pode ter constantes que devem ser convertidas. Aqui retorna a formatação correta para aplicar no campo

    //Validações
    property Validar: Boolean read FAtivo write FAtivo; //<-- Permite desativar a regra para não executar VALIDAÇÕES
    property Obrigatorio: Boolean read FObrigatorio write FObrigatorio;
    property ImpedirDuplicidade: Boolean read FImpedirDuplicidade write FImpedirDuplicidade;
    property ImpedirDuplicidadeSQLWhere: string read FImpedirDuplicidadeSQLWhere write FImpedirDuplicidadeSQLWhere;
    property RangeCheck: Boolean read FRangeCheck write FRangeCheck; //<-- Não precisa ir pro banco
    property Range: TWRRange read FRange write FRange; //<-- Não precisa ir pro banco
    property CampoDuploPreenchido: Boolean read FCampoDuploPreenchido write FCampoDuploPreenchido; //<-- Não precisa ir pro banco
    property CampoDuplo: string read FCampoDuplo write FCampoDuplo; //<-- Não precisa ir pro banco
    property ValidarExpressao: string read FValidarExpressao write FValidarExpressao;
    property ValidarExpressaoMensagem: string read FValidarExpressaoMensagem write FValidarExpressaoMensagem;

    function ExecutarValidacaoCampo(const ACampo: TObject; const AValue: Variant; out AErros: string): Boolean;
    function IgualA(const AOutro: TConfigCamposFormRegras): Boolean;
    procedure Assign(const AConfig: TConfigCamposFormRegras);
    procedure Salvar;

    constructor Create;
    destructor Destroy; override;
  end;

  TConfigCamposFormValueFK = class;

  {Este record é apenas um agrupador de funções de acesso as classes TConfigCamposFormTabela e TConfigCamposFormValue}
  TConfigCamposRegrasPadroesTabela = record
  private
    function GetForm: string;
    function GetCamposValue(const ACampo, AEdit: string): TConfigCamposFormRegras;
  public
    Tabela: string;
    procedure DefinePK(const ACampo, AEdit: string);
    procedure ValidaRegraCampo(const ACampo1, ARegra, ACampo2, AMensagem: string);
    function ValidarExpressao(const AGrupo, AExpressao, AEdit, AMensagem: string): TConfigCamposFormRegras;
    procedure DefineFKnaExclusao(const ACampo, ATabela: string);
    procedure HabilitaGenerator;
    procedure NaoGerarCodigo;
    procedure CodigoComCodEmpresa;
    function DefineObrigatorioField(const ACampo, AEdit: string): TConfigCamposFormRegras;
    function DefineObrigatorioComponent(const AGrupo, AEdit: string): TConfigCamposFormRegras;
    procedure DefineValorInicial(const ACampo: string; const AValorInicial: Variant);
    procedure DefineValorInicialDataAtual(const ACampo: string);
    procedure DefineValorInicialTConfig(const ACampo, ATConfig: string);
    procedure DefineValorInicialTConfigIfThen(const ACampo, ATConfig: string; AValorTrue, AValorFalse: Variant);
    procedure CampoDuploPreenchido(const ACampo, AEdit, AEditSecundario: string);
    procedure ZeroA100(const ACampo, AEdit: string);
    procedure ImpedirDuplicidade(const ACampo, AEdit: string; ASQLWherePersonalizado: string = '');
    procedure FormatacaoPadrao(const ACampo, AFormatacao: string);
    procedure FormatacaoFinanceiro(const ACampo: string);
    procedure FormatacaoQuantidade(const ACampo: string);

    {TODO: Validação de grupos. Precisamos ter um recurso para validar a tela toda quando clicar no botão
     de validação novo que foi criado no mestre. Exemplo da NFe, deve ter um parâmetro que defina que as regras serão
     executadas quando o campo IS_NOTAFISCAL = 'S', ou seja, vamos informar um campo que, quando tiver uma informação X,
     a regra deve ser validada. Isso substitui a necessidade de ter o Grupo definido nesta regra, fazendo com que ela
     seja mais "inteligente" e execute apenas na situação em que deve ser executada}

    class function GetRegrasPadroesTabela(const ATabela: string): TConfigCamposRegrasPadroesTabela; static;
  end;

  TConfigCamposFormLista = class
  strict private
    FLista: TObjectList<TConfigCamposFormRegras>;
  public
    function BuscaPeloObjeto(const AObject: TObject): TConfigCamposFormRegras;
    function BuscaPeloObjetoEGrupo(const AObject: TObject; const AGrupos: TStrings): TConfigCamposFormRegras;
    function BuscaPeloNome(const AForm, AComponente, ATabela, ACampo: string; const ACriarSeNaoExistir: Boolean = False): TConfigCamposFormRegras;
    function BuscaPelaTabela(const ATabela, ACampo: string): TConfigCamposFormRegras;
    function BuscaPeloComponente(const AForm, AComponente: string; const ACriarSeNaoExistir: Boolean = False): TConfigCamposFormRegras;
    function BuscaPeloCodigo(const ACodigo: Integer): TConfigCamposFormRegras;
    function New: TConfigCamposFormRegras;

    property Items: TObjectList<TConfigCamposFormRegras> read FLista;

    constructor Create;
    destructor Destroy; override;
  end;

  TConfigCamposFormValueFK = class
  private
    FTabela: string;
    FCampo: string;
  public
    property Tabela: string read FTabela write FTabela;
    property Campo: string read FCampo write FCampo;
  end;

  TConfigCamposFormTabela = class
  strict private
    FListaFKExclusao: TObjectList<TConfigCamposFormValueFK>;
    FGeneratorHabilitado: Boolean;
    FGeneratorDesativado: Boolean;
    FNome: string;
    FCodigoComCodEmpresa: Boolean;
  public
    property Nome: string read FNome write FNome;
    property GeneratorHabilitado: Boolean read FGeneratorHabilitado write FGeneratorHabilitado;
    property NaoGerarCodigo: Boolean read FGeneratorDesativado write FGeneratorDesativado;
    property CodigoComCodEmpresa: Boolean read FCodigoComCodEmpresa write FCodigoComCodEmpresa;

    {Tem o mesmo comportamento de uma FK, faz a verificação do item se existe na tabela. Usado apenas quando o usuário
     clica em Excluir. A FK no banco pode ou não existir, a verificação ocorrerá de qualquer forma}
    property ListaFKExclusao: TObjectList<TConfigCamposFormValueFK> read FListaFKExclusao;
    function AddFKExclusao: TConfigCamposFormValueFK;

    constructor Create;
    destructor Destroy; override;
  end;

  TConfigCamposForm = class
  strict private
    FListaConfigs: TConfigCamposFormLista;
    FListaPadroes: TConfigCamposFormLista;
    FListaTabelas: TObjectList<TConfigCamposFormTabela>;
    FListaInstanciasForms: TObjectList<TConfigCamposFormValidations>;
    FConfigsCarregadas: Boolean;
    FUltimaDtAlteracao: TDateTime;
    class var FInstance: TConfigCamposForm;

    constructor CreatePrivate;
  public
//    class procedure InternalExcluirRegistrosFilhos(const AContainer: TComponent; const ATabela: TBancoTabela);
    class procedure InternalExcluirNormalFilhosDe(const AContainer: TComponent; const ATabela: TBancoTabela; const ADataSet: TDataSet);
    class procedure InternalExcluirRecursivoFilhosDe(const AContainer: TComponent; const ATabela: TBancoTabela; const ADataSet: TDataSet; const AExcluirFilhosDesteCodigo: Variant);

    procedure Carregar;  //Carrega as configurações do banco
    procedure Atualizar; //Carrega apenas se for necessário, se algo mudou
    procedure AplicarConfiguracoesCampos(const AForm: TCustomForm);
    procedure ControlarForm(const AForm: TForm; ADataSet: TDataSet);
    procedure ControlarTreeList(const AForm: TForm; ATreeList: TcxDBTreeList);
    procedure RemoverForm(const AForm: TForm);

//    procedure PreencheValoresIniciaisDataSet(const ADataSet: TDataSet; ATabela: string = '');

    property Configs: TConfigCamposFormLista read FListaConfigs;
    property Padroes: TConfigCamposFormLista read FListaPadroes;

    function GetTabela(const ATabela: string): TConfigCamposFormTabela;
    function GetFormValidation(const AForm: TForm): TConfigCamposFormValidations;

    function DeveValidarEditPeloMestre(const AForm: TForm; AEdit: TcxCustomEdit): Boolean;

    //Execução das Validações
    function ValidarFKExclusao(const AForm: TForm): Boolean;
//    procedure ExcluirRegistrosFilhos(const ADataSet: TDataSet);

    function GetErrosValidacoes(const AForm: TForm): string;

    constructor Create;
    destructor Destroy; override;

    class function GetInstance: TConfigCamposForm;
    class procedure ReleaseInstance;
  end;
        *)
{$ENDREGION}

implementation

uses
  wrFuncoes, OleCtrls, ComObj, cxGeometry, IOUtils, Types, XMLIntf, XMLDoc, XMLDom, ACBrUtil, pcnConversao, Rtti,
  pcnConversaoNFe, IBX.IBStoredProc, wrConstantes,  RegularExpressions
  {$IFDEF COMERCIAL}, Principal, CadM{$ENDIF};

{ TcxComboBoxHelper }

function TcxComboBoxHelper.GetItemSelecionado: string;
begin
  Result := '';
  if ItemIndex > -1 then
    Result := Properties.Items[ItemIndex];
end;

function TcxComboBoxHelper.GetObjetoSelecionado: TObject;
begin
  Result := nil;
  if ItemIndex > -1 then
    Result := Properties.Items.Objects[ItemIndex];
end;

{$REGION '////////////////////////// FOTOS ///////////////////////////////////'}
{ TFotos }
(*
class procedure TFotos.AdicionarFoto(Arquivo, Familia: string);
var
  NewImagem, ANovoNome : string;
  I : Integer;
begin
  if Familia = '' then
  begin
    ShowMessageWR('Família não definida.');
    Exit;
  end;
  AjustaNomeArquivo(Arquivo);
  if TamanhoArquivo(Arquivo) > 0 then
  begin
//    if not DirectoryExists(Fotos) then
//      if not ForceDirectories(Fotos) then
//      begin
//        ShowMessageWR('Não foi possível criar o diretório das fotos. Verifique se você tem permissão para executar esta ação.');
//        Exit;
//      end;
    ANovoNome := ExtractFilePath(Arquivo) + Familia + '-0' + ExtractFileExt(Arquivo);
    NewImagem := ProximoNome(ANovoNome);
    CopyFile(PWideChar(Arquivo), PWideChar(NewImagem), True);
  end;
end;

class procedure TFotos.AjustaNomeArquivo(var ANomeArquivo: string);
begin
  ANomeArquivo := ReplaceStr(ANomeArquivo, sLineBreak, '');
end;

class function TFotos.ArquivoExisteWC(Arquivo: string): Boolean;
var
  SR: TSearchRec;
  I: Integer;
  ATmpNome : string;
begin
  Result := False;
  AjustaNomeArquivo(Arquivo);
  ATmpNome := ExtractFileName(Arquivo);
  Arquivo  := ExtractFilePath(Arquivo) + ExtractFileNameWithoutExt(Arquivo) + '.*';
  I := FindFirst(Arquivo, faArchive, SR);
  try
    Result := (I = 0);
  finally
    SysUtils.FindClose(SR);
  end;
end;

class procedure TFotos.CarregaFotoPessoa(AImage: TcxImage; ACodPessoa: string);
var
  AExt, ACaminho : string;
begin
  //Compatível somente com funcionários, ajustar para compatibilizar com Pessoas
  try
    AImage.Clear;
    for AExt in EXTENSOES_IMAGENS do
    begin
      ACaminho := GetCaminhoGED_Pessoa + ACodPessoa + '.' + AExt;
      if FileExists(ACaminho) then
      begin
        AImage.Picture.LoadFromFile(ACaminho);
        Break;
      end;
    end;
  except end;
end;

class procedure TFotos.DefinePadrao(AArquivo, AFamilia, ACodProduto: string);
var
  AExiste: Boolean;
  ATmp, AArqPadraoAtual, ANomeArquivo, ANomeImagem : string;
  ANomeSplit : TArray<string>;

  function GetFirst(ANome: string): string;
  var
    SR: TSearchRec;
    Arq : string;
  begin
    Arq := ExtractFilePath(AArquivo) + ANome + '-0.*';
    SysUtils.FindFirst(Arq, faArchive, SR);
    try
      if SR.Name <> '' then
        Result := ExtractFilePath(AArquivo) + SR.Name
      else
        Result := '';
    finally
      SysUtils.FindClose(SR);
    end;
  end;
begin
  AjustaNomeArquivo(AArquivo);

  ANomeSplit  := ExtractFileNameWithoutExt(AArquivo).Split(['-']);
  ANomeImagem := ANomeSplit[0];

  //Se for uma imagem da família, então retira o padrão (-0) do produto
  if LeftStr(ANomeImagem, 1) <> 'P' then
  begin
    AArqPadraoAtual := GetFirst('P' + ACodProduto);
    if AArqPadraoAtual <> '' then
      RenameFile(AArqPadraoAtual, ProximoNome(AArqPadraoAtual, 1));
  end;

  AArqPadraoAtual := GetFirst(ANomeImagem);
  if AArqPadraoAtual <> '' then
  begin
    RenameFile(AArqPadraoAtual, CaminhoGED + '1.bak');
    RenameFile(AArquivo, CaminhoGED + ANomeImagem + '-0' + ExtractFileExt(AArquivo));
    RenameFile(CaminhoGED + '1.bak', ProximoNome(AArqPadraoAtual));
  end else
    RenameFile(AArquivo, CaminhoGED + ANomeImagem + '-0' + ExtractFileExt(AArquivo));
end;

class function TFotos.ExtensaoAceita(Extensao: string): Boolean;
begin
  if Copy(Extensao, 1, 1) = '.' then
    Extensao := Copy(Extensao, 2, Length(Extensao));
  Result := AnsiMatchStr(AnsiUpperCase(Extensao), EXTENSOES_IMAGENS);
end;

class function TFotos.GetFotoPadrao(Familia, ACodProduto: String): String;
var
  Arquivo : String;
  I : Integer;
begin
  Result := '';
  for I := 0 to High(EXTENSOES_IMAGENS) do
  begin
    Arquivo := CaminhoGED + 'P' + ACodProduto + '-0.' + EXTENSOES_IMAGENS[I];
    if FileExists(Arquivo) then
    begin
      Result := Arquivo;
      Exit;
    end;

    Arquivo := CaminhoGED + Familia + '-0.' + EXTENSOES_IMAGENS[I];
    if FileExists(Arquivo) then
    begin
      Result := Arquivo;
      Exit;
    end;
  end;
  Arquivo := CaminhoGED + 'Sem_Imagem.gif';
  if FileExists(Arquivo) then
    Result := Arquivo
  else
    Result := '';
end;

//Modelo representado por <Fotos>\<Código>.ext
class procedure TFotos.ImportarModelo1;
var
  F : TSearchRec;
  Ret, I : Integer;
  ListaImagens : TList<TArqFam>;
  ArqFam : TArqFam;
  QuerX : TIBQuery;
  NewName : string;
begin
  ListaImagens := TList<TArqFam>.Create;
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select FAMILIA from PRODUTO where (CODIGO = :Codigo)';
    Ret := FindFirst(CaminhoGED + '*.*', faAnyFile, F);
    try
      while Ret = 0 do
      begin
        if (F.Attr and faDirectory <> faDirectory) and ExtensaoAceita(ExtractFileExt(F.Name)) then
        begin
          QuerX.Close;
          QuerX.ParamByName('Codigo').AsString := Copy(F.Name, 1, Length(F.Name) - Length(ExtractFileExt(F.Name)));
          QuerX.Open;
          if not QuerX.IsEmpty then
          begin
            ArqFam.Arquivo := CaminhoGED + F.Name;
            ArqFam.Familia := QuerX.Fields[0].AsString;
            ListaImagens.Add(ArqFam);
          end;
        end;
        Ret := FindNext(F);
      end;
    finally
      SysUtils.FindClose(F);
    end;
    for I := 0 to ListaImagens.Count - 1 do
    begin
      NewName := ProximoNome(ListaImagens[i].Arquivo);
      RenameFile(ListaImagens[i].Arquivo, NewName);
    end;
  finally
    ListaImagens.Free;
    QuerX.Free;
  end;
end;

//Modelo representado por <Fotos>\<Código>\<Número Incremental>.ext
class procedure TFotos.ImportarModelo2;
var
  F, F2 : TSearchRec;
  Ret, Ret2, I, MaxFam : Integer;
  AListaImagens : TList<TArqFam>;
  ArqFam : TArqFam;
  QuerX, QuerX2 : TIBQuery;
  ANewName, ANewDir : string;
begin
  AListaImagens := TList<TArqFam>.Create;
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select FAMILIA from PRODUTO where (CODIGO = :Cod)';
    Ret := FindFirst(CaminhoGED + '*.*', faAnyFile, F);
    try
      while Ret = 0 do
      begin
        if (F.Attr and faDirectory = faDirectory) and (F.Name <> '.') and (F.Name <> '..') then
        begin
          QuerX.Close;
          QuerX.Params[0].AsString := F.Name;
          QuerX.Open;
          if not QuerX.IsEmpty then
          begin
            Ret2 := FindFirst(CaminhoGED + IncludeTrailingPathDelimiter(F.Name) + '*.*', faAnyFile, F2);
            try
              while Ret2 = 0 do
              begin
                if ExtensaoAceita(ExtractFileExt(F2.Name)) then
                begin
                  ArqFam.Arquivo := CaminhoGED + IncludeTrailingPathDelimiter(F.Name) + F2.Name;
                  if QuerX.Fields[0].AsString = '' then
                  begin
                    QuerX2 := GeraQuery;
                    try
                      QuerX2.SQL.Text := 'select max(FAMILIA) from PRODUTO';
                      QuerX2.Open;
                      MaxFam := QuerX2.Fields[0].AsInteger + 1;
                      QuerX2.Close;
                      QuerX2.SQL.Text := 'update PRODUTO set FAMILIA = :Familia where (CODIGO = :Codigo)';
                      QuerX2.ParamByName('Familia').AsInteger := MaxFam;
                      QuerX2.ParamByName('Codigo').AsString   := F.Name;
                      QuerX2.ExecSQL;
                      QuerX2.Transaction.CommitRetaining;
                      QuerX.Close;
                      QuerX.Open;
                    finally
                      QuerX2.Free;
                    end;
                  end else
                    MaxFam := QuerX.Fields[0].AsInteger;
                  ArqFam.Familia := IntToStr(MaxFam);
                  AListaImagens.Add(ArqFam);
                end;
                Ret2 := FindNext(F2);
              end;
            finally
              SysUtils.FindClose(F2);
            end;
          end;
        end;
        Ret := FindNext(F);
      end;
    finally
      SysUtils.FindClose(F);
    end;
    for I := 0 to AListaImagens.Count - 1 do
    begin
      ANewName := ProximoNome(AListaImagens[i].Arquivo);
      RenameFile(AListaImagens[i].Arquivo, ANewName);
    end;
  finally
    AListaImagens.Free;
    QuerX.Free;
  end;
end;

class function TFotos.ProximoNome(CaminhoArquivo: string; AIniciandoEm: Integer = 0): string;
var
  NewNome, AOldNome : string;
  I : Integer;
begin
  AOldNome := SplitString(ExtractFileName(CaminhoArquivo), '-')[0];
  I := AIniciandoEm - 1;
  repeat
    Inc(I);
    NewNome := CaminhoGED + AOldNome + '-' + IntToStr(I) + ExtractFileExt(CaminhoArquivo);
  until not ArquivoExisteWC(NewNome);
  Result := NewNome;
end;

class function TFotos.TamanhoArquivo(Arquivo: string): Integer;
begin
  AjustaNomeArquivo(Arquivo);
  with TFileStream.Create(Arquivo, fmOpenRead or fmShareExclusive) do
  try
    Result := Size;
  finally
    Free;
  end;
end;

class procedure TFotos.TornarExclusivo(AArquivo, ACodProduto: string);
var
  ANovoNome : string;
begin
  AjustaNomeArquivo(AArquivo);
  ANovoNome := ExtractFilePath(AArquivo) + 'P' + ACodProduto + '-0' + ExtractFileExt(AArquivo);
  ANovoNome := ProximoNome(ANovoNome);
  RenameFile(AArquivo, ANovoNome);
end;

class procedure TFotos.TransfereFotos(FamiliaOrigem, FamiliaDestino: Integer);
var
  F : TSearchRec;
  Ret, P: Integer;
  NovoNome : string;
begin
  if not ((FamiliaOrigem > 0) or (FamiliaDestino > 0)) then
  begin
    ShowMessageWR('Família não definida.');
    Exit;
  end;
  Ret := FindFirst(CaminhoGED+ IntToStr(FamiliaOrigem) + '-*.*', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      if (F.Name <> '.') And (F.Name <> '..') then
      begin
        P := Pos('-', F.Name);
        NovoNome := IntToStr(FamiliaDestino) + Copy(F.Name, P, Length(F.Name));
        RenameFile(CaminhoGED+ F.Name , CaminhoGED + NovoNome);
      end;
      Ret := FindNext(F);
    end;
  finally
    SysUtils.FindClose(F);
  end;
end;    *)

{ TCarregaImagem }

constructor TCarregaImagem.Create;
begin
  inherited Create(True);
  FreeOnTerminate := True;
end;

procedure TCarregaImagem.ExecutaCallback;
begin
  FCallback(CarregaImagemCaminho(FCaminho, FCodProduto), FCodProduto);
end;

procedure TCarregaImagem.Execute;
begin
  inherited;
//  FCaminho := TFotos.GetFotoPadrao(Familia, CodProduto);
//  FCaminho := GetCaminhoGED_Produto_Pequena(CodProduto);
//  FCaminho := CaminhoGED + Format(__PASTA_PRODUTO_MINIATURA, [Codigo]);
// Aqui deve Verificar o diretório
// Carregar o Arquivo em segundo plano
// Tem que ver os Produtos de Família

  if Assigned(FCallback) then
    Synchronize(ExecutaCallback);
end;
{$ENDREGION}

{$REGION '////////////////////////// PRODUTO /////////////////////////////////'}
// 'uProdutos -  Tipos que são relativos ao cadastro do Produto'

{ TProdutoArrumarEstoqueProducao }

constructor TProdutoArrumarEstoqueProducao.Create;
begin
  FTransa := GeraFDTransacao;
  FListaQuantMovimentar := TObjectList<TProdutoQuantPair>.Create;
 { if TThread.CurrentThread.ThreadID = MainThreadID then
    FFrmAguarde := TFrmAguarde.Create(nil);   }
end;

destructor TProdutoArrumarEstoqueProducao.Destroy;
begin
  FListaQuantMovimentar.Free;
  FTransa.Free;
//  FFrmAguarde.Free;
  inherited;
end;

function TProdutoQuantMovimentosVenda.EstaNaListaExcluir(AQuery: TDataSet): Boolean;
var
  I: Integer;
begin
  //Verifica se este item já não foi processado
  Result := False;
  for I := 0 to FListaExcluir.Count - 1 do
  begin
    if (FListaExcluir[i].Codigo = AQuery.FieldByName('CODIGO').AsInteger) and
       (FListaExcluir[i].CodEmpresa = AQuery.FieldByName('CODEMPRESA').AsString) then
    begin
      Result := True;
      Exit;
    end;
  end;
end;

function TProdutoArrumarEstoqueProducao.GetProdutoMovimentar(const ACodProduto, ACodEmpresa: string): TProdutoQuantPair;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to FListaQuantMovimentar.Count - 1 do
  begin
    if (FListaQuantMovimentar[i].CodProduto = ACodProduto) and (FListaQuantMovimentar[i].CodEmpresa = ACodEmpresa) then
    begin
      Result := FListaQuantMovimentar[i];
      Exit;
    end;
  end;

  if Result = nil then
  begin
    Result := TProdutoQuantPair.Create(Self);
    Result.CodProduto := ACodProduto;
    Result.CodEmpresa := ACodEmpresa;
    FListaQuantMovimentar.Add(Result);
  end;
end;

{ TProdutoQuantPair }

constructor TProdutoQuantPair.Create(AOwner: TProdutoArrumarEstoqueProducao);
begin
  FOwner := AOwner;
  FListaVendas := TObjectList<TProdutoQuantMovimentosVenda>.Create;
end;

destructor TProdutoQuantPair.Destroy;
begin
  FListaVendas.Free;
  inherited;
end;

function TProdutoQuantPair.GetVenda(ACodVenda: string): TProdutoQuantMovimentosVenda;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to FListaVendas.Count - 1 do
  begin
    if FListaVendas[i].CodVenda = ACodVenda then
    begin
      Result := FListaVendas[i];
      Exit;
    end;
  end;

  if Result = nil then
  begin
    Result := TProdutoQuantMovimentosVenda.Create(FOwner);
    Result.CodVenda := ACodVenda;
    FListaVendas.Add(Result);
  end;
end;

{ TProdutoQuantMovimentosVenda }

constructor TProdutoQuantMovimentosVenda.Create(AOwner: TProdutoArrumarEstoqueProducao);
begin
  FOwner := AOwner;
  FListaExcluir := TObjectList<TProdutoMovimentoCodigo>.Create;
end;

destructor TProdutoQuantMovimentosVenda.Destroy;
begin
  FListaExcluir.Free;
  inherited;
end;

{ TProdutoTipo }
procedure TProdutoTipo.Assign(Source: TPersistent);
begin
  if Source is TProdutoTipo then
  begin
    FCodigo    := TProdutoTipo(Source).Codigo;
    FDescricao := TProdutoTipo(Source).Descricao;
  end else
    inherited;
end;

procedure TProdutoTipo.ReadProdutoTipo(AQuery: TDataSet);
begin
  FCodigo    := AQuery.FieldByName('CODIGO').AsInteger; //Ler o código do field pois caso não exista vai retornar 0
  FDescricao := AQuery.FieldByName('DESCRICAO').AsString;
end;

procedure TProdutoTipo.ReadProdutoTipo(ACodProdutoTipo: Integer);
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQueryFast;
  try
    QuerX.SQL.Text := 'select CODIGO, DESCRICAO ' +
                      'from PRODUTO_TIPO ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].value := ACodProdutoTipo;
    QuerX.Open;
    ReadProdutoTipo(QuerX);
  finally
    QuerX.Free;
  end;
end;

procedure TProdutoTipo.ReadProdutoTipoFromCodProduto(ACodProduto: string);
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQueryFast;
  try
    QuerX.SQL.Text := 'select PT.CODIGO, PT.DESCRICAO ' +
                      'from PRODUTO P ' +
                      'left join PRODUTO_TIPO PT on (P.CODPRODUTO_TIPO = PT.CODIGO) ' +
                      'where (P.CODIGO = :Cod)';
    QuerX.Params[0].value := ACodProduto;
    QuerX.Open;
    ReadProdutoTipo(QuerX);
  finally
    QuerX.Free;
  end;
end;

{$ENDREGION}

{$REGION '////////////////////////// MEDIDAS /////////////////////////////////'}

{ TMedidasBase }

procedure TMedidasBase.Assign(Source: TPersistent);
begin
  if Source is TMedidasBase then
  begin
    FLargura     := TMedidasBase(Source).Largura;
    FEspessura   := TMedidasBase(Source).Espessura;
    FComprimento := TMedidasBase(Source).Comprimento;
  end else
    inherited;
end;

procedure TMedidasBase.Clear;
begin
  FLargura     := 0;
  FEspessura   := 0;
  FComprimento := 0;
end;

procedure TMedidasBase.MedidasChanged;
begin
  //Implementado nos Herdados
end;

procedure TMedidasBase.SetComprimento(const Value: Double);
begin
  FComprimento := Value;
  MedidasChanged;
end;

procedure TMedidasBase.SetEspessura(const Value: Double);
begin
  FEspessura := Value;
  MedidasChanged;
end;

procedure TMedidasBase.SetLargura(const Value: Double);
begin
  FLargura := Value;
  MedidasChanged;
end;
   (*
{ TProdutoMedidas }

procedure TProdutoMedidas.Assign(Source: TPersistent);
begin
  inherited;
  if Source is TProdutoMedidas then
  begin
    FQtdadePeca := TProdutoMedidas(Source).QtdadePeca;
    FUnidade    := TProdutoMedidas(Source).Unidade;
    FQuant      := TProdutoMedidas(Source).Quant;
    FProduto.Assign(TProdutoMedidas(Source).Produto);
  end;
end;

procedure TProdutoMedidas.BeginUpdate;
begin
  Inc(FUpdateCount);
end;

procedure TProdutoMedidas.CalculaQuant;
begin
  if IsUpdating then
    Exit;
  Quant := FQtdadePeca;
  if FUnidade.CalcComprimento then
    Quant := Quant * Comprimento;
  if FUnidade.CalcLargura then
    Quant := Quant * Largura;
  if FUnidade.CalcEspessura then
    Quant := Quant * Espessura;

  {Já foi visto que aqui o arredondamento DEVE ser sempre -8, mas como a alteração vai fazer com que as quantidades dos
   produtos mude, vamos ter que pensar melhor em como mudar}
  Quant := RoundTo(Quant, -GetCasasDecimaisQuantidade);
end;

procedure TProdutoMedidas.Clear;
begin
  inherited;
  FreeAndNil(FProduto);
  FProduto := TProdutoConfMedidas.Create;
  FUnidade.Clear;
  FQtdadePeca := 1;
end;

constructor TProdutoMedidas.Create;
begin
  inherited;
  FProduto := TProdutoConfMedidas.Create;
  FQtdadePeca := 1;
  FUnidade.Clear;
end;

destructor TProdutoMedidas.Destroy;
begin
  FProduto.Free;
  inherited;
end;

procedure TProdutoMedidas.EndUpdate(ARecalcularValores: Boolean = False);
begin
  Dec(FUpdateCount);
  if FUpdateCount < 0 then
    FUpdateCount := 0;
  if ARecalcularValores then
  begin
    CalculaQuant;
  end;
end;

function TProdutoMedidas.GetArea: Double;
begin
  Result := 0;
  if FProduto.UsaComprimento then
    Result := FComprimento;
  if FProduto.UsaLargura then
    Result := Result * FLargura;
  if FProduto.UsaEspessura then
    Result := Result * FEspessura;
end;

function TProdutoMedidas.IsUpdating: Boolean;
begin
  Result := (FUpdateCount > 0);
end;

procedure TProdutoMedidas.MedidasChanged;
begin
  inherited;
  CalculaQuant;
end;

procedure TProdutoMedidas.SetProduto(const Value: TProdutoConfMedidas);
begin
  FProduto.Assign(Value);
end;

procedure TProdutoMedidas.SetQtdadePeca(const Value: Double);
begin
  FQtdadePeca := Value;
  CalculaQuant;
end;     *)


{ TMedidas }

procedure TMedidas.Clear;
begin
  Self.Medidas          := '';
  Self.Caption          := '';
  Self.CaptionLetras    := '';
  Self.CaptionAbreviado := '';
  Self.Comprimento      := 0;
  Self.Largura          := 0;
  Self.Espessura        := 0;
  Self.Quant            := 0;
  Self.Perimetro        := 0;
end;

{ TUnidade }

procedure TUnidade.Clear;
begin
  Self.Unidade         := '';
  Self.Descricao       := '';
  Self.CalcComprimento := False;
  Self.CalcLargura     := False;
  Self.CalcEspessura   := False;
end;

(*{ TProduto }

procedure TProdutoConfMedidas.Assign(Source: TPersistent);
begin
  if Source is TProdutoConfMedidas then
  begin
    FCodigo          := TProdutoConfMedidas(Source).Codigo;
    FDescricao       := TProdutoConfMedidas(Source).Descricao;
    FUsaComprimento  := TProdutoConfMedidas(Source).UsaComprimento;
    FUsaLargura      := TProdutoConfMedidas(Source).UsaLargura;
    FUsaEspessura    := TProdutoConfMedidas(Source).UsaEspessura;
    FComprimentoFixo := TProdutoConfMedidas(Source).ComprimentoFixo;
    FLarguraFixa     := TProdutoConfMedidas(Source).LarguraFixa;
    FEspessuraFixa   := TProdutoConfMedidas(Source).EspessuraFixa;
  end else
    inherited;
end;

procedure TProdutoConfMedidas.Clear;
begin
  FCodigo          := '';
  FDescricao       := '';
  FEspessuraFixa   := False;
  FUsaLargura      := False;
  FLarguraFixa     := False;
  FUsaEspessura    := False;
  FUsaComprimento  := False;
  FComprimentoFixo := False;
end;

procedure TProdutoConfMedidas.ReadProduto(const AQuery: TDataSet);
begin
  FCodigo          := AQuery.FieldByName('CODIGO').AsString; //Ler o código do field pois caso não exista vai retornar vazio, e deve ser assim
  FDescricao       := AQuery.FieldByName('DESCRICAO').AsString;
  FComprimentoFixo := (AQuery.FieldByName('COMPRIMENTO_FIXO').AsString = 'S');
  FLarguraFixa     := (AQuery.FieldByName('LARGURA_FIXA').AsString = 'S');
  FEspessuraFixa   := (AQuery.FieldByName('ESPESSURA_FIXA').AsString = 'S');
  FUsaComprimento  := (AQuery.FieldByName('USA_COMPRIMENTO').AsString = 'S');
  FUsaLargura      := (AQuery.FieldByName('USA_LARGURA').AsString = 'S');
  FUsaEspessura    := (AQuery.FieldByName('USA_ESPESSURA').AsString = 'S');
end;   *)

function TUnidade.UnidadeCalculada: Boolean;
begin
  Result := Self.CalcComprimento or Self.CalcLargura or Self.CalcEspessura;
end;

(*
{ TProdutoConfMedidasControle }

procedure TProdutoConfMedidasControle.Add(const AItem: TProdutoConfMedidas);
begin
  FLista.Add(AItem);
end;

procedure TProdutoConfMedidasControle.Clear;
begin
  FLista.Clear;
end;

function TProdutoConfMedidasControle.Count: Integer;
begin
  Result := FLista.Count;
end;

constructor TProdutoConfMedidasControle.Create;
begin
  raise EWRException.Create('Utilize o método GetInstance para instanciar este objeto');
end;

constructor TProdutoConfMedidasControle.CreatePrivate;
begin
  FLista := TObjectList<TProdutoConfMedidas>.Create;
end;

destructor TProdutoConfMedidasControle.Destroy;
begin
  FLista.Free;
  inherited;
end;

class function TProdutoConfMedidasControle.GetInstance: TProdutoConfMedidasControle;
begin
  if not Assigned(FInstance) then
    FInstance := TProdutoConfMedidasControle.CreatePrivate;
  Result := FInstance;
end;

function TProdutoConfMedidasControle.GetItems(Index: Integer): TProdutoConfMedidas;
begin
  Result := FLista[Index];
end;

class procedure TProdutoConfMedidasControle.ReleaseInstance;
begin
  FreeAndNil(TProdutoConfMedidasControle.FInstance);
end;    *)
{$ENDREGION}

{$REGION '////////////////////////// PESSOAS /////////////////////////////////'}

////////////Pessoas///////////

{ TConsuCEPRetorno }

procedure TConsuCEPRetorno.Clear;
begin
  CEP         := '';
  UF          := '';
  Endereco    := '';
  Bairro      := '';
  CodCidade   := Null;
  Cidade      := '';
  Complemento := '';
end;


constructor TListaPessoaTipo.CreatePrivate;
begin
  inherited Create;
  FLista := TObjectList<TPessoaTipo>.Create;
end;

function TListaPessoaTipo.GetPessoaTipo(Index: Integer): TPessoaTipo;
begin
  Result := FLista[Index];
end;

function TListaPessoaTipo.GetTipo(const ACodigo: string): TPessoaTipo;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to FLista.Count - 1 do
  begin
    if FLista[i].Codigo = ACodigo then
      Exit(FLista[i]);
  end;
end;

function TListaPessoaTipo.GetTipoByName(ADescricao: string): TPessoaTipo;
var
  I: Integer;
begin
  Result := nil;
  ADescricao := AnsiUpperCase(ADescricao);
  for I := 0 to FLista.Count - 1 do
  begin
    if AnsiUpperCase(FLista[i].Descricao) = ADescricao then
      Exit(FLista[i]);
  end;
end;

procedure TListaPessoaTipo.PreencheTiposPessoaPeloCodigo(const ACodPessoa: string; AStrings: TStrings);
var
  I: Integer;
  QuerX: TIBQuery;
  ATipos: string;
begin
  if Self.Count = 0 then
    Exit;

  QuerX := GeraQuery;
  try
    QuerX.SQL.BeginUpdate;
    QuerX.SQL.Text := 'select';
    for i := 0 to Self.Count - 1 do
    begin
      QuerX.SQL.Add('IS_' + Items[I].Codigo + ',');
      QuerX.SQL.Add('SEQUENCIA_' + Items[I].Codigo);
      if I < Self.Count - 1 then
        QuerX.SQL.Add(',');
    end;
    QuerX.SQL.Add('from PESSOAS where (CODIGO = :Cod)');
    QuerX.SQL.EndUpdate;
    QuerX.Params[0].AsString := Copy(ACodPessoa, 1, 10);
    QuerX.Open;

    PreencheTiposPessoa(QuerX, AStrings, [pptConsulta]);
  finally
    QuerX.Free;
  end;
end;

procedure TListaPessoaTipo.PreencheTiposPessoa(ADataSet: TDataSet; AStrings: TStrings; AFiltrarPorPermissao: TPermissoesPessoaTipo = []);
var
  I: Integer;
  ATipo: TPessoaTipo;
begin
  AStrings.BeginUpdate;
  try
    for i := 0 to Self.Count - 1 do
    begin
      ATipo := Items[I];
      if (ADataSet.FieldByName('IS_' + ATipo.Codigo).AsString = 'S') and ((AFiltrarPorPermissao = []) or (AFiltrarPorPermissao * ATipo.Permissoes <> [])) then
        AStrings.Values[ATipo.Codigo] := FormatFloat('0', ADataSet.FieldByName('SEQUENCIA_' + ATipo.Codigo).AsFloat);
    end;
  finally
    AStrings.EndUpdate;
  end;
end;

function TListaPessoaTipo.Count: Integer;
begin
  Result := FLista.Count;
end;

procedure TListaPessoaTipo.Atualizar;
var
  QuerX: TFDQuery;
  APessoaTipo: TPessoaTipo;
  ASQL: string;
begin
  {$IFDEF PAF}
  QuerX := GeraFDQuery(TDefinicoesBancoFD.BancoServidor);
  {$ELSE}
  QuerX := GeraFDQuery;
  {$ENDIF}
  try
    QuerX.SQL.Text := 'select * ' +
                      'from PESSOAS_TIPO ' +
                      'order by DESCRICAO asc';
    try
      QuerX.Open;
      QuerX.FetchAll;
    except
      Exit; //Quando ainda não existe a tabela PESSOAS_TIPO
    end;
    while not QuerX.Eof do
    begin
      APessoaTipo := GetTipo(QuerX.FieldByName('CODIGO').AsString);
      if APessoaTipo = nil then
      begin
        APessoaTipo := TPessoaTipo.Create;
        APessoaTipo.Codigo     := QuerX.FieldByName('CODIGO').AsString;
        APessoaTipo.Permissoes := [];
        FLista.Add(APessoaTipo);
      end;
      APessoaTipo.Descricao := QuerX.FieldByName('DESCRICAO').AsString;
      if QuerX.FindField('ATIVO') <> nil then //Necessário pois pode o campo não existir antes da atualização do banco
        APessoaTipo.Ativo := (QuerX.FieldByName('ATIVO').AsString <> 'N');
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;

  {$IFDEF COMERCIAL}
  //Faz os ajustes das permissões
  for APessoaTipo in FLista do
  begin
    if ASQL <> '' then
      ASQL := ASQL + ', ';
    ASQL := ASQL + QuotedStr(APessoaTipo.Codigo);
  end;

  if FLista.Count > 0 then
  begin
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'select UE.* ' +
                        'from USUARIO_EXTRAEX UE ' +
                        'where ((UE.CODUSUARIO = :CodUsuario1) ' +
                        '      or (UE.CODUSUARIO = (select UP.PROFILE ' +
                        '                           from USUARIO UP ' +
                        '                           where (UP.CODIGO = :CodUsuario2)))) ' +
                        '      and (UE.MODULO in (' + ASQL + '))';
      QuerX.ParamByName('CodUsuario1').AsInteger := Usuario.Codigo;
      QuerX.ParamByName('CodUsuario2').AsInteger := Usuario.Codigo;
      QuerX.Open;
      QuerX.FetchAll;
      for APessoaTipo in FLista do
      begin
        if QuerX.Locate('MODULO;COMPONENTE', VarArrayOf([APessoaTipo.Codigo, 'CAD']), []) then
          APessoaTipo.Permissoes := APessoaTipo.Permissoes + [pptCadastro];
        if QuerX.Locate('MODULO;COMPONENTE', VarArrayOf([APessoaTipo.Codigo, 'CON']), []) then
          APessoaTipo.Permissoes := APessoaTipo.Permissoes + [pptConsulta];
      end;
    finally
      QuerX.Free;
    end;
  end;
  {$ENDIF}
end;

constructor TListaPessoaTipo.Create;
begin
  raise Exception.Create('Utilize o método GetInstance para instanciar este objeto');
end;

destructor TListaPessoaTipo.Destroy;
begin
  FLista.Free;
  FInstance := nil;
  inherited;
end;

class function TListaPessoaTipo.GetInstance: TListaPessoaTipo;
begin
  if not Assigned(FInstance) then
    FInstance := TListaPessoaTipo.CreatePrivate;
  Result := FInstance;
end;

{ TPessoaRetorno }

procedure TPessoaRetorno.Assign(APessoaRetorno: TPessoaRetorno);
begin
  if Assigned(APessoaRetorno) then
  begin
    FCodigo     := APessoaRetorno.Codigo;
    FSequencia  := APessoaRetorno.Sequencia;
    FPessoaTipo := APessoaRetorno.Tipo; //Não usar o Assign aqui pois o objeto é sempre o mesmo.
  end else
    Clear;
end;

procedure TPessoaRetorno.Clear;
begin
  FSequencia  := 0;
  FCodigo     := '';
  FPessoaTipo := nil;
end;

constructor TPessoaRetorno.Create;
begin
  inherited;
end;

constructor TPessoaRetorno.Create(const ACodigo, ATipo: string; ASequencia: Integer);
begin
  inherited Create;
  Codigo    := ACodigo;
  Tipo      := PessoaListaTipos.GetTipo(ATipo);
  Sequencia := ASequencia;
end;

{ TPessoaTipo }

procedure TPessoaTipo.Assign(APessoaTipo: TPessoaTipo);
begin
  if Assigned(APessoaTipo) then
  begin
    Self.Codigo    := APessoaTipo.Codigo;
    Self.Descricao := APessoaTipo.Descricao;
  end else
  begin
    Self.Codigo    := '';
    Self.Descricao := '';
  end;
end;

constructor TPessoaTipo.Create;
begin
  inherited Create;
  FAtivo := True;
end;
{$ENDREGION}

{$REGION '////////////////////////// ARQUIVOS ////////////////////////////////'}
///'Manipular arquivos TDocumentoWord, Excel'


{ TDocumentoWord }

procedure TDocumentoWord.Abrir;
begin
  FWinWord.Visible := True;
end;

constructor TDocumentoWord.Create;
begin
  FWinWord := Null;
end;

destructor TDocumentoWord.Destroy;
begin
  if not VarIsNull(FWinWord) then
    if not FWinWord.Visible then //um único if gera exceção de variant
      FWinWord.Quit;
  inherited;
end;

procedure TDocumentoWord.Exportar(const ACaminho: string; AFormato: TDocumentoWordExportFormat);
begin
  FDoc.ExportAsFixedFormat(ACaminho, Integer(AFormato));
end;

procedure TDocumentoWord.Imprimir;
begin
  FDoc.PrintOut(False);
end;

procedure TDocumentoWord.Inicializar(const ACaminhoDocumento: string);
var
  QuerX: TIBQuery;
  ADataAtual: TDateTime;
begin
  if not FileExists(ACaminhoDocumento) then
  begin
    ShowMessageWR('O arquivo "' + ACaminhoDocumento + '" não foi encontrato.');
    Abort;
  end;
  try
    FWinWord := CreateOleObject('Word.Application');
  except
    ShowMessageWR('Não foi possível encontrar o aplicativo Microsoft Word neste computador ou a versão instalada não é ' +
                  'compatível. Este recurso necessita que o Microsoft Word esteja instalado.');
    Abort;
  end;
  FWinWord.Visible := False;
  FDocs := FWinWord.Documents;
  FDoc  := FDocs.Open(ACaminhoDocumento);
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select * from EMPRESA where (CODIGO = :Cod)';
    QuerX.Params[0].AsString := EmpresaAtiva;
    QuerX.Open;
    PreencheTags('EMP', QuerX);
  finally
    QuerX.Free;
  end;

  ADataAtual := DataHoraSys;
  PreencheTag('DATA', FormatDateTime('dd/mm/yyyy', ADataAtual));
  PreencheTag('DT_EXTENSO', FormatDateTime('dd "de" mmmm "de" yyyy', ADataAtual));
  PreencheTag('HORA', FormatDateTime('hh:mm', ADataAtual));
end;

procedure TDocumentoWord.PreencheTag(const ATag, AValor: string);
begin
  try
    FDoc.Content.Find.Execute(FindText := '$' + ATag, ReplaceWith := AValor, Replace := wdReplaceAll);
  except
    ShowMessageWR('O conteúdo da tag "$' + ATag + '" é inválido ou muito longo. Esta tag não foi preenchida.');
  end;
end;

procedure TDocumentoWord.PreencheTags(const ATag: string; ADataSet: TDataSet);
var
  I: Integer;
begin
  for I := 0 to ADataSet.FieldCount - 1 do
  begin
    try
      FDoc.Content.Find.Execute(FindText := '$' + ATag + '_' + ADataSet.Fields[i].FieldName,
                                ReplaceWith := ADataSet.Fields[i].AsString,
                                Replace := wdReplaceAll);
    except
      on E:Exception do
        ShowMessageWR('O conteúdo da tag "$' + ATag + '_' + ADataSet.Fields[i].FieldName + '" é inválido ou muito longo. ' +
                      'Esta tag não foi preenchida.' + sLineBreak + 'Informações adicionais: ' + E.Message);
    end;
  end;
end;

procedure TDocumentoWord.Salvar(const ACaminho: string);
begin
  FDoc.SaveAs(ACaminho);
end;

{$IFDEF COMERCIAL}
{ TImportarVendaExcel }
     (*
constructor TImportarVendaExcel.Create;
begin
  FSpreadSheet := TdxSpreadSheet.Create(nil);
  FArquivoOuPasta := '';
end;

destructor TImportarVendaExcel.Destroy;
begin
  FSpreadSheet.Free;
  inherited;
end;

procedure TImportarVendaExcel.Importar(ACad: TForm);
var
  AVenda: TFrmVenda;
  AQuerF: TFDQuery;

  procedure _GetFamilia(_ACodFamilia: Integer);
  begin
    if AQuerF = nil then
    begin
      AQuerF := GeraFDQuery(AVenda.TransaFD);
      AQuerF.SQL.Text := 'select p.CODIGO, p.TAMANHO '+
                         'from PRODUTO p '+
                         'where (p.FAMILIA = :FAMILIA) '+
                         'order by TAMANHO';
    end;
    if (AQuerF.ParamByName('FAMILIA').AsInteger <> _ACodFamilia)  then
    begin
      AQuerF.Close;
      AQuerF.ParamByName('FAMILIA').AsInteger := _ACodFamilia;
      AQuerF.Open;
    end
  end;

var
  AArqs: TStringDynArray;
  ASheet: TdxSpreadSheetTableView;
  ACell: TdxSpreadSheetCell;
  i, l, q, t: Integer;
  APastaDestino, ANovoArq, ACopiaArq: string;
  ACNPJ, ACodPessoa, AObs, ARef, ATamanho: string;
  APessoaRetorno: TPessoaRetorno;
  AMsg: TStringList;
  AFamiliaNaoEncontrada: Boolean;
begin
  if (not (ACad is TFrmVenda)) or (Self.ArquivoOuPasta.IsEmpty) then
    Exit;
  APastaDestino := ExtractFilePath(ParamStr(0))+'Importados\';
  if not ForceDirectories(APastaDestino) then
  begin
    ShowMessageWR('Não foi possível criar a pasta de destino, onde serão armazenados todos os arquivos importados: '+
                   sLineBreak+APastaDestino+sLineBreak+'Nenhum arquivo foi importado!');
    Exit;
  end;
  AVenda := TFrmVenda(ACad);
  if AVenda.Cadastro.State in [dsEdit, dsInsert] then
  begin
    ShowMessageWR('A venda atual deve ser confirmada ou cancelada, para continuar e importar as vendas do excel!'+
                   sLineBreak+APastaDestino+sLineBreak+'Nenhum arquivo foi importado!');
    Exit;
  end;

  AMsg := TStringList.Create;
  LockWindowUpdate(AVenda.Handle);
  try
    if (Self.ArquivoOuPasta[Self.ArquivoOuPasta.Length] = '\') then
    begin
      AArqs := TDirectory.GetFiles(Self.ArquivoOuPasta, '*.xls');
      AArqs := AArqs+TDirectory.GetFiles(Self.ArquivoOuPasta, '*.xlsx');
    end
    else //Se não for uma pasta, é para importar somente um arquivo
    begin
      SetLength(AArqs, 1);
      AArqs[0] := Self.ArquivoOuPasta;
    end;

    for i := 0 to High(AArqs) do
    begin
      //Se o arquivo já foi importado, não importa novamente
      if AArqs[i].Contains('-CODVENDA') then
      begin
        AMsg.Add('Este arquivo já foi importado: '+AArqs[i]);
        Continue;
      end;
      try
        FSpreadSheet.LoadFromFile(AArqs[i]);
      except
        on E:Exception do
        begin
          AMsg.Add('Erro ao tentar carregar o arquivo: '+AArqs[i]+sLineBreak+E.Message);
          Continue;
        end;
      end;
      try
        ASheet := TdxSpreadSheetTableView(FSpreadSheet.Sheets[0]);
        if (ASheet = nil) then
        begin
          AMsg.Add('Este arquivo não contém planilha: '+AArqs[i]);
          Continue;
        end;
        //Algumas validações
        ACell := ASheet.Cells[3, 4];
        if (ACell = nil) or (ACell.AsString <> 'CNPJ') then
        begin
          AMsg.Add('Planilha fora do layout de importação no arquivo: '+AArqs[i]);
          Continue;
        end;
        ACell := ASheet.Cells[9, 1];
        if (ACell = nil) or (ACell.AsString <> 'REF') then
        begin
          AMsg.Add('Planilha fora do layout de importação no arquivo: '+AArqs[i]);
          Continue;
        end;
        ACell := ASheet.Cells[9, 2];
        if (ACell = nil) or (ACell.AsString <> 'COR') then
        begin
          AMsg.Add('Planilha fora do layout de importação no arquivo: '+AArqs[i]);
          Continue;
        end;
        //Pega e valida o CNPJ
        ACell := ASheet.Cells[3, 5];
        if (ACell = nil) then
        begin
          AMsg.Add('CNPJ não fornecido no arquivo: '+AArqs[i]);
          Continue;
        end;
        ACNPJ := ACell.AsString;
        if (not (CNPJ(ACNPJ))) then
        begin
          AMsg.Add('CNPJ inválido no arquivo: '+AArqs[i]);
          Continue;
        end;

        APessoaRetorno := TPessoaRetorno.Create;
        if not PessoaBuscaPeloCnpj(nil, ACNPJ, APessoaRetorno, 'CLI') then
        begin
          APessoaRetorno.Free;
          AMsg.Add('Cliente ['+ACNPJ+'] não cadastrado do arquivo: '+AArqs[i]);
          Continue;
        end;

        //Cria um cadastro novo na venda
        AVenda.btnNovo.Click;
        AVenda.EdtCodProduto.SetFocusWR; //Ao cadastrar uma nova venda, o foco fica no campo da pessoa resposnável, e isso faz o ValorComponetePessoa não funcionar.
//        AVenda.ControleWR.FindComponente(AVenda.EdtResponsavelÎPessoas).ValorComponentePessoa := APessoaRetorno;
//        if (AVenda.EdtResponsavelÎPessoasÎRAZAOSOCIAL.Text = '') then
//        begin
//          AMsg.Add('Ocorreu algum problema ao buscar o Cliente ['+ACNPJ+'] do arquivo: '+AArqs[i]);
//          Continue;
//        end;

        //Cadastra a data da venda.
        ACell := ASheet.Cells[1, 8]; //dia
        if (ACell <> nil) then
        try
          AObs := ACell.AsInteger.ToString;
          ACell := ASheet.Cells[1, 9]; //mês
          if (ACell <> nil) then
          begin
            AObs := AObs+'\'+ACell.AsInteger.ToString;
            ACell := ASheet.Cells[1, 10]; //ano
            if (ACell <> nil) then
            begin
              AObs := AObs+'\'+ACell.AsInteger.ToString;
              AVenda.Cadastro.FieldByName('DT_EMISSAO').AsDateTime := StrToDateTime(AObs);
            end;
          end;
        except end; //Se der erro em alguma conversão, só não preenche a data de emissão.

        //Coloca a condição de pagamento, prazo de entrega e obs no campo de observação da venda.
        AObs := '';
        //Condição de pagamento
        ACell := ASheet.Cells[5, 6];
        if (ACell <> nil) then
          AObs := 'Condição de pagamento: '+ACell.AsString;
        //Prazo de entrega
        ACell := ASheet.Cells[4, 6];
        if (ACell <> nil) then
          AObs := IfThen(not AObs.IsEmpty, AObs+sLineBreak)+
                  'Prazo de entrega: '+ACell.AsString;
        //Data de emissão
        AObs := IfThen(not AObs.IsEmpty, AObs+sLineBreak)+
                'Data de emissão: '+DateTimeToStr(Now);
        //Observação
        ACell := ASheet.Cells[5, 9];
        if (ACell <> nil) then
          AObs := IfThen(not AObs.IsEmpty, AObs+sLineBreak)+
                  'Observação: '+ACell.AsString;
        AVenda.Cadastro.FieldByName('OBSERVACAO').AsString := AObs;
        //Lança os itens
        for l := 10 to (ASheet.Rows.Count - 1) do
        begin
          ACell := ASheet.Cells[l, 1];
          if (ACell = nil) then
            Continue;
          ARef := ACell.AsString;
          AVenda.EdtCodProdutoÎProduto.Clear;
          AFamiliaNaoEncontrada := False;
          //Passa em todas as colunas contendo a quantidade
          for q := 4 to 11 do
          begin
            if AFamiliaNaoEncontrada then
              Continue;
            ACell := ASheet.Cells[l, q];
            //Se tiver uma quantidade informada na posição, verifica se é válida e tenta encontrar o produto
            if (ACell <> nil) and (ACell.DataType in [cdtCurrency, cdtFloat, cdtInteger]) and (ACell.AsFloat > 0) then
            begin
              //Só abre a query se encontrar uma quantidade
              _GetFamilia(ARef.ToInteger);
              if AQuerF.IsEmpty then
              begin
                AMsg.Add('Familia não encontrada ['+ARef+'] do arquivo: '+AArqs[i]);
                AFamiliaNaoEncontrada := True;
                Continue;
              end;
              for t := 7 to 9 do //Passa nas linhas contendo tamanhos
              begin
                ACell := ASheet.Cells[t, q];
                if (ACell <> nil) then
                begin
                  if (ACell.DataType in [cdtCurrency, cdtFloat, cdtInteger]) and (ACell.AsInteger < 10) then
                    ATamanho := '0'+ACell.AsString
                  else
                    ATamanho := ACell.AsString;
                  if AQuerF.Locate('TAMANHO', ATamanho, []) then
                  begin
                    AVenda.EdtCodProdutoÎProduto.Text := AQuerF.FieldByName('CODIGO').AsString;
                    if (AVenda.edtProdutoDescricao.Text <> '') then
                    begin
                      //***ini***Cadastra o produto individualmente.
                      //Pega a céluda contendo a quantidade novamente.
                      ACell := ASheet.Cells[l, q];
                      AVenda.EdtQuant.Value := ACell.AsFloat;
                      //Pega o valor unitário
                      ACell := ASheet.Cells[l, 13];
                      if (ACell <> nil) and (ACell.DataType in [cdtCurrency, cdtFloat, cdtInteger]) and (ACell.AsFloat > 0.0) then
                      begin
                        if (AVenda.EdtValor.Value > 0.0) and (AVenda.EdtValor.Value <> ACell.AsFloat) then
                          AMsg.Add('O valor esta diferente no produto ['+AQuerF.FieldByName('CODIGO').AsString+'] tamanho ['+ATamanho+'] família ['+ARef+']. '+
                                   'Valor cadastrado: '+FormatFloat('#,##0.000#####', AVenda.EdtValor.Value)+' - Valor no pedido: '+FormatFloat('#,##0.000#####', ACell.AsFloat)+' .Arquivo: '+AArqs[i]);
                        AVenda.EdtValor.Value := ACell.AsFloat;
                      end
                      else
                        AMsg.Add('O valor esta incorreto no produto ['+AQuerF.FieldByName('CODIGO').AsString+'] tamanho ['+ATamanho+'] na família ['+ARef+'] do arquivo: '+AArqs[i]);
                      AVenda.BtnAdicionarProduto.Click;
                      //***fim***
                    end
                    else
                      AMsg.Add('Ocorreu algum problema ao tentar localizar o produto ['+AQuerF.FieldByName('CODIGO').AsString+'] na família ['+ARef+'] do arquivo: '+AArqs[i]);
                    Break;
                  end else
                  if (t=9) then
                    AMsg.Add('Tamanho ['+ATamanho+'] não encontrado na família ['+ARef+'] do arquivo: '+AArqs[i]);
                end else
                if (t=9) then
                  AMsg.Add('Ocorreu algum problema ao tentar localizar um produto na família ['+ARef+'] do arquivo: '+AArqs[i]+'. Fornecido quantidade, em uma coluna sem tamanho especificado.');
              end;
            end;
          end;
        end;
        AVenda.btnConfirmar.Click;
        AMsg.Add('Pedido ['+AVenda.Cadastro.FieldByName('CODIGO').AsString+'] do cliente ['+AVenda.EdtResponsavelÎPessoasÎRAZAOSOCIAL.Text+'] importado com sucesso!');
        try
          ANovoArq := TPath.GetFileNameWithoutExtension(AArqs[i])+'-CODVENDA'+AVenda.Cadastro.FieldByName('CODIGO').AsString+TPath.GetExtension(AArqs[i]);
          ACopiaArq := APastaDestino+ANovoArq;
          ANovoArq := ExtractFilePath(AArqs[i])+ANovoArq;
          TFile.Copy(AArqs[i], ACopiaArq);
          RenameFile(AArqs[i], ANovoArq);
        except
          AMsg.Add('ERRO ao tentar tratar o arquivo: '+AArqs[i]);
        end;
      finally
        FSpreadSheet.ClearAll;
      end;
    end;
  finally
    LockWindowUpdate(0);
    if (AMsg.Count > 0) then
      AMsg.SaveToFile(ChangeFileExt(ParamStr(0), 'ImportarExcel.log'));
    AMsg.Free;
    AQuerF.Free;
  end;
  ShowMessageWR('Pedido(s) importado(s) com sucesso!');
end;       *)
{$ENDIF}



{$ENDREGION}

{$REGION '////////////////////////// CONFIG //////////////////////////////////'}

{ TConfig }

procedure TConfig.InternalSave(AConfig: string; const AValue: string; ACodUsuario: Integer; AIsGlobal: Boolean = False);
var
  ATransa: TFDTransaction;
  QuerX: TFDQuery;
  ACodEmpresa: Integer;
  AConfigValue: TConfigValue;
begin
  //Configurações globais são salvas e lidas sempre como se fosse da empresa 1 e usuário 0
  ACodEmpresa := 1;
  if AIsGlobal then
    ACodUsuario := 0
  else
  begin
    {$IFDEF COMERCIAL}
    Assert(not FrmPrincipal.Empresa.IsEmpty, 'Empresa não definida, não é possível acessar as configurações');
    if FrmPrincipal.Empresa.Active then
      ACodEmpresa := FrmPrincipal.Empresa.FieldByName('CODIGO').AsInteger;
   {$ENDIF}
  end;

  AConfig := AnsiUpperCase(AConfig);

  //Grava a configuração no Banco de Dados
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select CODEMPRESA, CONFIG, VALOR, CODUSUARIO, DT_ALTERACAO, CODUSUARIO_ALTERACAO ' +
                      'from CONFIGURACOES ' +
                      'where (CONFIG = :Config) ' +
                      '      and (CODUSUARIO = :CodUsuario) ' +
                      '      and (CODEMPRESA = :CodEmpresa)';
    QuerX.ParamByName('Config').value      := AConfig;
    QuerX.ParamByName('CodUsuario').value := ACodUsuario;
    QuerX.ParamByName('CodEmpresa').value := ACodEmpresa;
    QuerX.Open;
    if QuerX.IsEmpty then
    begin
      QuerX.Insert;
      QuerX.FieldByName('CONFIG').value      := AConfig;
      QuerX.FieldByName('CODUSUARIO').value := ACodUsuario;
      QuerX.FieldByName('CODEMPRESA').value := ACodEmpresa;
    end else
      QuerX.Edit;

    //Só atualiza caso a configuração seja nova ou tenha sido alterada
    if (QuerX.State = dsInsert) or (AValue <> QuerX.FieldByName('VALOR').AsString) then
    begin
      QuerX.FieldByName('DT_ALTERACAO').AsDateTime         := DataHoraSys;
      QuerX.FieldByName('CODUSUARIO_ALTERACAO').AsNotEmpty := Usuario.Codigo;
      QuerX.FieldByName('VALOR').AsString                  := AValue;
      QuerX.Post;
      ComitaTransacao(ATransa);

      //Atualiza a lista em memória com a nova configuração, não precisando ler novamente o banco
      AConfigValue := GetConfig(AConfig, ACodEmpresa, ACodUsuario);
      if AConfigValue <> nil then
        AConfigValue.Valor := AValue
      else
        AddConfig(AConfig, AValue, ACodEmpresa, ACodUsuario);
    end else
      QuerX.Cancel;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

procedure TConfig.InternalSaveEmpresa(AConfig: string; const AValue: string; ACodUsuario: Integer; ACodEmpresa: Integer);
var
  ATransa: TFDTransaction;
  QuerX: TFDQuery;
  AConfigValue: TConfigValue;
begin
  AConfig := AnsiUpperCase(AConfig);

  //Grava a configuração no Banco de Dados
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select CODEMPRESA, CONFIG, VALOR, CODUSUARIO, DT_ALTERACAO, CODUSUARIO_ALTERACAO ' +
                      'from CONFIGURACOES ' +
                      'where (CONFIG = :Config) ' +
                      '      and (CODUSUARIO = :CodUsuario) ' +
                      '      and (CODEMPRESA = :CodEmpresa)';
    QuerX.ParamByName('Config').value      := AConfig;
    QuerX.ParamByName('CodUsuario').value := ACodUsuario;
    QuerX.ParamByName('CodEmpresa').value := ACodEmpresa;
    QuerX.Open;
    if QuerX.IsEmpty then
    begin
      QuerX.Insert;
      QuerX.FieldByName('CONFIG').value      := AConfig;
      QuerX.FieldByName('CODUSUARIO').value := ACodUsuario;
      QuerX.FieldByName('CODEMPRESA').value := ACodEmpresa;
    end else
      QuerX.Edit;

    //Só atualiza caso a configuração seja nova ou tenha sido alterada
    if (QuerX.State = dsInsert) or (AValue <> QuerX.FieldByName('VALOR').AsString) then
    begin
      QuerX.FieldByName('DT_ALTERACAO').AsDateTime         := DataHoraSys;
      QuerX.FieldByName('CODUSUARIO_ALTERACAO').AsNotEmpty := Usuario.Codigo;
      QuerX.FieldByName('VALOR').AsString                  := AValue;
      QuerX.Post;
      ComitaTransacao(ATransa);

      //Atualiza a lista em memória com a nova configuração, não precisando ler novamente o banco
      AConfigValue := GetConfig(AConfig, ACodEmpresa, ACodUsuario);
      if AConfigValue <> nil then
        AConfigValue.Valor := AValue
      else
        AddConfig(AConfig, AValue, ACodEmpresa, ACodUsuario);
    end else
      QuerX.Cancel;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

procedure TConfig.InternalAtualizar;
var
  QuerX: TFDQuery;
begin
  if FUltimaDtAlteracao = 0 then
    InternalCarregar
  else
  begin
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'select max(DT_ALTERACAO) ' +
                        'from CONFIGURACOES';
      QuerX.Open;
      if SecondsBetween(QuerX.Fields[0].AsDateTime, FUltimaDtAlteracao) > 0 then
        InternalCarregar;
    finally
      QuerX.Free;
    end;
  end;
end;

procedure TConfig.InternalCarregar;
var
  QuerX: TFDQuery;
begin
  FListaConfigs.Clear;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select CODEMPRESA, CONFIG, VALOR, CODUSUARIO, DT_ALTERACAO ' +
                      'from CONFIGURACOES';
    QuerX.Open;
    QuerX.FetchAll;
    while not QuerX.Eof do
    begin
      AddConfig(QuerX.FieldByName('CONFIG').AsString,
                QuerX.FieldByName('VALOR').AsString,
                QuerX.FieldByName('CODEMPRESA').AsInteger,
                QuerX.FieldByName('CODUSUARIO').AsInteger);

      if QuerX.FieldByName('DT_ALTERACAO').AsDateTime > FUltimaDtAlteracao then
        FUltimaDtAlteracao := QuerX.FieldByName('DT_ALTERACAO').AsDateTime;

      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
  FConfigsCarregadas := True;
end;

function TConfig.AddConfig(const AConfig, AValue: string; const ACodEmpresa, ACodUsuario: Integer): TConfigValue;
begin
  {Esta rotina apenas adiciona uma config a lista. Não mecher na data de alteração aqui}
  Result := TConfigValue.Create;
  Result.CodEmpresa := ACodEmpresa;
  Result.Config     := AnsiUpperCase(AConfig);
  Result.Valor      := AValue;
  Result.CodUsuario := ACodUsuario;
  FListaConfigs.Add(Result);
end;

class procedure TConfig.Atualizar;
begin
  TConfig.GetInstance.InternalAtualizar;
end;

class procedure TConfig.Carregar;
begin
  TConfig.GetInstance.InternalCarregar;
end;

constructor TConfig.Create;
begin
  raise Exception.Create('Não instanciar esta classe');
end;

constructor TConfig.CreatePrivate;
begin
  inherited Create;
  FListaConfigs := TObjectList<TConfigValue>.Create;
end;

destructor TConfig.Destroy;
begin
  FListaConfigs.Free;
  inherited;
end;

class function TConfig.GetInstance: TConfig;
begin
  if FInstance = nil then
    FInstance := TConfig.CreatePrivate;
  Result := FInstance;
end;

class procedure TConfig.ReleaseInstance;
begin
  FreeAndNil(FInstance);
end;

function TConfig.GetConfig(const AConfig: string; const ACodEmpresa, ACodUsuario: Integer): TConfigValue;
var
  I: Integer;
begin
  for I := 0 to FListaConfigs.Count - 1 do
  begin
    Result := FListaConfigs[i];
    if (Result.CodEmpresa = ACodEmpresa) and (Result.CodUsuario = ACodUsuario) and AnsiSameText(Result.Config, AConfig) then
      Exit;
  end;
  Result := nil;
end;

function TConfig.InternalRead(const AConfig: string; ACodUsuario: Integer; AIsGlobal: Boolean = False): string;
var
  AValue: TConfigValue;
  ACodEmpresa: Integer;
begin
  Assert(FConfigsCarregadas, 'Tentativa de acesso as configurações antes de serem carregadas');

  //Configurações globais são salvas e lidas sempre como se fosse da empresa 1 e usuário 0
  if AIsGlobal then
  begin
    ACodEmpresa := 1;
    ACodUsuario := 0;
  end else
  begin
    Try   // A Empresa estava fechada
      ACodEmpresa := Empresa.FieldByName('CODIGO').AsInteger;
    except
      ACodEmpresa := 1;  //pega a primeira nem sempre vai funcionar, pois nem sempre existe a numero 1, mais mehor que dar erro
      Empresa.Close;
      Empresa.Open;
    End;
  end;

  Result := '';
  AValue := GetConfig(AConfig, ACodEmpresa, ACodUsuario);
  if AValue <> nil then
    Result := AValue.Valor;
end;

function TConfig.InternalReadEmpresa(const AConfig: string;
  ACodUsuario: Integer; ACodEmpresa: Integer): string;
var
  AValue: TConfigValue;
begin
  Assert(FConfigsCarregadas, 'Tentativa de acesso as configurações antes de serem carregadas');

  Result := '';
  AValue := GetConfig(AConfig, ACodEmpresa, ACodUsuario);
  if AValue <> nil then
    Result := AValue.Valor;
end;

class function TConfig.ReadGlobalBoolean(const AConfig: string): Boolean;
begin
  Result := (TConfig.GetInstance.InternalRead(AConfig, 0, True) = '1');
end;

class function TConfig.ReadGlobalDateTime(const AConfig: string): TDateTime;
begin
  Result := StringToDateTimeWR(TConfig.GetInstance.InternalRead(AConfig, 0, True), FORMATO_DATA_CONFIG);
end;

class function TConfig.ReadGlobalInt64(const AConfig: string): Int64;
begin
  Result := StrToInt64Def(TConfig.GetInstance.InternalRead(AConfig, 0, True), 0);
end;

class function TConfig.ReadGlobalInteger(const AConfig: string): Integer;
begin
  Result := StrToIntDef(TConfig.GetInstance.InternalRead(AConfig, 0, True), 0);
end;

class function TConfig.ReadGlobalString(const AConfig: string): string;
begin
  Result := TConfig.GetInstance.InternalRead(AConfig, 0, True);
end;

class function TConfig.ReadBoolean(const AConfig: string; ACodUsuario: Integer = 0): Boolean;
begin
  Result := (TConfig.GetInstance.InternalRead(AConfig, ACodUsuario) = '1');
end;

class function TConfig.ReadDateTime(const AConfig: string; ACodUsuario: Integer): TDateTime;
begin
  Result := StringToDateTimeWR(TConfig.GetInstance.InternalRead(AConfig, ACodUsuario), FORMATO_DATA_CONFIG);
end;

class function TConfig.ReadDateTimeEmpresa(const AConfig: string; ACodEmpresa: Integer;
  ACodUsuario: Integer = 0): TDateTime;
begin
  Result := StringToDateTimeWR(TConfig.GetInstance.InternalReadEmpresa(AConfig, ACodUsuario, ACodEmpresa), FORMATO_DATA_CONFIG);
end;

class function TConfig.ReadFloat(const AConfig: string; ACodUsuario: Integer): Double;
begin
  Result := StrToFloatDef(TConfig.GetInstance.InternalRead(AConfig, ACodUsuario), 0);
end;

class function TConfig.ReadInt64(const AConfig: string; ACodUsuario: Integer): Int64;
begin
  Result := StrToInt64Def(TConfig.GetInstance.InternalRead(AConfig, ACodUsuario), 0);
end;

class function TConfig.ReadInteger(const AConfig: string; ACodUsuario: Integer = 0): Integer;
begin
  Result := StrToIntDef(TConfig.GetInstance.InternalRead(AConfig, ACodUsuario), 0);
end;

class function TConfig.ReadIntegerEmpresa(const AConfig: string; ACodEmpresa: Integer;
  ACodUsuario: Integer = 0): Integer;
begin
  Result := StrToIntDef(TConfig.GetInstance.InternalReadEmpresa(AConfig, ACodUsuario, ACodEmpresa), 0);
end;

class function TConfig.ReadString(const AConfig: string; ACodUsuario: Integer = 0): string;
begin
  Result := TConfig.GetInstance.InternalRead(AConfig, ACodUsuario);
end;

class function TConfig.ReadStringEmpresa(const AConfig: string; ACodEmpresa: Integer;
  ACodUsuario: Integer = 0): string;
begin
  Result := TConfig.GetInstance.InternalReadEmpresa(AConfig, ACodUsuario, ACodEmpresa);
end;

class procedure TConfig.SaveINt64(const AConfig: string; AValue: Int64; ACodUsuario: Integer = 0);
begin
  TConfig.GetInstance.InternalSave(AConfig, IntToStr(AValue), ACodUsuario);
end;

class procedure TConfig.SaveDateTime(const AConfig: string; AValue: TDateTime; ACodUsuario: Integer = 0);
begin
  TConfig.GetInstance.InternalSave(AConfig, FormatDateTime(FORMATO_DATA_CONFIG, AValue), ACodUsuario);
end;

class procedure TConfig.SaveDateTimeEmpresa(const AConfig: string;
  AValue: TDateTime; ACodEmpresa, ACodUsuario: Integer);
begin
  TConfig.GetInstance.InternalSaveEmpresa(AConfig, FormatDateTime(FORMATO_DATA_CONFIG, AValue), ACodUsuario, ACodEmpresa);
end;

class procedure TConfig.SaveBoolean(const AConfig: string; AValue: Boolean; ACodUsuario: Integer = 0);
begin
  TConfig.GetInstance.InternalSave(AConfig, IfThen(AValue, '1', '0'), ACodUsuario);
end;

class procedure TConfig.SaveInteger(const AConfig: string; AValue: Integer; ACodUsuario: Integer = 0);
begin
  TConfig.GetInstance.InternalSave(AConfig, IntToStr(AValue), ACodUsuario);
end;

class procedure TConfig.SaveIntegerEmpresa(const AConfig: string; AValue,
  ACodEmpresa, ACodUsuario: Integer);
begin
  TConfig.GetInstance.InternalSaveEmpresa(AConfig, IntToStr(AValue), ACodUsuario, ACodEmpresa);
end;

class procedure TConfig.SaveString(const AConfig, AValue: string; ACodUsuario: Integer = 0);
begin
  TConfig.GetInstance.InternalSave(AConfig, AValue, ACodUsuario);
end;

class procedure TConfig.SaveStringEmpresa(const AConfig, AValue: string;
  ACodEmpresa, ACodUsuario: Integer);
begin
  TConfig.GetInstance.InternalSaveEmpresa(AConfig, AValue, ACodUsuario, ACodEmpresa);
end;

class procedure TConfig.SaveFloat(const AConfig: string; AValue: Double; ACodUsuario: Integer = 0);
begin
  TConfig.GetInstance.InternalSave(AConfig, FormatFloat(FORMATO_FLOAT, AValue), ACodUsuario);
end;

class procedure TConfig.SaveGlobalInteger(const AConfig: string; AValue: Integer);
begin
  TConfig.GetInstance.InternalSave(AConfig, IntToStr(AValue), 0, True);
end;

class procedure TConfig.SaveGlobalInt64(const AConfig: string; AValue: Int64);
begin
  TConfig.GetInstance.InternalSave(AConfig, IntToStr(AValue), 0, True);
end;

class procedure TConfig.SaveGlobalDateTime(const AConfig: string; AValue: TDateTime);
begin
  TConfig.GetInstance.InternalSave(AConfig, FormatDateTime(FORMATO_DATA_CONFIG, AValue), 0, True);
end;

class procedure TConfig.SaveGlobalBoolean(const AConfig: string; AValue: Boolean);
begin
  TConfig.GetInstance.InternalSave(AConfig, IfThen(AValue, '1', '0'), 0, True);
end;

class procedure TConfig.SaveGlobalString(const AConfig, AValue: string);
begin
  TConfig.GetInstance.InternalSave(AConfig, AValue, 0, True);
end;


{ TConfiGridValue }

constructor TConfigGridValue.Create;
begin
  FGridStream := TMemoryStream.Create;
end;

destructor TConfigGridValue.Destroy;
begin
  FGridStream.Free;
  inherited;
end;

{ TConfiGrid }

constructor TConfigGrid.Create;
begin
  raise Exception.Create('Utilize GetInstance');
end;

constructor TConfigGrid.CreatePrivate;
begin
  FLista := TObjectList<TConfigGridValue>.Create;
end;

function TConfigGrid.CriaConfigSeNaoExistir(const AFormClassName, ADescricao: string): TConfigGridValue;
begin
  //Busca a configuração caso ela já exista
  Result := GetConfig(AFormClassName, ADescricao);
  if Result = nil then
  begin
    //Se não existe, cria uma nova na lista
    Result := TConfigGridValue.Create;
    FLista.Add(Result);

    Result.FormClassName := AFormClassName;
    Result.Descricao     := ADescricao;
    Result.CodUsuario    := Usuario.Codigo;
  end;
end;

destructor TConfigGrid.Destroy;
begin
  FLista.Free;
  inherited;
end;

function TConfigGrid.GetConfig(const AFormClassName, ADescricao: string): TConfigGridValue;
begin
  for Result in FLista do
  begin
    if (Result.FormClassName = AFormClassName) and (Result.Descricao = ADescricao) then
      Exit;
  end;
  Result := nil;
end;

function TConfigGrid.GetDtUltimaAlteracao(const AFormClassName: string): TDateTime;
var
  AConfig: TConfigGridValue;
begin
  Result := 0;
  for AConfig in FLista do
  begin
    if (AConfig.FormClassName = AFormClassName) and (AConfig.DtAlteracao > Result) then
      Result := AConfig.DtAlteracao;
  end;
end;

function TConfigGrid.GetFullObjectName(const AView: TComponent): string;
var
  AFormName: string;
  AControl: TControl;
begin
  {A leitura e gravação dos streams é identificada pelo Nome dentro do stream. O sistema funciona bem quando não é
   passado o nome por parâmetro, pois o grid monta o nome internamente e faz funcionar, porém este nome não é montado
   corretamente quando o grid está em um Frame. Aqui esta rotina monta o nome correto que deve ser usado no stream
   para funcionar em qualquer situação}
  if AView is TcxCustomGridView then
    AControl := TcxCustomGridView(AView).Site
  else
    AControl := TControl(AView);

  while (AControl.Parent <> nil) and not (AControl is TCustomForm) and not (AControl is TCustomFrame) do
    AControl := AControl.Parent;

  Assert(AControl <> nil, 'Falha ao encontrar a form em que o grid está');
  AFormName := AControl.ClassName;
  AFormName := AnsiRightStr(AFormName, Length(AFormName) - 1);
  Result := AFormName + '.' + AView.Name;
end;

class function TConfigGrid.GetInstance: TConfigGrid;
begin
  if FInstance = nil then
    FInstance := TConfigGrid.CreatePrivate;
  Result := FInstance;
end;

procedure TConfigGrid.GravarNoBanco(const AConfig: TConfigGridValue);
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select CODIGO, FORM, DESCRICAO, CODUSUARIO, GRID, ARQUIVO_INI, DT_ALTERACAO,ATIVO ' +
                      'from CONFIGURACOES_GRID ' +
                      'where (FORM = :Form) ' +
                      '      and (DESCRICAO = :Descricao) ' +
                      '      and (CODUSUARIO = :CodUsuario)';
    {Não usar o Código da configuração aqui para encontrá-la no banco. No caso de ainda não haver o registro do grid no
     banco, pode ocorrer de o sistema carregar duas instâncias de uma form. Na primeira instância, ao fechar, o sistema
     grava no banco o grid usando um Insert. Ao fechar a segunda instância, ainda não havia código definido no objeto
     AConfig que foi carregado, então o sistema tentará dar um Insert novamente na base, gerando erro na Unique. Manter
     buscando pelos dados da Unique para que este erro não ocorra}
    QuerX.ParamByName('Form').AsString        := AConfig.FormClassName;
    QuerX.ParamByName('Descricao').AsString   := AConfig.Descricao;
    QuerX.ParamByName('CodUsuario').AsInteger := Usuario.Codigo;
    QuerX.Open;
    if QuerX.IsEmpty then
    begin
      QuerX.Insert;
      QuerX.FieldByName('CODIGO').AsInteger     := Trunc(GetProximoCodigoGen('CR_CONFIGURACOES_GRID'));
      QuerX.FieldByName('DESCRICAO').AsString   := AConfig.Descricao;
      QuerX.FieldByName('FORM').AsString        := AConfig.FormClassName;
      QuerX.FieldByName('CODUSUARIO').AsInteger := Usuario.Codigo;
    end else
      QuerX.Edit;
    AConfig.DtAlteracao := DataHoraSys;
    QuerX.FieldByName('DT_ALTERACAO').AsDateTime := AConfig.DtAlteracao;
    QuerX.FieldByName('ATIVO').AsString          := 'S';
    QuerX.FieldByName('ARQUIVO_INI').AsString    := AConfig.IniFile;

    AConfig.GridStream.Position := 0;
    TBlobField(QuerX.FieldByName('GRID')).LoadFromStream(AConfig.GridStream);
    QuerX.Post;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

procedure TConfigGrid.LimpaColunasVazias(const AView: TcxGridDBTableView);
var
  i: Integer;
  AColumn: TcxGridDBColumn;
begin
  //O RestoreFromStream não restaura corretamente o grid, ficam várias colunas órfãs.
  //Esta rotina elimina estas colunas
  AView.BeginUpdate;
  try
    for I := AView.ColumnCount - 1 downto 0 do
    begin
      AColumn := AView.Columns[i];
      if (AColumn.Caption = '') and (AColumn.DataBinding.FieldName = '') and (AColumn.RepositoryItem = nil) then
        AColumn.Free;
    end;
  finally
    AView.EndUpdate;
  end;
end;

procedure TConfigGrid.Limpar;
begin
  FLista.Clear;
end;

procedure TConfigGrid.LimparForm(const AFormClassName: string);
var
  I: Integer;
begin
  for I := FLista.Count - 1 downto 0 do
  begin
    if FLista[i].FormClassName = AFormClassName then
      FLista.Delete(i);
  end;
end;

procedure TConfigGrid.CarregaConfigGridClasse(const AGridView: TcxCustomGridView; const ANomeConfig: string);
var
  AConfig: TConfigGridValue;
begin
//  Assert(CarregouForm(AGridView.Site), 'Tentativa de acesso as configurações de grid antes de serem carregadas');
//  AConfig := GetConfig(GetParentForm(AGridView.Site).ClassName, ANomeConfig);
  AConfig := GetConfig(AGridView.Owner.ClassName, ANomeConfig);
  if AConfig <> nil then
  begin
    AConfig.GridStream.Position := 0;
    try
      AGridView.RestoreFromStream(AConfig.GridStream, True, False, [gsoUseFilter, gsoUseSummary], GetFullObjectName(AGridView));  //[gsoUseFilter] - esta opção deixa o carregar grid muito lento.

      {Há casos em que o stream salvo não é mais compatível com o grid, então o grid lança uma exceção. Nestes casos não
       queremos tratar nada, apenas ignoramos os erros. Na próxima vez que o grid for salvo, este irá corrigir a stream
       e os próximos loads ocorrerão normalmente}
    except end;
    if AGridView is TcxGridDBTableView then
      LimpaColunasVazias(TcxGridDBTableView(AGridView));
  end;
end;

procedure TConfigGrid.CarregaConfigTreeList(const AGridView: TcxCustomTreeList; const ANomeConfig: string);
var
  AConfig: TConfigGridValue;
begin
//  Assert(CarregouForm(AGridView), 'Tentativa de acesso as configurações de grid antes de serem carregadas');

  AConfig := GetConfig(AGridView.Owner.ClassName, ANomeConfig);
  if AConfig <> nil then
  begin
    AConfig.GridStream.Position := 0;
    AGridView.RestoreFromStream(AConfig.GridStream, False, False, GetFullObjectName(AGridView));
//    CarregaConditionalFormatting(GetParentFormWR(AGridView), AGridView, AGridView.ConditionalFormatting);
  end;
end;

procedure TConfigGrid.CarregaConfigTreeListIni(const AGridView: TcxCustomTreeList; const ANomeConfig: string);
var
  AConfig: TConfigGridValue;
begin
//  Assert(CarregouForm(AGridView), 'Tentativa de acesso as configurações de grid antes de serem carregadas');

  AConfig := GetConfig(GetParentForm(AGridView).ClassName, ANomeConfig);
  if AConfig <> nil then
  begin
    StringToFile(GetDirSistema + 'Grid.ini', AConfig.IniFile);
    AGridView.RestoreFromIniFile(GetDirSistema + 'Grid.ini', False, False, GetFullObjectName(AGridView));
//    CarregaConditionalFormatting(GetParentFormWR(AGridView), AGridView, AGridView.ConditionalFormatting);
  end;
end;

procedure TConfigGrid.Atualizar(const AFormClassName: string);
var
  QuerX: TFDQuery;
begin
  if GetDtUltimaAlteracao(AFormClassName) = 0 then
    Carregar(AFormClassName)
  else
  begin
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'select max(DT_ALTERACAO) ' +
                        'from CONFIGURACOES_GRID ' +
                        'where (FORM = :Form) ' +
                        '      and (CODUSUARIO = :CodUsuario)';
      QuerX.ParamByName('Form').value       := AFormClassName;
      QuerX.ParamByName('CodUsuario').value := Usuario.Codigo;
      QuerX.Open;
      if QuerX.Fields[0].AsDateTime > GetDtUltimaAlteracao(AFormClassName) then
        Carregar(AFormClassName);
    finally
      QuerX.Free;
    end;
  end;
end;

procedure TConfigGrid.Carregar(const AFormClassName: String);
var
  QuerX: TFDQuery;
  AConfig: TConfigGridValue;
begin
  LimparForm(AFormClassName);
  QuerX := GeraFDQueryFast;
  try
    QuerX.SQL.Text := 'select CODIGO, FORM, DESCRICAO, CODUSUARIO, GRID, ARQUIVO_INI, DT_ALTERACAO ' +
                      'from CONFIGURACOES_GRID ' +
                      'where (CODUSUARIO = :CodUsuario) ' +
                      '      and (FORM = :Form)';
    QuerX.ParamByName('CodUsuario').AsInteger := Usuario.Codigo;
    QuerX.ParamByName('Form').AsString        := AFormClassName;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AConfig := TConfigGridValue.Create;
      FLista.Add(AConfig);

      AConfig.FormClassName:= QuerX.FieldByName('FORM').AsString;
      AConfig.Descricao    := QuerX.FieldByName('DESCRICAO').AsString;
      AConfig.CodUsuario   := QuerX.FieldByName('CODUSUARIO').AsInteger;
      AConfig.DtAlteracao  := QuerX.FieldByName('DT_ALTERACAO').AsDateTime;
      AConfig.IniFile      := QuerX.FieldByName('ARQUIVO_INI').AsString;

      AConfig.GridStream.Clear;
      TBlobField(QuerX.FieldByName('GRID')).SaveToStream(AConfig.GridStream);

      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TConfigGrid.GravaConfigGrid(const AGridView: TcxCustomGridView; const ANomeConfig: string);
var
  AOptions: TcxGridStorageOptions;
  AStream: TMemoryStream;
  AConfig: TConfigGridValue;
begin
  //Busca a configuração, adiciona caso não exista
//  AConfig := CriaConfigSeNaoExistir(GetParentForm(AGridView.Site).ClassName, ANomeConfig);
  AConfig := CriaConfigSeNaoExistir(AGridView.Owner.ClassName, ANomeConfig);

//  É nessa linha aqui verificar
//  só deve ser ParentForm se ConsuM, senão pega o próprio view

  //Monta as opções do grid
  AOptions := [];
  if AGridView.DataController.Filter.FilterText <> '' then
    AOptions := [gsoUseFilter]; //[gsoUseFilter] - esta opção deixa o carregar grid muito lento.
  if AGridView.DataController.Summary.FooterSummaryItems.Count > 0 then
    AOptions := AOptions + [gsoUseSummary];

  AStream := TMemoryStream.Create;
  try
    //Remove os ConditionalFormatting da View antes de gravar a stream. Não há opção na view para não gravar.
//    if AGridView is TcxCustomGridTableView then
//      TcxCustomGridTableView(AGridView).ConditionalFormatting.Clear;

    //Grava em um stream temporário
    AGridView.StoreToStream(AStream, AOptions, GetFullObjectName(AGridView));

    //Compara com o stream que já está carregado para ver se algo mudou... se mudou, grava no banco
    if not ComparaStreams(AConfig.GridStream, AStream) then
    begin
      AStream.Position := 0;
      AConfig.GridStream.Clear;
      AConfig.GridStream.LoadFromStream(AStream);
      GravarNoBanco(AConfig);
    end;
  finally
    AStream.Free;
  end;
end;

procedure TConfigGrid.GravaConfigTreeList(const AGridView: TcxCustomTreeList; const ANomeConfig: string);
var
  AStream: TMemoryStream;
  AConfig: TConfigGridValue;
begin
  //Busca a configuração, adiciona caso não exista      GetParentForm(AGridView).ClassName
  AConfig := CriaConfigSeNaoExistir(AGridView.Owner.ClassName, ANomeConfig);

  AStream := TMemoryStream.Create;
  try
    //Grava em um stream temporário
    AGridView.StoreToStream(AStream, GetFullObjectName(AGridView));

    //Compara com o stream que já está carregado para ver se algo mudou... se mudou, grava no banco
    if not ComparaStreams(AConfig.GridStream, AStream) then
    begin
      AStream.Position := 0;
      AConfig.GridStream.Clear;
      AConfig.GridStream.LoadFromStream(AStream);
      GravarNoBanco(AConfig);
    end;
  finally
    AStream.Free;
  end;

//  GravaConditionalFormatting(GetParentFormWR(AGridView), AGridView, AGridView.ConditionalFormatting);
end;

procedure TConfigGrid.GravaConfigTreeListIni(const AGridView: TcxCustomTreeList; const ANomeConfig: string);
var
  AString: TStringList;
  AConfig: TConfigGridValue;
  AStream: TMemoryStream;
begin
  //Busca a configuração, adiciona caso não exista
  AConfig := CriaConfigSeNaoExistir(GetParentForm(AGridView).ClassName, ANomeConfig);

  AString := TStringList.Create;
  AStream := TMemoryStream.Create;
  try
    //Grava em um stream temporário
    AGridView.StoreToStream(AStream, GetFullObjectName(AGridView));
    AConfig.GridStream.Clear;
    AConfig.GridStream.LoadFromStream(AStream);

    AGridView.StoreToIniFile(GetDirSistema + 'Grid.ini', True, GetFullObjectName(AGridView));
    AString.LoadFromFile(GetDirSistema + 'Grid.ini');

    //Compara com o stream que já está carregado para ver se algo mudou... se mudou, grava no banco
    GravaIniSeAlterado(AConfig, AString);
  finally
    AString.Free;
  end;

//  GravaConditionalFormatting(GetParentFormWR(AGridView), AGridView, AGridView.ConditionalFormatting);
end;

procedure TConfigGrid.GravaIniSeAlterado(const AConfig: TConfigGridValue; const AIni: TStrings);
begin
  if AConfig.IniFile <> AIni.Text then
  begin
    AConfig.IniFile := AIni.Text;
    GravarNoBanco(AConfig);
  end;
end;

class procedure TConfigGrid.ReleaseInstance;
begin
  FreeAndNil(FInstance);
end;


{$ENDREGION}

{$REGION '////////////////////////// USUARIO /////////////////////////////////'}
{ TUsuario }

procedure TUsuario.Atualizar;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select U.LOGIN, U.USUARIO, U.CODFUNCIONARIO, U.PRIVILEGED, U.PROFILE, U.EMAIL, ' +
                      '       P.RAZAOSOCIAL, P.SEQUENCIA_FUN ' +      //, P.FUNCIONARIO_LIMITE_DESCONTO
                      'from USUARIO U ' +
                      'left join PESSOAS P on (P.CODIGO = U.CODFUNCIONARIO) ' +
                      'where (U.CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := FCodigo;
    QuerX.Open;

    FPrivilegiado                      := (QuerX.FieldByName('PRIVILEGED').AsInteger = -1);
    FLogin                             := QuerX.FieldByName('LOGIN').AsString;
    FNome                              := QuerX.FieldByName('USUARIO').AsString;
    FEmail                             := QuerX.FieldByName('EMAIL').AsString;
    FCodigoFuncionario                 := QuerX.FieldByName('CODFUNCIONARIO').AsString;
    FNomeFuncionario                   := QuerX.FieldByName('RAZAOSOCIAL').AsString;
    FSequenciaFuncionario              := QuerX.FieldByName('SEQUENCIA_FUN').AsInteger;
    FPerfil                            := QuerX.FieldByName('PROFILE').AsInteger;
    try
//      FFuncionario_Limite_Desconto     := QuerX.FieldByName('FUNCIONARIO_LIMITE_DESCONTO').AsFloat;
    except  end;
  finally
    QuerX.Free;
  end;
end;

procedure TUsuario.CarregarUsuario(const ACodUsuario: Integer);
begin
  FCodigo := ACodUsuario;
  //O PAF não tem a tabela USUARIO, então não carregamos os dados do usuário, apenas o código para ser usado pelas funções
  //internas do sistema (Ex: ConfigGrid, TConfig, etc..)
  {$IFNDEF PAF}
  Atualizar;
  {$ENDIF}
end;

constructor TUsuario.Create;
begin
  raise Exception.Create('Utilize o GetInstance');
end;

constructor TUsuario.CreatePrivate;
begin
  inherited Create;
end;

class function TUsuario.GetInstance: TUsuario;
begin
  if FInstance = nil then
    FInstance := TUsuario.CreatePrivate;
  Result := FInstance;
end;

class procedure TUsuario.ReleaseInstance;
begin
  FreeAndNil(FInstance);
end;
{$ENDREGION}

{$REGION '////////////////////////// TEMPO ///////////////////////////////////'}

{ TCalculaTempo }

class procedure TCalculaTempo.Finalizar(const ACaption: string = '');
begin
//  {$IFDEF DEBUG}
  FTempo.Stop;
  OutputDebugString(StringToOleStr(IfThen(ACaption <> '', ACaption + ': ') + Format('%.2d:%.2d:%.2d.%.3d',
    [FTempo.Elapsed.Hours, FTempo.Elapsed.Minutes, FTempo.Elapsed.Seconds, FTempo.Elapsed.Milliseconds])));
//  {$ENDIF}
end;

class procedure TCalculaTempo.Iniciar;
begin
//  {$IFDEF DEBUG}
  FTempo := TStopWatch.StartNew;
//  {$ENDIF}
end;


{ TListaHorasSemana }

procedure TListaHorasSemana.Atualizar;
var
  QuerX : TIBQuery;
  ADiaSemana : TDiaSemana;
  AHoraSemana : THoraSemana;
  ADiaStr : string;

  function GetMinutosATrabalhar: Integer;
  begin
    Result := 0;
    if (QuerX.FieldByName('MAT_' + ADiaStr + '_INICIAL').AsDateTime > 0) and
       (QuerX.FieldByName('MAT_' + ADiaStr + '_FINAL').AsDateTime > 0) then
      Result := MinutesBetween(QuerX.FieldByName('MAT_' + ADiaStr + '_INICIAL').AsDateTime,
                               QuerX.FieldByName('MAT_' + ADiaStr + '_FINAL').AsDateTime);
    if (QuerX.FieldByName('VES_' + ADiaStr + '_INICIAL').AsDateTime > 0) and
       (QuerX.FieldByName('VES_' + ADiaStr + '_FINAL').AsDateTime > 0) then
      Result := Result + MinutesBetween(QuerX.FieldByName('VES_' + ADiaStr + '_INICIAL').AsDateTime,
                                        QuerX.FieldByName('VES_' + ADiaStr + '_FINAL').AsDateTime);
  end;
begin
  //Faz uma listagem das horas de cada dia da semana para calcular as horas extras do funcionário
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select * ' +
                      'from FUNCIONARIO_HORARIO ' +
                      'where (CODFUNCIONARIO = :Cod)';
    QuerX.Params[0].AsString := FCodFuncionario;
    QuerX.Open;
    for ADiaSemana := Low(TDiaSemana) to High(TDiaSemana) do
    begin
      AHoraSemana := GetHoraSemana(ADiaSemana);
      if not Assigned(AHoraSemana) then
      begin
        AHoraSemana := THoraSemana.Create;
        AHoraSemana.DiaSemana         := ADiaSemana;
        AHoraSemana.MinutosATrabalhar := 0;
        FLista.Add(AHoraSemana);
      end;
      ADiaStr := ADiaSemana.Codigo;
      AHoraSemana.MinutosATrabalhar := GetMinutosATrabalhar;
    end;
  finally
    QuerX.Free;
  end;
end;

function TListaHorasSemana.BuscaDiaSemana(AData: TDate): THoraSemana;
var
  ADayOfWeek : Word;
begin
  //verificar se ta pegando o dia da semana certo!!!
  ADayOfWeek := DayOfWeek(AData) - 1;
  Result := GetHoraSemana(TDiaSemana(ADayOfWeek));
  if not Assigned(Result) then
    sleep(1);
end;

procedure TListaHorasSemana.Clear;
begin
  FLista.Clear;
end;

constructor TListaHorasSemana.Create;
begin
  FLista := TObjectList<THoraSemana>.Create;
end;

destructor TListaHorasSemana.Destroy;
begin
  FLista.Free;
  inherited;
end;

function TListaHorasSemana.GetHoraSemana(ADiaSemana: TDiaSemana): THoraSemana;
var
  i : Integer;
begin
  Result := nil;
  for I := 0 to FLista.Count - 1 do
  begin
    if FLista[i].DiaSemana = ADiaSemana then
    begin
      Result := FLista[i];
      Break;
    end;
  end;
end;

function TListaHorasSemana.GetItems(Index: Integer): THoraSemana;
begin
  Result := FLista[Index];
end;

function TListaHorasSemana.GetTotalHorasMes: Double;
var
  i : Integer;
begin
  Result := 0;
  for I := 0 to FLista.Count - 1 do
    Result := Result + FLista[i].MinutosATrabalhar;

  Result := Result / FLista.Count; //Média de minutos a trabalhar por dia
  Result := Result / 60; //Transforma em Horas
  Result := Result * 30; //Multiplica por 30 dias do mês
end;

function TListaHorasSemana.GetTotalHorasSemana: Double;
var
  i : Integer;
begin
  Result := 0;
  for I := 0 to FLista.Count - 1 do
    Result := Result + FLista[i].MinutosATrabalhar;

  Result := Result / 60;
end;


{ TListaIntervaloTempo }
           {
function TListaIntervaloTempo.Add: TIntervaloTempo;
begin
  Result := TIntervaloTempo.Create;
  FLista.Add(Result);
end;

procedure TListaIntervaloTempo.Clear;
begin
  while FLista.Count > 0 do
  begin
    FLista[FLista.Count - 1].Free;
    FLista.Delete(FLista.Count - 1);
  end;
end;

constructor TListaIntervaloTempo.Create(AOwner: TCalculaIntervaloTempo);
begin
  FOwner := AOwner;
  FLista := TList<TIntervaloTempo>.Create;
end;

destructor TListaIntervaloTempo.Destroy;
begin
  Clear;
  FLista.Free;
  inherited;
end;

function TListaIntervaloTempo.GetItems(Index: Integer): TIntervaloTempo;
begin
  Result := FLista[Index];
end;

function TListaIntervaloTempo.GetTempoTotal: Integer;
var
  I : Integer;
  ADataAtual : TDateTime;
begin
  Result := 0;
  ADataAtual := DataHoraSys;
  for I := 0 to FLista.Count - 1 do
  begin
    if FLista[i].DtInicio > 0 then
    begin
      if not (FLista[i].DtFim > 0) then
        Result := Result + SecondsBetween(FLista[i].DtInicio, ADataAtual)
      else
        Result := Result + SecondsBetween(FLista[i].DtInicio, FLista[i].DtFim); //Intervalo de tempo da hora
    end;
  end;
end;

function TListaIntervaloTempo.GetTempoTotalAsString: string;
begin
  Result := SegundosToHoras(GetTempoTotal);
end;
       }

{ TCalculaTempo }
                      {
procedure TCalculaIntervaloTempo.CarregarDaAgenda(ACodFuncionario, AProtocolo: string);
var
  AHora : TIntervaloTempo;
  QuerX : TIBQuery;
  ACodUsuario : string;
begin
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select CODIGO ' +
                      'from USUARIO ' +
                      'where (CODFUNCIONARIO = :Cod)';
    QuerX.ParamByName('Cod').AsString := ACodFuncionario;
    QuerX.Open;
    ACodUsuario := QuerX.Fields[0].AsString;
    QuerX.Close;

    QuerX.SQL.Text := 'select A.OCORRENCIA, A.DT_EMISSAO ' +
                      'from AGENDA A ' +
                      'where (A.TIPO_AGENDAMENTO = :Tipo) ' +
                      '      and not (A.OCORRENCIA is null) ' +
                      '      and (A.CODUSUARIO_ALTERADO = :CodUsuario) ' +
                      '      and (A.PROTOCOLO = :Protocolo) ' +
                      'order by A.DT_EMISSAO';
    QuerX.ParamByName('Tipo').AsInteger      := EventoTipoToStr(etProdutividade);
    QuerX.ParamByName('CodUsuario').AsString := ACodUsuario;
    QuerX.ParamByName('Protocolo').AsString  := AProtocolo;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      case ModoCalculo of
        mcTempoTotal:
          begin
            if QuerX.FieldByName('OCORRENCIA').AsString = EventoProdutividadeToStr(epEventoAberto) then
            begin
              AHora := Intervalos.Add;
              AHora.DtInicio := QuerX.FieldByName('DT_EMISSAO').AsDateTime;
            end
            else if (QuerX.FieldByName('OCORRENCIA').AsString = EventoProdutividadeToStr(epEventoFechado)) and (AHora <> nil) then
              AHora.DtFim := QuerX.FieldByName('DT_EMISSAO').AsDateTime;
          end;
        mcTempoTotalSemInterseccao:
          begin
            if QuerX.FieldByName('OCORRENCIA').AsString = EventoProdutividadeToStr(epJanelaEventoAtivada) then
            begin
              AHora := Intervalos.Add;
              AHora.DtInicio := QuerX.FieldByName('DT_EMISSAO').AsDateTime;
            end
            else if (QuerX.FieldByName('OCORRENCIA').AsString = EventoProdutividadeToStr(epJanelaEventoInativada)) and (AHora <> nil) then
              AHora.DtFim := QuerX.FieldByName('DT_EMISSAO').AsDateTime;
          end;
      end;
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TCalculaIntervaloTempo.Clear;
begin
  Intervalos.Clear;
end;

constructor TCalculaIntervaloTempo.Create;
begin
  FListaIntervalos := TListaIntervaloTempo.Create(Self);
  ModoCalculo := mcTempoTotal;
end;

destructor TCalculaIntervaloTempo.Destroy;
begin
  FListaIntervalos.Free;
  inherited;
end;

function TCalculaIntervaloTempo.GetTempoTotal: Integer;
begin
  Intervalos.GetTempoTotal;
end;

function TCalculaIntervaloTempo.GetTempoTotalAsString: string;
begin
  Intervalos.GetTempoTotalAsString;
end;     }
{$ENDREGION}

{$REGION '////////////////////////// DRE /////////////////////////////////////'}

{ TItemRelacionamento }
   {
constructor TItemRelacionamento.Create;
begin
  FPeso  := 1;
  FQuant := 0;
end;
      }
{ TPlanoContasLista }
     {
function TItemLista.Add: TItemRelacionamento;
begin
  Result := TItemRelacionamento.Create;
  FLista.Add(Result);
end;

function TItemLista.AddSeNaoExiste(AItem1Codigo, AItem1Tabela, AItem2Codigo, AItem2Tabela: string): TItemRelacionamento;
begin
  Result := nil;
  if IsRelacionamentoValido(AItem1Codigo, AItem2Codigo) then
  begin
    Result := GetRelacionamento(AItem1Codigo, AItem2Codigo);
    if Result = nil then
    begin
      Result := Self.Add;
      with Result do
      begin
        Item1Codigo := AItem1Codigo;
        Item1Tabela := AItem1Tabela;
        Item2Codigo := AItem2Codigo;
        Item2Tabela := AItem2Tabela;
      end;
    end;
  end;
end;

function TItemLista.Count: Integer;
begin
  Result := FLista.Count;
end;

constructor TItemLista.Create;
begin
  FLista := TList<TItemRelacionamento>.Create;
end;

destructor TItemLista.Destroy;
begin
  while FLista.Count > 0 do
  begin
    FLista[FLista.Count - 1].Free;
    FLista.Delete(FLista.Count - 1);
  end;
  FLista.Free;
  inherited;
end;

function TItemLista.GetRelacionamento(AItem1Codigo, AItem2Codigo: string): TItemRelacionamento;
var
  i : Integer;
begin
  Result := nil;
  for I := 0 to FLista.Count - 1 do
  begin
    if ((FLista[i].Item1Codigo = AItem1Codigo) and (FLista[i].Item2Codigo = AItem2Codigo)) or
       ((FLista[i].Item2Codigo = AItem1Codigo) and (FLista[i].Item1Codigo = AItem2Codigo)) then
    begin
      Result := FLista[i];
      Break;
    end;
  end;
end;

function TItemLista.GetItems(Index: Integer): TItemRelacionamento;
begin
  Result := FLista[Index];
end;

function TItemLista.GetPesoRelacao(ACodItem1, ACodItem2: string): Double;
var
  i : Integer;
  AQuantTotal: Double;
begin
  AQuantTotal := 0;

  //Soma a quant de todos os relacionamentos que possuem o Item2
  for I := 0 to FLista.Count - 1 do
  begin
    if FLista[i].Item2Codigo = ACodItem2 then
      AQuantTotal := AQuantTotal + FLista[i].Quant;
  end;

  //Com a quant total, calcula o peso de cada Item1 em relação ao item2
  if AQuantTotal > 0 then
    Result := GetRelacionamento(ACodItem1, ACodItem2).Quant * 100 / AQuantTotal / 100
  else
    Result := 1;
end;

function TItemLista.IsRelacionamentoValido(AItem1Codigo, AItem2Codigo: string): Boolean;
begin
  Result := (AItem1Codigo.Trim <> '') and (AItem2Codigo.Trim <> '');
end;     }
{$ENDREGION}

{$REGION '////////////////////////// BANCO ///////////////////////////////////'}

{ TBancoTabelas }

function TBancoTabela.AddCampo: TBancoCampo;
begin
  Result := TBancoCampo.Create;
  FCampos.Add(Result);
end;

function TBancoTabela.AddFilho(const AFilho: TBancoTabela): TBancoTabela;
begin
  Result := AFilho;
  Assert(Result <> nil, 'Tabela inválida: ' + AFilho.Nome);
  FFilhos.Add(Result);
end;

procedure TBancoTabela.CarregarMetaDados;
var
  QuerX: TFDQuery;
  ACampo: TBancoCampo;
begin
  FCampos.Clear;
  QuerX := GeraFDQuery;
  try
    QuerX.FetchOptions.Mode := fmAll;
    QuerX.SQL.Text := 'select RF.RDB$FIELD_NAME as CAMPO, ' +
                      '       RF.RDB$FIELD_SOURCE as DOMINIO, F.RDB$FIELD_TYPE as TIPO, F.RDB$FIELD_LENGTH as TAMANHO, ' +
                      '       (select first 1 1 ' +
                      '        from RDB$RELATION_CONSTRAINTS C ' +
                      '        left join RDB$INDEX_SEGMENTS S on (RF.RDB$FIELD_NAME = S.RDB$FIELD_NAME) and (C.RDB$INDEX_NAME = S.RDB$INDEX_NAME) ' +
                      '        where (RF.RDB$RELATION_NAME = C.RDB$RELATION_NAME) ' +
                      '              and (C.RDB$CONSTRAINT_TYPE = ''PRIMARY KEY'') ' +
                      '              and not(S.RDB$FIELD_POSITION is null)) as TEM_PK, ' +
                      '       (select first 1 1 ' +
                      '        from RDB$RELATION_CONSTRAINTS C ' +
                      '        left join RDB$INDEX_SEGMENTS S on (RF.RDB$FIELD_NAME = S.RDB$FIELD_NAME) and (C.RDB$INDEX_NAME = S.RDB$INDEX_NAME) ' +
                      '        where (RF.RDB$RELATION_NAME = C.RDB$RELATION_NAME) ' +
                      '              and (C.RDB$CONSTRAINT_TYPE = ''FOREIGN KEY'') ' +
                      '              and not(S.RDB$FIELD_POSITION is null)) as TEM_FK, ' +
                      '       (select first 1 1 ' +
                      '        from RDB$RELATION_CONSTRAINTS C ' +
                      '        left join RDB$INDEX_SEGMENTS S on (RF.RDB$FIELD_NAME = S.RDB$FIELD_NAME) and (C.RDB$INDEX_NAME = S.RDB$INDEX_NAME) ' +
                      '        where (RF.RDB$RELATION_NAME = C.RDB$RELATION_NAME) ' +
                      '              and (C.RDB$CONSTRAINT_TYPE = ''UNIQUE'') ' +
                      '              and not(S.RDB$FIELD_POSITION is null)) as TEM_UNIQUE ' +
                      'from RDB$RELATION_FIELDS RF ' +
                      'left join RDB$FIELDS F on (RF.RDB$FIELD_SOURCE = F.RDB$FIELD_NAME) ' +
                      'where (RF.RDB$RELATION_NAME = ' + QuotedStr(FNome) + ')';
    QuerX.Open;
    FCampos.Capacity := QuerX.RecordCount;
    while not QuerX.Eof do
    begin
      ACampo := AddCampo;
      ACampo.Nome      := Trim(QuerX.FieldByName('CAMPO').AsString);
      ACampo.Tamanho   := QuerX.FieldByName('TAMANHO').AsInteger;
      ACampo.TemPK     := not QuerX.FieldByName('TEM_PK').IsNull;
      ACampo.TemFK     := not QuerX.FieldByName('TEM_FK').IsNull;
      ACampo.TemUnique := not QuerX.FieldByName('TEM_UNIQUE').IsNull;
      case QuerX.FieldByName('TIPO').AsInteger of
        7:   ACampo.Tipo := ftSmallint;
        8:   ACampo.Tipo := ftInteger;
        10:  ACampo.Tipo := ftFloat;
        12:  ACampo.Tipo := ftDate;
        13:  ACampo.Tipo := ftTime;
        14:  ACampo.Tipo := ftString; //O correto seria ftFixedChar, mas vamos considerar como String para não ter problemas
        16:  ACampo.Tipo := ftLargeint;
        27:  ACampo.Tipo := ftFloat;
        35:  ACampo.Tipo := ftTimeStamp;
        37:  ACampo.Tipo := ftString;
        261: ACampo.Tipo := ftBlob;
      else
        ACampo.Tipo := ftUnknown;
      end;
      if not StartsStr('RDB$', QuerX.FieldByName('DOMINIO').AsString) then
        ACampo.Dominio := Trim(QuerX.FieldByName('DOMINIO').AsString);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
  FMetadadosCarregados := True;
end;

constructor TBancoTabela.Create;
begin
  FCampos := TObjectList<TBancoCampo>.Create;
  FFilhos := TList<TBancoTabela>.Create;
end;

destructor TBancoTabela.Destroy;
begin
  FCampos.Free;
  FFilhos.Free;
  inherited;
end;

procedure TBancoTabela.DoCheckMetaDados;
begin
  if not FMetadadosCarregados then
    CarregarMetaDados;
end;

function TBancoTabela.ExisteCampo(const ANomeCampo: string): Boolean;
begin
  Result := (FieldByName(ANomeCampo) <> nil);
end;

function TBancoTabela.FieldByName(const ANomeCampo: string): TBancoCampo;
begin
  for Result in Campos do
  begin
    if AnsiSameText(Result.Nome, ANomeCampo) then
      Exit;
  end;
  Result := nil;
end;

function TBancoTabela.GetCampos: TObjectList<TBancoCampo>;
begin
  DoCheckMetaDados;
  Result := FCampos;
end;

function TBancoTabela.GetChavePrimaria: TArray<TBancoCampo>;
var
  ACampo: TBancoCampo;
  I: Integer;
begin
  //Reservamos a memória para acomodar os campos no pior caso: todos os campos da tabela são PK.
  SetLength(Result, Campos.Count);
  I := 0;

  //Buscamos a real PK
  for ACampo in Campos do
  begin
    if ACampo.TemPK then
    begin
      Result[i] := ACampo;
      Inc(i);
    end;
  end;

  //Reajustamos o array para ter apenas o tamanho da PK real
  SetLength(Result, I);
end;
{$ENDREGION}

{$REGION '////////////////////////// TConsultaTEC ////////////////////////////'}

//Existe esse mesma rotina no CadPessoas para a consulta de Cliente e Agência, qualquer alteração aqui, verificar se não
//será necessário alterar lá também.
class function TConsultaTECPanel.ConsutaTECPanel(Tipo : boolean; Codigo : string; Transacao : TFDTransaction) : Boolean;
var
  ADataInicio     : TDateTime;
  ATipo, AGeraXML : boolean;
  ACodigo         : string;
begin
  inherited;
  ATipo   := Tipo;
  ACodigo := Codigo;

  AGeraXML := TConsultaTECPanel.GerarXMLConsultaTECVendaeCondicional(ATipo, ACodigo, Transacao);
  if not AGeraXML then
  begin
    Exit;
  end;
  ADataInicio := now;


  FCaminhoConsultaTEC := TConfig.ReadString('CONSULTA_TEC_CAMINHO_ARQUIVO');

  while true do
  begin
    result := false;
    if (FilesExists(FCaminhoConsultaTEC + 'TEC.RET.xml')) and (not (FilesExists(FCaminhoConsultaTEC + 'TEC.ENV.xml'))) then // and (SecondsBetween(now, ADataInicio) <= 60) then
    begin
      result := TConsultaTECPanel.ProcessaRetornoConsutaTECVendaeCondicional(ATipo, ACodigo, Transacao);
      DeleteFile(FCaminhoConsultaTEC + 'TEC.RET.xml');
      Break;
    end else
    begin
      sleep(240);
      Application.ProcessMessages;
    end;
  end;
end;

class function TConsultaTECPanel.GerarXMLConsultaTECVendaeCondicional(Tipo : boolean; Codigo : string; Transacao : TFDTransaction) : Boolean;
var
  AXML: TXMLDocument;
  NodeRoot, Nodecabecalho, Nodesolicitacao, NoderotinaVND, NoderotinaVNDCliente, NoderotinaVNDAgencia,
  NoderotinaVNDPagamento, NoderotinaVNDPagamentoParcela, NoderotinaVNDPagamentoTotal, NoderotinaVNDVendas,
  NoderotinaVNDVendasVenda, NoderotinaVNDTotal, NoderotinaVNDTotalVendas: IXMLNode;
  QuerX, QuerCidade, QuerAgencia, QuerSequencia : TIBQuery;
  AIdentificacao, CodCidade, ACodSoftwareHouse : integer;
  AEmprestar, ADevolver, AFaturar : double;
  ADataAtual : TDateTime;
begin
  AXML := TXMLDocument.Create(Application);
  try
    ADataAtual     := DataHoraSys;
    AXML.DOMVendor := GetDOMVendor('MSXML');
    AXML.Options   := [doNodeAutoIndent, doNodeAutoCreate, doAttrNull, doAutoPrefix, doNamespaceDecl];
    AXML.XML.Clear;
    AXML.Active    := True;
    AXML.CreateElement('xml', '');
    AXML.Version   := '1.0';
    AXML.Encoding  := 'UTF-8';
    NodeRoot := AXML.AddChild('tec');

    FCaminhoConsultaTEC := TConfig.ReadString('CONSULTA_TEC_CAMINHO_ARQUIVO');
    if FilesExists(FCaminhoConsultaTEC + 'TEC.RET.xml') then
      DeleteFile(FCaminhoConsultaTEC + 'TEC.RET.xml');

    with TIBStoredProc.Create(nil) do
    try
      Database    := TDefinicoesBancoIB.Banco;
      Transaction := TDefinicoesBancoIB.Banco.DefaultTransaction;
      StoredProcName := 'GENCONSULTA_TEC';
      ExecProc;
      AIdentificacao := Params[0].AsInteger;
    finally
      Free;
    end;

    Nodecabecalho := NodeRoot.AddChild('cabecalho');
      Nodecabecalho.AddChild('nVersaoLeiaute').NodeValue := TConfig.ReadString('CONSULTA_TEC_VERSAO_LAYOUT');
      Nodecabecalho.AddChild('nIdentificacao').NodeValue := AIdentificacao;
      Nodecabecalho.AddChild('nLojista').NodeValue       := TConfig.ReadString('CONSULTA_TEC_CODIGO_LOGISTA');
      QuerX := GeraQuery;
      try
        QuerX.SQL.Text   := 'select P.CNPJCPF as CNPJCPF ' +
                            'from USUARIO U ' +
                            'left join PESSOAS P on U.CODFUNCIONARIO = P.CODIGO ' +
                            'where U.CODIGO = :CodUsuario';
        QuerX.ParamByName('CodUsuario').AsInteger := CodigoUsuario;
        QuerX.Open;
        Nodecabecalho.AddChild('cFuncionario').NodeValue := OnlyNumber(QuerX.FieldByName('CNPJCPF').Text);
      finally
        QuerX.Free;
      end;
      Nodecabecalho.AddChild('dData').NodeValue     := FormatDateTime('yyyy-MM-dd', (ADataAtual));
      Nodecabecalho.AddChild('xHora').NodeValue     := TimeOf(ADataAtual);
      Nodecabecalho.AddChild('nAmbiente').NodeValue := TConfig.ReadInteger('CONSULTA_TEC_AMBIENTE');
      //(mes * hora) + (Ano * Minuto)
      ACodSoftwareHouse := ((MonthOf(ADataAtual) * HourOf(ADataAtual)) +
                            (YearOf(ADataAtual) * MinuteOf(ADataAtual)));
      Nodecabecalho.AddChild('xSoftwareHouse').NodeValue := 'WR2.' + IntToStr(ACodSoftwareHouse);

    Nodesolicitacao  := NodeRoot.AddChild('solicitacao');
    QuerX := GeraQuery;
    try
      QuerX.SQL.Text := 'select P.* from PESSOAS P join VENDA V on P.CODIGO = V.PESSOA_RESPONSAVEL_CODIGO ' +
                        'where V.CODIGO = :Codigo';
      QuerX.ParamByName('Codigo').AsString := Codigo;
      QuerX.Open;
      if Tipo then
        NoderotinaVND := Nodesolicitacao.AddChild('rotinaVND')
      else
        NoderotinaVND := Nodesolicitacao.AddChild('rotinaCSG');

      NoderotinaVNDCliente := NoderotinaVND.AddChild('cliente');
        NoderotinaVNDCliente.AddChild('cCNPJCPF').NodeValue     := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
        NoderotinaVNDCliente.AddChild('xNome').NodeValue        := QuerX.FieldByName('RAZAOSOCIAL').AsString;
        NoderotinaVNDCliente.AddChild('xFantasia').NodeValue    := QuerX.FieldByName('FANTASIA').AsString;
        NoderotinaVNDCliente.AddChild('xLogradouro').NodeValue  := QuerX.FieldByName('ENDERECO').AsString;
        NoderotinaVNDCliente.AddChild('nNumero').NodeValue      := QuerX.FieldByName('NUMERO').AsString;
        NoderotinaVNDCliente.AddChild('xComplemento').NodeValue := QuerX.FieldByName('COMPLEMENTO').AsString;
        NoderotinaVNDCliente.AddChild('xBairro').NodeValue      := QuerX.FieldByName('BAIRRO').AsString;
        NoderotinaVNDCliente.AddChild('cMunicipio').NodeValue   := QuerX.FieldByName('CODCIDADE').AsString;
        CodCidade := QuerX.FieldByName('CODCIDADE').AsInteger;
        QuerCidade := GeraQuery;
        try
          QuerCidade.SQL.Text := 'select * from CIDADES C ' +
                                 'where C.CODIGO = :CodCidade';
          QuerCidade.ParamByName('CodCidade').AsInteger := CodCidade;
          QuerCidade.Open;
          NoderotinaVNDCliente.AddChild('xMunicipio').NodeValue := QuerCidade.FieldByName('DESCRICAO').AsString;
        finally
          QuerCidade.Free;
        end;
        NoderotinaVNDCliente.AddChild('cCEP').NodeValue      := OnlyNumber(QuerX.FieldByName('CEP').AsString);
        NoderotinaVNDCliente.AddChild('cUF').NodeValue       := QuerX.FieldByName('UF').AsString;
        NoderotinaVNDCliente.AddChild('xTelefone').NodeValue := PadLeft(OnlyNumber(QuerX.FieldByName('FONE1').AsString),10,'0');
        NoderotinaVNDCliente.AddChild('xCelular').NodeValue  := PadLeft(OnlyNumber(QuerX.FieldByName('FONE2').AsString),10,'0');

        if QuerX.FieldByName('EMAIL').AsString <> '' then
        begin
          NoderotinaVNDCliente.AddChild('xEmail').NodeValue := QuerX.FieldByName('EMAIL').AsString;
        end else
        begin
          ShowMessageWR('Cliente sem Email!' + sLineBreak + 'Localize o cadastro do Cliente informe o Email.', MB_ICONWARNING);
          result := false;
          Exit;
        end;

        NoderotinaVNDCliente.AddChild('cInscricaoEstadual').NodeValue  := QuerX.FieldByName('INSCIDENT').AsString;

        if QuerX.FieldByName('TIPO').AsString = 'J' then
        begin
          if QuerX.FieldByName('DATANASCIMENTO').AsString <> '' then
          begin
            NoderotinaVNDCliente.AddChild('dDataAberturaEmpresa').NodeValue := FormatDateTime('yyyy-MM-dd',QuerX.FieldByName('DATANASCIMENTO').AsDateTime);
          end else
          begin
            ShowMessageWR('Cliente sem Data de Abertura da Empresa!' + sLineBreak + 'Localize o cadastro do Cliente informe a Abertura da Empresa.', MB_ICONWARNING);
            result := false;
            Exit;
          end;
        end else
        begin
          NoderotinaVNDCliente.AddChild('dDataAberturaEmpresa').NodeValue := '';
        end;

        NoderotinaVNDCliente.AddChild('xNomeContato').NodeValue        := QuerX.FieldByName('CONTATO').AsString;
        NoderotinaVNDCliente.AddChild('cCPFContato').NodeValue         := '';
        NoderotinaVNDCliente.AddChild('dDataNascimento').NodeValue     := '';

      NoderotinaVNDAgencia := NoderotinaVND.AddChild('agencia');
      QuerAgencia := GeraQuery;
      Try
        QuerAgencia.SQL.Text := 'select P1.* from PESSOAS P1 ' +
                                'where P1.CODIGO = (select P.PESSOA_REPRESENTANTE_CODIGO ' +
                                'from PESSOAS P ' +
                                'where P.CODIGO = :CodPessoaAgencia)';
        QuerAgencia.ParamByName('CodPessoaAgencia').AsString := QuerX.FieldByName('CODIGO').AsString;
        QuerAgencia.Open;
        if QuerAgencia.FieldByName('REFERENCIA').AsString <> '' then
        begin
          NoderotinaVNDAgencia.AddChild('cCodigo').NodeValue := QuerAgencia.FieldByName('REFERENCIA').AsString;
        end else
        begin
          ShowMessageWR('Cliente sem Agência!' + sLineBreak + 'Localize o cadastro do Cliente informe a Agência', MB_ICONWARNING);
          result := false;
          Exit;
        end;
      Finally
        QuerAgencia.Free;
      end;
    finally
      QuerX.Free;
    end;

    if Tipo then
    begin
      NoderotinaVNDPagamento := NoderotinaVND.AddChild('pagamento');
      QuerX := GeraQuery;
      try
        QuerX.SQL.Text := 'select * from VENDA_FINANCEIRO VF ' +
                          'where VF.CODVENDA = :CodVenda';
        QuerX.ParamByName('CodVenda').AsString := Codigo;
        QuerX.Open;
        while not QuerX.Eof do
        begin
          NoderotinaVNDPagamentoParcela := NoderotinaVNDPagamento.AddChild('parcela');
          NoderotinaVNDPagamentoParcela.Attributes['nNumero'] := QuerX.FieldByName('PARCELA').AsString;
          if MatchStr(QuerX.FieldByName('TIPOPAGTO').AsString,['CHEQUE', 'CHEQUE-PRÉ']) then
          begin
            if (QuerX.FieldByName('CHEQUE_CODBANCO').AsString = '') or (QuerX.FieldByName('CHEQUE_NUMERO').AsString = '') then
            begin
              ShowMessageWR('Tipo de pagamento em Cheque.' + sLineBreak +
                            'É necessário informar o Código do Banco e o Número do Cheque.', MB_ICONWARNING);
              result := false;
              Exit;
            end else
            begin
              NoderotinaVNDPagamentoParcela.AddChild('cBanco').NodeValue  := PadLeft(QuerX.FieldByName('CHEQUE_CODBANCO').AsString,3,'0');
              NoderotinaVNDPagamentoParcela.AddChild('cCheque').NodeValue := PadLeft(QuerX.FieldByName('CHEQUE_NUMERO').AsString,6,'0');
            end;
          end else
          if MatchStr(QuerX.FieldByName('TIPOPAGTO').AsString, ['CARTÃO DE CRÉDITO', 'CARTÃO DE DÉBITO']) then
          begin
            NoderotinaVNDPagamentoParcela.AddChild('cBanco').NodeValue  := '999';
            NoderotinaVNDPagamentoParcela.AddChild('cCheque').NodeValue := '999999';
          end else
          begin
            NoderotinaVNDPagamentoParcela.AddChild('cBanco').NodeValue  := '000';
            NoderotinaVNDPagamentoParcela.AddChild('cCheque').NodeValue := '000000';
          end;
          NoderotinaVNDPagamentoParcela.AddChild('dVencimento').NodeValue := FormatDateTime('yyyy-MM-dd', (QuerX.FieldByName('VENCTO').AsDateTime));
          NoderotinaVNDPagamentoParcela.AddChild('vValor').NodeValue      := TrocaVirgPPto(FormatFloat('#######0.00', QuerX.FieldByName('VALOR').AsFloat));
          QuerX.Next;
        end;
      finally
        QuerX.Free;
      end;

      QuerX := GeraQuery;
      try
        QuerX.SQL.Text := 'select max(VF.PARCELA) as PARCELA, sum(VALOR) as VALOR ' +
                          'from VENDA_FINANCEIRO VF ' +
                          'where VF.CODVENDA = :CodVenda';
        QuerX.ParamByName('CodVenda').AsString := Codigo;
        QuerX.Open;
        NoderotinaVNDPagamentoTotal := NoderotinaVNDPagamento.AddChild('total');
            NoderotinaVNDPagamentoTotal.AddChild('nParcelas').NodeValue := QuerX.FieldByName('PARCELA').AsString;
            NoderotinaVNDPagamentoTotal.AddChild('vTotal').NodeValue    := TrocaVirgPPto(FormatFloat('#######0.00', QuerX.FieldByName('VALOR').AsFloat));
      finally
        QuerX.Free;
      end;
      QuerX := GeraQuery;
      try
        QuerX.SQL.Text := 'select * from VENDA V where V.CODIGO = :CodVenda';
        QuerX.ParamByName('CodVenda').AsString := Codigo;
        QuerX.Open;
        NoderotinaVNDVendas := NoderotinaVND.AddChild('vendas');
        NoderotinaVNDVendasVenda := NoderotinaVNDVendas.AddChild('venda');
        NoderotinaVNDVendasVenda.Attributes['nNumero'] := '1';
            NoderotinaVNDVendasVenda.AddChild('vTotal').NodeValue := TrocaVirgPPto(FormatFloat('#######0.00', QuerX.FieldByName('TOTAL').AsFloat));
        NoderotinaVNDTotalVendas := NoderotinaVNDVendas.AddChild('total');
            NoderotinaVNDTotalVendas.AddChild('nVendas').NodeValue := 1;
            NoderotinaVNDTotalVendas.AddChild('vTotal').NodeValue := TrocaVirgPPto(FormatFloat('#######0.00', QuerX.FieldByName('TOTAL').AsFloat));
      finally
        QuerX.Free;
      end;
    end
    else
    begin
      AEmprestar := 0;
      ADevolver  := 0;
      AFaturar   := 0;
      QuerX := GeraQuery;
      QuerSequencia := GeraQuery;
      try
        QuerX.SQL.Text := 'select * from VENDA_PRODUTO V where V.CODVENDA = :CodVenda';
        QuerX.ParamByName('CodVenda').AsString := Codigo;
        QuerX.Open;
        while not QuerX.Eof do
        begin
          if QuerX.FieldByName('QUANT').AsFloat > 0 then
          begin
            AEmprestar := AEmprestar + (QuerX.FieldByName('VALOR').AsFloat * Abs(QuerX.FieldByName('QUANT').AsFloat))
          end
          else
          begin
            ADevolver := ADevolver + (QuerX.FieldByName('VALOR').AsFloat * Abs(QuerX.FieldByName('QUANT').AsFloat));
          end;
          QuerX.Next;
        end;

        NoderotinaVNDPagamento := NoderotinaVND.AddChild('consignado');

        QuerSequencia.SQL.Text := 'select * from venda where codigo = :codigo';
        QuerSequencia.Params[0].AsString := Codigo;
        QuerSequencia.Open;
        NoderotinaVNDPagamento.AddChild('nNumero').NodeValue    := QuerSequencia.FieldByName('SEQUENCIA').AsString;

        if (ADevolver = 0) and (QuerSequencia.FieldByName('DT_FATURAMENTO').AsString = '') then
        begin
          NoderotinaVNDPagamento.AddChild('vEmprestar').NodeValue := TrocaVirgPPto(FormatFloat('#######0.00', AEmprestar));
          NoderotinaVNDPagamento.AddChild('vDevolver').NodeValue  := '0.00';
          NoderotinaVNDPagamento.AddChild('vFaturar').NodeValue   := '0.00';
        end else
        if (ADevolver > 0) and (QuerSequencia.FieldByName('DT_FATURAMENTO').AsString = '') then
        begin
          NoderotinaVNDPagamento.AddChild('vEmprestar').NodeValue := '0.00';
          NoderotinaVNDPagamento.AddChild('vDevolver').NodeValue  := TrocaVirgPPto(FormatFloat('#######0.00', ADevolver));
          NoderotinaVNDPagamento.AddChild('vFaturar').NodeValue   := '0.00';
        end else
        begin
          NoderotinaVNDPagamento.AddChild('vEmprestar').NodeValue := '0.00';
          NoderotinaVNDPagamento.AddChild('vDevolver').NodeValue  := '0.00';
          NoderotinaVNDPagamento.AddChild('vFaturar').NodeValue   := TrocaVirgPPto(FormatFloat('#######0.00', AEmprestar - ADevolver));
        end;
      finally
        QuerSequencia.Free;
        QuerX.Free;
      end;
    end;

    AXML.SaveToFile(FCaminhoConsultaTEC + 'TEC.ENV.tec'); //\\tsclient\C\TECDataSoft\TEC.tec');
    if FilesExists(FCaminhoConsultaTEC + 'TEC.ENV.xml') then
      DeleteFile(FCaminhoConsultaTEC + 'TEC.ENV.xml');
    RenameFile(FCaminhoConsultaTEC + 'TEC.ENV.tec', FCaminhoConsultaTEC + 'TEC.ENV.xml');
    result := true;
  finally
    AXML.Free;
  end;
end;

class function TConsultaTECPanel.ProcessaRetornoConsutaTECVendaeCondicional(Tipo : boolean; Codigo : string; Transacao : TFDTransaction) : boolean;
var
  vXMLDoc: IXMLDocument;
  NodeRetorno, NodeRetornoCabecalho, NodeRetornoRotinaVND, NodeRetornoRotinaVNDVendas, NodeRetornoRotinaVNDVendasAutenticacao,
  NodeRetornoCondicional : IXMLNode;
  status : WideString;
  AResultado, AAutencicacao : string;
  QuerX : TFDQuery;
begin
  vXMLDoc := TXMLDocument.Create(nil);
  vXMLDoc.Active := true;
  try
    vXMLDoc.LoadFromFile(FCaminhoConsultaTEC + 'TEC.RET.xml'); //Le Arquivo  XML');
  except
    on E:Exception do
    begin
      if E.ClassName = 'EDOMParseError' then
        ShowMessageWR('Erro de leitura:' + sLineBreak + 'Arquivo XML de retorno esta vazio!', MB_ICONWARNING)
      else raise EWRException.Create(E.Message);
      Exit;
    end;
  end;

  NodeRetorno := vXMLDoc.DocumentElement.ChildNodes.FindNode('retorno');
  if NodeRetorno = nil then
  begin
    ShowMessageWR('Erro de Leitura:' + sLineBreak +
                  'Estrutura do Arquico XML de Retorno esta incorreto!' + sLineBreak +
                  'Tag <retorno> não encontrada!', MB_ICONWARNING);
    Exit;
  end;

  NodeRetornoCabecalho := NodeRetorno.ChildNodes.FindNode('cabecalho');

  status     := NodeRetornoCabecalho.ChildNodes['nStatus'].text;
  AResultado := NodeRetornoCabecalho.ChildNodes['xResultado'].text;

  if status = '0' then
  begin
    ShowMessageWR(AResultado, MB_ICONWARNING);
    result := false;
  end else
  begin
    if Tipo then
    begin
      NodeRetornoRotinaVND                   := NodeRetorno.ChildNodes.FindNode('rotinaVND');
      NodeRetornoRotinaVNDVendas             := NodeRetornoRotinaVND.ChildNodes.FindNode('vendas');
      NodeRetornoRotinaVNDVendasAutenticacao := NodeRetornoRotinaVNDVendas.ChildNodes.FindNode('autenticacao');
      AAutencicacao                          := NodeRetornoRotinaVNDVendasAutenticacao.ChildNodes['xAutenticacao'].Text;

      QuerX := GeraFDQuery(Transacao);
      try
        QuerX.SQL.Text := 'update VENDA V set V.AUTENTICACAO = :Autenticacao ' +
                          'where V.CODIGO = :CodVenda';
        QuerX.ParamByName('AUTENTICACAO').AsString := AAutencicacao;
        QuerX.ParamByName('CODVENDA').AsString     := Codigo;
        QuerX.ExecSQL;
      finally
        QuerX.Free;
      end;
      ShowMessageWR(AAutencicacao, MB_ICONWARNING);
    end else
    begin
      NodeRetornoCondicional := NodeRetorno.ChildNodes.FindNode('rotinaCSG');
      AAutencicacao          := NodeRetornoCondicional.ChildNodes['xAutenticacao'].Text;

      QuerX := GeraFDQuery(Transacao);
      try
        QuerX.SQL.Text := 'update VENDA V set V.AUTENTICACAO = :Autenticacao ' +
                          'where V.CODIGO = :CodVenda';
        QuerX.ParamByName('AUTENTICACAO').AsString := AAutencicacao;
        QuerX.ParamByName('CODVENDA').AsString     := Codigo;
        QuerX.ExecSQL;
      finally
        QuerX.Free;
      end;
      ShowMessageWR(AAutencicacao, MB_ICONWARNING);
    end;
    result := true;
  end;
end;

class function TConsultaTECPanel.ConverteData(AData : String) : TDateTime;
var
  AAno, ADia, AMes : word;
begin
  AAno := StrToInt(Copy(AData, 1, 4));
  ADia := StrToInt(Copy(AData, 9, 2));
  AMes := StrToInt(Copy(AData, 6, 2));

  result := EncodeDate(AAno, AMes, ADia);
end;
{$ENDREGION}

{$REGION 'Removidas '}

{ TArquivosListView }
 {
procedure TArquivosListView.CarregaArquivosListView(const ACaminho: string);
var
  Ini : TIniFile;
  ASecoes : TStringList;
  I : Integer;
  AArquivo : TArquivoListViewRec;
begin
  if Assigned(FArquivos) then
    FreeAndNil(FArquivos);
  FArquivos := TList<TArquivoListViewRec>.Create;
  Ini := TIniFile.Create(ACaminho + 'Arquivos.ini');
  ASecoes := TStringList.Create;
  try
    Ini.ReadSections(ASecoes);
    for I := 0 to ASecoes.Count - 1 do
    begin
      if ASecoes[i] <> 'GERAL' then
      begin
        AArquivo.Nome := ASecoes[i];
        AArquivo.CodItemVenda  := Ini.ReadInteger(ASecoes[i], 'CodItemVenda',  0);
        FArquivos.Add(AArquivo);
      end;
    end;
  finally
    Ini.Free;
    ASecoes.Free;
  end;
end;

destructor TArquivosListView.Destroy;
begin
  if Assigned(FArquivos) then
    FreeAndNil(FArquivos);
  inherited;
end;  }


{$ENDREGION}


initialization

Finalization
  TUsuario.ReleaseInstance;
end.

