unit Frame_OImpresso_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_CadAPI_OImpresso_Mestre,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, Data.DB, cxDBData, cxImageComboBox, cxMemo,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, REST.Types, cxImageList,
  FireDAC.Comp.Client, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, dxUIAdorners, uWRFormataCamposDataSet, frxClass,
  frxDBSet, UCHistDataset, FireDAC.Comp.DataSet, System.Generics.Collections,
  WREventos, UCBase, dxLayoutLookAndFeels, cxClasses, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxCustomTileControl, dxTileControl,
  cxDBEdit, Vcl.Grids, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit,
  Vcl.StdCtrls, cxButtons, cxTextEdit, dxLayoutControl, wrTabelasCampos,
  System.JSON, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;

type
  TFrmOImpresso_Produtos = class(TFrmOImpresso_Mestre)
    AdapterProdVariations: TRESTResponseDataSetAdapter;
    AdapterVariations: TRESTResponseDataSetAdapter;
    AdapterVarLocDetails: TRESTResponseDataSetAdapter;
    MemTableProdVariations: TFDMemTable;
    MemTableVariations: TFDMemTable;
    MemTableVarLocDetails: TFDMemTable;
    AdapterMarca: TRESTResponseDataSetAdapter;
    AdapterGrupo: TRESTResponseDataSetAdapter;
    AdapterCategoria: TRESTResponseDataSetAdapter;
    AdapterLocalizacao: TRESTResponseDataSetAdapter;
    MemTableMarca: TFDMemTable;
    MemTableGrupo: TFDMemTable;
    MemTableCategoria: TFDMemTable;
    MemTableLocalizacao: TFDMemTable;
    AdapterUnidade: TRESTResponseDataSetAdapter;
    MemTableUnidade: TFDMemTable;
    Select_Grupo: TFDQuery;
    UCHist_Grupo: TUCHist_DataSet;
    Select_Categoria: TFDQuery;
    UCHist_Categoria: TUCHist_DataSet;
    Select_Unidade: TFDQuery;
    UCHist_Unidade: TUCHist_DataSet;
    Select_Marca: TFDQuery;
    UCHist_Marca: TUCHist_DataSet;
    Select_Estoque: TFDQuery;
    UCHist_Estoque: TUCHist_DataSet;
    WREventosCadastro_Grupo: TWREventosCadastro;
    WREventosCadastro_Categoria: TWREventosCadastro;
    WREventosCadastro_Unidade: TWREventosCadastro;
    WREventosCadastro_Marca: TWREventosCadastro;
    WREventosCadastroEstoque: TWREventosCadastro;
    DSGrupo: TDataSource;
    DSCategoria: TDataSource;
    DSUnidade: TDataSource;
    DSEstoque: TDataSource;
    DSMarca: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    DataSource1: TDataSource;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1business_id: TcxGridDBColumn;
    cxGrid1DBTableView1actual_name: TcxGridDBColumn;
    cxGrid1DBTableView1short_name: TcxGridDBColumn;
    cxGrid1DBTableView1allow_decimal: TcxGridDBColumn;
    cxGrid1DBTableView1base_unit_id: TcxGridDBColumn;
    cxGrid1DBTableView1base_unit_multiplier: TcxGridDBColumn;
    cxGrid1DBTableView1created_by: TcxGridDBColumn;
    cxGrid1DBTableView1deleted_at: TcxGridDBColumn;
    cxGrid1DBTableView1created_at: TcxGridDBColumn;
    cxGrid1DBTableView1updated_at: TcxGridDBColumn;
    procedure CadastroAfterInsert(DataSet: TDataSet);
  private

    FCRMTabelaMarca:     TCRMTabela;
    FCRMTabelaGrupo:     TCRMTabela;
    FCRMTabelaCategoria: TCRMTabela;
    FCRMTabelaLocalizacao: TCRMTabela;
    FCRMTabelaUnidade:     TCRMTabela;

    FCRMTabelaProduct_Variations: TCRMTabela;
    FCRMTabelaVariations:         TCRMTabela;
    FCRMTabelaVariation_Location: TCRMTabela;

    procedure AbreProductVariations(AIndex: integer);
    procedure AbreVariations(AIndex: integer);
    procedure AbreVariationsLocation(AIndex: integer);
    procedure AbreMarca;
    procedure AbreGrupo;
    procedure AbreCategoria;
    procedure AbreLocalizacao;
    procedure AbreUnidade;

    procedure FechaAdapters;
  public
    procedure Carrega_Tabela; override;
    function TrataCampos_GET: boolean; override;
    function TrataCampos_PUTouPOST: TJSONObject; override;
    procedure BuscaReferenciaEspecificaDoModulo(ADataSet: TDataSet); override;
    procedure Get; override;
  end;

