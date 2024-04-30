unit Frame_OImpresso_Pessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_CadAPI_OImpresso_Mestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  System.Generics.Collections, WREventos, UCBase, dxLayoutLookAndFeels, cxClasses, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, cxMemo, cxDBEdit,
  Vcl.Grids, dxCustomTileControl, dxTileControl, cxLabel, Vcl.DBGrids, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  System.JSON, wrTabelasCampos, REST.Response.Adapter, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  dxUIAdorners, cxImageComboBox, cxImageList, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TFrmOImpresso_Pessoas = class(TFrmOImpresso_Mestre)
    PessoasOffice: TFDQuery;
    DSPessoasOfficePost: TDataSource;
    UCHistPessoas: TUCHist_DataSet;
    cxGrid2DBTableView1USUARIO: TcxGridDBColumn;
    OImpresso_LogDESCRICAO: TStringField;
    cxGrid2DBTableView1DESCRICAO: TcxGridDBColumn;
    Select_Cidade: TFDQuery;
    DSSelect_Cidade: TDataSource;
    Select_CidadeCODIGO: TIntegerField;
    Select_CidadeOIMPRESSO_CODIGO: TIntegerField;
    Select_CidadeOIMPRESSO_DT_ALTERACAO: TSQLTimeStampField;
    Select_CidadeOIMPRESSO_ATIVO: TStringField;
    Select_CidadeDT_ALTERACAO: TSQLTimeStampField;
    Select_CidadeUF: TStringField;
    Select_CidadeDESCRICAO: TStringField;
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CadastroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    function GetCidadeByCodigo(ACodCidade: integer): TJSONObject;
    function GetCityDescricaoByCodigo(ACodCidade: integer): string;
    function GetCodCidadeByDescricao(ADescricaoCidade: string): Variant;
    function GetProximoCodigoPessoaTipo(ATipo: string): integer;
  public
    { Public declarations }
    procedure Carrega_Tabela; override;
    function TrataCampos_GET: boolean; override;
    function TrataCampos_PUTouPOST: TJSONObject; override;
    procedure BuscaReferenciaEspecificaDoModulo(ADataSet: TDataSet); override;
    procedure Get; override;
  end;

implementation

{$R *.dfm}

uses Base, UnitFuncoes, Frame_CadAPI_OImpresso_Configuracao, wrConversao, StrUtils, Tag.Form;

procedure TFrmOImpresso_Pessoas.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Cadastro.FieldByName('MODULO').AsString:='Contatos';
end;

procedure TFrmOImpresso_Pessoas.Carrega_Tabela;
begin
  inherited;
  FCRMTabela := TCRMTabela.Create();        // OK! Tabela PESSOAS (Clientes)

  with FCRMTabela do
  begin
    Nome := 'contacts';
    // Primeiro o tipo pois ele quem vai definir as validações do contato.
    Campos.Add(Campo('CNPJCPF',               'cpf_cnpj',       TFieldType.ftString,  18,  False, 'CPF/CNPJ'));                       //1
    Campos.Add(Campo('TIPO',                  'tipo',           TFieldType.ftString,  10,  False, 'Tipo'));                           //2
    Campos.Add(Campo('TIPO_PADRAO',           'type',           TFieldType.ftString,  20,  True,  'Cliente Tipo'));                   //3
    Campos.Add(Campo('OIMPRESSO_ATIVO',       'contact_status', TFieldType.ftString,  20,  True,  'OImpresso Ativo'));                //4
    Campos.Add(Campo('OIMPRESSO_CODIGO',      'id',             TFieldType.ftInteger,  0,  False, 'OImpresso Codigo'));               //5
    Campos.Add(Campo('RAZAOSOCIAL', 'name',                     TFieldType.ftString,  200, True,  'RazaoSocial'));                    //6
    Campos.Add(Campo('FANTASIA',    'supplier_business_name',   TFieldType.ftString,  200, True,  'Fantasia'));                       //7
    Campos.Add(Campo('ENDERECO',    'rua',                      TFieldType.ftString,  50,  False, 'Endereço'));                       //8
    Campos.Add(Campo('BAIRRO',      'bairro',                   TFieldType.ftString,  30,  False, 'Bairro'));                         //9
    Campos.Add(Campo('CODCIDADE',   'city',                     TFieldType.ftString,  100, False, 'Cidade'));                         //10
