unit Frame_CadAPI_OImpresso_Mestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, System.Generics.Collections, WREventos, UCBase,
  cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl, REST.Types,
  REST.Response.Adapter, REST.Client, Data.Bind.Components,
  cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, FrDashboardBlocoMestre, FrDashboardBlocoSimples, Vcl.Grids,
  Vcl.DBGrids, cxLabel, Frame_Cad, uWRFormataCamposDataSet, dxCustomTileControl, dxTileControl,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, wrPreencheLookup, wrTabelasCampos,
  Data.Bind.ObjectScope, System.Net.URLClient,
  Aguarde, wrForms, wrConversao, System.JSON, FireDAC.Stan.StorageJSON, Frame_CadPessoas_Mestre, Frame_Cad_Pocket, cxMemo,
  dxUIAdorners, cxImageComboBox, cxImageList, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TFrmOImpresso_Mestre = class(TFrmCad_Frame_Pocket)
    GrupoPrincipal: TdxLayoutItem;
    pnlPrincipal: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    OImpresso_Log: TFDQuery;
    StringGrid1: TStringGrid;
    DSOImpresso_Log: TDataSource;
    dxLayoutGroup1: TdxLayoutGroup;
    edtArquivo: TcxDBMemo;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxTileControl4: TdxTileControl;
    dxTileControlGroup10: TdxTileControlGroup;
    tiAdicionarParcela: TdxTileControlItem;
    dxTileControl4Item1: TdxTileControlItem;
    cxDBMemo2: TcxDBMemo;
    dxLayoutItem6: TdxLayoutItem;
    Select_OImpresso: TFDQuery;
    OImpresso_LogCODIGO: TIntegerField;
    OImpresso_LogCODOIMPRESSO: TIntegerField;
    OImpresso_LogCODUSUARIO: TIntegerField;
    OImpresso_LogEVENTO: TStringField;
    OImpresso_LogOBS: TMemoField;
    OImpresso_LogTABELA: TStringField;
    OImpresso_LogCHAVE_PK1: TIntegerField;
    OImpresso_LogCHAVE_PK2: TStringField;
    OImpresso_LogCHAVE_PK3: TStringField;
    OImpresso_LogATIVO: TStringField;
    OImpresso_LogDT_ALTERACAO: TSQLTimeStampField;
    cxGrid2DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1CODUSUARIO: TcxGridDBColumn;
    cxGrid2DBTableView1DATA: TcxGridDBColumn;
    cxGrid2DBTableView1EVENTO: TcxGridDBColumn;
    cxGrid2DBTableView1OBS: TcxGridDBColumn;
    cxGrid2DBTableView1TABELA: TcxGridDBColumn;
    cxGrid2DBTableView1CHAVE_PK1: TcxGridDBColumn;
    cxGrid2DBTableView1CHAVE_PK2: TcxGridDBColumn;
    cxGrid2DBTableView1CHAVE_PK3: TcxGridDBColumn;
    cxGrid2DBTableView1ATIVO: TcxGridDBColumn;
    cxGrid2DBTableView1DT_ALTERACAO: TcxGridDBColumn;
    cxGrid2DBTableView1DT_FECHAMENTO: TcxGridDBColumn;
    UCHist_OImpresso_Log: TUCHist_DataSet;
    OImpresso_LogDATA: TSQLTimeStampField;
    Select_Cadastro: TFDQuery;
    OImpresso_LogUSUARIO: TStringField;
    OImpresso_LogRETORNO: TStringField;
    RESTResponse_CONECTAR: TRESTResponse;
    RESTClient_CONECTAR: TRESTClient;
    RESTRequest_CONECTAR: TRESTRequest;
    RESTResponseDataSetAdapter_CONECTAR: TRESTResponseDataSetAdapter;
    MemTabela: TFDMemTable;
    UCHist_Select_Cadastro: TUCHist_DataSet;
    DSSelect_Cadastro: TDataSource;
    WREventosCadastro_Mestre: TWREventosCadastro;
    Transa_Cadastro: TFDTransaction;
    MemBackup: TFDMemTable;
    tcCadastroItem1: TdxTileControlItem;
    tcCadastroGroup1: TdxTileControlGroup;
    OImpresso_Configuracao: TFDQuery;
    cxGrid2DBTableView1ICONE: TcxGridDBColumn;
    OImpresso_LogBAIXADO: TStringField;
    OImpresso_LogENVIADO: TStringField;
    cxGrid2DBTableView1BAIXADO: TcxGridDBColumn;
    cxGrid2DBTableView1ENVIADO: TcxGridDBColumn;
    ImageSetinhas: TImageList;
    OImpresso_LogICONE: TIntegerField;
    ImageSetinhas16x16: TcxImageList;
    procedure GrupoLogAlteracoesTabChanged(Sender: TObject);
    procedure btnGETDadosClick(Sender: TdxTileControlItem);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure OImpresso_LogCalcFields(DataSet: TDataSet);

  private
    FAguarde: TFrmAguarde;

    // Geral
    function CountAtualizacao(AResource:String):Integer;
    procedure PostOuPut;
    procedure Busca_Tudo_do_OnLine;
    procedure Envia_Tudo_do_Local;
    procedure MemBackup_MantemCadastroLocal(ACadastro: TFDQuery);
//    function DefinePrioridadeSincronizacao(ADataSetCadastro, ADataSetOnline, ADataSetOImpresso: TDataSet): string;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

  public
    FCRMTabela: TCRMTabela;
    FResource:String;
    FResource_Params:String;
    FIndex: Integer;
    FErros: TStringList;
    FDataSetAtivo: TDataSet;

    procedure Carrega_Tabela; Virtual;
    Function Sincronizar:Boolean;
    function TrataCampos_GET: boolean; virtual;
    function TrataCampos_PUTouPOST: TJSONObject; virtual;
    procedure BuscaReferenciaEspecificaDoModulo(ADataSet: TDataSet); virtual;
    procedure Get; virtual;
    procedure Totalizar_Eventos;
    procedure Busca_E_Edita_Ou_Cria(ACadastro: TFDQuery; AMemTableOnline: TFDMemTable; AWREventos: TWREventosCadastro);


    procedure VerificaSeInsereOuEdita_Cadastro(ADataSetCadastro:TDataSet; AWREventos: TWREventosCadastro);
    procedure MemBackup_Retorna(ACadastro: TFDQuery);
    { Public declarations }
  end;

  function FormatGetDateTime(AValorCampo: Variant): TDateTime;
  function FormatPutDateTime(AValue:Variant):String;
  function FormatPutBoolean(AValue:Variant):String;

var
  FrmOImpresso_Mestre: TFrmOImpresso_Mestre;
Const
//  FURL = 'https://oimpresso.com';
FURL = 'http://localhost:8000';

implementation

{$R *.dfm}

uses Base, REST.JSON, System.StrUtils, UnitFuncoes, wrFuncoes,
    Frame_CadAPI_OImpresso_Configuracao, frFrameHistorico, Classes.WR;

function FormatGetDateTime(AValorCampo: Variant): TDateTime;
var
  AFormatSettings: TFormatSettings;
  AValorTratado: Variant;
begin
  if AValorCampo = '' then AValorTratado := 0
                      else AValorTratado := AValorCampo;

  AFormatSettings := TFormatSettings.Create('');
  AFormatSettings := FormatSettings;
  AFormatSettings.ShortDateFormat := 'yyyy-mm-dd';
  AFormatSettings.dateseparator := '-';
  AFormatSettings.ShortTimeFormat := 'hh:nn:ss';
  AFormatSettings.TimeSeparator := ':';

  TryStrToDateTime(AValorTratado, Result, AFormatSettings);
end;

function FormatPutDateTime(AValue:Variant):String;  /// Esta função formata a data que vem do Online e transforma em DateTime.  (Copiado do Leandro. Testado funcionando.)
begin
  Result:='';
  try
    if Not VarIsNull(AValue) then
      Result := FormatDateTime('yyyy-mm-dd hh:nn:ss', AValue);
  except
  end;
end;

function FormatPutBoolean(AValue:Variant):String;    /// Como não trabalhamos com boolean, faz a conversão aqui para 'S' ou 'N';
begin
  Result:='0';
  try
    if Not VarIsNull(AValue) then
    begin
      if AValue = 'S' then
        Result := '1'
      else
        Result := '0';
    end;
  except
  end;
end;

