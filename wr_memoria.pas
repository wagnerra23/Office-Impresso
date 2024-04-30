unit wr_memoria;

interface

uses FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, cxDBLookupComboBox,
  System.Variants, SysUtils, Classes, System.IOUtils, Vcl.Forms, IBScript, IB, IBHeader, IBX.IBDatabase;

type
  TMyScriptErrorHandling = class
    class procedure MySQLExecuteError(Sender: TObject; Error, SQLText: string;
      LineIndex: Integer; var Ignore: Boolean);
  end;
  Twr_Cache = class
  public
    Tabela: string;
    MemTable: TFDMemTable;
    Descricao: string;
    Tag_Tela: integer;
    RegAtual : integer;
    LimitarConsulta_Quant: integer;
    Tag_Modulo: integer;
  end;

procedure Cria_BancoFDB(ACaminho: String);
Function Busca_SQL_Incial(ARecurso:String): TStringList;
procedure Carrega_Cache;
function  Carrega_Cache_Tabela(ATagTela: Integer; ADataSet_Consulta : TFDQuery): Boolean;
procedure Carrega_cache_Atualizado_Do_Servidor;
procedure OpenAssincrono(Atag : Integer; ADataSet: TFdQuery);
procedure AguardaAbrirDataSet(ATag:integer; ADataSet: TFdQuery);
function RecordCount_Paginas(ATag : Integer; ADataSet: TFdQuery):Integer; // QuerySum da consulta
procedure Carrega_kanban;
procedure Carrega_KPI;
procedure Carrega_KPI_Menu;
procedure Carrega_Relatorios;
procedure Carrega_Competencia;
procedure Carrega_Tabela_do_Servidor(ATag : integer; ATabela, Campos : String; ADt_Alteracao : TDateTime);
procedure Carrega_DataSet_Paginado(Atag : Integer; AQuer : TFDQuery);
procedure Notifica_Tela;
procedure Salva_Cache(ATagTela: Integer; ADataSet_Consulta: TFDQuery);

procedure Busca_Dados_Local(ATagTela: Integer; ATabela:String);
procedure Busca_Dados_Servidor(ATag : integer; ATabela, ACampos: String; ADt_Alteracao : TDateTime);

procedure Verifica_Se_Coneccao_Memoria_Pronta(ADataSet : TFDQuery; ATransa: TFDTransaction);

procedure FiltraCompetenciaPeloCodigo(ACodCompetencia: integer);
procedure Lookup_Memoria_Alimenta(QuerX: TDataSet; ALookupProperties: TcxLookupComboBoxProperties; ATabela: string; AFiltros: Array of String);
procedure Lookup_Memoria_Remove_Registros_Tabela(ATabela: string);
procedure ParaTudo_Threads;


function Lookup_Memoria_Busca_Registros(wr_memoria: TFDMemTable; AFilter: string; AFiltros: Array of String): TFDMemTable;
function Cria_StringList_Pelo_Array(AArray: Array of String): TStringList;
function  Filtra_KPI(var AMemTable: TFDMemTable; ATag: integer; ACodUsuario: integer = 0; ADataInicial: TDateTime = 0; ADataFinal: TDateTime = 0): boolean;

Var
  wr_memoria_Kanban  : TFDMemTable;
  wr_memoria_KPI     : TFDMemTable;
  wr_memoria_KPI_Menu: TFDMemTable;
  wr_memoria_KPI_Mes : TFDMemTable;
  wr_memoria_KPI_Ano : TFDMemTable;
  wr_memoria_Relatorios: TFDMemTable;
  wr_memoria_Lookups: TFDMemTable;
  wr_memoria_Competencia: TFDMemTable;

  wr_memoria_Venda: TFDMemTable;

  FUltima_Sincronia_Data_Hora: TDateTime;
  FMemoria_Carregada : boolean;

implementation

Uses unitFuncoes, Base, Classes.WR, DataModuleBanco, FireDAC.Phys.SQLite, Math,
     FireDAC.Phys.FBDef, FireDAC.Phys.FB, FireDAC.Phys.IBBase, Windows, Tag.Report, Tag.Cache;

//Var
//  wr_Cache : array [Tag_First..Tag_Last] of Twr_Cache;   // Cada tela pode ter cache