//    Campos.Add(Campo('CODCIDADE',   'city_id',                  TFieldType.ftInteger,  0 , False, 'Cod Cidade'));
    Campos.Add(Campo('CEP',         'cep',                      TFieldType.ftString,  150, False, 'CEP'));                            //11
    Campos.Add(Campo('UF',          'state',                    TFieldType.ftString,  30,  False, 'UF'));                             //12
    Campos.Add(Campo('COMPLEMENTO', 'address_line_2',           TFieldType.ftString,  50,  False, 'Complemento'));                    //13
    Campos.Add(Campo('FONE2',       'mobile',                   TFieldType.ftString,  50,  True,  'Fone2'));                          //14
    Campos.Add(Campo('FONE1',       'landline',                 TFieldType.ftString,  50,  False, 'Fone1'));                          //15
    Campos.Add(Campo('FAX',         'alternate_number',         TFieldType.ftString,  50,  False, 'Fax'));                            //16
    Campos.Add(Campo('EMAIL',       'email',                    TFieldType.ftString,  50,  False, 'Email'));                          //17
    Campos.Add(Campo('NUMERO',      'numero',                   TFieldType.ftString,  80,  False, 'Numero'));                         //18
    Campos.Add(Campo('INSCIDENT',   'ie_rg',                    TFieldType.ftString,  100, False, 'Inscrição Estadual/Identidade'));  //19
    Campos.Add(Campo('CRT',         'regime',                   TFieldType.ftString,  100, False, 'CRT'));                            //20
    Campos.Add(Campo('CONSUMIDOR_FINAL', 'consumidor_final',    TFieldType.ftInteger,   0, False, 'Consumidor Final'));               //21
    Campos.Add(Campo('DATACADASTRO','created_at',               TFieldType.ftString,  200, False, 'Data Cadastro'));                  //22
    Campos.Add(Campo('OIMPRESSO_UPDATED_AT','updated_at',       TFieldType.ftString,  200, False, 'Data Alteração'));                 //23
    Campos.Add(Campo('',            'is_sincronizado',          TFieldType.ftInteger,   0, False, 'IS_SINCRONIZADO'));                 //23
  end;
  //---------------------  CRIA ESTRUTURA DA TABELA ------------------------\\
  API_CopiarFieldsParaMemTabela(FCRMTabela, MemTabela);
  API_CopiarFieldsParaRESTAdapter(FCRMTabela, RESTResponseDataSetAdapter_CONECTAR);
  FResource := 'connector/api/contactapi';
  FResource_Params:='?type=oimpresso';
end;

function TFrmOImpresso_Pessoas.TrataCampos_GET: boolean;
var
  AValue: Variant;
begin
  {$REGION 'Conentários'}
    /// Esta procedure serve para passar os dados da Request para o Cadastro.
    /// Serve para 1 registro apenas no while not eof.
    /// Busca qual tabela que vai puxar os campos registrados na procedure Carrega_TabelaOImpresso.
    /// Passa de campo em campo passando do MemTable para DataSet do Cadastro.
    /// Passa o valor do campo para uma variável, para ficar legível.
    /// Como não trabalhamos com boolean, faz a conversão aqui para 'S' ou 'N';
    ///
    ///    if ACampo.Tipo = TFieldType.ftBoolean then
    ///      AValorCampo := ifthen(AValorCampo, 'S', 'N');
    /// Se for DateTime tem que passar para um valor que o Firebird consiga ler;
    /// Se não converter aqui dá erro de Database: Invalid DateTime.
    ///    if ACampo.Tipo = TFieldType.ftDateTime then
    ///      AValorCampo := OnlineToDateTime(AValorCampo);
