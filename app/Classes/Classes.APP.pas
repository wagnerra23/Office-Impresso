unit Classes.APP;

interface

uses
  Controls, IdHashMessageDigest, Classes, SysUtils, UnitFuncoes, actnList, PngImage, FireDAC.Comp.Client, ExtCtrls,
  FireDAC.Stan.Param, Generics.Collections, Vcl.Forms, Vcl.Menus, dxLayoutContainer, System.Variants, dxCore, cxEdit,
  DB, cxDBEdit, WRButtonsEditAdd, UCBase;

type
  TWR_Modulo = class
  public
    Nome: string;
    Codigo : Integer;
    Descricao: string;
    ImageIndex: integer;
    Ativo : Boolean;
  end;

  TWR_APP = class
  public
    Tag_APP: Integer;
    Nome: string;
    Resumo: string;
    ImageIndex: Integer;    // Colocar a Imgem
    Link: string;
    Ativo: Boolean;
    Tag_Modulo: Integer;
    Tag_KPIs: TList<Integer>;
    Tag_Configs: TList<Integer>;
    TagTelas: TList<Integer>;
    TagModulosDependencias: TList<Integer>;
  end;

  TWR_KPI = class
  public
    Tag_KPI: integer;
    TagWR_APP: integer;
    Titulo : String;
    Observacao : String;
    Link : String;

    Favorito: Boolean;       // Isso é para aparecer no BI, na aba Favoritos
    Tipo: string;

    Menu: Boolean;
    SubMenu: Boolean;
    GroupIndex: Integer;
    IndexInGroup: Integer;

    ImageIndex: Integer;
    Text1: string;
    Text2: string;
    Text3: string;
    Text4: string;

    Event_Click_Image : String;
    Event_Click_Text1 : String;
    Event_Click_Text2 : String;
    Event_Click_Text3 : String;
    Event_Click_Text4 : String;

    Nuvem_Tags : String;

    Ativo : Boolean;
  end;

  TWR_Config = class
  public
    TagWR_Config: integer;    //    CODIGO                INTEGER NOT NULL,  -->>> Codigo: Integer;
    TagWR_App: Integer;       //    TAG_APP               INTEGER
    Sub: string;
    Config: string;
    Descricao: string;        //    DESCRICAO             VARCHAR(255) NOT NULL,
    Observacao: string;       //    OBSERVACAO            VARCHAR(150);
    Tipo: string;
    Dica: string;
    Nuvem_Tags : string;
    Ativo: Boolean;           //    ATIVO                 VARCHAR(1);
    Dt_Alteracao: TDateTime;  //    DT_ALTERACAO          TIMESTAMP
  end;

  TAPPFuncaoObrigatorio = procedure(AValue: Variant; ADataSet: TFDQuery = nil);

  TWR_Obrigatorio = class
  public
    Codigo: Integer;
    Descricao: String;
    Mensagem: String;
    Hint: String;
    Ativo: Boolean;
    Tem_Padrao: Boolean;
    TagWR_Componente: Integer;
    TagWR_Condicao: Integer;
    Funcao: String;
    FuncaoValidate: TAPPFuncaoObrigatorio;
  end;

  TWR_Componente = class
  public
    Codigo: Integer;
    CodWR_Form: Integer;
    Frame: String;            // Se Form Frame Preenche
    Component: String;        // Peenchido pelo tela
    Observacao: String;       // Peenchido pelo tela
    Ativo: Boolean;
    Tabela: String;
    Campo: String;