var
  FrmOImpresso_Produtos: TFrmOImpresso_Produtos;

implementation

{$R *.dfm}

uses Base, UnitFuncoes, Frame_CadAPI_OImpresso_Configuracao, wrConversao, StrUtils, Tag.Form;

{ TFrmOImpresso_Produtos }

procedure TFrmOImpresso_Produtos.BuscaReferenciaEspecificaDoModulo(
  ADataSet: TDataSet);
begin
  inherited;
  if ADataSet = MemTableCategoria then
  begin
    Select_Categoria.Close;
    Select_Categoria.SQL[1]:= 'Where DESCRICAO = :Categoria';
    Select_Categoria.ParamByName('Categoria').AsString := MemTableCategoria.FieldByName('name').AsString;
    Select_Categoria.Open;

    if Select_Categoria.RecordCount > 0 then
      Exit;
  end;

  if ADataSet = MemTableGrupo then
  begin
    Select_Grupo.Close;
    Select_Grupo.SQL[1]:= 'Where DESCRICAO = :Grupo';
    Select_Grupo.ParamByName('Grupo').AsString := MemTableGrupo.FieldByName('name').AsString;
    Select_Grupo.Open;

    if Select_Grupo.RecordCount > 0 then
      Exit;
  end;

  if ADataSet = MemTableMarca then
  begin
    Select_Marca.Close;
    Select_Marca.SQL[1]:= 'Where DESCRICAO = :Marca';
    Select_Marca.ParamByName('Marca').AsString := MemTableMarca.FieldByName('name').AsString;
    Select_Marca.Open;

    if Select_Marca.RecordCount > 0 then
      Exit;
  end;

  if ADataSet = MemTableUnidade then
  begin
    Select_Unidade.Close;
    Select_Unidade.SQL[1]:= 'Where UNIDADE = :Unidade';
    Select_Unidade.ParamByName('Unidade').Value := ADataSet.FieldByName('short_name').Value;
    Select_Unidade.Open;

    if Select_Unidade.RecordCount > 0 then
      Exit;
  end;

  if ADataSet = MemTableVariations then
  begin
    Select_Cadastro.Close;
    Select_Cadastro.SQL[1]:= 'Where CODFABRICA = :sku';
    Select_Cadastro.ParamByName('Sku').Value := ADataSet.FieldByName('sku').Value;
    Select_Cadastro.Open;

    if Select_Cadastro.RecordCount > 0 then
      Exit;

  end;
end;

procedure TFrmOImpresso_Produtos.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Cadastro.FieldByName('MODULO').AsString:='Produtos';
end;

