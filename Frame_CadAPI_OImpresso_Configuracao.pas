unit Frame_CadAPI_OImpresso_Configuracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Cad_Pocket, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, System.Generics.Collections, WREventos, UCBase, dxLayoutLookAndFeels, cxClasses, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxCustomTileControl, dxTileControl, dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit, Vcl.StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxLabel, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid,
  wrTabelasCampos, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, REST.Response.Adapter,
  System.JSON, Frame_Cad, cxMemo, cxRichEdit, dxBevel, cxDBLabel, dxGDIPlusClasses, cxImage, Aguarde,
  dxUIAdorners, ConfiguracoesM, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;

type
  TFrmOImpresso_Configuracao_Frame = class(TFrmCad_Frame_Pocket)
    DS_CONECTAR: TDataSource;
    FDTabela: TFDMemTable;
    RESTResponseDataSetAdapter_CONECTAR: TRESTResponseDataSetAdapter;
    RESTClient_CONECTAR: TRESTClient;
    RESTRequest_CONECTAR: TRESTRequest;
    RESTResponse_CONECTAR: TRESTResponse;
    RESTResponse_Token: TRESTResponse;
    RESTClient_Token: TRESTClient;
    RESTRequest_Token: TRESTRequest;
    dxLayoutItem4: TdxLayoutItem;
    cxLabel9: TcxLabel;
    dxLayoutItem7: TdxLayoutItem;
    lblDtExpiracaoToken: TcxDBLabel;
    Grupo_Validade_Token: TdxLayoutGroup;
    tcMenu: TdxTileControl;
    dxTileControl1Group1: TdxTileControlGroup;
    tcmProduto: TdxTileControlItem;
    tcmContato: TdxTileControlItem;
    tcmProducao: TdxTileControlItem;
    tcmVenda: TdxTileControlItem;
    tcmCompra: TdxTileControlItem;
    tcmFinanceiro: TdxTileControlItem;
    tcmCRM: TdxTileControlItem;
    tcmEstoque: TdxTileControlItem;
    tcmPrincipal: TdxTileControlItem;
    tcmRH: TdxTileControlItem;
    t: TdxTileControlItem;
    tcmProdutoComposto: TdxTileControlItem;
    tcmProdutoPresonalizados: TdxTileControlItem;
    tcmProdutoPrecificacao: TdxTileControlItem;
    tcmInstrucoes: TdxTileControlItem;
    GrupoInstrucoes: TdxLayoutGroup;
    cxRichEdit1: TcxRichEdit;
    dxLayoutItem8: TdxLayoutItem;
    liTitulo: TdxLayoutItem;
    LbTitulo: TcxLabel;
    edtLogin: TcxDBTextEdit;
    edtSenha: TcxDBTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    btnWebService: TcxButton;
    cbLookupClientes: TcxDBLookupComboBox;
    cbLookupFornecedor: TcxDBLookupComboBox;
    cbLookupTransportadora: TcxDBLookupComboBox;
    cxLabel7: TcxLabel;
    cxPrioridadeSincronizacao: TcxDBComboBox;
    GrupoConfiguracaoAPI: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    TabConfigProdutos: TdxLayoutGroup;
    TabConfigPessoas: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem44: TdxLayoutItem;
    tcmHistorico: TdxTileControlItem;
    GrupoVenda: TdxLayoutGroup;
    GrupoProduto: TdxLayoutGroup;
    GrupoContato: TdxLayoutGroup;
    GrupoProducao: TdxLayoutGroup;
    GrupoFinanceiro: TdxLayoutGroup;
    GrupoEstoque: TdxLayoutGroup;
    GrupoCompra: TdxLayoutGroup;
    GrupoRH: TdxLayoutGroup;
    GrupoCRM: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    lbConectado: TcxLabel;
    imgConectda: TcxImage;
    liimgConectda: TdxLayoutItem;
    btnResetarPessoas: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure btnWebServiceClick(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure tcmInstrucoesClick(Sender: TdxTileControlItem);
    procedure tcmHistoricoClick(Sender: TdxTileControlItem);
    procedure edtDescricaoExit(Sender: TObject);
    procedure btnResetarPessoasClick(Sender: TObject);
    procedure cxPrioridadeSincronizacaoPropertiesEditValueChanged(
      Sender: TObject);
  private
    { Private declarations }
    FListaErros: TStringList;
    FAguarde: TFrmAguarde;
  public
    { Public declarations }
    function BaixaDadosIndexApi(ARotaGet: string): TFDMemTable;

//    function RetornaDataSet(ASolicitacao:String):TDataSet;
    procedure AddErro(const ADataSet: TDataSet; const AErro: string);

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  function API_OImpresso:TFrmOImpresso_Configuracao_Frame;
  procedure API_CopiarFieldsParaRESTAdapter(ATabela: TCRMTabela; var AAdapter: TRESTResponseDataSetAdapter);  // Ok
  procedure API_CopiarFieldsParaMemTabela(ATabela: TCRMTabela; var AMemTable: TFDMemTable);

var
  FrmOImpresso_Configuracao_Frame: TFrmOImpresso_Configuracao_Frame;

implementation

{$R *.dfm}

Uses Base, Principal, UnitFuncoes, Classes.WR, StrUtils, frFrameHistorico, wrPreencheLookup, Tag.Form;

function API_OImpresso : TFrmOImpresso_Configuracao_Frame;
begin
  if not Assigned(FrmOImpresso_Configuracao_Frame) then
    FrmOImpresso_Configuracao_Frame:=TFrmOImpresso_Configuracao_Frame.Create(frmPrincipal);

  result:=FrmOImpresso_Configuracao_Frame;
end;

procedure API_CopiarFieldsParaRESTAdapter(ATabela: TCRMTabela; var AAdapter: TRESTResponseDataSetAdapter);
var
  ACampo: TCRMCampo;
begin
  AAdapter.FieldDefs.Clear;
  for ACampo in ATabela.Campos do
  begin
    try
      AAdapter.FieldDefs.Add(ACampo.CampoCRM, TFieldType(ACampo.Tipo), ACampo.Tamanho, false);
    except
      on E:Exception do
      begin
        OutputDebugString(StringToOleStr(E.message));
        break;
      end;
    end;
  end;
end;

procedure API_CopiarFieldsParaMemTabela(ATabela: TCRMTabela; var AMemTable: TFDMemTable);
var
  ACampo: TCRMCampo;
begin
  AMemTable.Close;
  AMemTable.FieldDefs.Clear;
  for ACampo in ATabela.Campos do
  begin
    try
      AMemTable.FieldDefs.Add(ACampo.CampoCRM, TFieldType(ACampo.Tipo), ACampo.Tamanho, ACampo.Obrigatorio);
    except
      on E:Exception do
        ShowMessage('Erro:'+ e.Message );
    end;
  end;
  AMemTable.Open;
end;

constructor TFrmOImpresso_Configuracao_Frame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FListaErros  := TStringList.Create;

  /// Lookups para os tipos padrão de pessoas para sincronização do Online com Local.
//  PreencheLookupPessoaTipo(cbLookupClientes.Properties);
//  PreencheLookupPessoaTipo(cbLookupFornecedor.Properties);
//  PreencheLookupPessoaTipo(cbLookupTransportadora.Properties);
end;

procedure TFrmOImpresso_Configuracao_Frame.cxPrioridadeSincronizacaoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if cxPrioridadeSincronizacao.SelectedItem = 0 then
    TConfig.SaveString('OIMPRESSO_MANTEM_LOCAL_ONLINE', 'Sistema Local')
  else
    TConfig.SaveString('OIMPRESSO_MANTEM_LOCAL_ONLINE', 'Sistema Online');
end;

destructor TFrmOImpresso_Configuracao_Frame.Destroy;
begin

  inherited Destroy;
end;

procedure TFrmOImpresso_Configuracao_Frame.AddErro(const ADataSet: TDataSet;
  const AErro: string);
begin
  /// Função do Leandro. É chamada no ValidaCamposDataset.
  if ADataSet <> nil then
    FListaErros.Add({ADataSet.Name + ': Código "' + ADataSet.FieldByName('CODIGO').AsString + '" - ' + }AErro)
  else
    FListaErros.Add(AErro);
end;

function TFrmOImpresso_Configuracao_Frame.BaixaDadosIndexApi(ARotaGet: string): TFDMemTable;
begin
  if Not Assigned(FAguarde) then
    FAguarde := TFrmAguarde.Create(self);
  try
    FAguarde.Mensagem := 'Baixando Dados';
    FAguarde.Show;
    Application.ProcessMessages;
//
//    /// E trocar a tipagem de todos os campos dentro do FDTabela.
//    /// Pois eles vêm bagunçados. Provavelmente é feito depois do Execute.
//    RESTClient_CONECTAR.BaseURL  := Cadastro.FieldByName('DESCRICAO').AsString;  // isso é importante

    /// Consulta para verificar se existe a pessoa no sistema online.

    RESTClient_CONECTAR.BaseURL := Cadastro.FieldByName('DESCRICAO').AsString;

    RESTRequest_CONECTAR.Params.ParameterByName('Authorization').Value   := 'Bearer ' + Cadastro.FieldByName('TOKEN_WEB_SERVICE').AsString;
    RESTRequest_CONECTAR.Params.ParameterByName('Authorization').Options := [poDoNotEncode];

    RESTRequest_CONECTAR.method   := rmGET;
    RESTRequest_CONECTAR.Resource := ARotaGet;
    RESTRequest_CONECTAR.Execute;

    /// Passa os dados da response para a MemTable.
    Result := FDTabela;
  finally
    FAguarde.Free;
  end;
end;

procedure TFrmOImpresso_Configuracao_Frame.tcmHistoricoClick(Sender: TdxTileControlItem);
begin
  inherited;
  LbTitulo.Caption:= Sender.Text1.Value;
  if Cadastro.RecordCount>0 then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameHistorico, UCHist_Cadastro, nil);
  GrupoLogAlteracoes.MakeVisible;