//    Acao: String;
//    DataSet: TDataSet;
//    ValidateList: TList<TWR_Obrigatorio>;
//    OldOnValidate: TcxEditValidateEvent;
//    procedure OnValidate(Sender: TObject; var DisplayValue: TcxEditValue; var ErrorText: TCaption; var Error: Boolean);
  end;

  TWR_Form = class
    Codigo: Integer;
    Tag_App: Integer;
    Descricao: string;
    Caption: string;
    Width : Integer;
    Height : Integer;
    Text1 : string;
    Ativo : Boolean;
    Componentes: TList<TWR_Componente>;
  end;

  TWR_Valor_Inicial = class
  public
    Codigo: Integer;
    Tabela: String;
    Campo: String;
    Caption: String;
    Hint: String;
    Tem_Gen: String;         // isso vai para o insert
    Tem_PK: String;          // isso vai para o insert
    DtAlteracao: TDateTime;
    Tem_MultEmpresa: String;
    Valor_Inicial: String;   // isso vai para o insert
    Tem_Padrao: String;
    Ativo: Boolean;
    Tag_Tela: Integer;
    Observacao:String;
    Nuvem_Tags: String;
//    Tem_Obrigatorio: String;
//    Tem_duplicidade : String;

  end;

  TWR_Report = class
  public
    Tag_Report: integer;
    Codigo: integer;
    Tag_Tela: integer;
    Tag_App: integer;
    Nome: string;
    ClassName: string;

    NomeArquivo: string;
    Observacao: string;
    Versao: string;
    Link: string;
    Nuvem_Tags : string;
    Stream: TMemoryStream;

    Is_Consulta: boolean;
    IDInterno: string;
    DtAlteracao: TDateTime;
    Ativo: Boolean;
  end;

  TWR_Agrupador = class
  public
    Codigo: Integer;
    Nome: string;
    Descricao: string;
//    Tag_Telas: TList<integer>;
    TagWR_Form: integer;
    CodWR_App: integer;
    Agrupamento: string;
    Campo_Categoria: string;
    Ordenacao: TdxSortOrder;
    Codigo_Agrupamento: String;
    Ativo: Boolean;
  end;

  TWR_Filtro = class
  public
    Codigo: integer;
    Nome: string;
    Descricao: string;
    CodWR_Form: integer;
    CodWR_APP: integer;
    SQL: string;
    Observacao : string;
    Nuvem_Tags : string;
    Ativo: Boolean;
  end;

  TWR_Controle = class
  public
    TagWR_Controle: Integer;
    TIPO: String;
    TagWR_CodDestino : Integer;
    Ativo: String;
  end;

  TWR_Controle_Parent = class
  public
    TagWR_Controle: Integer;
    TABELA: String;
    TagWR_CodDestino : Integer;
    Ativo: String;
  end;

  TWR_Condicao = class
  public
    Codigo: Integer;
    Descricao: String;
    Mensagem: String;
    Hint: String;
    Ativo: Boolean;
    Tem_Padrao: Boolean;
    TagWR_Componente: Integer;
    TagWR_Condicao: Integer;
  end;

  ////////////////// Até aqui tudo certo
  ///
  TWR_Permissao = class
    Codigo: Integer;
    FormName: String;
    CompName: String;
    Caption: String;
    GroupName: String;
    NotAllowedMode: String; //TNotAllowedMode;
//    Package : TUCPackage;    // Não uso em lugar negum isso aqui
    Value: Boolean;
    Tag_Componente: Integer;
  end;

  TWR_Cache = class    // Tabelas cm Cache avancado
  public
    Codigo: Integer;
    Tabela: string;
    Campos: String;
    ParaTudo : Boolean;
    Cache_Carregada : Boolean;
    Is_Carregando : Boolean;
    RegAtual : Integer;
    RecsMax: Integer;
    Count: Integer;
    Count_Alterados: Integer; // Alterados não última musca válida
    Dt_Ultima_atualizacao: TDateTime;
    Tabelas_left_Join : String;
    MemTable : TFDMemTable;
    MD5: String;
  end;

  TWR_KPI_Menu_Resumo = class
  public
    Competencia: TDate;
    Valor: Double;
    Meta_Relativa: Double;
    Meta_Mes: Double;
    Perc_Relativa: Double;
    Perc_Realizada: Double;
  end;

  TWR_KPI_Menu = class
  public
    Tag_KPI: integer;
    GroupIndex: integer;
    Descricao: string;
    Tipo: string;
    Agrupador: string;
    Resumo_Mes: TWR_KPI_Menu_Resumo;
    Resumo_Dia: TList<TWR_KPI_Menu_Resumo>;
    Chave_PK1: integer;
    Chave_PK2: string;
    Chave_PK3: string;
    Text1: string;
    Text2: string;
    Text3: string;
    Text4: string;
    Tem_Filhos: Boolean;
    Filhos: TList<TWR_KPI_Menu>;
    Ativo: Boolean;
  end;

  TModuloGerenciador = class
  strict private
    const
      //Não alterar esta chave!!! Isso invalidará todos os módulos usados pelos clientes!!
      CHAVE_MODULOS = 'Nih&f!63h(b397@6kKp6@4$&*eb#i';
  public
    class function MD5String(const Value: string): string;
    class procedure GetModulosAtivos(ACnpjValidacao: string); //retorna um enumerador dos módulos licenciados para o cliente
    class procedure InstalaModulo(ATagModulo: integer; ACnpjValidacao: string);
    class procedure DesinstalaModulo(ATagModulo: integer; ACnpjValidacao: string);

    class function GetChave(ATagModulo: Integer; ACnpjAtivacao: string): string; //função para gerar a chave de licenciamento
  end;