procedure TFrmOImpresso_Produtos.Carrega_Tabela;
begin
  inherited;
  FCRMTabela            :=  TCRMTabela.Create();
  FCRMTabelaMarca       :=  TCRMTabela.Create();
  FCRMTabelaGrupo       :=  TCRMTabela.Create();
  FCRMTabelaCategoria   :=  TCRMTabela.Create();
  FCRMTabelaLocalizacao :=  TCRMTabela.Create();
  FCRMTabelaUnidade     :=  TCRMTabela.Create();

  FCRMTabelaProduct_Variations :=  TCRMTabela.Create();
  FCRMTabelaVariations         :=  TCRMTabela.Create();
  FCRMTabelaVariation_Location :=  TCRMTabela.Create();

  with FCRMTabela do
  begin
    Nome := 'product';
    Campos.Add(Campo('DESCRICAO',           'name',               TFieldType.ftString,    150,  False, 'Descrição'));
    Campos.Add(Campo('PODE_ALTERAR_ESTOQUE','enable_stock',       TFieldType.ftInteger,     0,  False, 'Gerenciar Estoque'));
    Campos.Add(Campo('ESTOQUE_MIN',         'alert_quantity',     TFieldType.ftFloat,       0,  False, 'Alerta de Quantidade'));
    Campos.Add(Campo('CODPRODUTO_GRUPO',    'category_id',        TFieldType.ftInteger,     0,  False, 'Código do Grupo'));
    Campos.Add(Campo('CODPRODUTO_CATEGORIA','sub_category_id',    TFieldType.ftInteger,     0,  False, 'Código da Categoria'));
    Campos.Add(Campo('CODPRODUTO_MARCA',    'brand_id',           TFieldType.ftInteger,     0,  False, 'Código da Marca'));
    Campos.Add(Campo('',                    'selling_price_group',TFieldType.ftInteger,     0,  False, 'Tabela de preço'));
    Campos.Add(Campo('CODEMPRESA',          'location_id',        TFieldType.ftInteger,     0,  False, 'Localização do produto (qual empresa)'));
    Campos.Add(Campo('CODFAMILIA',          'id',                 TFieldType.ftInteger,     0,  False, 'Família do produto'));
    Campos.Add(Campo('CALC_QPESO_BRUTO',    'weight',             TFieldType.ftFloat,       0,  False, 'Peso bruto do material'));
    Campos.Add(Campo('OBSERVACAO',          'product_description',TFieldType.ftString,    200,  False, 'Observação'));
    Campos.Add(Campo('CODIGOEAN',          'product_custom_field1',TFieldType.ftString,    20,  False, 'Código de barras'));
    Campos.Add(Campo('PODE_SER_VENDIDO',    'not_for_selling',      TFieldType.ftInteger,   0,  False, 'Pode ser vendido(valor 1 para NÃO)'));
    Campos.Add(Campo('CODNF_NCM',           'ncm',                  TFieldType.ftString,   10,  False, 'NCM do produto'));
    Campos.Add(Campo('CODNF_CEST',          'cest',                 TFieldType.ftString,   10,  False, 'CEST do produto'));
    Campos.Add(Campo('',                    'type',                 TFieldType.ftString,   20,  False, 'Tipo'));
    Campos.Add(Campo('',                    'product_variations',   TFieldType.ftString,    0,  False, 'Variações do produto'));
    Campos.Add(Campo('',                    'category',             TFieldType.ftString,    0,  False, 'Variações do produto'));
    Campos.Add(Campo('',                    'unit',             TFieldType.ftString,    0,  False, 'Variações do produto'));

    // Natureza de operação
    Campos.Add(Campo('',    'perc_icms',      TFieldType.ftFloat,   0,  False, 'Porcentagem ICMS'));
    Campos.Add(Campo('',    'perc_pis',       TFieldType.ftFloat,   0,  False, 'Porcentagem PIS'));
    Campos.Add(Campo('',    'perc_cofins',    TFieldType.ftFloat,   0,  False, 'Porcentagem COFINS'));
    Campos.Add(Campo('',    'perc_ipi',       TFieldType.ftFloat,   0,  False, 'Porcentagem IPI'));
    Campos.Add(Campo('',    'cst_csosn',      TFieldType.ftFloat,   0,  False, 'CST ICMS'));
    Campos.Add(Campo('',    'cst_pis',        TFieldType.ftFloat,   0,  False, 'CST PIS'));
    Campos.Add(Campo('',    'cst_cofins',     TFieldType.ftFloat,   0,  False, 'CST COFINS '));
    Campos.Add(Campo('',    'cst_ipi',        TFieldType.ftFloat,   0,  False, 'CST IPI'));
    Campos.Add(Campo('',    'cfop_interno',   TFieldType.ftFloat,   0,  False, 'CFOP para dentro do estado'));
    Campos.Add(Campo('',    'cfop_externo',   TFieldType.ftFloat,   0,  False, 'CFOP para fora do estado'));

    //    Campos.Add(Campo('VALOR',                'product_variations[0].variations[0].default_sell_price',    TFieldType.ftInteger,   0,  False, 'Valor'));
  end;

  with FCRMTabelaMarca do
  begin
    Nome := 'brands';
    Campos.Add(Campo('DESCRICAO',           'name',        TFieldType.ftString, 150,  False, 'Descrição'));
    Campos.Add(Campo('OIMPRESSO_ATIVO',     'deleted_at',  TFieldType.ftString,  20,  True,  'OImpresso Ativo'));
    Campos.Add(Campo('OIMPRESSO_CODIGO',    'id',          TFieldType.ftInteger,  0,  False, 'OImpresso Codigo'));
    Campos.Add(Campo('OIMPRESSO_UPDATED_AT','updated_at',  TFieldType.ftString, 200, False, 'Data Alteração'));
  end;

  with FCRMTabelaGrupo do
  begin
    Nome := 'category'; // esse é grupo
    Campos.Add(Campo('OIMPRESSO_CODIGO',    'id',         TFieldType.ftInteger,   0,  True, ''));   // "id": 1,
    Campos.Add(Campo('DESCRICAO',           'name',       TFieldType.ftString,   50,  False, ''));// "name":  "Men's",
    Campos.Add(Campo('OIMPRESSO_ATIVO',     'deleted_at', TFieldType.ftString,  200,  False, ''));   // "deleted_at": null,
    Campos.Add(Campo('OIMPRESSO_UPDATED_AT','updated_at', TFieldType.ftString,  200,  False, ''));   // "updated_at": "2018-01-03 21:19:47"