end;

procedure TFrmOImpresso_Configuracao_Frame.tcmInstrucoesClick(Sender: TdxTileControlItem);
begin
  inherited;
  LbTitulo.Caption:= Sender.Text1.Value;

  if tcmInstrucoes = Sender then  GrupoInstrucoes.MakeVisible;
  if tcmPrincipal = Sender then   GrupoConfiguracaoAPI.MakeVisible;
  if tcmContato = Sender then     GrupoContato.MakeVisible;
  if tcmProduto = Sender then     GrupoProduto.MakeVisible;
  if tcmVenda = Sender then       GrupoVenda.MakeVisible;
  if tcmProducao = Sender then    GrupoProducao.MakeVisible;
  if tcmFinanceiro = Sender then  GrupoFinanceiro.MakeVisible;
  if tcmRH = Sender then          GrupoRH.MakeVisible;
  if tcmCRM = Sender then         GrupoCRM.MakeVisible;
  if tcmEstoque = Sender then     GrupoEstoque.MakeVisible;
  if tcmCompra = Sender then      GrupoCompra.MakeVisible;

end;

// Fim Função padrão utilizada
procedure TFrmOImpresso_Configuracao_Frame.btnResetarPessoasClick(Sender: TObject);
Var
  QuerX : TFDQuery;