//    if MatchStr(ACampo, ['cpf_cnpj','contact_status','tipo', 'city', 'type', 'cep','state', 'updated_at', 'created_at' ]) then
//    begin

//  AErros := TStringList.Create;
//  WREventosCadastro_Mestre.Empresa:=Empresa.FieldByName('Codigo').AsInteger;
//  Select_Cadastro.SQL[1]:= 'Where OIMPRESSO_CODIGO = :OImpresso_Codigo';
//  Select_Cadastro.Close;
//  Select_Cadastro.ParamByName('OImpresso_Codigo').Value:=ADataSet.FieldByName('ID').Value;
//  Select_Cadastro.Open;
//
//  if Select_Cadastro.recordcount = 0 then
//  begin
//    Select_Cadastro.Close;
//
//    ACNPJRaw     := OnlyNumberWR(ADataSet.FieldByName('cpf_cnpj').AsString);
//    ACNPJTratado := OnlyNumberWR(ADataSet.FieldByName('cpf_cnpj').AsString);
//    if (Length(ACNPJTratado) = 14) or (Length(ACNPJTratado) = 11) then
//    begin
//      if Length(ACNPJTratado) = 14 then
//      begin
//        ACNPJTratado := Copy(ACNPJRaw, 1, 2) + '.?' +
//                        Copy(ACNPJRaw, 3, 3) + '.?' +
//                        Copy(ACNPJRaw, 6, 3) + '/?' +
//                        Copy(ACNPJRaw, 9, 4) + '\-?' +
//                        Copy(ACNPJRaw, 13, 2);
//      end
//      else
//      if Length(ACNPJTratado) = 11 then
//      begin
//        ACNPJTratado := Copy(ACNPJRaw, 1, 3) + '.?' +
//                        Copy(ACNPJRaw, 4, 3) + '.?' +
//                        Copy(ACNPJRaw, 7, 3) + '\-?' +
//                        Copy(ACNPJRaw, 10, 2);
//      end;
//
//      Select_Cadastro.SQL[1]:= 'Where CNPJCPF SIMILAR TO ' + QuotedStr(ACNPJTratado) +
//                             ' escape ''\''';
//    end
//    else
//    begin
//      Select_Cadastro.SQL[1]:= 'Where CNPJCPF = :CnpjCpf';
//      Select_Cadastro.ParamByName('CnpjCpf').Value:=ADataSet.FieldByName('cpf_cnpj').Value;
//    end;
//    Select_Cadastro.Open;
//  end;
//
//  // Se não achou colocar a prcura pro cnpj ou CPF,
//  VerificaSeInsereOuEdita_Cadastro(Select_Cadastro, ADataSet);  // Aqui inverte a mágica
//  if Select_Cadastro.State in DsEditModes then
//  begin
//    if Select_Cadastro.State = dsInsert then  ALog_Evento:= 'Recebido Novo'
//    else                                      ALog_Evento:= 'Recebido Alterado';
  {$ENDREGION}
  Select_Cadastro.FieldByName('RAZAOSOCIAL').AsString := FDataSetAtivo.FieldByName('name').AsString;

  Select_Cadastro.FieldByName('FANTASIA').AsString    := FDataSetAtivo.FieldByName('supplier_business_name').AsString;
  Select_Cadastro.FieldByName('CNPJCPF').AsString     := FDataSetAtivo.FieldByName('cpf_cnpj').AsString;
  Select_Cadastro.FieldByName('NUMERO').Value         := FDataSetAtivo.FieldByName('numero').Value;
  Select_Cadastro.FieldByName('INSCIDENT').Value      := FDataSetAtivo.FieldByName('ie_rg').Value;

  if (FDataSetAtivo.FieldByName('tipo').AsString = 'Jurídica') then     AValue := 'J'
  else if (FDataSetAtivo.FieldByName('tipo').AsString = 'Física') then  AValue := 'F'
  else                                                             AValue := 'O';

  Select_Cadastro.FieldByName('tipo').AsString := AValue;

  if FDataSetAtivo.FieldByName('contact_status').AsString = 'active' then AValue := 'S'
  else                                                               AValue := 'N';

  Select_Cadastro.FieldByName('ATIVO').AsString := AValue;
    //TO-DO