procedure Carrega_Cache;
begin

//  Cria_BancoFDB(ExtractFilePath(Application.ExeName)+'storage\Banco\BancoLocal.fdb'); // ShowDeCache Turbo   Banco Local

//  ExecutaSentencasScript();   // Arruma a porra toda

//  Carrega_cache_Atualizado_Do_Servidor;

  Carrega_Relatorios;
  Carrega_Competencia;

  Carrega_Kanban;
  Carrega_KPI;
  Carrega_KPI_Menu;

//  Carrega_Empresas;         // Isso deve ser cache tbm
//  Carrega_Configuracaoes;   // Isso deve ser cache tbm
//  Carrega_layout;           // Isso deve ser cache tbm

end;

function Busca_SQL_Incial(ARecurso:String): TStringList;
var
  AStream: TResourceStream;
begin
  Result := TStringList.Create;
  AStream := TResourceStream.Create(hInstance, ARecurso, RT_RCDATA);   //    1309
  try
    AStream.Position := 0;
    Result.LoadFromStream(AStream);
  finally
    AStream.Free;
  end;
end;

procedure Carrega_cache_Atualizado_Do_Servidor;
Var
  i : Integer;
  dt_Servidor: TDateTime;
begin
  FMemoria_Carregada:= False;
  Exit; // ativar isso para eliminar a Cache do sistema

  // Atualizar todas as Consultas, depois da última alteração
  //  Aqui deve conter a lista de tabelas que tem cache;
//  try
    // Aqui deve recuperar última interação com o servidor, TConfig
    dt_Servidor := 0;
    if FUltima_Sincronia_Data_Hora <> 0 then
      dt_Servidor := DataHoraSys;
//    if FUltima_Sincronia_Data_Hora < dt_Servidor then
    begin
      for I := 0 to Length(AWR_Cache) -1 do
      begin
//        DMBanco.FDLocalSQL1.DataSets.Add(ATabela_com_cache[i].MemTable, '', ATabela_com_cache[i].Tabela);
//        DMBanco.FDLocalSQL1.DataSets[I].Temporary:=True;
//        ATabela_com_cache[i].memTable.LocalSQL:= DMBanco.FDLocalSQL1;
        Carrega_Tabela_do_Servidor(i, AWR_Cache[i].Tabela, AWR_Cache[i].Campos, dt_Servidor);
//        ATabela_com_cache[i].memTable.LocalSQL:= DMBanco.FDLocalSQL1;
      end;
      FUltima_Sincronia_Data_Hora := dt_Servidor;
    end;
    FMemoria_Carregada:=True;
//  except
//    FMemoria_Carregada:= False;
//  end;
  // Salva última data de interação com o Servidor, TConfig
end;

procedure ParaTudo_Threads;
Var
  i : Integer;
begin
  for I := 0 to Length(AWR_Cache) -1 do
    AWR_Cache[i].ParaTudo := True;
end;

procedure OpenAssincrono(ATag : Integer; ADataSet: TFDQuery);
begin
  ADataSet.Close;
  if AWR_Cache[ATag].RecsMax > 0 then // -1 se tiver paginação estará aqui
  begin
    ADataSet.FetchOptions.RecsSkip := AWR_Cache[Atag].RegAtual;
    ADataSet.FetchOptions.RecsMax  := AWR_Cache[Atag].RecsMax;
  end else
  begin
    ADataSet.FetchOptions.RecsSkip := -1;
    ADataSet.FetchOptions.RecsMax  := -1;
  end;
  ADataSet.Open;
  AguardaAbrirDataSet(Atag, ADataSet);
  if ADataSet.Active then
  begin
    if AWR_Cache[Atag].MemTable.FieldDefs.Count = 0 then
    begin
      AWR_Cache[Atag].MemTable.FieldDefs:=ADataSet.FieldDefs;
      AWR_Cache[Atag].MemTable.Active:=True;
//      ATabela_com_cache[Atag].memTable.LocalSQL:= DMBanco.FDLocalSQL1;
    end;
    AWR_Cache[Atag].MemTable.AppendData(ADataSet.Data, True);
  end;
end;

function RecordCount_Paginas(ATag : Integer; ADataSet: TFDQuery):Integer; // QuerySum da consulta
Var
  Query_Count : TFDQuery;