begin
  inherited;
  QuerX := GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := ' update pessoas set '+
                      ' OIMPRESSO_CODIGO = Null, '+
                      ' OIMPRESSO_DT_ALTERACAO = null, '+
                      ' OIMPRESSO_UPDATED_AT = Null';
    QuerX.ExecSQL;
  finally
    QuerX.Free;
  end;
  ShowMessage('Desvinculados os contatos com o On-Line');
end;

procedure TFrmOImpresso_Configuracao_Frame.btnWebServiceClick(Sender: TObject);
var
  AOk : Boolean;
  FTokenWeb_Tempo : Integer;
begin
  inherited;
  AOk := False;
  /// Requisita o token se tiver expirado ou se não tiver token
  if (DataHoraSys > Cadastro.FieldByName('TOKEN_DT_EXPIRACAO').AsDateTime) or (Cadastro.FieldByName('TOKEN_WEB_SERVICE').AsString = '') then
  begin
    //  RESTRequest_Token.Params.ParameterByName('client_id').Value     := '3'; //Cadastro.FieldByName('CLIENT_ID').AsString;
    //  RESTRequest_Token.Params.ParameterByName('client_secret').Value := 'R53gzQEASZW1kfBNQsGMqW6bB3WbMYK5vCaQxMVG'; // Cadastro.FieldByName('CLIENT_SECRET').AsString;
    RESTClient_Token.BaseURL                                   := Cadastro.FieldByName('DESCRICAO').AsString;   // 'https://oimpresso.com/';
    RESTRequest_Token.Params.ParameterByName('username').Value := Cadastro.FieldByName('LOGIN').AsString;
    RESTRequest_Token.Params.ParameterByName('password').Value := Cadastro.FieldByName('SENHA').AsString;
    Try
      RESTRequest_Token.Execute;