//    Campos.Add(Campo('', 'short_code',        TFieldType.ftString,  50,  False, ''));// "short_code"  : null,
//    Campos.Add(Campo('', 'parent_id',         TFieldType.ftString,  50,  False, ''));// "parent_id":  0,
//    Campos.Add(Campo('', 'category_type',     TFieldType.ftString,  50,  False, ''));// "category_type":  "product",
//    Campos.Add(Campo('', 'description',       TFieldType.ftString,  50,  False, ''));// "description":  : null,
//    Campos.Add(Campo('', 'slug',              TFieldType.ftString,  50,  False, ''));// "slug":  : null,
//    Campos.Add(Campo('', 'woocommerce_cat_id',    TFieldType.ftString,  50,  False, ''));// "woocommerce_cat_id":  : null,
//    Campos.Add(Campo('', 'created_by',        TFieldType.ftInteger,  0,  False, ''));   // "created_by": 1,
//    Campos.Add(Campo('', 'created_at',        TFieldType.ftDateTime,  0,  False, ''));   // "created_at": "2018-01-03 21:19:47",
//  Campo('category', '', 'business_id',   ftString,  3,  False, '');      // "business_id": 1,
  end;

  with FCRMTabelaCategoria do
  begin
    Nome := 'sub_category'; // essa é a categoria
    Campos.Add(Campo('OIMPRESSO_CODIGO',    'id',         TFieldType.ftInteger,   0,  		True,  ''));   // "id": 1,
    Campos.Add(Campo('DESCRICAO',           'name',    	  TFieldType.ftString,   50,  		False, ''));// "name":   "Shirts",
    Campos.Add(Campo('OIMPRESSO_ATIVO',     'deleted_at', TFieldType.ftString,  200,  	  False, ''));   // "deleted_at": null,
    Campos.Add(Campo('OIMPRESSO_UPDATED_AT','updated_at', TFieldType.ftString,  200,  	  False, ''));   // "updated_at": "2018-01-03 21:19:47"