//  procedure VinculaValidate(AEdit: TComponent; ATagComponent: integer);

implementation

Uses Base, DataModuleImpressao, wrMenu, wrFuncoes, Tag.APP, Tag.Componente;

class function TModuloGerenciador.MD5String(const Value: string): string;
begin
  with TIdHashMessageDigest5.Create do
  try
    Result := HashStringAsHex(Value);
  finally
    Free;
  end;
end;

class procedure TModuloGerenciador.GetModulosAtivos(ACnpjValidacao: string);
var
  QuerX: TFDQuery;
begin
  //Necessário pois o carregamento dos módulos é feito antes da atualização do banco de dados
  if not ExisteTabela('APP') then
    Exit;

  ACnpjValidacao := OnlyNumberWR(ACnpjValidacao);
  QuerX := GeraFDQueryFast;
  try
    QuerX.SQL.Text := 'select CODIGO, CHAVE ' +
                      'from APP ' +
                      'where (CNPJCPF = ?)';
    QuerX.Params[0].AsString := ACnpjValidacao;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      if Assigned(AWR_APP[QuerX.FieldByName('CODIGO').AsInteger]) then
      begin
        if QuerX.FieldByName('CHAVE').AsString = GetChave(QuerX.FieldByName('CODIGO').AsInteger, ACnpjValidacao) then
          AWR_APP[QuerX.FieldByName('CODIGO').AsInteger].Ativo := True
        else
          AWR_APP[QuerX.FieldByName('CODIGO').AsInteger].Ativo := False;
        AWR_APP[TagAPP_Geral].Ativo := True
      end;
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

class procedure TModuloGerenciador.InstalaModulo(ATagModulo: integer; ACnpjValidacao: string);
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  //Necessário pois o carregamento dos módulos é feito antes da atualização do banco de dados
  if not ExisteTabela('APP') then
    Exit;

  ATransa := GeraFDTransacao;
  ACnpjValidacao := OnlyNumberWR(ACnpjValidacao);
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select CODIGO, CNPJCPF, CHAVE ' +
                      'from APP ' +
                      'where CNPJCPF = :CNPJCPF and CODIGO = :CODIGO';
    QuerX.ParamByName('CNPJCPF').AsString := ACnpjValidacao;
    QuerX.ParamByName('CODIGO').AsInteger := ATagModulo;
    QuerX.Open;

    if QuerX.RecordCount > 0 then
      QuerX.Edit
    else
    begin
      QuerX.Insert;
      QuerX.FieldByName('CNPJCPF').AsString := ACnpjValidacao;
      QuerX.FieldByName('CODIGO').AsInteger := ATagModulo;
    end;
    QuerX.FieldByName('CHAVE').AsString := GetChave(QuerX.FieldByName('CODIGO').AsInteger, ACnpjValidacao);

    try
      QuerX.Post;
      ATransa.Commit;
    except
      ATransa.Rollback;
    end;

  finally
    QuerX.Free;
  end;