//    Select_Cadastro.FieldByName('CIDADE').Value   := FDataSetPrincipal.FieldByName('city').Value;
//    Select_Cadastro.FieldByName('CODCIDADE').Value:= GetCodCidadeByDescricao(Copy(Select_Cadastro.FieldByName('CIDADE').AsString,1,50));

  if MatchStr(FDataSetAtivo.FieldByName('type').AsString,['customer','both']) then
  begin
    Select_Cadastro.FieldByName('SEQUENCIA_CLI').AsInteger := GetProximoCodigoPessoaTipo('CLI');
    Select_Cadastro.FieldByName('IS_CLI').AsString := 'S';
  end;
  if MatchStr(FDataSetAtivo.FieldByName('type').AsString,['supplier','both']) then
  begin
    Select_Cadastro.FieldByName('SEQUENCIA_FOR').AsInteger := GetProximoCodigoPessoaTipo('FOR');
    Select_Cadastro.FieldByName('IS_FOR').AsString := 'S';
  end;

  Select_Cadastro.FieldByName('cep').AsString      := FDataSetAtivo.FieldByName('cep').AsString;
  Select_Cadastro.FieldByName('FONE1').AsString    := FDataSetAtivo.FieldByName('landline').AsString;


  Select_Cadastro.FieldByName('UF').AsString       := EstadoDescricaoToUF(FDataSetAtivo.FieldByName('state').AsString);
  Select_Cadastro.FieldByName('Bairro').AsString   := FDataSetAtivo.FieldByName('bairro').AsString;
  Select_Cadastro.FieldByName('endereco').AsString := FDataSetAtivo.FieldByName('rua').AsString;

  // Se entrar aqui cai na validação dos campos do confirmar do cadastro do OFFICE
  if Select_Cadastro.FieldByName('cep').AsString ='' then      Select_Cadastro.FieldByName('cep').AsString := '00000-000';
  if Select_Cadastro.FieldByName('FONE1').AsString ='' then    Select_Cadastro.FieldByName('FONE1').AsString := 'NÃO INFORMADO';
  if Select_Cadastro.FieldByName('UF').AsString ='' then       Select_Cadastro.FieldByName('UF').AsString := 'EX';
  if Select_Cadastro.FieldByName('Bairro').AsString ='' then   Select_Cadastro.FieldByName('Bairro').AsString := 'NÃO INFORMADO';
  if Select_Cadastro.FieldByName('endereco').AsString ='' then Select_Cadastro.FieldByName('endereco').AsString := 'NÃO INFORMADO';


//  end;
end;

function TFrmOImpresso_Pessoas.TrataCampos_PUTouPOST: TJSONObject;
var
  AValue:Variant;
  o: TJSOnObject;