procedure TFrmOImpresso_Mestre.Carrega_Tabela;
begin
  OImpresso_Configuracao.Close;
  OImpresso_Configuracao.Open;
  if (DataHoraSys < OImpresso_Configuracao.FieldByName('TOKEN_DT_EXPIRACAO').AsDateTime) and (OImpresso_Configuracao.FieldByName('TOKEN_WEB_SERVICE').AsString <> '') then
  begin
    //  RESTRequest_Token.Params.ParameterByName('client_id').Value     := '3'; //Cadastro.FieldByName('CLIENT_ID').AsString;
    //  RESTRequest_Token.Params.ParameterByName('client_secret').Value := 'R53gzQEASZW1kfBNQsGMqW6bB3WbMYK5vCaQxMVG'; // Cadastro.FieldByName('CLIENT_SECRET').AsString;
    //  ARESTClient.BaseURL := OImpresso_Configuracao.FieldByName('DESCRICAO').AsString;   // 'https://oimpresso.com/';
  {  if ARESTRequest.Params.ParameterByName('Authorization').Value <> 'Bearer ' + QuerX.FieldByName('TOKEN_WEB_SERVICE').AsString then
    begin
      ShowMessage('Bearer ' + OImpresso_Configuracao.FieldByName('TOKEN_WEB_SERVICE').AsString+sLineBreak+
                  ARESTRequest.Params.ParameterByName('Authorization').Value);
    end;  }    
    RESTClient_CONECTAR.BaseURL := FURL;   // 'https://oimpresso.com/';
    RESTRequest_CONECTAR.Params.ParameterByName('Authorization').Value   := 'Bearer ' + OImpresso_Configuracao.FieldByName('TOKEN_WEB_SERVICE').AsString;
    RESTRequest_CONECTAR.Params.ParameterByName('Authorization').Options := [poDoNotEncode];
  end;
end;

procedure TFrmOImpresso_Mestre.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Cadastro.FieldByName('DESCRICAO').AsString   := 'Atualização';
  Cadastro.FieldByName('DATA').AsDateTime      := DataHoraSys;
  Cadastro.FieldByName('CODUSUARIO').AsInteger := Usuario.Codigo;
end;

procedure TFrmOImpresso_Mestre.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  OImpresso_Log.Open;
end;

procedure TFrmOImpresso_Mestre.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  OImpresso_Log.Close;
end;

function TFrmOImpresso_Mestre.CountAtualizacao(AResource:String): Integer;
begin
  Select_OImpresso.Close;
  Select_OImpresso.Open;
  Result := Select_OImpresso.RecordCount;

//  RESTRequest_CONECTAR.Params.ParameterByName('Authorization').Value:= 'Bearer ' + Cadastro.FieldByName('TOKEN_WEB_SERVICE').AsString;
//  RESTRequest_CONECTAR.Params.ParameterByName('Authorization').Options := [poDoNotEncode];

  RESTClient_CONECTAR.BaseURL   := FURL;  // isso é importante
  RESTRequest_CONECTAR.method   := rmGET;        /// Consulta para verificar se existe a pessoa no sistema online.
  RESTRequest_CONECTAR.Resource := AResource;
  try
    RESTRequest_CONECTAR.Execute;      // '{'#$D#$A'    "message": "Server Error"'#$D#$A'}'
  except
    ShowMessage(RESTResponse_CONECTAR.Content);
    Exit;
  end;
  if RESTResponse_CONECTAR.StatusCode = 200 then      // Deu certo, e retonou
  begin
    RESTResponse_CONECTAR.RootElement:='data';

  end else
  if RESTResponse_CONECTAR.StatusCode = 500 then    // Deu erro,
  begin
    RESTResponse_CONECTAR.RootElement:='message';
//    ShowMessage('
  end;

  if RESTResponse_CONECTAR.JSONText  = '['#$D#$A']' then
    MemTabela.EmptyDataSet;
  Result:= Result + MemTabela.RecordCount;
end;

procedure TFrmOImpresso_Mestre.Totalizar_Eventos;
Var
  APut_OK, APut_Erro, AGet_OK,AGet_Erro:Integer;
begin
  APut_OK  :=0;
  APut_Erro:=0;
  AGet_OK  :=0;
  AGet_Erro:=0;
  OImpresso_Log.First;
  while not OImpresso_Log.eof do
  begin
    if OImpresso_Log.FieldByName('RETORNO').AsString = 'OK enviado' then
      Inc(APut_OK);
    if OImpresso_Log.FieldByName('RETORNO').AsString = 'Erro ao enviar' then
      Inc(APut_Erro);
    if OImpresso_Log.FieldByName('RETORNO').AsString = 'OK baixado' then
      Inc(AGet_OK);
    if OImpresso_Log.FieldByName('RETORNO').AsString = 'Erro ao baixar' then
      Inc(AGet_Erro);
    OImpresso_Log.Next;
  end;
   Cadastro.FieldByName('Observacao').AsString:='';
  if APut_OK > 0 then     
    Cadastro.FieldByName('Observacao').AsString:=  Cadastro.FieldByName('Observacao').AsString+
                                                  'Enviado OK('+IntToStr(APut_OK)+') ';
  if APut_Erro > 0 then     
    Cadastro.FieldByName('Observacao').AsString:= Cadastro.FieldByName('Observacao').AsString+ 
                                                  'Erro no envio('+IntToStr(APut_Erro)+') ';
  if AGet_OK > 0 then     
    Cadastro.FieldByName('Observacao').AsString:= Cadastro.FieldByName('Observacao').AsString+ 
                                                  'Baixados OK('+IntToStr(AGet_OK)+') ';
  if AGet_Erro > 0 then     
    Cadastro.FieldByName('Observacao').AsString:= Cadastro.FieldByName('Observacao').AsString+ 
                                                  'Erro no Baixar('+IntToStr(AGet_Erro)+') ';
end;

function TFrmOImpresso_Mestre.TrataCampos_GET: boolean;
begin
  // Chama a rotina do filho
end;

function TFrmOImpresso_Mestre.TrataCampos_PUTouPOST: TJSONObject;
begin
  // Chama a rotina do filho
end;

procedure TFrmOImpresso_Mestre.BuscaReferenciaEspecificaDoModulo(ADataSet: TDataSet);
begin
  // Chama a rotina do filho
end;

constructor TFrmOImpresso_Mestre.Create(AOwner: TComponent);
begin
  inherited;
  Carrega_Tabela;
  FErros := TStringList.Create;
end;

destructor TFrmOImpresso_Mestre.Destroy;
begin
  FErros.Free;
  inherited;
end;

procedure TFrmOImpresso_Mestre.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  inherited;    // Abrir o cadastro
//  with ABaseClass_MidChild[QuemeoPai(Tag_Pessoas)].Create(Self) do
//    ShowCadastroItem(Tag_Pessoas, OImpresso_Log.FieldByName('COD').Value);
end;

procedure TFrmOImpresso_Mestre.btnGETDadosClick(Sender: TdxTileControlItem);
begin
  inherited;
  if Not Sincronizar then  // Aqui Vem a Bruxaria
    ShowMessage('Não possui registro para sincronizar');
end;

function TFrmOImpresso_Mestre.Sincronizar: Boolean;
begin
  inherited;
  Result:=(CountAtualizacao(FResource+FResource_Params) > 0);
  if Result then    // Se tem registro para Sicroniar faz
  begin     
    if not Assigned(FAguarde) then
      FAguarde := TFrmAguarde.Create(self);     /// Antes de começar a passar por cada pessoa, mostra para o usuário o progresso.
    btnNovo.Click;
    Application.ProcessMessages;   
    try
      if RESTResponse_CONECTAR.JSONText  <> '['#$D#$A']' then
        Busca_Tudo_do_OnLine;
      Envia_Tudo_do_Local;
      Totalizar_Eventos;
      btnConfirmar.Click;
    except
      on e:Exception do
      begin
        btnCancelar.Click;
        // GeraHistórico aqui pra ser possível acessar pela tela de configuração.
        OutputDebugString(StringToOleStr(e.message));
        WRLog(e.message);
      end;
    end;
    FAguarde.Close;
  end;
end;

procedure TFrmOImpresso_Mestre.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
begin
//  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Owner) do
    begin
      AddChavePrimaria(FNomeTabela , 'CODIGO', edtCodigo);
      AddGenerator(edtCodigo);
      AddValorInicial(FNomeTabela , 'DATA', edtDT_Alteracao, '@DATA');
      AddValorInicial(FNomeTabela , 'ATIVO', cbxAtivo, 'S');
      with AddAcoesTabela('CONFIRMAR','', 'Regras necessárias para poder Confirmar.') do
      begin
        AddObrigatorio(FNomeTabela, 'ATIVO',     cbxAtivo,     'Informe se o Cadastro esta ATIVO ou DESATIVADO.');
      end;
    end;
  end;
end;

procedure TFrmOImpresso_Mestre.GrupoLogAlteracoesTabChanged(Sender: TObject);
begin
  inherited;
  if LiPnlFrameLogAtividades.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameHistorico, UCHist_Cadastro, nil);
end;