begin
  Result:=1;      // Padrão 1 pagina, traz tudo
  Query_Count:= GeraFDQuery(ADataSet.Transaction);
  try
    Query_Count.Close;
    Query_Count.SQL.Text:= 'Select Count(*)As Contador from ('+ADataSet.SQL.Text+')';
    Query_Count.Open;
    AguardaAbrirDataSet(ATag, Query_Count);
    if AWR_Cache[Atag].RecsMax > 0  then // Se tem Paginação, (aqui chega -1, Exemplo:  Registra_Tabela_com_Cache('projeto','*','', -1)  );
      Result := Ceil(Query_Count.FieldByName('Contador').AsInteger/AWR_Cache[Atag].RecsMax);
    Query_Count.Close;
  finally
  end;
end;

procedure AguardaAbrirDataSet(ATag:integer; ADataSet: TFdQuery);
begin
  while Not(ADataSet.State in [dsInactive, dsBrowse]) do
  begin
    if AWR_Cache[Atag].ParaTudo then  // Aqui tem que saber se foi abortado ?? eu acho
    begin
      ADataSet.AbortJob(True);
      Break;
    end;
    Application.ProcessMessages;
  end;
end;

procedure Carrega_Tabela_do_Servidor(ATag : integer; ATabela, Campos : String; ADt_Alteracao : TDateTime);
begin
  AWR_Cache[Atag].ParaTudo      := True;
  AWR_Cache[Atag].Is_Carregando := True;

  Application.ProcessMessages;
  if AWR_Cache[Atag].MemTable.Active then
    AWR_Cache[Atag].MemTable.EmptyDataSet;

{  if Not ATabela_com_cache[Atag].Cache_Carregada then
    Busca_Dados_Local(ATag, ATabela);         }                // Busca Local
  Busca_Dados_Servidor(ATag, ATabela, Campos, ADt_Alteracao);  // Complementa com o servidor

  AWR_Cache[Atag].Is_Carregando := False;

//  if Assigned(wr_memoria_Venda) then
//  begin
//    wr_Cache[Atag].Data := wr_memoria_Venda.Data;
//    Exit;
//  end;

  // Primeiro Carrega com os dados local, E busca a última dt_alteração Local.
  // Depois adciona o Online
  // Se tiver algo na busca online, grava no local
//  Carrega_DataSet_Paginado
  AWR_Cache[Atag].Is_Carregando := False;
end;

procedure Carrega_DataSet_Paginado(Atag : Integer; AQuer : TFDQuery);
Var
  Quant_Paginas : Integer;
begin
  try
    TCalculaTempo.Iniciar;
//    GrupoFooter.Visible              := True;  // Informa que começou os trabalhos
    AWR_Cache[Atag].ParaTudo := False;
    AWR_Cache[Atag].RegAtual := 0;
//    ATabela_com_cache[Atag].RecsMax  := 10000;   // Aqui vem da função Registra_Tabela_com_Cache('projeto','*','', -1);
    Quant_Paginas := RecordCount_Paginas(ATag, AQuer );   // Aqui da uma tavada, o banco da biroErre trava uma pouco
    while (AWR_Cache[Atag].RegAtual < Quant_Paginas) do // No mínimo 1 pagina para formar a Tabela em memória
    begin
       if AWR_Cache[Atag].ParaTudo then Exit;
//      LbTotalRegistros.Caption:= (FLimitarConsulta_Pagina+1).ToString + ' de '+ Quant_Paginas.ToString+ ' Páginas';
      OpenAssincrono(Atag, AQuer);
      inc(AWR_Cache[Atag].RecsMax);
      AWR_Cache[Atag].RegAtual := AWR_Cache[Atag].RegAtual + AWR_Cache[Atag].RecsMax;
    end;
  finally
    TCalculaTempo.Finalizar;
  end;
end;