//    ShowMessage(RESTRequest_Token.Response.StatusText);
      /// Se o request do token deu certo, salva a data de expiração e o token em si.
      if RESTRequest_Token.Response.StatusText = 'OK' then
      begin
    //    ShowMessage(RESTRequest_Token.Response.JSONText);
        btnAlterar.Click;
        Cadastro.FieldByName('TOKEN_WEB_SERVICE').AsString := (RESTRequest_Token.Response.JSONValue as TJSONObject).GetValue('access_token').ToString;
        Cadastro.FieldByName('TOKEN_WEB_SERVICE').AsString := ReplaceStr(Cadastro.FieldByName('TOKEN_WEB_SERVICE').AsString,'"','');
        FTokenWeb_Tempo := (RESTRequest_Token.Response.JSONValue as TJSONObject).GetValue('expires_in').AsType<Integer>;
        Cadastro.FieldByName('TOKEN_WEB_SERVICE').AsString   := Cadastro.FieldByName('TOKEN_WEB_SERVICE').AsString;
        Cadastro.FieldByName('TOKEN_DT_EXPIRACAO').AsDateTime:= DataHoraSys + FTokenWeb_Tempo/(24*60*60); //DataExpiracaoToken;
        btnConfirmar.Click;
        AOk := True;
    //    ShowMessage(TokenWeb_Service);
      end
      else
        ShowMessage('Não foi possível adquirir o Token, configure a API antes.');
    Except
      on E:Exception do
      begin
        ShowMessage('Não foi possível adquirir o Token, configure a API antes.'+sLineBreak+
                     E.Message);
      end;
    End;
  end
  else
    AOk := True;

  if AOk then
  begin
     ShowMessage('Ativado o Token com sucesso');
//    DS_CONECTAR.DataSet:= RetornaDataSet('connector/api/user');
  end;
  DS_CONECTAR.DataSet :=  BaixaDadosIndexApi('connector/api/user');
  liimgConectda.Visible:= AOk;
end;

procedure TFrmOImpresso_Configuracao_Frame.CadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Cadastro.FieldByName('Codigo').AsString = '' then
    Cadastro.FieldByName('Codigo').AsInteger := 1;
end;

procedure TFrmOImpresso_Configuracao_Frame.edtDescricaoExit(Sender: TObject);
begin
  inherited;
  if (Cadastro.State in dsEditModes)and (Cadastro.FieldByName('DESCRICAO').AsString = '') then
    Cadastro.FieldByName('DESCRICAO').AsString := 'https://oimpresso.com/';
end;

procedure TFrmOImpresso_Configuracao_Frame.FrameEnter(Sender: TObject);
begin
  GrupoMain.TabbedOptions.HideTabs:=True;
    PreencheLookupPessoaTipo(cbLookupClientes.Properties);
  PreencheLookupPessoaTipo(cbLookupFornecedor.Properties);
  PreencheLookupPessoaTipo(cbLookupTransportadora.Properties);
  inherited;