procedure TFrmOImpresso_Mestre.MemBackup_Retorna(ACadastro: TFDQuery);
begin
  if MemBackup.Active and (MemBackup.RecordCount = 1)  then  // and RecordCount = 1
  begin
    UCHist_Select_Cadastro.Enabled:=False;
    ACadastro.Post;                                   // Antes desse post tem que tirar o backup,
    UCHist_Select_Cadastro.Enabled:=True;
    ACadastro.Edit;
    DSCopiarCamposIguais(MemBackup, ACadastro,['OIMPRESSO_CODIGO', 'OIMPRESSO_ATIVO', 'OIMPRESSO_UPDATED_AT', 'OIMPRESSO_DT_ALTERACAO']);    // Aqui devo me preocupar com alguns campos
    ACadastro.FieldByName('OIMPRESSO_DT_ALTERACAO').Value := null;
  end;
end;

procedure TFrmOImpresso_Mestre.OImpresso_LogCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (OImpresso_Log.FieldByName('ENVIADO').AsString = 'S') and (OImpresso_Log.FieldByName('BAIXADO').AsString = '') then
    OImpresso_Log.FieldByName('ICONE').AsInteger := 0
  else
  if (OImpresso_Log.FieldByName('ENVIADO').AsString = '') and (OImpresso_Log.FieldByName('BAIXADO').AsString = 'S') then
    OImpresso_Log.FieldByName('ICONE').AsInteger := 1
  else
  if (OImpresso_Log.FieldByName('ENVIADO').AsString = '') and (OImpresso_Log.FieldByName('BAIXADO').AsString = 'N') then
    OImpresso_Log.FieldByName('ICONE').AsInteger := 2
  else
  if (OImpresso_Log.FieldByName('ENVIADO').AsString = 'N') and (OImpresso_Log.FieldByName('BAIXADO').AsString = '') then
    OImpresso_Log.FieldByName('ICONE').AsInteger := 3
  else
  if (OImpresso_Log.FieldByName('ENVIADO').AsString = 'S') and (OImpresso_Log.FieldByName('BAIXADO').AsString = 'S') then
    OImpresso_Log.FieldByName('ICONE').AsInteger := 4
  else
  if (OImpresso_Log.FieldByName('ENVIADO').AsString = 'N') and (OImpresso_Log.FieldByName('BAIXADO').AsString = 'N') then
    OImpresso_Log.FieldByName('ICONE').AsInteger := 5
  else
  if (OImpresso_Log.FieldByName('ENVIADO').AsString = 'N') and (OImpresso_Log.FieldByName('BAIXADO').AsString = 'S') then
    OImpresso_Log.FieldByName('ICONE').AsInteger := 6
  else
  if (OImpresso_Log.FieldByName('ENVIADO').AsString = 'S') and (OImpresso_Log.FieldByName('BAIXADO').AsString = 'N') then
    OImpresso_Log.FieldByName('ICONE').AsInteger := 7;
end;

procedure TFrmOImpresso_Mestre.MemBackup_MantemCadastroLocal(ACadastro: TFDQuery);
begin
  /// Prioridade Sincronização tem 3 opções:
  ///  -> Local: Dá prioridade para o registro já dentro do sistema
  ///  -> Online: Dá prioridade para o registro do online, substituindo o do sistema
  ///  Aqui já deve retornar o que deve fazer daqui pra frente.
//  MemBackup.Close;
//  if OImpresso_Configuracao.FieldByName('PRIORIDADE_SINCRONIZACAO').AsString = 'OnLine' then   // {configuracao se faz backup ou nao PRIORIDADE_SINCRONIZACAO }
//  begin
  try
    MemBackup.Active := False;
    MemBackup.Fields.Clear;
    DSCopiarFieldsParaMemTable(ACadastro,MemBackup);
    MemBackup.Active := True;
    if ACadastro.RecordCount > 0 then
    begin
      MemBackup.Insert;
      DSCopiarCamposIguais(ACadastro, MemBackup,['CODIGO']);
      MemBackup.CopyRecord(ACadastro);
      MemBackup.Post;
    end;
  except
    on E:Exception do
      OutputDebugString(StringToOleStr(e.message));
  end;
//  end;
end;

procedure TFrmOImpresso_Mestre.VerificaSeInsereOuEdita_Cadastro(ADataSetCadastro:TDataSet; AWREventos: TWREventosCadastro);
begin
  if (ADataSetCadastro.FieldByName('OIMPRESSO_CODIGO').AsString <> '') and
     (ADataSetCadastro.FieldByName('OIMPRESSO_UPDATED_AT').AsDateTime = FormatGetDateTime(FDataSetAtivo.FieldByName('updated_at').AsString)) then   // Necessário converter pois vem em formato diferente
       exit; // Não alterou nada

  OImpresso_Log.Insert;
  OImpresso_Log.FieldByName('Codigo').AsFloat        := GeTProximoCodigogEN('CR_OIMPRESSO_LOG');
  OImpresso_Log.FieldByName('CODOIMPRESSO').AsInteger:= Cadastro.FieldByName('CODIGO').AsInteger;
  OImpresso_Log.FieldByName('DATA').AsDateTime       := DataHoraSys;
  OImpresso_Log.FieldByName('ATIVO').AsString        := 'S';
  OImpresso_Log.FieldByName('CODUSUARIO').AsInteger  := Usuario.Codigo;
  OImpresso_Log.FieldByName('TABELA').AsString       := AWREventos.AcaoTabelaAtiva;
  OImpresso_Log.FieldByName('RETORNO').AsString      := 'Ok baixado';
  OImpresso_Log.Post;

  MemBackup_MantemCadastroLocal(TFDQuery(ADataSetCadastro));//MANTEM BACKUP DO CADASTRO ORIGINAL
  try
    if ADataSetCadastro.RecordCount = 0 then                               // INSERT
    begin
      ADataSetCadastro.Insert; //      Linha que aplica as configurações iniciais AQUI
      WREventosCadastro_Mestre.Regra_ValorInicial(ADataSetCadastro, AWREventos.AcaoTabelaAtiva , AWREventos.FormClassCadastro);
    end                                                                   // Se cair aqui é porque não encontrou o registro e tem que ser criado.
    else                                                                  // Ou
      ADataSetCadastro.Edit;                                               // Edita
    if ADataSetCadastro.FieldByName('OIMPRESSO_CODIGO').IsNull then
      ADataSetCadastro.FieldByName('OIMPRESSO_CODIGO').Value    := FDataSetAtivo.FieldByName('ID').Value;

    ADataSetCadastro.FieldByName('OIMPRESSO_ATIVO').Value    := 'S';
    ADataSetCadastro.FieldByName('OIMPRESSO_UPDATED_AT').Value:= FormatGetDateTime(FDataSetAtivo.FieldByName('updated_at').AsString);
    UCHist_Select_Cadastro.MensagemHistorico.Text    := 'Dados importados do online. On-Line';
    if ADataSetCadastro.State = dsInsert then
      UCHist_Select_Cadastro.MensagemHistorico.Text  := 'Dados importados do online. Novo'
    else
    begin
      if (ADataSetCadastro.FieldByName('OIMPRESSO_UPDATED_AT').AsDateTime <> FormatGetDateTime(FDataSetAtivo.FieldByName('updated_at').AsString))
        then
        UCHist_Select_Cadastro.MensagemHistorico.Text  := 'Dados importados do online. Mantém local'
       else
        UCHist_Select_Cadastro.MensagemHistorico.Text  := 'Dados importados do online. Mantém local';
    end;
    ADataSetCadastro.FieldByName('OIMPRESSO_DT_ALTERACAO').AsDateTime := DataHoraSys; //PREENCHE Oimpresso_dt_alteracao PARA NAO ENVIAR
  except                        // IMPORTANTE
    on e:Exception do           // DEVE CONTER UM LOG E GUARDAR TUDO NO OIMPRESSO_LOG
    begin                       // LINHA QUE CONFERE OS CAMPOS OBRIGATÓRIOS
      ADataSetCadastro.Cancel;  // Aqui deve confirmar ou cancelar.
      OImpresso_Log.Edit;
      OImpresso_Log.FieldByName('RETORNO').AsString := 'Erro ao baixar';
      OImpresso_Log.FieldByName('BAIXADO').AsString := 'N';
      OImpresso_Log.Post;
//      WRLog(FCadastroMestre.Cadastro.FieldByName('CODIGO').AsString + ': ' + e.message);
    end;
  end;
end;

procedure TFrmOImpresso_Mestre.Busca_Tudo_do_OnLine;
var
  I, ACount: Integer;