end;

class procedure TModuloGerenciador.DesinstalaModulo(ATagModulo: integer; ACnpjValidacao: string);
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  //Necessário pois o carregamento dos módulos é feito antes da atualização do banco de dados
  if not ExisteTabela('APP') then
    Exit;

  ATransa := GeraFDTransacao;
  ACnpjValidacao := OnlyNumberWR(ACnpjValidacao);
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select CODIGO, CNPJCPF, CHAVE ' +
                      'from APP ' +
                      'where CNPJCPF = :CNPJCPF and CODIGO = :CODIGO';
    QuerX.ParamByName('CNPJCPF').AsString := ACnpjValidacao;
    QuerX.ParamByName('CODIGO').AsInteger := ATagModulo;
    QuerX.Open;

    if QuerX.RecordCount > 0 then
      QuerX.Edit
    else
    begin
      QuerX.Insert;
      QuerX.FieldByName('CNPJCPF').AsString := ACnpjValidacao;
      QuerX.FieldByName('CODIGO').AsInteger := ATagModulo;
    end;
    QuerX.FieldByName('CHAVE').AsString := GetChave(-1, ACnpjValidacao);

    try
      QuerX.Post;
      ATransa.Commit;
    except
      ATransa.Rollback;
    end;

  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

class function TModuloGerenciador.GetChave(ATagModulo: Integer; ACnpjAtivacao: string): string;
begin
  if GetCnpjCpf(ACnpjAtivacao) = '' then
  begin
    Result := 'CNPJ / CPF Inválido';
    Exit;
  end;
  Result := MD5String(CHAVE_MODULOS + VarToStr(ATagModulo) + OnlyNumberWR(ACnpjAtivacao));
end;

{ TAPP_Validate }
             (*
procedure TWR_Component.OnValidate(Sender: TObject;
  var DisplayValue: TcxEditValue; var ErrorText: TCaption; var Error: Boolean);
var
  I: integer;
  AString: TStringList;
begin
  if Assigned(OldOnValidate) then
    OldOnValidate(Sender, DisplayValue, ErrorText, Error);

 { for I := 0 to ValidateList.Count - 1 do
  begin
    try
//      if ValidateList[I].Grupo.Ativo <> 'S' then Continue;

      ValidateList[I].FuncaoValidate(DisplayValue, TFDQuery(DataSet));
    except
      on E:Exception do
      begin
        Error := True;
        ErrorText := ErrorText + '$' + E.Message;
      end;
    end;
  end;

  if Error and (Sender is TcxCustomEdit) then AddBotaoClickHint(ValidateList[I-1].Codigo, TcxCustomEdit(Sender), 'Test', nil, 0);  }

end;

procedure VinculaValidate(AEdit: TComponent; ATagComponent: integer);
var
  AProperties: TcxCustomEditProperties;
  AComponent: TWR_Component;
  AObrigatorio: TWR_Obrigatorio;
begin
  AProperties := GetDevProperties(AEdit);
  AComponent := AWR_Componente[ATagComponent];

  if assigned(AProperties.OnValidate) then
    AWR_Componente[ATagComponent].OldOnValidate := AProperties.OnValidate;

  AProperties.OnValidate := AWR_Componente[ATagComponent].OnValidate;

  AProperties.ValidationOptions := [];

  if (AProperties.Owner is TcxDBTextEdit) or (AProperties.Owner is TcxDBCurrencyEdit) then
    AWR_Componente[ATagComponent].DataSet := TcxDBTextEdit(AProperties.Owner).DataBinding.DataSource.DataSet;
end;      *)

procedure Inicializa_APP;
begin
  APathsAPPJSON := TStringList.Create;   // Eliaminar tudo que for JSOn
  ListarArquivosDiretorioJSON(GetDirSistema + 'JSON', True, APathsAPPJSON);          // Isso não deve existir;
end;

initialization
  Inicializa_APP;
end.