//  Campo('sub_category', '', 'business_id',   		TFieldType.ftString,  3,    False, '');      // "business_id": 1,
//    Campos.Add(Campo('', 'short_code',    		TFieldType.ftString,   50,  	  False, ''));// "short_code"  : null,
//    Campos.Add(Campo('', 'parent_id',    		  TFieldType.ftString,   50,  		False, ''));// "parent_id":  0,
//    Campos.Add(Campo('', 'category_type',    	TFieldType.ftString,   50,  		False, ''));// "category_type":  "product",
//    Campos.Add(Campo('', 'description',    		TFieldType.ftString,   50,  	  False, ''));// "description":  : null,
//    Campos.Add(Campo('', 'slug',    				  TFieldType.ftString,   50,    	False, ''));// "slug":  : null,
//    Campos.Add(Campo('', 'woocommerce_cat_id',TFieldType.ftString,   50,  	  False, ''));// "woocommerce_cat_id":  : null,
//    Campos.Add(Campo('', 'created_by',       	TFieldType.ftInteger,   0,  		False, ''));   // "created_by": 1,
//    Campos.Add(Campo('', 'created_at',       	TFieldType.ftDateTime,  0,  	  False, ''));   // "created_at": "2018-01-03 21:19:47",
  end;

  with FCRMTabelaLocalizacao do
  begin
    Nome := 'product_location';
    Campos.Add(Campo('', 'id',           TFieldType.ftInteger,   0,  False, ''));
    Campos.Add(Campo('', 'created_by',   TFieldType.ftInteger,   0,  False, ''));   // "created_by": 1,
    Campos.Add(Campo('', 'deleted_at',   TFieldType.ftString,  200,  False, ''));   // "deleted_at": null,
    Campos.Add(Campo('', 'created_at',   TFieldType.ftString,  200,  False, ''));   // "created_at": "2018-01-03 21:19:47",
    Campos.Add(Campo('', 'updated_at',   TFieldType.ftString,  200,  False, ''));   // "updated_at": "2018-01-03 21:19:47"
  end;

  with FCRMTabelaUnidade do
  begin
    Nome := 'unit';
    Campos.Add(Campo('', 'id',            TFieldType.ftInteger,   0,  False, ''));
    Campos.Add(Campo('', 'short_name',    TFieldType.ftString,   20,  False, ''));
    Campos.Add(Campo('', 'actual_name',   TFieldType.ftString,   50,  False, ''));
    Campos.Add(Campo('', 'created_at',    TFieldType.ftString,  200,  False, ''));   // "created_at": "2018-01-03 21:19:47",
    Campos.Add(Campo('', 'updated_at',   TFieldType.ftString,  200,  False, ''));
  end;

  with FCRMTabelaProduct_Variations do
  begin
    Campos.Add(Campo('CODGRADE_MODELO', 'variation_template_id',   TFieldType.ftInteger,  0,  False, ''));
    Campos.Add(Campo('',                'variations',              TFieldType.ftString,   0,  False, 'Variações do produto'));
  end;

  with FCRMTabelaVariations do
  begin
    Nome := 'variations';
    Campos.Add(Campo('OIMPRESSO_CODIGO','id',                       TFieldType.ftString,    15,  False, 'Chave PK do produto'));
    Campos.Add(Campo('CALC_VCOMPRA_TOTAL','dpp_inc_tax',            TFieldType.ftFloat,    0,  False, 'PREÇO DE COMPRA (incluindo impostos) '));
    Campos.Add(Campo('VALOR_COMPRA',      'default_purchase_price', TFieldType.ftFloat,    0,  False, 'PREÇO DE COMPRA (sem impostos)'));
    Campos.Add(Campo('MARGEM',            'profit_percent',         TFieldType.ftFloat,    0,  False, 'MARGEM DE LUCRO'));
    Campos.Add(Campo('VALOR',             'sell_price_inc_tax',     TFieldType.ftFloat,    0,  False, 'PREÇO DE VENDA'));
    Campos.Add(Campo('DESCRICAO',         'name',                   TFieldType.ftString, 150,  False, 'Descrição que vai concatenar com o nome'));
    Campos.Add(Campo('CODFAMILIA',        'product_id',             TFieldType.ftInteger,  0,  False, 'Código da Família caso tenha variação'));
    Campos.Add(Campo('CODFABRICA',        'sub_sku',                TFieldType.ftString,  30,  False, 'Código único de cada produto'));
    Campos.Add(Campo('',                  'variation_location_details', TFieldType.ftString,    0,  False, 'Variações do produto'));
    Campos.Add(Campo('OIMPRESSO_UPDATED_AT', 'updated_at',          TFieldType.ftString,   0,  False, 'Data updated do produto'));


  end;

  with FCRMTabelaVariation_Location do
  begin
    Nome := 'variation_location_details';
    Campos.Add(Campo('ESTOQUE',    'qty_available', TFieldType.ftFloat,   0,  False, 'Estoque do produto'));
    Campos.Add(Campo('CODEMPRESA', 'location_id',   TFieldType.ftInteger, 0,  False, 'Código da empresa (location)'));
  end;

  //---------------------  CRIA ESTRUTURA DA TABELA ------------------------\\
  //------------------------PRODUTO--------------------------//
  API_CopiarFieldsParaMemTabela(FCRMTabela, MemTabela);
  API_CopiarFieldsParaRESTAdapter(FCRMTabela, RESTResponseDataSetAdapter_CONECTAR);

  API_CopiarFieldsParaMemTabela(FCRMTabelaProduct_Variations, MemTableProdVariations);
  API_CopiarFieldsParaRESTAdapter(FCRMTabelaProduct_Variations, AdapterProdVariations);

  API_CopiarFieldsParaMemTabela(FCRMTabelaVariations, MemTableVariations);
  API_CopiarFieldsParaRESTAdapter(FCRMTabelaVariations, AdapterVariations);

  API_CopiarFieldsParaMemTabela(FCRMTabelaVariation_Location, MemTableVarLocDetails);
  API_CopiarFieldsParaRESTAdapter(FCRMTabelaVariation_Location, AdapterVarLocDetails);

  //-------------------------TABELAS FILHAS-------------------------//
  API_CopiarFieldsParaMemTabela(FCRMTabelaMarca, MemTableMarca);
  API_CopiarFieldsParaRESTAdapter(FCRMTabelaMarca, AdapterMarca);

  API_CopiarFieldsParaMemTabela(FCRMTabelaGrupo, MemTableGrupo);
  API_CopiarFieldsParaRESTAdapter(FCRMTabelaGrupo, AdapterGrupo);

  API_CopiarFieldsParaMemTabela(FCRMTabelaCategoria, MemTableCategoria);
  API_CopiarFieldsParaRESTAdapter(FCRMTabelaCategoria, AdapterCategoria);