begin
  inherited;
  FAguarde.Mensagem := 'Baixando Dados';                                       // RESTResponse_CONECTAR.StatusCode;          /// E trocar a tipagem de todos os campos dentro do FDTabela.
  FAguarde.Show;                                                               // RESTResponse_CONECTAR.StatusText;          /// Pois eles vêm bagunçados. Provavelmente é feito depois do Execute.
  Application.ProcessMessages;
  Cadastro.FieldByName('Arquivo').AsString:=RESTResponse_CONECTAR.JSONText;    // Aqui deve ser add tabela auxiliar já que temos paginação
  FAguarde.Mensagem := 'Buscando registros novos';
  FAguarde.ProgressoMaximo := MemTabela.RecordCount;
  Application.ProcessMessages;
  ACount:= MemTabela.RecordCount;
  for I := 0 to ACount -1 do      // Para cada item que deu errado deve dizer qual erro deu.
  begin
    FIndex := I;

    if ACount <> 1 then
      RESTResponse_CONECTAR.RootElement:='data['+IntToStr(FIndex)+']';                /// Passa os dados da response para a MemTable.


    Get;                              // Aqui deve ficar o tratamento do cadastro, Localizar editar ou Inserir novos

    FAguarde.AvancarProgresso;
  end;
end;

procedure TFrmOImpresso_Mestre.Get;
var
  ALog_Evento: String;
begin
  WREventosCadastro_Mestre.Empresa:=Empresa.FieldByName('Codigo').AsInteger;
  Select_Cadastro.SQL[1]:= 'Where OIMPRESSO_CODIGO = :OImpresso_Codigo';
  Select_Cadastro.Close;
  Select_Cadastro.ParamByName('OImpresso_Codigo').Value:=FDataSetAtivo.FieldByName('ID').Value;
  Select_Cadastro.Open;

  if Select_Cadastro.recordcount = 0 then
    BuscaReferenciaEspecificaDoModulo(FDataSetAtivo);    // Aqui no pessoas busca por CNPJ, ou no produto por CODFABRICA

  VerificaSeInsereOuEdita_Cadastro(Select_Cadastro, WREventosCadastro_Mestre);  // Aqui inverte a mágica

  if Select_Cadastro.State in DsEditModes then
  begin
    if Select_Cadastro.State = dsInsert then  ALog_Evento:= 'Recebido Novo'
    else                                      ALog_Evento:= 'Recebido Alterado';

    TrataCampos_GET;

    if OImpresso_Configuracao.FieldByName('PRIORIDADE_SINCRONIZACAO').AsString = 'Sistema Local' then
    begin
      MemBackup_Retorna(Select_Cadastro);      // Ok falat saber se precisa reenviar
      ALog_Evento := 'Cadastro local mantido';
    end;

    Select_Cadastro.Post;  // Fica aqui se tiver regra do Retono fica tudo la dentro dequele conceito

    OImpresso_Log.Edit;
    if UCHist_OImpresso_Log.CampoPK1 <> '' then
      OImpresso_Log.FieldByName('CHAVE_PK1').AsInteger := Select_Cadastro.FieldByName(UCHist_OImpresso_Log.CampoPK1).AsInteger;
    if UCHist_OImpresso_Log.CampoPK2 <> '' then
      OImpresso_Log.FieldByName('CHAVE_PK2').AsString  := Select_Cadastro.FieldByName(UCHist_OImpresso_Log.CampoPK2).AsString;
    if UCHist_OImpresso_Log.CampoPK3 <> '' then
      OImpresso_Log.FieldByName('CHAVE_PK3').AsInteger := Select_Cadastro.FieldByName(UCHist_OImpresso_Log.CampoPK3).AsInteger;

    OImpresso_Log.FieldByName('OBS').AsString          := FErros.Text;
    OImpresso_Log.FieldByName('EVENTO').AsString       := ALog_Evento;
    OImpresso_Log.FieldByName('BAIXADO').AsString      := 'S';

    try
      OImpresso_Log.Post;
      Transa_Cadastro.Commit;
    except
      Transa_Cadastro.Rollback;
    end;

    OImpresso_Log.Refresh;
  end;
end;

procedure TFrmOImpresso_Mestre.Busca_E_Edita_Ou_Cria(ACadastro: TFDQuery; AMemTableOnline: TFDMemTable; AWREventos: TWREventosCadastro);
var
  ALog_Evento: String;
begin
  AWREventos.Empresa:=Empresa.FieldByName('Codigo').AsInteger;
  ACadastro.SQL[1]:= 'Where OIMPRESSO_CODIGO = :OImpresso_Codigo';
  ACadastro.Close;
  ACadastro.ParamByName('OImpresso_Codigo').Value:=AMemTableOnline.FieldByName('ID').Value;
  ACadastro.Open;

  if ACadastro.recordcount = 0 then
    BuscaReferenciaEspecificaDoModulo(AMemTableOnline);    // Aqui no pessoas busca por CNPJ, ou no produto por CODFABRICA

  VerificaSeInsereOuEdita_Cadastro(ACadastro, AWREventos);  // Aqui inverte a mágica

  if ACadastro.State in DsEditModes then
  begin
    if ACadastro.State = dsInsert then  ALog_Evento:= 'Recebido Novo'
    else                                      ALog_Evento:= 'Recebido Alterado';

    TrataCampos_GET;

    if OImpresso_Configuracao.FieldByName('PRIORIDADE_SINCRONIZACAO').AsString = 'Sistema Local' then
    begin
      MemBackup_Retorna(ACadastro);      // Ok falat saber se precisa reenviar
      ALog_Evento := 'Cadastro local mantido';
    end;

    ACadastro.Post;  // Fica aqui se tiver regra do Retono fica tudo la dentro dequele conceito

    OImpresso_Log.Edit;
    if UCHist_OImpresso_Log.CampoPK1 <> '' then
      OImpresso_Log.FieldByName('CHAVE_PK1').AsInteger := ACadastro.FieldByName(UCHist_OImpresso_Log.CampoPK1).AsInteger;
    if UCHist_OImpresso_Log.CampoPK2 <> '' then
      OImpresso_Log.FieldByName('CHAVE_PK2').AsString  := ACadastro.FieldByName(UCHist_OImpresso_Log.CampoPK2).AsString;
    if UCHist_OImpresso_Log.CampoPK3 <> '' then
      OImpresso_Log.FieldByName('CHAVE_PK3').AsInteger := ACadastro.FieldByName(UCHist_OImpresso_Log.CampoPK3).AsInteger;

    OImpresso_Log.FieldByName('OBS').AsString          := FErros.Text;
    OImpresso_Log.FieldByName('EVENTO').AsString       := ALog_Evento;
    OImpresso_Log.FieldByName('BAIXADO').AsString      := 'S';

    try
      OImpresso_Log.Post;
    except
    end;

    OImpresso_Log.Refresh;
  end;
end;

procedure TFrmOImpresso_Mestre.Envia_Tudo_do_Local;
begin
  Select_OImpresso.Close;  /// Antes de começar a passar por cada pessoa, mostra para o usuário o progresso.
  Select_OImpresso.Open;   /// Passa por cada pessoa e sincroniza o cadastro de acordo com a configuração
  Select_OImpresso.First;
  FAguarde.ProgressoMaximo := Select_OImpresso.RecordCount;
  FAguarde.Mensagem        := 'Criando lista registros e serem enviados';
  FAguarde.Show;
  Application.ProcessMessages;

  while not Select_OImpresso.eof do
  begin
    PostOuPut; // Da tela filha, vai meu filho

    OImpresso_Log.Refresh;
    FAguarde.AvancarProgresso;
    Select_OImpresso.Next;
  end;
end;