procedure Carrega_kanban;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := ' select CODIGO, TAG_TELA, DESCRICAO, COLUNA, ORDEM, STYLE, COR, ATIVO, DT_ALTERACAO, COLUNA_FECHADA ' +
                      ' from WR_KANBAN WHERE ATIVO = ''S'' ';
    QuerX.Open;
    if not Assigned(wr_memoria_Kanban) then
      wr_memoria_Kanban:= TFDMemTable.Create(nil);

    if wr_memoria_Kanban.Active then
      wr_memoria_Kanban.Close;

    wr_memoria_Kanban.Data:= QuerX.Data;
  finally
    QuerX.Free;
  end;
end;

procedure Carrega_KPI;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    // KPI DIA
    QuerX.SQL.Text := ' SELECT * FROM KPI_DIA ';
                        //WHERE COALESCE(NATIVO, ''N'') <> ''S''
    {Caso o arquivo já estivesse carregado, só carrega novamente se foi modificado}
    QuerX.Open;
    if not Assigned(wr_memoria_KPI) then
      wr_memoria_KPI:= TFDMemTable.Create(nil);

    if wr_memoria_KPI.Active then
      wr_memoria_KPI.Close;

    QuerX.FetchAll;
    wr_memoria_KPI.Data:= QuerX.Data;

    // KPI MES
    QuerX.Close;
    QuerX.SQL.Text := ' SELECT * FROM KPI_MES ';
    QuerX.Open;

    if not Assigned(wr_memoria_KPI_Mes) then
      wr_memoria_KPI_Mes:= TFDMemTable.Create(nil);

    if wr_memoria_KPI_Mes.Active then
      wr_memoria_KPI_Mes.Close;

    QuerX.FetchAll;
    wr_memoria_KPI_Mes.Data:= QuerX.Data;

    // KPI ANO
    QuerX.Close;
    QuerX.SQL.Text := ' SELECT * FROM KPI_ANO ';
    QuerX.Open;

    if not Assigned(wr_memoria_KPI_Ano) then
      wr_memoria_KPI_Ano:= TFDMemTable.Create(nil);

    if wr_memoria_KPI_Ano.Active then
      wr_memoria_KPI_Ano.Close;

    QuerX.FetchAll;
    wr_memoria_KPI_Ano.Data:= QuerX.Data;
  finally
    QuerX.Free;
  end;
end;

function Filtra_KPI(var AMemTable: TFDMemTable; ATag: integer; ACodUsuario: integer = 0; ADataInicial: TDateTime = 0; ADataFinal: TDateTime = 0): boolean;
begin
  AMemTable.Filter := 'TAG_KPI = ' + VarToStr(ATag);

  if ACodUsuario <> 0 then
    AMemTable.Filter := AMemTable.Filter + ' AND CODUSUARIO = ' + VarToStr(ACodUsuario);

  if ADataInicial <> 0 then
    AMemTable.Filter := AMemTable.Filter + ' AND COMPETENCIA >= ' + QuotedStr(VarToStr(ADataInicial));

  if ADataFinal <> 0 then
    AMemTable.Filter := AMemTable.Filter + ' AND COMPETENCIA < ' + QuotedStr(VarToStr(ADataFinal));

  AMemTable.Filtered := True;

  Result := AMemTable.RecordCount > 0;
end;

procedure Carrega_KPI_Menu;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := ' SELECT * FROM KPI_DIA';
                        //WHERE COALESCE(NATIVO, ''N'') <> ''S''
    {Caso o arquivo já estivesse carregado, só carrega novamente se foi modificado}
    QuerX.Open;
    if not Assigned(wr_memoria_KPI_Menu) then
      wr_memoria_KPI_Menu:= TFDMemTable.Create(nil);
    if wr_memoria_KPI_Menu.Active then
      wr_memoria_KPI_Menu.Close;
    QuerX.FetchAll;
    wr_memoria_KPI_Menu.Data:= QuerX.Data;
  finally
    QuerX.Free;
  end;
end;