end;


 {$REGION 'Código Antigo'}

 (*
procedure TFrmOImpresso_Configuracao_Frame.Carrega_TabelaOImpresso;
begin

 /// IMPORTANTE:
/// Todas as tabelas devem ter seus respectivos campos registrados aqui.
/// Estes campos são utilizados para validação e para transferência dos dados.



function TFrmOImpresso_Configuracao_Frame.RetornaDataSet(ASolicitacao: String): TDataSet;
begin
  if (Cadastro.FieldByName('TOKEN_WEB_SERVICE').AsString = '') or (DataHoraSys > Cadastro.FieldByName('TOKEN_DT_EXPIRACAO').AsDateTime) then
  begin
    ShowMessage('Token inválido ou vencido. Solicite novamente para continuar.');
    Abort;
  end;

  RESTRequest_CONECTAR.Params.ParameterByName('Authorization').Value:= 'Bearer ' + Cadastro.FieldByName('TOKEN_WEB_SERVICE').AsString;
  RESTRequest_CONECTAR.Params.ParameterByName('Authorization').Options := [poDoNotEncode];
  RESTClient_CONECTAR.BaseURL  := Cadastro.FieldByName('DESCRICAO').AsString;
  RESTRequest_CONECTAR.Resource:= ASolicitacao;
  RESTRequest_CONECTAR.Execute;
//  ShowMessage(RESTRequest_CONECTAR.Response.JSONText);
  Result:=FDTabela;
end;    *)

   (*
  //OK Tabela USUARIO e PESSOAS (Funcionários)
  Campo('staffs', 'RAZAOSOCIAL', 'firstname',          ftString, 50,  True,  'Nome obrigatório da equipe');
  Campo('staffs', 'EMAIL',       'email',              ftString, 100, True,  'Relacionado ao pessoal obrigatório');
  Campo('staffs', 'SenhaDescriptografada', 'password', ftString, 250, True,  'Senha da equipe obrigatória');
  Campo('staffs', '',            'hourly_rate',        ftFloat,  0,   False, 'Taxa horária opcional');
  Campo('staffs', 'FONE1',       'phonenumber',        ftString, 30,  False, 'Número de telefone da equipe opcional');
  Campo('staffs', '',            'facebook',           ftString, 0,   False, 'Pessoal opcional facebook'); //Blob Text
  Campo('staffs', '',            'linkedin',           ftString, 0,   False, 'Funcionários opcionais linkedin'); //Blob Text
  Campo('staffs', '',            'skype',              ftString, 50,  False, 'Skype opcional da equipe');
  Campo('staffs', '',            'default_language',   ftString, 40,  False, 'Idioma padrão da equipe opcional');
  Campo('staffs', '',            'email_signature',    ftString, 0,   False, 'Assinatura de email opcional da equipe'); //Blob Text
  Campo('staffs', '',            'direction',          ftString, 3,   False, 'Direção opcional da equipe');
  Campo('staffs', '',            'send_welcome_email', ftString, 0,   False, 'A equipe opcional envia um email de boas-vindas'); //??
  Campo('staffs', '',            'departments',        ftArray,  0,   False, 'Departamentos opcionais da equipe');

  //Tabela PRODUCAO_OS
  Campo('tasks', 'DESCRICAO',        'name',                ftString,   0,  True,  'Nome da tarefa obrigatória'); //Blob Text
  Campo('tasks', 'DT_INICIO',        'startdate',           ftDate,     0,  True,  'Data de Início da Tarefa Obrigatória');
  Campo('tasks', '',                 'is_public',           ftSmallint, 0,  False, 'Tarefa opcional pública');
  Campo('tasks', '',                 'billable',            ftSmallint, 0,  False, 'Tarefa opcional faturável');
  Campo('tasks', '',                 'hourly_rate',         ftFloat,    0,  False, 'Taxa horária da tarefa opcional');
  Campo('tasks', '',                 'milestone',           ftInteger,  0,  False, 'Marco de tarefa opcional');
  Campo('tasks', 'DT_PRAZO_FINAL',   'duedate',             ftDate,     0,  False, 'Prazo opcional da tarefa');
  Campo('tasks', 'PRIORIDADE',       'priority',            ftInteger,  0,  False, 'Prioridade de tarefa opcional');
  Campo('tasks', '',                 'repeat_every',        ftInteger,  0,  False, 'Tarefa opcional repita a cada');
  Campo('tasks', '',                 'repeat_every_custom', ftInteger,  0,  False, 'Tarefa opcional repita todo costume');
  Campo('tasks', '',                 'repeat_type_custom',  ftString,   10, False, 'Tarefa opcional: Repita o tipo customizado');
  Campo('tasks', '',                 'cycles',              ftInteger,  0,  False, 'Ciclos opcionais');
  CampoEnum('tasks', 'REL_TYPE',     'rel_type',            CRMTaskRelTypeToArray, True, 'Relacionado a tarefas obrigatórias.');
  Campo('tasks', 'CODPESSOA_GESTOR', 'rel_id',              ftInteger,  0,  True,  'Optional Related ID. Required if rel_type is selected');
  Campo('tasks', '',                 'tags',                ftString,   0,  False, 'Tags de tarefas opcionais');
  Campo('tasks', 'OBSERVACAO',       'description',         ftString,   0,  False, 'Descrição opcional da tarefa');

  //Tabela AGENDA
  {Para os Leads deve ser criado uma tabela de Sources e uma de Status para ser compatível com o CRM.
   O Source é a origem do lead, ex: Google, Facebook, WhatsApp, etc..
   O Status é a situação atual do lead, ex: Primeiro contato, Retornar Contato, Convertido, Perdido, etc}
  Campo('leads', 'SOURCE',           'source',              ftInteger,  0,   True,  'Origem do lead obrigatória');
  Campo('leads', 'STATUS',           'status',              ftInteger,  0,   True,  'Status de lead obrigatório');
  Campo('leads', 'CAPTION',          'name',                ftString,   191, True,  'Nome obrigatório do lead');
  Campo('leads', '',                 'file',                ftBlob,     0,   False, 'Acessórios de lead opcionais'); //?
  Campo('leads', '',                 'assigned',            ftInteger,  0,   False, 'Lead opcional atribuído');
  Campo('leads', '',                 'tags',                ftString,   0,   False, 'Tags de lead opcionais'); //?
  Campo('leads', '',                 'title',               ftString,   100, False, 'Posição opcional');
  Campo('leads', 'EMAIL',            'email',               ftString,   100, False, 'Endereço de e-mail principal possível');
  Campo('leads', 'PAGINA',           'website',             ftString,   150, False, 'Site de lead opcional');
  Campo('leads', 'FONE1',            'phonenumber',         ftString,   50,  False, 'Telefone de lead opcional');
  Campo('leads', 'EMPRESA_TRABALHO', 'company',             ftString,   191, False, 'Empresa de lead opcional'); //?
  Campo('leads', 'ENDERECO',         'address',             ftString,   100, False, 'Endereço de lead opcional');
  Campo('leads', 'CIDADE',           'city',                ftString,   100, False, 'Cidade principal opcional');
  Campo('leads', 'UF',               'state',               ftString,   50,  False, 'Estado de lead opcional');
  Campo('leads', '',                 'default_language',    ftString,   40,  False, 'Idioma padrão do lead opcional');
  Campo('leads', 'LOCATION',         'description',         ftString,   0,   False, 'Descrição opcional do lead'); //Blob Text
  Campo('leads', 'DT_INICIO',        'custom_contact_date', ftDate,     0,   False, 'Lead opcional do cliente'); //?
  Campo('leads', '',                 'contacted_today',     ftBoolean,  0,   False, 'lead opcional contatado hoje'); //?
  Campo('leads', '',                 'is_public',           ftSmallint, 0,   False, 'ID da página do Google Lead opcional');

  // Projeto (Fazer quando estiver implementado no sistema)
  Campo('projects', 'RAZAOSOCIAL', 'name',                ftString,  191, True,  'Nome obrigatório do projeto');
  Campo('projects', 'RAZAOSOCIAL', 'clientid',            ftInteger, 0,   True,  'ID relacionado obrigatório');
  Campo('projects', 'RAZAOSOCIAL', 'billing_type',        ftInteger, 0,   True,  'Tipo de faturamento obrigatório');
  Campo('projects', 'RAZAOSOCIAL', 'start_date',          ftDate,    0,   True,  'Data de Início do Projeto Obrigatório');
  Campo('projects', 'RAZAOSOCIAL', 'status',              ftInteger, 0,   True,  'Status obrigatório do projeto');
  Campo('projects', 'RAZAOSOCIAL', 'file',                ftString,  3,   False, 'Progresso opcional ativado ou desativado das tarefas'); //?
  Campo('projects', 'RAZAOSOCIAL', 'progress_from_tasks', ftInteger, 0,   False, 'Progresso opcional do projeto');
  Campo('projects', 'RAZAOSOCIAL', 'project_cost',        ftFloat,   0,   False, 'Custo opcional do projeto');
  Campo('projects', 'RAZAOSOCIAL', 'progress',            ftInteger, 0,   False, 'Taxa opcional do projeto por hora');
  Campo('projects', 'RAZAOSOCIAL', 'estimated_hours',     ftFloat,   0,   False, 'Horas estimadas do projeto opcional');
  Campo('projects', 'RAZAOSOCIAL', 'project_members',     ftArray,   0,   False, 'Membros opcionais do projeto'); //Array de Integer
  Campo('projects', 'RAZAOSOCIAL', 'deadline',            ftDate,    0,   False, 'Prazo opcional do projeto');
  Campo('projects', 'RAZAOSOCIAL', 'tags',                ftString,  0,   False, 'Tags de projeto opcionais');
  Campo('projects', 'RAZAOSOCIAL', 'description',         ftString,  0,   False, 'Descrição opcional do projeto'); //Blob Text

  // Centro de tralho (Depende do Projeto)
  Campo('milestones', 'RAZAOSOCIAL', 'project_id',                      ftInteger,  0,   True,  'ID de projeto obrigatório');
  Campo('milestones', 'RAZAOSOCIAL', 'name',                            ftString,   191, True,  'Nome do marco obrigatório');
  Campo('milestones', 'RAZAOSOCIAL', 'due_date',                        ftDate,     0,   True,  'Marco obrigatório Data de vencimento');
  Campo('milestones', 'RAZAOSOCIAL', 'description',                     ftString,   0,   False, 'Descrição opcional do marco');
  Campo('milestones', 'RAZAOSOCIAL', 'description_visible_to_customer', ftSmallint, 0,   False, 'Mostrar descrição ao clientel');
  Campo('milestones', 'RAZAOSOCIAL', 'milestone_order',                 ftInteger,  0,   False, 'Pedido de Marco Opcional');

  //Não utilizado....
  Campo('tickets', 'RAZAOSOCIAL', 'subject',    ftString,  191, True,  'Nome do ticket obrigatório');
  Campo('tickets', 'RAZAOSOCIAL', 'department', ftInteger, 0,  True,  'Departamento de Ticket Obrigatório');
  Campo('tickets', 'RAZAOSOCIAL', 'contactid',  ftInteger, 0,  True,  'Contato de ingresso obrigatório');
  Campo('tickets', 'RAZAOSOCIAL', 'userid',     ftInteger, 0,  True,  'Usuário de ticket obrigatório');
  Campo('tickets', 'RAZAOSOCIAL', 'project_id', ftInteger, 0,  False, 'Projeto de ingresso opcional');
  Campo('tickets', 'RAZAOSOCIAL', 'message',    ftString,  0,  False, 'Mensagem de ingresso opcional'); //Blob Text
  Campo('tickets', 'RAZAOSOCIAL', 'service',    ftInteger, 0,  False, 'Serviço de ticket opcional');
  Campo('tickets', 'RAZAOSOCIAL', 'assigned',   ftInteger, 0,  False, 'Atribuir ticket opcional');
  Campo('tickets', 'RAZAOSOCIAL', 'cc',         ftString,  3,  False, 'Bilhete opcional CC'); //??
  Campo('tickets', 'RAZAOSOCIAL', 'priority',   ftString,  3,  False, 'Prioridade opcional'); //??
  Campo('tickets', 'RAZAOSOCIAL', 'tags',       ftString,  3,  False, 'Tags de ingresso opcionais'); }

  Campo('brands', 'CODIGO', 'ID',         ftInteger,  0,  True, '');   // "id": 1,
  Campo('brands', 'DESCRICAO', 'name',    ftString,  50,  False, '');// "name": "Levis",
  Campo('brands', '', 'description',      ftString,  191,  False, '');  // "description": null,
  Campo('brands', '', 'created_by',       ftInteger,  0,  False, '');   // "created_by": 1,
  Campo('brands', '', 'deleted_at',       ftDateTime,  0,  False, '');   // "deleted_at": null,
  Campo('brands', '', 'created_at',       ftDateTime,  0,  False, '');   // "created_at": "2018-01-03 21:19:47",
  Campo('brands', '', 'updated_at',       ftDateTime,  0,  False, '');   // "updated_at": "2018-01-03 21:19:47"