procedure TFrmOImpresso_Mestre.PostOuPut;
begin

  if not (OImpresso_Log.Locate('CODOIMPRESSO', Select_Cadastro.FieldByName('OIMPRESSO_CODIGO').AsInteger, [])) then
  begin
    OImpresso_Log.Insert;
    OImpresso_Log.FieldByName('Codigo').AsFloat        := GeTProximoCodigogEN('CR_OIMPRESSO_LOG');
    OImpresso_Log.FieldByName('CODOIMPRESSO').AsInteger:= Cadastro.FieldByName('CODIGO').AsInteger;
    OImpresso_Log.FieldByName('DATA').AsDateTime       := DataHoraSys;
    OImpresso_Log.FieldByName('TABELA').AsString       := 'PESSOAS';
    OImpresso_Log.FieldByName('ATIVO').AsString        := 'S';
    OImpresso_Log.FieldByName('CODUSUARIO').AsInteger  := Usuario.Codigo;

    if UCHist_OImpresso_Log.CampoPK1 <> '' then
    OImpresso_Log.FieldByName('CHAVE_PK1').AsInteger := Select_OImpresso.FieldByName(UCHist_OImpresso_Log.CampoPK1).AsInteger;
    if UCHist_OImpresso_Log.CampoPK2 <> '' then
      OImpresso_Log.FieldByName('CHAVE_PK2').AsString  := Select_OImpresso.FieldByName(UCHist_OImpresso_Log.CampoPK2).AsString;
    if UCHist_OImpresso_Log.CampoPK3 <> '' then
      OImpresso_Log.FieldByName('CHAVE_PK3').AsInteger := Select_OImpresso.FieldByName(UCHist_OImpresso_Log.CampoPK3).AsInteger;
    if Select_OImpresso.FieldByName('OIMPRESSO_CODIGO').AsString = '' then
      OImpresso_Log.FieldByName('EVENTO').AsString     := 'Iniciou Envio Novo'
    else
      OImpresso_Log.FieldByName('EVENTO').AsString     := 'Iniciou Envio Alterado';

    OImpresso_Log.Post;
  end;
  // Preciso de um for para fazer o JSON, padrão web.
  RESTRequest_CONECTAR.AddBody(TrataCampos_PUTouPOST);                        // Preparar o body da request para ser enviada pro Online como Update.

  if FErros.Count = 0 then
  begin
    RESTResponse_CONECTAR.RootElement := '';                                    //  Aqui deve ser feita a request apenas se tiver algo
    RESTRequest_CONECTAR.Resource     := FResource;
    RESTRequest_CONECTAR.method       := rmPOST;
    if Select_Cadastro.FieldByName('OIMPRESSO_CODIGO').AsString <> '' then      // PUT muda
    begin
      RESTRequest_CONECTAR.method     := rmPUT;                                 // Isso manda Editar UPDATE no site
      RESTRequest_CONECTAR.Resource   := FResource + '/' + Select_Cadastro.FieldByName('OIMPRESSO_CODIGO').AsString;
    end;
    
    try
      RESTRequest_CONECTAR.Execute;                                             // aqui deve baixar e compara para saber se tem coisa alterada tbm no site?? GET maroto aqui
      if RESTRequest_CONECTAR.Params[3].Value = ''then
      RESTRequest_CONECTAR.Params[3].Destroy;
      RESTResponse_CONECTAR.JSONText;
    except
      on E:Exception do
        FErros.Add(E.message);
    end;

    if (RESTResponse_CONECTAR.StatusCode = 201) or (RESTResponse_CONECTAR.StatusCode = 200) then      // Compara edita e preciso , clona e posta no final
    begin
      RESTResponse_CONECTAR.RootElement:='data';
      Select_Cadastro.Edit;
      Select_Cadastro.FieldByName('OIMPRESSO_CODIGO').Value            := MemTabela.FieldByName('id').Value;         //PREENCHE Oimpresso_dt_alteracao PARA NAO ENVIAR

      if MemTabela.FieldByName('updated_at').AsString <> '' then
        Select_Cadastro.FieldByName('OIMPRESSO_UPDATED_AT').Value        := FormatGetDateTime(MemTabela.FieldByName('updated_at').Value); //PREENCHE Oimpresso_dt_alteracao PARA NAO ENVIAR

      if MemTabela.FieldByName('is_sincronizado').AsString <> '' then
        Select_Cadastro.FieldByName('OIMPRESSO_DT_ALTERACAO').AsDateTime := DataHoraSys; //PREENCHE Oimpresso_dt_alteracao PARA NAO ENVIAR

      Select_Cadastro.Post;
      Transa_Cadastro.Commit;

      OImpresso_Log.Edit;
      OImpresso_Log.FieldByName('OBS').AsString     := 'Enviado com sucesso. '+ RESTResponse_CONECTAR.StatusText;                  // 'ID', 'UPDATED_AT');
      OImpresso_Log.FieldByName('EVENTO').AsString  := 'Enviado com sucesso';
      OImpresso_Log.FieldByName('ENVIADO').AsString := 'S';
      OImpresso_Log.FieldByName('RETORNO').AsString := 'OK enviado';
      OImpresso_Log.Post;                                      // Aqui colocar o código que foi enviado , insert Cadastro.FieldByName('OIMPRESSO_CODIGO').AsString
    end else
    begin
      RESTResponse_CONECTAR.RootElement:='error.message';      //  '{'#$D#$A'    "message": "The given data was invalid."'#$D#$A'}'                                                                       // Aqui colocar o código que foi enviado , insert com erro
      OImpresso_Log.Edit;                                      // (RESTRequest_Token.Response.JSONValue as TJSONObject).GetValue('access_token').ToString
      OImpresso_Log.FieldByName('OBS').AsString     := 'Erro ao enviar: '+RESTResponse_CONECTAR.JSONText +
                                                        sLineBreak + 'Erros:' + FErros.Text; //  MemTabela.FieldByName('message').AsString;
      OImpresso_Log.FieldByName('ENVIADO').AsString := 'N';
      OImpresso_Log.FieldByName('EVENTO').AsString  := 'Erro ao enviar';
      OImpresso_Log.FieldByName('RETORNO').AsString := 'Erro ao enviar';
      OImpresso_Log.Post;
    end;
  end
  else
  begin
    OImpresso_Log.Edit;                                      // (RESTRequest_Token.Response.JSONValue as TJSONObject).GetValue('access_token').ToString
    OImpresso_Log.FieldByName('OBS').AsString     := 'Erros: ' + slinebreak + FErros.Text;
    OImpresso_Log.FieldByName('ENVIADO').AsString := 'N';
    OImpresso_Log.FieldByName('EVENTO').AsString  := 'Erro ao enviar'; //  MemTabela.FieldByName('message').AsString;
    OImpresso_Log.FieldByName('RETORNO').AsString := 'Erro ao enviar';
    OImpresso_Log.Post;
  end;
end;

{$REGION 'Estrutura Inutilizada'}

(* API - OImpresso
[Produto,Estoque,Venda,Financeiro,Compra,Produção]

Cadastra no site
Gere um login e senha
Siga o Manual Aqui

Na configuração de conflito deve perguntar quem é prioridade, informaçao do Site ou do Office Impresso.
* Quantidade de atualizações por Tabela
	Cada Modulo tem a data da última atualizacao (Pode usar a tabela nde vai ficar o registro, da quantidade,);
	Solicitar tudo do módulo após a data informada?????
* Quem começou a atualização, e o IP do responssável

OImpresso_codigo          - Redefinir é apagar o vinculo com o site e criar todos novamente
OImpresso_DT_ATUALIZACAO  - Se editar o campo eu tenho quem foi atualizado

TODO de integração
 -* Mergue entre os dois módulos, tratamento de exceções
 -* Rotina para ficar em execução timer monitorando o site
 -* Tela de Pessoas como os campos que devem ser sincronizados
 -* Tela de venda com os campos que deve ser sincronizados
 -* Produto com os campos que devem ser sincronizados
 -* Estoque e sincronização dos estoque entre as telas
 -* Financeiro e tela de sincronização do que vai para site
 -* Compra, notas baixadas, e cadastradas de compra.
 -**** Produção e estatus ficaram por último
* O Sistema ja está em produção, não pode ocorer nada que modifique o site


Sequência de eventos:
	1 - Puxa todos aqueles com cujo updated_at > DT_Ultima_Atualizacao_Pessoas(enviado como parâmetro) (Wagner vai criar um endpoint para fazer isso)
		-> Executa processo de sincronização para todos estes.
		-> Vai para Get de novo (reinicia o primeiro até terminar, baixa tudo primeiro ) If RecordCount = 0 sai;
	    -> Gravar ultimo alteração do site(registro alterado)

	2 - Se o OImpresso_Codigo = null, ainda não há sincronia.
		-> Executa o processo de POST.

	3 - Se OImpresso_Updated_At <> updated_at
		begin
	      if OImpresso_DT_Alteracao = null then
		  begin
		     if  Combobox decide qual vai manter(Edita com as regras de decisao) then
			 begin

				-> Se local:
					- Faz um backup do Cadastro
					- Edita o Cadastro
					- Sobescreve pelo online
					- Edita o Cadastro
					- Sobescreve pelo Backup
					- Faz o PUT
					- Atualiza Sincronizado e updated_at

			 end;
			-> Se online:
				- Edita o Cadastro
				- Sobescreve pelo Online
				- Atualiza Sincronizado e updated_at
		   end else
		   begin
			 Put
		   end;
		end else
		if OImpresso_Updated_At <> updated_at
		  Put;


		Todos os cadastros ainda não sincronizados consulta apenas ele pelo ID.
		-> Executa processo de sincronização para todos estes.
	DT_Ultima_Atualizacao_Pessoas = maior updated_at lido de todos os registros.
Dúvidas:
	Como saber quais ainda não foram sincronizados?
		-> OImpresso_Sincronizado := 'S'???
Processo de Sincronização:
	Para cada registro

	1 Se OImpresso_DT_Alteracao = null (Ou OImpresso_sincronizado = 'N')
		- TemAlteracaoLocal := True

	2 Se OImpresso_Updated_At <> updated_at
		- TemAlteracaoWeb := True

	3 Se Teve alteração no Local e no Online (TemAlteracaoWeb and TemAlteracaoLocal)
		-->>>> Combobox decide qual vai manter.

	4 Combobox = Local ou Se Teve só alteração no local 	(not TemAlteracaoWeb and TemAlteracaoLocal)
		- Faz o Put
		- Atualiza Sincronizado e updated_at

	5 Combobox = Online ou Se Teve só alteração no online 	(TemAlteracaoWeb and not TemAlteracaoLocal)
		- Edita o Cadastro
		- Sobescreve pelo Online
		- Atualiza Sincronizado e updated_at



Se o cadastro já está sincronizado, consulta apenas ele pelo ID.
* Como fica os itens alterados depois da data ? de envio ?
* Pega a data do último registro do bloco de alteração, (depois de ter enviado)
* se data do site é igual ao do site e DT_alteração <> null, pula a bagaça que ja está atualizado


Se o OImpresso_Codigo = null, POST para o site.

[] Consulta os maiores > updated_at que a última consulta


Se o cadastro já está sincronizado, consulta apenas ele pelo ID.

* Como fica os itens alterados depois da data ? de envio ?

* Pega a data do último registro do bloco de alteração, (depois de ter enviado)
* se data do site é igual ao do site e DT_alteração <> null, pula a bagaça que ja está atualizado

	Para cada registro {

	1 Se OImpresso_DT_Alteracao = null
		-->>>> TemAlteracaoLocal := True (Houve alteração no local)

	2 Se OImpresso_Updated_At <> updated_at
		-->>>> TemAlteracaoWeb := True (Houve alteração no online)

	3 Se Teve alteração no Local e no Online (TemAlteracaoWeb and TemAlteracaoLocal)
		-->>>> Combobox decide qual vai manter.
			Edita o Cadastro, Sobescreve pelo online e faz um backup do Cadastro.

	4 Se Teve só alteração no local ou Combobox = Local	(not TemAlteracaoWeb and TemAlteracaoLocal)
		-->>>> Envia o Local para o Online (PUT)
			Edita o Cadastro reinserindo os dados do backup.
			Faz o PUT para atualizar os dados do site.
			updated_at := DT_Alteracao do Cadastro. (Conferir se a própria API já alimenta este campo sem precisar mandar)
			OImpresso_DT_alteracao := novo updated_at do retorno do PUT
			OImpresso_Updated_At := novo updated_at do retorno do PUT

	5 Se Teve só alteração no online ou Combobox = Online	(TemAlteracaoWeb and not TemAlteracaoLocal)
		-->>>> Mantém a alteração feita pelo passo 3
			OImpresso_DT_Alteracao := updated_at
			OImpresso_Updated_At := updated_at

	}
     *)