procedure Carrega_Relatorios;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select CODIGO,TAG_TELA, DESCRICAO, FORM, LINK, OBSERVACAO, VERSAO, ID_INTERNO, ATIVO, IS_CONSULTA, DT_ALTERACAO ' +
                      'from ARQUIVOS_RELATORIO WHERE CODIGO >= 0';       //WHERE COALESCE(NATIVO, ''N'') <> ''S''
    {Caso o arquivo já estivesse carregado, só carrega novamente se foi modificado}
    QuerX.Open;

    if not Assigned(wr_memoria_Relatorios) then
      wr_memoria_Relatorios:= TFDMemTable.Create(nil);

    if wr_memoria_Relatorios.Active then
      wr_memoria_Relatorios.Close;

    wr_memoria_Relatorios.Data:= QuerX.Data;
    QuerX.First;  // Registra os não nativos
    while not QuerX.eof do
    begin
      Registra_Report(QuerX.FieldByName('CODIGO').AsInteger,
                      QuerX.FieldByName('CODIGO').AsInteger,
                      QuerX.FieldByName('TAG_TELA').AsInteger,
                      QuerX.FieldByName('DESCRICAO').AsString,
                      QuerX.FieldByName('FORM').AsString,
                      QuerX.FieldByName('LINK').AsString,
                      QuerX.FieldByName('OBSERVACAO').AsString,
                      QuerX.FieldByName('VERSAO').AsString,
                      QuerX.FieldByName('ID_INTERNO').AsString,
                      nil,
                      (QuerX.FieldByName('ATIVO').AsString <> 'N'),
                      (QuerX.FieldByName('IS_CONSULTA').AsString <> 'N'),
                      QuerX.FieldByName('DT_ALTERACAO').AsDateTime);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure Carrega_Competencia;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := ' SELECT * FROM COMPETENCIA';
                        //WHERE COALESCE(NATIVO, ''N'') <> ''S''
    {Caso o arquivo já estivesse carregado, só carrega novamente se foi modificado}
    QuerX.Open;
    if not Assigned(wr_memoria_Competencia) then
      wr_memoria_Competencia:= TFDMemTable.Create(nil);
    if wr_memoria_Competencia.Active then
      wr_memoria_Competencia.Close;
    QuerX.FetchAll;
    wr_memoria_Competencia.Data:= QuerX.Data;
  finally
    QuerX.Free;
  end;
end;

procedure FiltraCompetenciaPeloCodigo(ACodCompetencia: integer);
begin
  wr_memoria_Competencia.Filtered := False;
  wr_memoria_Competencia.Filter := 'CODIGO = ' + VarToStr(ACodCompetencia);
  wr_memoria_Competencia.Filtered := True;
end;

procedure Lookup_Memoria_Alimenta(QuerX: TDataSet; ALookupProperties: TcxLookupComboBoxProperties; ATabela: string; AFiltros: Array of String);
begin
  try
    if not Assigned(wr_memoria_Lookups) then
    begin
      wr_memoria_Lookups:= TFDMemTable.Create(nil);
      with wr_memoria_Lookups.FieldDefs do begin
        with AddFieldDef do begin
          Name := 'CODIGO';
          DataType := ftString;
          Size := 100;
        end;

        with AddFieldDef do begin
          Name := 'DESCRICAO';
          DataType := ftString;
          Size := 100;
        end;

        with AddFieldDef do begin
          Name := 'LOOKUP_COMBO';
          DataType := ftString;
          Size := 100;
        end;

        with AddFieldDef do begin
          Name := 'TABELA';
          DataType := ftString;
          Size := 100;
        end;

        with AddFieldDef do begin
          Name := 'FILTROS';
          DataType := ftString;
          Size := 200;
        end;
      end;
    end;
    wr_memoria_Lookups.Filtered := False;
    if not wr_memoria_Lookups.Active then
      wr_memoria_Lookups.Open;

    QuerX.First;
    while not QuerX.eof do
    begin
      wr_memoria_Lookups.Insert;
      wr_memoria_Lookups.FieldByName('CODIGO').AsString :=  QuerX.FieldByName('CODIGO').AsString;
      wr_memoria_Lookups.FieldByName('DESCRICAO').AsString :=  QuerX.FieldByName('DESCRICAO').AsString;
      wr_memoria_Lookups.FieldByName('LOOKUP_COMBO').AsString :=  TcxLookupComboBox(ALookupProperties.Owner).Name;
      wr_memoria_Lookups.FieldByName('TABELA').AsString :=  ATabela;
      wr_memoria_Lookups.FieldByName('FILTROS').AsString := Cria_StringList_Pelo_Array(AFiltros).Text;

      wr_memoria_Lookups.Post;

      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