begin
  Select_Cadastro.SQL[1]:= 'WHERE Codigo = :Chave_PK2';
  Select_Cadastro.Close;
  Select_Cadastro.Open;
  o := TJSOnObject.Create;

  try
    o.AddPair('cpf_cnpj',              Copy(Select_Cadastro.FieldByName('CNPJCPF').AsString,1,18)); // TFieldType.ftString,  18,  False, 'CPF/CNPJ'));                       //1
  //  o.AddPair('tipo',                  Select_Cadastro.FieldByName('TIPO').AsString);               // TFieldType.ftString,  10,  False, 'Tipo'));                           //2
  //  o.AddPair('type',                  Select_Cadastro.FieldByName('TIPO_PADRAO').AsString);        // TFieldType.ftString,  20,  True,  'Cliente Tipo'));                   //3
  //  o.AddPair('contact_status',        Select_Cadastro.FieldByName('OIMPRESSO_ATIVO').AsString);    // TFieldType.ftString,  20,  True,  'OImpresso Ativo'));                //4
    o.AddPair('id',                    Select_Cadastro.FieldByName('OIMPRESSO_CODIGO').AsString);   // TFieldType.ftInteger,  0,  False, 'OImpresso Codigo'));               //5
    o.AddPair('name',                  Select_Cadastro.FieldByName('RAZAOSOCIAL').AsString);        // TFieldType.ftString,  200, True,  'RazaoSocial'));                    //6
    o.AddPair('supplier_business_name',Select_Cadastro.FieldByName('FANTASIA').AsString);           // TFieldType.ftString,  200, True,  'Fantasia'));                       //7
    o.AddPair('rua',                   Select_Cadastro.FieldByName('ENDERECO').AsString);           // TFieldType.ftString,  50,  False, 'Endereço'));                       //8
    o.AddPair('bairro',                Select_Cadastro.FieldByName('BAIRRO').AsString);             // TFieldType.ftString,  30,  False, 'Bairro'));                         //9
  //  o.AddPair('city',                  Select_Cadastro.FieldByName('CODCIDADE').AsString);          // TFieldType.ftString,  100, False, 'Cidade'));                         //10
    o.AddPair('cep',                   Select_Cadastro.FieldByName('CEP').AsString);                // TFieldType.ftString,  150, False, 'CEP'));                            //11
  //  o.AddPair('state',                 Select_Cadastro.FieldByName('UF').AsString);                 // TFieldType.ftString,  30,  False, 'UF'));                             //12
    o.AddPair('address_line_2',        Select_Cadastro.FieldByName('COMPLEMENTO').AsString);        // TFieldType.ftString,  50,  False, 'Complemento'));                    //13
  //  o.AddPair('mobile',                Select_Cadastro.FieldByName('FONE2').AsString);              // TFieldType.ftString,  50,  True,  'Fone2'));                          //14
    o.AddPair('landline',              Select_Cadastro.FieldByName('FONE1').AsString);              // TFieldType.ftString,  50,  False, 'Fone1'));                          //15
    o.AddPair('alternate_number',      Select_Cadastro.FieldByName('FAX').AsString);                // TFieldType.ftString,  50,  False, 'Fax'));                            //16
    o.AddPair('email',                 Select_Cadastro.FieldByName('EMAIL').AsString);              // TFieldType.ftString,  50,  False, 'Email'));                          //17
    o.AddPair('numero',                Select_Cadastro.FieldByName('NUMERO').AsString);             // TFieldType.ftString,  80,  False, 'Numero'));                         //18
    o.AddPair('ie_rg',                 Select_Cadastro.FieldByName('INSCIDENT').AsString);          // TFieldType.ftString,  100, False, 'Inscrição Estadual/Identidade'));  //19
    o.AddPair('regime',                Select_Cadastro.FieldByName('CRT').AsString);                // TFieldType.ftString,  100, False, 'CRT'));                            //20
  //  o.AddPair('consumidor_final',      Select_Cadastro.FieldByName('CONSUMIDOR_FINAL').AsString);   // TFieldType.ftInteger,   0, False, 'Consumidor Final'));               //21
  //  o.AddPair('created_at',            Select_Cadastro.FieldByName('DATACADASTRO').AsString);       // TFieldType.ftString,  200, False, 'Data Cadastro'));                  //22
  //  o.AddPair('updated_at',            Select_Cadastro.FieldByName('OIMPRESSO_UPDATED_AT').AsString);// TFieldType.ftString,  200, False, 'Data Alteração'));                 //23
    o.AddPair('city_id',               '4588'{Select_Cadastro.FieldByName('CODCIDADE').AsString});                                          // uf	varchar(2)

    o.AddPair('city',             GetCityDescricaoByCodigo(Select_Cadastro.FieldByName('CODCIDADE').AsInteger));//'['+GetCidadeByCodigo(Select_Cadastro.FieldByName('CODCIDADE').AsInteger).ToString+']');                                          // uf	varchar(2)
    o.AddPair('state',            EstadoToDescricao(EstadoUFToEnum(Select_Cadastro.FieldByName('UF').AsString)));                                  // uf	varchar(2)
    o.AddPair('consumidor_final', FormatPutBoolean(Select_Cadastro.FieldByName('consumidor_final').Value));         // created_at	timestamp
    o.AddPair('created_at',       FormatPutDateTime(Select_Cadastro.FieldByName('DT_ALTERACAO').Value));                // created_at	timestamp
    o.AddPair('updated_at',       FormatPutDateTime(Select_Cadastro.FieldByName('OIMPRESSO_DT_ALTERACAO').Value));      // updated_at	timestamp

    if (Select_Cadastro.FieldByName('ATIVO').AsString = 'S') then AValue := 'active'                                 /// Estas validações só vão entrar se for para Pessoas (contacts)
    else                                                          AValue := 'inactive';
    o.AddPair('contact_status',   VarToStr(AValue));
  //  ifthen(Select_Cadastro.FieldByName('tipo').AsString = 'S', 'active', 'inactive');

    if ('IS_' + OImpresso_Configuracao.FieldByName('PESSOA_FORNECEDOR_TIPO').AsString = 'S') then  AValue := 'supplier'     ///  dependendo do type, o tipo padrão deve ser o tipo alimentado no combobox
    else                                                                                    AValue := 'customer';    ///  aqui deve existir a regra tanto para update quanto para create.
    o.AddPair('type',   VarToStr(AValue));   // 'type' => 'required|in:customer,supplier,both,lead'

    if (Select_Cadastro.FieldByName('tipo').AsString  = 'J') then       AValue := 'Jurídica'
    else if (Select_Cadastro.FieldByName('tipo').AsString  = 'F') then  AValue := 'Física'
    else                                                                AValue := 'Outros';
    o.AddPair('TIPO',   VarToStr(AValue));                                                                              // 'type' => 'required|in:customer,supplier,both,lead',


    if Select_Cadastro.FieldByName('FONE2').AsString <> '' then  AValue := Select_Cadastro.FieldByName('FONE2').AsString // 'mobile' => 'required',
    else                                                         AValue := 'Sem Telefone';                               // 'mobile' => 'required',
    o.AddPair('mobile', VarToStr(AValue));
  //  Result := TJSONArray.Create;    // Cria o array de retorno
  //  Result.AddElement(o);
    o.AddPair('office_oimpresso_updated_at', Select_Cadastro.FieldByName('OIMPRESSO_UPDATED_AT').AsString);
  except
    on E:Exception do
      FErros.Add(E.Message);
  end;

  Result := o;