//  Campo('brands', '', 'business_id',   ftString,  3,  False, '');      // "business_id": 1,

  Campo('unit', 'CODIGO', 'ID',         ftInteger,  0,  True, '');   // "id": 1,
  Campo('unit', 'DESCRIAO', 'actual_name',ftString,  191,  True, '');   // "actual_name": "Pieces",
  Campo('unit', 'SIGLA', 'short_name',  ftString,  191,  True, '');   // "short_name": "Pc(s)",
  Campo('unit', '', 'created_by',       ftInteger,  0,  False, '');   // "created_by": 1,
  Campo('unit', '', 'deleted_at',       ftDateTime,  0,  False, '');   // "deleted_at": null,
  Campo('unit', '', 'created_at',       ftDateTime,  0,  False, '');   // "created_at": "2018-01-03 21:19:47",
  Campo('unit', '', 'updated_at',       ftDateTime,  0,  False, '');   // "updated_at": "2018-01-03 21:19:47"
//  Campo('unit', '', 'allow_decimal',         ftString,  191,  True, '');   // "allow_decimal": 0,
//  Campo('unit', '', 'base_unit_id',         ftString,  191,  True, '');   // "base_unit_id": null,
//  Campo('unit', 's', 'base_unit_multiplier',         ftString,  191,  True, '');   //  "base_unit_multiplier": null,
//  Campo('unit', '', 'business_id',   ftString,  3,  False, '');      // "business_id": 1,



  Campo('category', 'CODIGO', 'ID',         ftInteger,  0,  True, '');   // "id": 1,
  Campo('category', 'DESCRICAO', 'name',    ftString,  50,  False, '');// "name":  "Men's",
  Campo('category', '', 'short_code',    ftString,  50,  False, '');// "short_code"  : null,
  Campo('category', '', 'parent_id',    ftString,  50,  False, '');// "parent_id":  0,
  Campo('category', '', 'category_type',    ftString,  50,  False, '');// "category_type":  "product",
  Campo('category', '', 'description',    ftString,  50,  False, '');// "description":  : null,
  Campo('category', '', 'slug',    ftString,  50,  False, '');// "slug":  : null,
  Campo('category', '', 'woocommerce_cat_id',    ftString,  50,  False, '');// "woocommerce_cat_id":  : null,
  Campo('category', '', 'created_by',       ftInteger,  0,  False, '');   // "created_by": 1,
  Campo('category', '', 'deleted_at',       ftDateTime,  0,  False, '');   // "deleted_at": null,
  Campo('category', '', 'created_at',       ftDateTime,  0,  False, '');   // "created_at": "2018-01-03 21:19:47",
  Campo('category', '', 'updated_at',       ftDateTime,  0,  False, '');   // "updated_at": "2018-01-03 21:19:47"