function Cria_StringList_Pelo_Array(AArray: Array of String): TStringList;
var
  AItem: string;
begin
  Result := TStringList.Create;
  if Length(AArray) > 0 then
    for AItem in AArray do
      Result.Add(AItem);
end;

procedure Lookup_Memoria_Remove_Registros_Tabela(ATabela: string);
begin
  if not Assigned(wr_memoria_Lookups) then
    Exit;

  wr_memoria_Lookups.Filtered := False;
  wr_memoria_Lookups.First;
  while not wr_memoria_Lookups.eof do
  begin
    if wr_memoria_Lookups.FieldByName('TABELA').AsString = ATabela then
      wr_memoria_Lookups.Delete
    else
      wr_memoria_Lookups.Next;
  end;
end;

function Lookup_Memoria_Busca_Registros(wr_memoria: TFDMemTable; AFilter: string; AFiltros: Array of String): TFDMemTable;
var
  AFiltrosString: string;
begin
  Result := TFDMemTable.Create(nil);
  if not Assigned(wr_memoria) then
    Exit;

  if Result.Active then
    Result.Close;

  Result.Data := wr_memoria.Data;

  AFiltrosString := Cria_StringList_Pelo_Array(AFiltros).Text;
  if AFiltrosString <> '' then 
    Result.Filter := AFilter + ' AND FILTROS = ' + QuotedStr(AFiltrosString)
  else
    Result.Filter := AFilter;
    
  Result.Filtered := True;
end;

class procedure TMyScriptErrorHandling.MySQLExecuteError(Sender: TObject; Error, SQLText: string;
  LineIndex: Integer; var Ignore: Boolean);
begin
  // Implemente o código desejado para tratar o erro aqui
  // Exemplo: Mostrar mensagem de erro
//  ShowMessage('Ocorreu um erro ao executar o SQL: ' + Error);
  // Defina Ignore como True se desejar ignorar o erro e continuar a execução
  Ignore := True;
end;

procedure Cria_BancoFDB(ACaminho: String);
var
  IBDatabase1: TIBDatabase;
  IBScript1: TIBScript;
begin
// Exit;

// TODO: Ta lento colocar algo para dizer porque travou tudo
// TODO: Confirir o SQL Inicial
// TODO: Falta colocar a carga inicial