//  API_CopiarFieldsParaMemTabela(FCRMTabelaLocalizacao, MemTableLocalizacao);
//  API_CopiarFieldsParaRESTAdapter(FCRMTabelaLocalizacao, AdapterLocalizacao);

  API_CopiarFieldsParaMemTabela(FCRMTabelaUnidade, MemTableUnidade);
  API_CopiarFieldsParaRESTAdapter(FCRMTabelaUnidade, AdapterUnidade);


  FResource := 'connector/api/product';
  FResource_Params:='?type=oimpresso&per_page=35';
end;

procedure TFrmOImpresso_Produtos.Get;
var
  I, J, K: Integer;
begin
  AbreUnidade;
  AbreCategoria;
  AbreGrupo;
  AbreLocalizacao;
  AbreMarca;

  // Grupo
  if AdapterGrupo.Active and
    (MemTableGrupo.FieldByName('id').AsString <> '') then
  begin
    FDataSetAtivo := MemTableGrupo;
    Busca_E_Edita_Ou_Cria(Select_Grupo, MemTableGrupo, WREventosCadastro_Grupo);
  end;

  // Categoria
  if AdapterCategoria.Active and
    (MemTableCategoria.FieldByName('id').AsString <> '') then
  begin
    FDataSetAtivo := MemTableCategoria;
    Busca_E_Edita_Ou_Cria(Select_Categoria, MemTableCategoria, WREventosCadastro_Categoria);
  end;

  // Marca
  if AdapterMarca.Active and
    (MemTableMarca.FieldByName('id').AsString <> '') then
  begin
    FDataSetAtivo := MemTableMarca;
    Busca_E_Edita_Ou_Cria(Select_Marca, MemTableMarca, WREventosCadastro_Marca);
  end;

  // Unidade de Medida
  if  AdapterUnidade.Active and
     (MemTableUnidade.FieldByName('id').AsString <> '') then
  begin
    FDataSetAtivo := MemTableUnidade;
    Busca_E_Edita_Ou_Cria(Select_Unidade, MemTableUnidade, WREventosCadastro_Unidade);
  end;

  // Localização / Empresa
  if AdapterLocalizacao.Active and
    (MemTableLocalizacao.FieldByName('id').AsString <> '') then
  begin

  end;

  // Geral
  AbreProductVariations(0);
  for I := 0 to MemTableProdVariations.RecordCount - 1 do
  begin
    // Família

    AbreVariations(I);
    for J := 0 to MemTableVariations.RecordCount - 1 do
    begin
      // Produto
      FDataSetAtivo := MemTableVariations;
      inherited;      // Commita no final

      AbreVariationsLocation(J);
      for K := 0 to MemTableVarLocDetails.RecordCount - 1 do
      begin
        OutputDebugString(StringToOleStr('Estoque'));
        // Estoque
      end;
    end;
  end;
  FechaAdapters;
end;