//  Campo('category', '', 'business_id',   ftString,  3,  False, '');      // "business_id": 1,

  Campo('sub_category', 'CODIGO', 'ID',         ftInteger,  0,  True, '');   // "id": 1,
  Campo('sub_category', 'DESCRICAO', 'name',    ftString,  50,  False, '');// "name":   "Shirts",
  Campo('sub_category', '', 'short_code',    ftString,  50,  False, '');// "short_code"  : null,
  Campo('sub_category', '', 'parent_id',    ftString,  50,  False, '');// "parent_id":  0,
  Campo('sub_category', '', 'category_type',    ftString,  50,  False, '');// "category_type":  "product",
  Campo('sub_category', '', 'description',    ftString,  50,  False, '');// "description":  : null,
  Campo('sub_category', '', 'slug',    ftString,  50,  False, '');// "slug":  : null,
  Campo('sub_category', '', 'woocommerce_cat_id',    ftString,  50,  False, '');// "woocommerce_cat_id":  : null,
  Campo('sub_category', '', 'created_by',       ftInteger,  0,  False, '');   // "created_by": 1,
  Campo('sub_category', '', 'deleted_at',       ftDateTime,  0,  False, '');   // "deleted_at": null,
  Campo('sub_category', '', 'created_at',       ftDateTime,  0,  False, '');   // "created_at": "2018-01-03 21:19:47",
  Campo('sub_category', '', 'updated_at',       ftDateTime,  0,  False, '');   // "updated_at": "2018-01-03 21:19:47"