// ACaminho:= 'D:\BancoLocal.fdb';
  if not FileExists(ACaminho) then
  begin
    if ForceDirectories(ExtractFileDir(ACaminho)) then
    begin
     IBDatabase1 := TIBDatabase.Create(nil);
     IBScript1 := TIBScript.Create(nil);

      try
        // Configuração do TIBDatabase
        IBDatabase1.DatabaseName := ACaminho;
        IBDatabase1.Params.Add('user_name=SYSDBA');
        IBDatabase1.Params.Add('password=masterkey');
        IBDatabase1.Params.Add('lc_ctype=UTF8');
        IBDatabase1.LoginPrompt:=False;

        // Configuração do TIBScript
        IBScript1.Database := IBDatabase1;
        IBScript1.Script.Text:='CREATE DATABASE '''+ACaminho+''' ' +
          'USER ''SYSDBA'' PASSWORD ''masterkey'' PAGE_SIZE 8192 DEFAULT CHARACTER SET UTF8;';       // Deve criar o banco local Firebird,
        // Executa o script para criar o banco de dados
        IBScript1.ExecuteScript;
        IBScript1.onExecuteError := TMyScriptErrorHandling.MySQLExecuteError;
        IBScript1.Script.Text    := Busca_SQL_Incial('SQLBancoLocal').Text;
        IBScript1.ExecuteScript;
        if not IBScript1.Transaction.Active then
          IBScript1.Transaction.StartTransaction;
        IBScript1.ExecuteScript;
        IBScript1.Transaction.Commit;
        IBScript1.Script.Text:='UPDATE CONFIGURACOES SET CONFIG  = ''VERSAO_BANCO'', VALOR = 1308, CODEMPRESA = 1 , CODUSUARIO = 0;';
        IBScript1.ExecuteScript;
        if not IBScript1.Transaction.Active then
          IBScript1.Transaction.StartTransaction;
        IBScript1.ExecuteScript;
        IBScript1.Transaction.Commit;



        //  Popula_Banco_INICIAL; // Logo após a criação do banco deve informar se quer colocar os dados iniciais, (Cidades, tipo de venda,entre outros);



      finally
        IBScript1.Free;
        IBDatabase1.Free;
      end;
    end;
  end;
  DMBanco.BancoCache.Params:=DMBanco.Banco.Params;
  DMBanco.BancoCache.Params.Values['Protocol'] := 'Local';
  DMBanco.BancoCache.Params.Values['Server']   := '';
  DMBanco.BancoCache.Params.Values['PageSize'] := '8192';
  DMBanco.BancoCache.Params.Values['DriverID'] := 'FB';
  DMBanco.BancoCache.Params.Database := ACaminho;
  DMBanco.BancoCache.Open;
end;

procedure Cria_Banco_Cria_Atualiza_Tabelas;
begin
  // Faz o Mesmo que na internet? ou usar o atualizar mesmo
  // Caregaos_OS SQL_Tabela();
  // Verificar o Init_SQL mandando a conecção
end;

procedure Notifica_Tela;
begin
  // Quais tabelas tem que marcar como modificada
  // Dois resultados esperados
  // ** Registros novos
  // ** Registros alterados
 { for I := 0 to dxTabbedMDIManager1.TabProperties.PageCount -1 do
  begin
    if dxTabbedMDIManager1.TabProperties.PageCount > 1 then
      dxTabbedMDIManager1.TabProperties.HideTabs := False;
    Application.ProcessMessages;
    try

    finally

    end;
  end;}
end;

function Carrega_Cache_Tabela(ATagTela: Integer; ADataSet_Consulta : TFDQuery): Boolean;  //Retorna_Ultima_Consulta
begin
  Result:=False;
//  RegistraCache(ATagTela, 'TABELA');
                        // Starta a Trhead para ver se precisa de atualização
  Notifica_Tela;        // Deve achar as telas e notificar
                        // Pega a cache da tela re retorna no result
//  Result := wr_Cache[ATagTela];
end;

procedure Salva_Cache(ATagTela: Integer; ADataSet_Consulta: TFDQuery);
begin
//  if not Assigned(wr_Cache[ATagTela]) then
//    wr_Cache[ATagTela]:= Twr_Cache.Create(nil);
//  wr_Cache[ATagTela].MemTable.Data:= AConsulta.Data;
end;

procedure Busca_Dados_Local(ATagTela: Integer; ATabela:String);
var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery;
  QuerX.Close;
  QuerX.SQL.Text:= ' select * from '+ ATabela ;
  QuerX.Open;

//  Chama a Função de interação da tela

  AWR_Cache[ATagTela].Cache_Carregada := True;
end;

procedure Busca_Dados_Servidor(ATag : integer; ATabela, ACampos: String; ADt_Alteracao : TDateTime);
var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery;  // Conecção principal no Servidor
  QuerX.FetchOptions.Mode:=fmAll;
  try
    QuerX.SQL.Text:= ' select '+ACampos+' from '+ ATabela ;   // Filtra as últimas atualizações, e pesquisa algo novo;
    if ADt_Alteracao > 0 then
      QuerX.SQL.Text:= QuerX.SQL.Text + ' Where dt_DT_ALTERACAO >= '+FormatDateTime('DD/MM/YYYY ', ADt_Alteracao)+'';

    Carrega_DataSet_Paginado(ATag, QuerX);
    // Aqui deve abrir paginancdo inserindo na memória

    AWR_Cache[Atag].Dt_Ultima_atualizacao := ADt_Alteracao;
  finally
    QuerX.Free;
  end;
  // Carega informa quantos,
  // Adiciona no MemTabletLocal os novosedita
  // Edita os alterados
  // Faz a mesma coisa no banco local do Firebird
end;

procedure Verifica_Se_Coneccao_Memoria_Pronta(ADataSet : TFDQuery; ATransa: TFDTransaction);
begin
  if FMemoria_Carregada then    // Se chamar   and(Not wr_Memoria.Carrega_Cache_Tabela(Tag, Consulta))Senão
  begin
    ATransa.Connection  := DMBanco.BancoCache;
    ADataSet.Connection := DMBanco.BancoCache;
  end;
end;

end.