end;

procedure TFrmOImpresso_Pessoas.BuscaReferenciaEspecificaDoModulo(ADataSet: TDataSet);
var
  ACNPJRaw, ACNPJTratado: string;
begin
  Select_Cadastro.Close;

  ACNPJRaw     := OnlyNumberWR(ADataSet.FieldByName('cpf_cnpj').AsString);
  ACNPJTratado := OnlyNumberWR(ADataSet.FieldByName('cpf_cnpj').AsString);
  if (Length(ACNPJTratado) = 14) or (Length(ACNPJTratado) = 11) then
  begin
    if Length(ACNPJTratado) = 14 then
    begin
      ACNPJTratado := Copy(ACNPJRaw, 1, 2) + '.?' +
                      Copy(ACNPJRaw, 3, 3) + '.?' +
                      Copy(ACNPJRaw, 6, 3) + '/?' +
                      Copy(ACNPJRaw, 9, 4) + '\-?' +
                      Copy(ACNPJRaw, 13, 2);
    end
    else
    if Length(ACNPJTratado) = 11 then
    begin
      ACNPJTratado := Copy(ACNPJRaw, 1, 3) + '.?' +
                      Copy(ACNPJRaw, 4, 3) + '.?' +
                      Copy(ACNPJRaw, 7, 3) + '\-?' +
                      Copy(ACNPJRaw, 10, 2);
    end;

    Select_Cadastro.SQL[1]:= 'Where CNPJCPF SIMILAR TO ' + QuotedStr(ACNPJTratado) +
                           ' escape ''\''';
  end
  else
  begin
    Select_Cadastro.SQL[1]:= 'Where CNPJCPF = :CnpjCpf';
    Select_Cadastro.ParamByName('CnpjCpf').Value:=ADataSet.FieldByName('cpf_cnpj').Value;
  end;
  Select_Cadastro.Open;