function TFrmOImpresso_Produtos.TrataCampos_GET: boolean;
begin
  if FDataSetAtivo = MemTableCategoria then
  begin
    Select_Categoria.FieldByName('DESCRICAO').AsString := MemTableCategoria.FieldByName('name').AsString;
  end;

  if FDataSetAtivo = MemTableGrupo then
  begin
    Select_Grupo.FieldByName('DESCRICAO').AsString := MemTableGrupo.FieldByName('name').AsString;
    Select_Grupo.FieldByName('CODNF_NATUREZA_OPERACAO').AsInteger := 0;
  end;

  if FDataSetAtivo = MemTableMarca then
  begin
    Select_Marca.FieldByName('DESCRICAO').AsString := MemTableMarca.FieldByName('name').AsString;
  end;

  if FDataSetAtivo = MemTableUnidade then
  begin
    Select_Unidade.FieldByName('UNIDADE').AsString := MemTableUnidade.FieldByName('short_name').AsString;
    Select_Unidade.FieldByName('DESCRICAO').AsString := MemTableUnidade.FieldByName('actual_name').AsString;
    Select_Unidade.FieldByName('EXIBIR_COMPRIMENTO').AsInteger := 0;
    Select_Unidade.FieldByName('EXIBIR_LARGURA').AsInteger := 0;
    Select_Unidade.FieldByName('EXIBIR_ESPESSURA').AsInteger := 0;
    Select_Unidade.FieldByName('CALC_COMPRIMENTO').AsInteger := 0;
    Select_Unidade.FieldByName('CALC_LARGURA').AsInteger := 0;
    Select_Unidade.FieldByName('CALC_ESPESSURA').AsInteger := 0;
    Select_Unidade.FieldByName('TEM_DECIMAL').AsString := 'S';
    Select_Unidade.FieldByName('FORMULA').AsString := 'PROPORCIONAL';
  end;

  if FDataSetAtivo = MemTableVariations then
  begin
    Select_Cadastro.FieldByName('CODFABRICA').AsString            := MemTableVariations.FieldByName('sub_sku').AsString;
    Select_Cadastro.FieldByName('CODIGOEAN').AsString             := MemTabela.FieldByName('product_custom_field1').AsString;

    if MemTabela.FieldByName('type').AsString = 'single' then
      Select_Cadastro.FieldByName('DESCRICAO').AsString             := MemTabela.FieldByName('name').AsString
    else
      Select_Cadastro.FieldByName('DESCRICAO').AsString             := MemTabela.FieldByName('name').AsString + ' - ' + MemTableVariations.FieldByName('name').AsString;

    // Foreign
  //  FDataSetPrincipal.FieldByName('CODPRODUTO_MARCA').AsInteger     := ;
    Select_Cadastro.FieldByName('CODFABRICA').AsString           := MemTableVariations.FieldByName('sub_sku').AsString;
    if Select_Grupo.RecordCount > 0 then
      Select_Cadastro.FieldByName('CODPRODUTO_GRUPO').AsInteger     := Select_Grupo.FieldByName('CODIGO').AsInteger;

    if Select_Categoria.RecordCount > 0 then
      Select_Cadastro.FieldByName('CODPRODUTO_CATEGORIA').AsInteger := Select_Categoria.FieldByName('CODIGO').AsInteger;

      //  FDataSetPrincipal.FieldByName('CODPRODUTO_TIPO').AsInteger      := ;

    // Config
    Select_Cadastro.FieldByName('UNIDADE').AsString               := MemTableUnidade.FieldByName('short_name').AsString;
    Select_Cadastro.FieldByName('PODE_ALTERAR_ESTOQUE').AsString  := ifthen(MemTabela.FieldByName('enable_stock').AsInteger = 1, 'S', 'N');
    Select_Cadastro.FieldByName('ESTOQUE_MIN').AsInteger          := MemTabela.FieldByName('alert_quantity').AsInteger;
    Select_Cadastro.FieldByName('CODNF_NCM').AsString             := OnlyNumberWR(MemTabela.FieldByName('ncm').AsString);
    Select_Cadastro.FieldByName('CODNF_CEST').AsString            := OnlyNumberWR(MemTabela.FieldByName('cest').AsString);
    Select_Cadastro.FieldByName('CALC_QPESO_BRUTO').AsFloat       := MemTabela.FieldByName('weight').AsFloat;
  //  Select_Cadastro.FieldByName('LOCAL').AsInteger                := ;
    Select_Cadastro.FieldByName('OBSERVACAO').AsString            := MemTabela.FieldByName('product_description').AsString;
    Select_Cadastro.FieldByName('PODE_SER_VENDIDO').AsString      := ifthen(MemTabela.FieldByName('not_for_selling').AsInteger = 1, 'N', 'S');

    // Valores
    Select_Cadastro.FieldByName('CALC_VCOMPRA_TOTAL').AsFloat     := MemTableVariations.FieldByName('dpp_inc_tax').AsFloat;
    Select_Cadastro.FieldByName('CUSTO').AsFloat                  := Select_Cadastro.FieldByName('CALC_VCOMPRA_TOTAL').AsFloat;
    Select_Cadastro.FieldByName('CALC_VENDA_MINIMO_VALOR').AsFloat := Select_Cadastro.FieldByName('CALC_VCOMPRA_TOTAL').AsFloat;
    Select_Cadastro.FieldByName('VALOR_COMPRA').AsFloat           := MemTableVariations.FieldByName('default_purchase_price').AsFloat;
    Select_Cadastro.FieldByName('MARGEM').AsFloat                 := MemTableVariations.FieldByName('profit_percent').AsFloat;
    Select_Cadastro.FieldByName('VALOR').AsFloat                  := MemTableVariations.FieldByName('sell_price_inc_tax').AsFloat;
    Select_Cadastro.FieldByName('TOTAL').AsFloat                  := Select_Cadastro.FieldByName('VALOR').AsFloat;
    Select_Cadastro.FieldByName('CALC_VVENDA_SUGERIDO').AsFloat   := Select_Cadastro.FieldByName('VALOR').AsFloat;

    Select_Cadastro.FieldByName('CALC_PMARKUP').AsFloat           := 1;
    Select_Cadastro.FieldByName('QUANT').AsInteger                := 1;
    Select_Cadastro.FieldByName('ORDEM').AsInteger                := 0;
  //  Select_Cadastro.FieldByName('CODFAMILIA').AsInteger         := MAXCODFAMILIA ;
  end;