//  Campo('sub_category', '', 'business_id',   ftString,  3,  False, '');      // "business_id": 1,

  Campo('product_tax', 'CODIGO', 'ID',         ftInteger,  0,  True, '');   // "id": 1,
  Campo('product_tax', 'DESCRICAO', 'name',    ftString,  50,  False, '');// "name":  "VAT@10%",
  Campo('product_tax', '', 'amount',    ftString,  50,  False, '');// "amount"  : null,
  Campo('product_tax', '', 'is_tax_group',    ftString,  50,  False, '');// "is_tax_group":  0,
  Campo('product_tax', '', 'woocommerce_tax_rate_id',    ftString,  50,  False, '');// "woocommerce_tax_rate_id":  : null,

  Campo('product_tax', '', 'created_by',       ftInteger,  0,  False, '');   // "created_by": 1,
  Campo('product_tax', '', 'deleted_at',       ftDateTime,  0,  False, '');   // "deleted_at": null,
  Campo('product_tax', '', 'created_at',       ftDateTime,  0,  False, '');   // "created_at": "2018-01-03 21:19:47",
  Campo('product_tax', '', 'updated_at',       ftDateTime,  0,  False, '');   // "updated_at": "2018-01-03 21:19:47"
//  Campo('product_tax', '', 'business_id',   ftString,  3,  False, '');      // "business_id": 1,

  Campo('product_locations', '', 'created_by',       ftInteger,  0,  False, '');   // "created_by": 1,
  Campo('product_locations', '', 'deleted_at',       ftDateTime,  0,  False, '');   // "deleted_at": null,
  Campo('product_locations', '', 'created_at',       ftDateTime,  0,  False, '');   // "created_at": "2018-01-03 21:19:47",
  Campo('product_locations', '', 'updated_at',       ftDateTime,  0,  False, '');   // "updated_at": "2018-01-03 21:19:47"


end;
  *)
 {$ENDREGION}


initialization
  RegisterClass(TFrmOImpresso_Configuracao_Frame);
  RegisterFrameCad(Tag_API_Oimpresso_Configuracao, TFrmOImpresso_Configuracao_Frame);

end.