(*
  AProduto:= API_OImpresso.RetornaDataSet('connector/api/product?per_page=15');

    MigraDePara(AProduto, ProdutoOffice);
    RESTResponse_CONECTAR.RootElement:= 'data[0].unit';
    MigraDePara(Unidade, ProdutoOffice);
    RESTResponse_CONECTAR.RootElement:= 'data[0].product_variations';
    MigraDePara(Unidade, ProdutoOffice);
    RESTResponse_CONECTAR.RootElement:= 'data[0].brand';
    MigraDePara(Variations, ProdutoOffice);
    RESTResponse_CONECTAR.RootElement:= 'data[0].brand';

      Gestão de vendedores
      * Busca vendedor
      https://oimpresso.com/connector/api/get-attendance/:user_id
      * Hora de Entrada
      https://oimpresso.com/connector/api/clock-in
      * Hora de Saída
      https://oimpresso.com/connector/api/clock-out
      * Listar Feriado
      https://oimpresso.com/connector/api/holidays?location_id=sequi&start_date=2020-06-25&end_date=2020-06-25

//    Gestão da Marca
//    * Listar marcas
//    https://oimpresso.com/connector/api/brand
//    if Gestao_Marca(true) then
//    begin
//
//    end;
//    if UpperCase(Atabela) = 'MARCA' then
//    begin
//      ADM.Customers.Open;
//      AGrid.DataSource:= ADM.dsCustomers;
//    end;
//      * Busca marca especifica
//      https://oimpresso.com/connector/api/brand/:brand

      Gestão de Filiais
      * Listar Filiais da empresa
      https://oimpresso.com/connector/api/business-location
      * Busca a Filial especifica da empresa
      https://oimpresso.com/connector/api/business-location/:business_location

      Gestão de contas caixas
      * Listar caixas
      https://oimpresso.com/connector/api/cash-register?status=open&user_id=10&start_date=2018-06-25&end_date=2018-06-25&location_id=at&per_page=15
      * Criar conta caixa
      https://oimpresso.com/connector/api/cash-register
      * Busca parcela do registro especificado
      https://oimpresso.com/connector/api/cash-register/:cash_register

      Gestão de contato
      * Lista de contato
      https://oimpresso.com/connector/api/contact?type=et
      * Criar contato
      https://oimpresso.com/connector/api/contact
      * Busca o contato especifico
      https://oimpresso.com/connector/api/contact/:contact
      * Atualizar contato
      https://oimpresso.com/connector/api/contact/:contact
      * Pagamento de contato
      https://oimpresso.com/connector/api/contact-payment

      Gestão de Contas a Pagar/Pagas
      * Lista de despesas
      https://oimpresso.com/connector/api/expense?location_id=animi&payment_status=paid&start_date=2018-06-25&end_date=2018-06-25&expense_for=recusandae&per_page=15
      * Criar despesa
      https://oimpresso.com/connector/api/expense
      * Busca uma despesa especificada
      https://oimpresso.com/connector/api/expense/:expense
      * Atualiza uma despesa
      https://oimpresso.com/connector/api/expense/:expense

      Gestão de produtos/serviços
      * Lista de produtos
      https://oimpresso.com/connector/api/product?brand_id=ea&category_id=esse&sub_category_id=ut&location_id=aspernatur&selling_price_group=occaecati&name=quia&sku=ex&per_page=10
      * Busca um produto especifico
      https://oimpresso.com/connector/api/product/:product?selling_price_group=velit
      * Listar variações
      https://oimpresso.com/connector/api/variation/:id?brand_id=nihil&category_id=doloribus&sub_category_id=nesciunt&not_for_selling=voluptatibus&name=aut&sku=dignissimos&per_page=10

      Gestão de vendas
      * Lista de vendas
      https://oimpresso.com/connector/api/sell?location_id=suscipit&contact_id=possimus&payment_status=paid&start_date=2018-06-25&end_date=2018-06-25&user_id=ex&service_staff_id=voluptatum&shipping_status=ordered&only_subscriptions=sapiente&per_page=10
      * Criar venda
      https://oimpresso.com/connector/api/sell
      * Busca uma venda especifica
      https://oimpresso.com/connector/api/sell/:sell
      * Atualiza venda
      https://oimpresso.com/connector/api/sell/:sell
      * Excluir Venda
      https://oimpresso.com/connector/api/sell/:sell
      * Atualiza status da venda
      https://oimpresso.com/connector/api/update-shipping-status

      Gestão de mesas
      * Lista de mesas
      https://oimpresso.com/connector/api/table?location_id=et
      * Busca uma tabela especifica
      https://oimpresso.com/connector/api/table/:table

      Gestão de Impostos
      * Lista os Impostos
      https://oimpresso.com/connector/api/tax
      * Busca um imposto específico
      https://oimpresso.com/connector/api/tax/:tax

      Gestão de taxonomia
      * Lista Taxonomia
      https://oimpresso.com/connector/api/taxonomy?type=saepe
      * Busca uma taxonomia especifica
      https://oimpresso.com/connector/api/taxonomy/:taxonomy

      Gestão de Tipos de serviço
      * Lista de Tipos de Serviço
      https://oimpresso.com/connector/api/types-of-service
      * Busca um Tipo de Serviço específico
      https://oimpresso.com/connector/api/types-of-service/:types_of_service

      Gestão de Unidades
      * Lista de unidades de Medida
      https://oimpresso.com/connector/api/unit
      * Busca uma unidade de medida específica
      https://oimpresso.com/connector/api/unit/:unit

      Gestão de usuários
      * Busca os detalhes do usuário conectado
      https://oimpresso.com/connector/api/user/loggedin
      * Lista usuários
      https://oimpresso.com/connector/api/user
      * Busca um usuário específico
      https://oimpresso.com/connector/api/user/:user
      * Altera a senha do usuário
      https://oimpresso.com/connector/api/update-password

      Geral
      * Listar contas recebidas/a receber
      https://oimpresso.com/connector/api/payment-accounts
      * Lista os tipos de pagamento
      https://oimpresso.com/connector/api/payment-methods
      * Busca detalhes da empresa
      https://oimpresso.com/connector/api/business-details
      * Busca um relatório de lucros e perdas
      https://oimpresso.com/connector/api/profit-loss-report?location_id=nostrum&start_date=2018-06-25&end_date=2018-06-25&user_id=cupiditate
      * Busca o estoque atual do produto
      https://oimpresso.com/connector/api/product-stock-report
      * Busca  notificatções
      https://oimpresso.com/connector/api/notifications
      * Busca detalhes do contrato
      https://oimpresso.com/connector/api/active-subscription


/// Antiga procedure de Sincronização dos dados do Online para o Local
procedure TFrmOImpresso_Mestre.MigraDePara(ADataSetTransfere : TDataSet; ADataSetRecebe : TFDDataSet);
var
  ACNPJCPF, ACNPJCPFFormatado, ATipo: string;
  ARegistros: TStringList;
  QuerX: TFDQuery;
begin
  ARegistros := TStringList.Create;
  QuerX := GeraFDQuery(TransaFD);
  if not OImpresso_Log.Active then
    OImpresso_Log.Open;
  ARegistros.Add('Online -> Sistema');

  try
    // Insere no log
    OImpresso_Log.Insert;
    OImpresso_Log.FieldByName('CODIGO').AsInteger := Trunc(GetProximoCodigoGen('CR_OIMPRESSO_SINCRONIZACAO_LOG'));
    OImpresso_Log.FieldByName('DATA').AsDateTime := DataHoraSys;
    OImpresso_Log.FieldByName('SINCRONIZADO_POR').AsString := Usuario.Login;
   (*
    //PESSOAS
    if RESTRequest_CONECTAR.Resource = 'connector/api/contactapi' then
    begin
      OImpressoSincronizacoesLog.FieldByName('TIPO').AsString := 'Contatos';

      ADataSetTransfere.First;
      while not ADataSetTransfere.eof do
      begin
//        ACNPJCPF := OnlyNumberWR(ADataSetTransfere.FieldByName('cpf_cnpj').AsString);
//
//        if Length(ACNPJCPF) = 11 then
//          ACNPJCPFFormatado := Copy(ACNPJCPF,1,3)+'.'+Copy(ACNPJCPF,4,3)+'.'+Copy(ACNPJCPF,7,3)+'-'+Copy(ACNPJCPF,10,2)
//        else
//        if Length(ACNPJCPF) = 14 then
//          ACNPJCPFFormatado := Copy(ACNPJCPF,1,2)+'.'+Copy(ACNPJCPF,3,3)+'.'+Copy(ACNPJCPF,6,3)+'/'+Copy(ACNPJCPF,9,4)+'-'+Copy(ACNPJCPF,13,2);

        // Verifica se tem algum registro já criado no sistema
        ADataSetRecebe.Close;
        ADataSetRecebe.ParamByName('oimpressocodigo').AsString := ADataSetTransfere.FieldByName('id').AsString;
        ADataSetRecebe.ParamByName('cnpj_cpf').AsString := ACNPJCPFFormatado;
        ADataSetRecebe.Open;

//        // Pega o tipo padrão de acordo com o type do contact
//        if ADataSetTransfere.FieldByName('type').AsString = 'customer' then
//          ATipo := Cadastro.FieldByName('PESSOA_CLIENTE_TIPO').AsString
//        else
//        if ADataSetTransfere.FieldByName('type').AsString = 'supplier' then
//          ATipo := Cadastro.FieldByName('PESSOA_FORNECEDOR_TIPO').AsString
//        else
//          ATipo := Cadastro.FieldByName('PESSOA_TRANSPORTADORA_TIPO').AsString;

        // Se já existir Edita, senão Insere
        if ADataSetRecebe.RecordCount > 0 then
          ADataSetRecebe.Edit
        else
          ADataSetRecebe.Insert;

        ADataSetRecebe.FieldByName('CODIGO').AsInteger := Trunc(GetProximoCodigoGen('CR_PESSOAS1'));
        ADataSetRecebe.FieldByName('OIMPRESSO_ATIVO').AsString := 'S';

//        // Se o tipo do sistema for diferente do tipo do online, deve gerar uma nova sequência
//        if ADataSetRecebe.FieldByName('TIPO_PADRAO').AsString <> ATipo then
//        begin
//          QuerX.Close;
//          QuerX.SQL.Text := 'select max(SEQUENCIA_' + ATipo + ') from PESSOAS ';
//          QuerX.Open;
//          ADataSetRecebe.FieldByName('SEQUENCIA_' + ATipo).AsInteger := QuerX.Fields[0].AsInteger + 1;
//          ADataSetRecebe.FieldByName('TIPO_PADRAO').AsString := ATipo;
//          ADataSetRecebe.FieldByName('IS_' + ATipo).AsString := 'S';
//        end;

        // Aqui verifica se é pessoa física ou jurídica pelo CPF ou CNPJ
        // Como essa validação é feita no online, dá para confiar que vai vir certo.
//        if Length(ACNPJCPF) = 11 then
//        begin
//          ADataSetRecebe.FieldByName('CNPJCPF').AsString := Copy(ACNPJCPF,1,3)+'.'+Copy(ACNPJCPF,4,3)+'.'+Copy(ACNPJCPF,7,3)+'-'+Copy(ACNPJCPF,10,2);
//          ADataSetRecebe.FieldByName('TIPO').AsString    := 'F';
//        end
//        else
//        if Length(ACNPJCPF) = 14 then
//        begin
//          ADataSetRecebe.FieldByName('CNPJCPF').AsString := Copy(ACNPJCPF,1,2)+'.'+Copy(ACNPJCPF,3,3)+'.'+Copy(ACNPJCPF,6,3)+'/'+Copy(ACNPJCPF,9,4)+'-'+Copy(ACNPJCPF,13,2);
//          ADataSetRecebe.FieldByName('TIPO').AsString    := 'J';
//        end
//        else
//        begin
//          ADataSetRecebe.FieldByName('CNPJCPF').AsString := ACNPJCPF;
//          ADataSetRecebe.FieldByName('TIPO').AsString    := 'O';
//        end;

        RecebeTransfere('OIMPRESSO_CODIGO',         'id');
        RecebeTransfereData('OIMPRESSO_DT_ALTERACAO',         'updated_at');
        RecebeTransfere('RAZAOSOCIAL', 'name');
        RecebeTransfere('FANTASIA',    'supplier_business_name');
        RecebeTransfere('ENDERECO',    'rua');
        RecebeTransfere('BAIRRO',      'bairro');
        RecebeTransfere('CEP',         'cep');
        RecebeTransfere('UF',          'state');
        RecebeTransfere('COMPLEMENTO', 'address_line_2');
        RecebeTransfere('FONE1',       'landline');
        RecebeTransfere('FONE2',       'mobile');
        RecebeTransfere('FAX',         'alternate_number');
        RecebeTransfere('EMAIL',       'email');
        RecebeTransfereData('DATACADASTRO','created_at');
        RecebeTransfere('NUMERO',      'numero');
        RecebeTransfereData('DT_ALTERACAO','updated_at');
        RecebeTransfere('INSCIDENT',   'ie_rg');
        ADataSetRecebe.FieldByName('ATIVO').AsString := ifthen(ADataSetTransfere.FieldByName('contact_status').AsString = 'active', 'S', 'N');
        ADataSetRecebe.FieldByName('CODEMPRESA').AsInteger := 1;
        ADataSetRecebe.FieldByName('CRT').AsString := ifthen(ADataSetTransfere.FieldByName('regime').AsString = '0', 'Regime Normal', 'Simples Nacional');
        ADataSetRecebe.FieldByName('CONSUMIDOR_FINAL').AsString := ifthen(ADataSetTransfere.FieldByName('consumidor_final').AsString = '1', 'S', 'N');

        // Insere o registro para depois registrar
        ARegistros.Add(ADataSetTransfere.FieldByName('id').AsString + ' -> ' + ADataSetRecebe.FieldByName('CODIGO').AsString);

        ADataSetRecebe.Post;
        ADataSetTransfere.Next;
      end;
    end;

    if ADataSetTransfere.Name = 'Produto' then
    begin
      ADataSetRecebe.fieldbyname('CODIGO').Value := Trunc(GetProximoCodigoGen('CR_PRODUTO'));
      ADataSetRecebe.fieldbyname('ATIVO').Value  := 'S';
      ADataSetRecebe.fieldbyname('PODE_SER_VENDIDO').Value  := 'S';

      RecebeTransfere('DESCRICAO', 'name');
  //    RecebeTransfere('VALOR', 'type');
  //    RecebeTransfere('VALOR', 'sub_unit_ids');
  //    RecebeTransfere('VALOR', 'enable_stock');
  //    RecebeTransfere('VALOR', 'alert_quantity');
      RecebeTransfere('CODIGOEAN', 'sku');
  //    RecebeTransfere('VALOR', 'barcode_type');
  //    RecebeTransfere('VALOR', 'expiry_period');
  //    RecebeTransfere('VALOR', 'expiry_period_type');
  //    RecebeTransfere('VALOR', 'enable_sr_no');
      RecebeTransfere('CALC_QPESO_BRUTO', 'weight');
  //    RecebeTransfere('VALOR', 'product_custom_field1');
  //    RecebeTransfere('VALOR', 'product_custom_field2');
  //    RecebeTransfere('VALOR', 'product_custom_field3');
  //    RecebeTransfere('VALOR', 'product_custom_field4');
  //    RecebeTransfere('VALOR', 'image');
  //    RecebeTransfere('VALOR', 'woocommerce_media_id');
      RecebeTransfere('OBSERVACAO', 'product_description');
  //    RecebeTransfere('CODUSUARIO', 'created_by');
  //    RecebeTransfere('VALOR', 'warranty_id');
  //    RecebeTransfere('ATIVO', 'is_inactive'); ***********
  //    RecebeTransfere('VALOR', 'repair_model_id');
  //    RecebeTransfere('PODE_SER_VENDIDO', 'not_for_selling')******************;
  //    RecebeTransfere('VALOR', 'ecom_shipping_class_id');
  //    RecebeTransfere('VALOR', 'ecom_active_in_store');
  //    RecebeTransfere('VALOR', 'woocommerce_product_id');
  //    RecebeTransfere('VALOR', 'image_url');
    end;
  //  if ADataSetTransfere.Name = 'product_variations' then
  //  begin
  //    RecebeTransfere('VALOR', 'id');
  //    RecebeTransfere('VALOR', 'variation_template_id');
  //    RecebeTransfere('VALOR', 'name');
  //    RecebeTransfere('VALOR', 'product_id');
  //    RecebeTransfere('VALOR', 'is_dummy');
  //    RecebeTransfere('VALOR', 'created_at');
  //    RecebeTransfere('VALOR', 'updated_at');
  //  end;
    if ADataSetTransfere.Name = 'variations' then
    begin
  //    RecebeTransfere('VALOR', 'id');
  //    RecebeTransfere('VALOR', 'name');
  //    RecebeTransfere('VALOR', 'product_id');
  //    RecebeTransfere('VALOR', 'sub_sku');
  //    RecebeTransfere('VALOR', 'product_variation_id');
  //    RecebeTransfere('VALOR', 'woocommerce_variation_id');
  //    RecebeTransfere('VALOR', 'variation_value_id');
      RecebeTransfereValor('VALOR_COMPRA', 'default_purchase_price');
      RecebeTransfereValor('CALC_VCOMPRA_TOTAL', 'dpp_inc_tax');
      RecebeTransfereValor('CALC_PMARGEM_CONTRIBUICAO', 'profit_percent');
      RecebeTransfereValor('CALC_VENDA_MINIMO_VALOR', 'default_sell_price');
      RecebeTransfereValor('VALOR', 'sell_price_inc_tax');
  //    RecebeTransfere('VALOR', 'created_at');
  //    RecebeTransfere('VALOR', 'updated_at');
  //    RecebeTransfere('VALOR', 'deleted_at');
  //    RecebeTransfere('VALOR', 'combo_variations');
    end;
    if ADataSetTransfere.Name = 'variation_location_details' then  //LOCAL DE ESTQUE
    begin
      RecebeTransfere('VALOR', 'id');
      RecebeTransfere('VALOR', 'product_id');
      RecebeTransfere('VALOR', 'product_variation_id');
      RecebeTransfere('VALOR', 'variation_id');
      RecebeTransfere('VALOR', 'location_id');
      RecebeTransfere('VALOR', 'qty_available');
      RecebeTransfere('VALOR', 'created_at');
      RecebeTransfere('VALOR', 'updated_at');
    end;
    if ADataSetTransfere.Name = 'media' then    //IMAGEM
    begin
      RecebeTransfere('VALOR', 'id');
      RecebeTransfere('VALOR', 'variation_id');
      RecebeTransfere('VALOR', 'price_group_id');
      RecebeTransfere('VALOR', 'price_inc_tax');
      RecebeTransfere('VALOR', 'created_at');
      RecebeTransfere('VALOR', 'updated_at');
    end;
    if ADataSetTransfere.Name = 'selling_price_group' then   //GRUPO DE PREÇOS
    begin
      RecebeTransfere('VALOR', 'id');
      RecebeTransfere('VALOR', 'variation_id');
      RecebeTransfere('VALOR', 'price_group_id');
      RecebeTransfere('VALOR', 'price_inc_tax');
      RecebeTransfere('VALOR', 'created_at');
      RecebeTransfere('VALOR', 'updated_at');
    end;
    if ADataSetTransfere.Name = 'unit' then   //UNIDADE
    begin
  //    RecebeTransfere('VALOR', 'id');
  //    RecebeTransfere('VALOR', 'business_id');
  //    RecebeTransfere('VALOR', 'actual_name');
      RecebeTransfere('UNIDADE', 'short_name');
  //    RecebeTransfere('VALOR', 'allow_decimal');
  //    RecebeTransfere('VALOR', 'base_unit_id');
  //    RecebeTransfere('VALOR', 'base_unit_multiplier');
  //    RecebeTransfere('VALOR', 'created_by');
  //    RecebeTransfere('VALOR', 'deleted_at');
  //    RecebeTransfere('VALOR', 'created_at');
  //    RecebeTransfere('VALOR', 'updated_at');
    end;
    if ADataSetTransfere.Name = 'category' then   //CATEGORIA
    begin
      RecebeTransfere('VALOR', 'id');
      RecebeTransfere('VALOR', 'name');
      RecebeTransfere('VALOR', 'business_id');
      RecebeTransfere('VALOR', 'short_code');
      RecebeTransfere('VALOR', 'parent_id');
      RecebeTransfere('VALOR', 'created_by');
      RecebeTransfere('VALOR', 'category_type');
      RecebeTransfere('VALOR', 'description');
      RecebeTransfere('VALOR', 'slug');
      RecebeTransfere('VALOR', 'woocommerce_cat_id');
      RecebeTransfere('VALOR', 'default_sell_price');
      RecebeTransfere('VALOR', 'sell_price_inc_tax');
      RecebeTransfere('VALOR', 'deleted_at');
      RecebeTransfere('VALOR', 'created_at');
      RecebeTransfere('VALOR', 'updated_at');
    end;
    OImpressoSincronizacoesLog.FieldByName('REGISTROS').AsString := StringReplace(ARegistros.Text, '#$D#$A', ', ', [rfReplaceAll]);
    OImpressoSincronizacoesLog.Post;

  finally
    QuerX.Free;
    ARegistros.Free;
    btnConfirmar.Click;
  end;
end;    *)


/// Função do Leandro
//procedure TFrmOImpresso_Frame.ProcessaResposta(const AResposta: TStringStream; const ADataSetUpdate: TFDQuery);
//var
//  AJsonResponse: TJSONObject;
//begin
//  {Coloque aqui tudo o que deve acontecer quando um registro for ATUALIZADO com sucesso no servidor.
//   Atualmente apenas registramos a data de envio.
//   O ADataSetUpdate já vem selecionado com o registro que foi enviado ao servidor.}
//  AJsonResponse := TJSONObject.Create;
//  try
//    AJsonResponse.Parse(AResposta.Bytes, 0);
//    ADataSetUpdate.Edit;
//    ADataSetUpdate.FieldByName('WR_GESTOR_CHAVE').AsString  := AJsonResponse.GetValue('codigo').Value;
////    ADataSetUpdate.FieldByName('WR_GESTOR_DATA').AsDateTime := GetJSONDateTime(AJsonResponse.GetValue('data').Value);
//    ADataSetUpdate.Post;
//    ComitaTransacao(ADataSetUpdate.Transaction);
//  finally
//    AJsonResponse.Free;
//  end;
//end;

//procedure TFrmOImpresso_Frame.Contacts(AURL, AMetodo: string; AURLParams: Array of string);
//begin
//  RESTRequest_CONECTAR.Resource := 'connector/api/contactapi/' + AURL;
//  RESTRequest_CONECTAR.Method := strToMetodo(AMetodo);
//
//  if AURL = 'connector/api/contactapi/' then
//  begin
//    // List Contacts
//    if AMetodo = 'GET' then
//    begin
//      ShowMessage('List Contacts');
//      // Aqui deve chamar a função que faz o fluxo do processo de post;
//    end;
//
//    // Create Contact
//    if AMetodo = 'POST' then
//    begin
//      ShowMessage('Create Contact');
//      // Aqui deve chamar a função que faz o fluxo do processo de post;
//    end;
//
//    if Length(AURLParams) > 0 then
//    begin
//      RESTRequest_CONECTAR.Resource := AURL + '/' + AURLParams[0] + '/';
//
//      // Get the specified Contact
//      if AMetodo = 'GET' then
//      begin
//        ShowMessage('Get specified Contact');
//        // Aqui configura e chama a requisição
//      end;
//
//      // update contact
//      if (AMetodo = 'PUT') or (AMetodo = 'PATCH') then
//      begin
//        ShowMessage('Update Contact');
//        // Aqui configura e chama a requisição
//      end;
//
//
//    end;
//  end;
//
//  if AURL = 'connector/api/contactapi-payment' then
//  begin
//    if AMetodo = 'POST' then
//    // Contact Payment
//  end;
//end;


{$ENDREGION}

end.