end;

procedure TFrmOImpresso_Produtos.FechaAdapters;
begin
  AdapterProdVariations.Active := False;
  AdapterProdVariations.RootElement := '';

  AdapterVariations.Active := False;
  AdapterVariations.RootElement := '';

  AdapterVarLocDetails  .Active := False;
  AdapterVarLocDetails.RootElement := '';

  AdapterMarca.Active := False;
  AdapterMarca.RootElement := '';

  AdapterGrupo.Active := False;
  AdapterGrupo.RootElement := '';

  AdapterCategoria.Active := False;
  AdapterCategoria.RootElement := '';

  AdapterLocalizacao.Active := False;
  AdapterLocalizacao.RootElement := '';

  AdapterUnidade.Active := False;
  AdapterUnidade.RootElement := '';
end;

procedure TFrmOImpresso_Produtos.AbreCategoria;
begin
  try
    AdapterCategoria.RootElement := 'sub_category';
    AdapterCategoria.Active := True;
  except
    On E:Exception do
    begin
      OutputDebugString(StringToOleStr(e.message));
      AdapterCategoria.Active := False;
    end;

  end;
end;

procedure TFrmOImpresso_Produtos.AbreGrupo;
begin
  try
    AdapterGrupo.RootElement := 'category';
    AdapterGrupo.Active := True;
  except
    On E:Exception do
    begin
      OutputDebugString(StringToOleStr(e.message));
      AdapterGrupo.Active := False;
    end;
  end;
end;

procedure TFrmOImpresso_Produtos.AbreLocalizacao;
begin
  try
    AdapterLocalizacao.RootElement := 'product_locations[0]';
    AdapterLocalizacao.Active := True;
  except
    On E:Exception do
    begin
      OutputDebugString(StringToOleStr(e.message));
      AdapterLocalizacao.Active := False;
    end;
  end;
end;

procedure TFrmOImpresso_Produtos.AbreMarca;
begin
  try
    AdapterMarca.RootElement := 'brand';
    AdapterMarca.Active := True;
  except
    On E:Exception do
    begin
      OutputDebugString(StringToOleStr(e.message));
      AdapterMarca.Active := False;
    end;
  end;
end;

procedure TFrmOImpresso_Produtos.AbreProductVariations(AIndex: integer);
begin
  AdapterProdVariations.RootElement := 'product_variations['+VarToStr(AIndex)+']';
  AdapterProdVariations.Active := True;
end;

procedure TFrmOImpresso_Produtos.AbreUnidade;
begin
  try
    AdapterUnidade.RootElement := 'unit';
    AdapterUnidade.Active := True;
  except
    On E:Exception do
    begin
      OutputDebugString(StringToOleStr(e.message));
      AdapterUnidade.Active := False;
    end;
  end;
end;

procedure TFrmOImpresso_Produtos.AbreVariations(AIndex: integer);
begin
  try
    AdapterVariations.RootElement := AdapterProdVariations.RootElement +
                                                       '.variations['+VarToStr(AIndex)+']';
    AdapterVariations.Active := True;
  except
    On E:Exception do
    begin
      OutputDebugString(StringToOleStr(e.message));
      AdapterVariations.Active := False;
    end;
  end;
end;

procedure TFrmOImpresso_Produtos.AbreVariationsLocation(AIndex: integer);
begin
//  if Assigned(MemTableVariations.FieldByName('variation_location_details')) then
  try
    AdapterVarLocDetails.RootElement := AdapterVariations.RootElement +
                                                            '.variation_location_details['+VarToStr(AIndex)+']';
    AdapterVarLocDetails.Active := True;
  except
    On E:Exception do
    begin
      OutputDebugString(StringToOleStr(e.message));
      AdapterVarLocDetails.Active := False;
    end;
  end;
end;

function TFrmOImpresso_Produtos.TrataCampos_PUTouPOST: TJSONObject;
begin

end;

initialization
  RegisterClass(TFrmOImpresso_Produtos);
  RegisterFrameCad(Tag_API_Oimpresso_Produtos, TFrmOImpresso_Produtos);

end.