end;

procedure TFrmOImpresso_Pessoas.Get;
var
  ALog_Evento: String;
begin
  FDataSetAtivo := MemTabela;
  inherited;
end;

procedure TFrmOImpresso_Pessoas.cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if ACellViewInfo.Item = cxGrid2DBTableView1OBS then
  begin
    ShowMessage(OImpresso_Log.FieldByName('OBS').AsString);
  end;
end;

procedure TFrmOImpresso_Pessoas.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  with ABaseClass_MidChild[QuemeoPai(Tag_Pessoas)].Create(Self) do
    ShowCadastroItem(Tag_Pessoas, OImpresso_Log.FieldByName('CHAVE_PK2').Value);
end;

function TFrmOImpresso_Pessoas.GetCidadeByCodigo(ACodCidade: integer): TJSONObject; // DeveRetornar a String [] correta
Var
  o: TJSOnObject;
begin
  Select_Cidade.Close;
  Select_Cidade.ParamByName('Codigo').AsInteger:=ACodCidade;   // Acha a Cidade
  Select_Cidade.Open;
  o := TJSOnObject.Create;
  o.AddPair('id',         Select_Cidade.FieldByName('OIMPRESSO_CODIGO').AsString);                  // id Primária	int(10)
  o.AddPair('nome',       Select_Cidade.FieldByName('DESCRICAO').AsString);                         // nome varchar(40)
  o.AddPair('codigo',     Select_Cidade.FieldByName('CODIGO').AsString);                            // codigo	varchar(8)
  o.AddPair('uf',         Select_Cidade.FieldByName('UF').AsString);                                // uf	varchar(2)
  o.AddPair('created_at', FormatPutDateTime(Select_Cidade.FieldByName('DT_ALTERACAO').Value));          // created_at	timestamp
  o.AddPair('updated_at', FormatPutDateTime(Select_Cidade.FieldByName('OIMPRESSO_DT_ALTERACAO').Value));// updated_at	timestamp
//  Result := TJSONArray.Create;    // Primerio Cria o array de retorno
//  Result.AddElement(o);
  Result := o;
end;

function TFrmOImpresso_Pessoas.GetCityDescricaoByCodigo(ACodCidade: integer): string; // DeveRetornar a String [] correta
begin
  Select_Cidade.Close;
  Select_Cidade.ParamByName('Codigo').AsInteger:=ACodCidade;   // Acha a Cidade
  Select_Cidade.Open;

  Result := Select_Cidade.FieldByName('DESCRICAO').AsString;
end;

function TFrmOImpresso_Pessoas.GetCodCidadeByDescricao(ADescricaoCidade: string): Variant;
var
  QuerX: TFDQuery;
begin
  Result := null;
  if ADescricaoCidade <> '' then
  begin
    ADescricaoCidade:=Copy( RemoveAcento(AnsiUpperCase(ADescricaoCidade)),1,49);
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'SELECT C.CODIGO FROM CIDADES C WHERE C.DESCRICAO = :Descricao';
      QuerX.ParamByName('Descricao').AsString := ADescricaoCidade;
      QuerX.Open;

      if QuerX.RecordCount > 0 then
        Result := QuerX.FieldByName('CODIGO').AsInteger;
    finally
      QuerX.Free;
    end;
  end;
end;

function TFrmOImpresso_Pessoas.GetProximoCodigoPessoaTipo(ATipo: string): integer;
var
  QuerX: TFDQuery;
begin
  Result := 0;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select max(SEQUENCIA_' + ATipo + ') from PESSOAS';
    QuerX.Open;

    Result := QuerX.Fields[0].AsInteger + 1;
  finally
    QuerX.Free;
  end;
end;

initialization
  RegisterClass(TFrmOImpresso_Pessoas);
  RegisterFrameCad(Tag_API_Oimpresso_Pessoas, TFrmOImpresso_Pessoas);

end.
