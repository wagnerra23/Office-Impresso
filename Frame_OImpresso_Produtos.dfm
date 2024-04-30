inherited FrmOImpresso_Produtos: TFrmOImpresso_Produtos
  inherited PnlHistorico_Seguidor: TPanel
    TabOrder = 2
  end
  inherited MainLayout: TdxLayoutControl
    inherited pnlPrincipal: TPanel
      inherited dxLayoutControl2: TdxLayoutControl
        inherited cxGrid2: TcxGrid
          Top = 201
          Height = 230
          TabOrder = 1
          ExplicitTop = 201
          ExplicitHeight = 230
          inherited cxGrid2DBTableView1: TcxGridDBTableView
            inherited cxGrid2DBTableView1ICONE: TcxGridDBColumn
              IsCaptionAssigned = True
            end
          end
        end
        object cxGrid1: TcxGrid [1]
          Left = 0
          Top = 0
          Width = 640
          Height = 200
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DataSource1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid1DBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
            end
            object cxGrid1DBTableView1business_id: TcxGridDBColumn
              DataBinding.FieldName = 'business_id'
            end
            object cxGrid1DBTableView1actual_name: TcxGridDBColumn
              DataBinding.FieldName = 'actual_name'
            end
            object cxGrid1DBTableView1short_name: TcxGridDBColumn
              DataBinding.FieldName = 'short_name'
            end
            object cxGrid1DBTableView1allow_decimal: TcxGridDBColumn
              DataBinding.FieldName = 'allow_decimal'
            end
            object cxGrid1DBTableView1base_unit_id: TcxGridDBColumn
              DataBinding.FieldName = 'base_unit_id'
            end
            object cxGrid1DBTableView1base_unit_multiplier: TcxGridDBColumn
              DataBinding.FieldName = 'base_unit_multiplier'
            end
            object cxGrid1DBTableView1created_by: TcxGridDBColumn
              DataBinding.FieldName = 'created_by'
            end
            object cxGrid1DBTableView1deleted_at: TcxGridDBColumn
              DataBinding.FieldName = 'deleted_at'
            end
            object cxGrid1DBTableView1created_at: TcxGridDBColumn
              DataBinding.FieldName = 'created_at'
            end
            object cxGrid1DBTableView1updated_at: TcxGridDBColumn
              DataBinding.FieldName = 'updated_at'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        inherited dxLayoutItem10: TdxLayoutItem
          Index = 1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'cxGrid1'
          CaptionOptions.Visible = False
          Control = cxGrid1
          ControlOptions.OriginalHeight = 200
          ControlOptions.OriginalWidth = 250
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited OImpresso_Log: TFDQuery
    SQL.Strings = (
      
        'select OL.*,U.LOGIN AS Usuario, p.descricao as Descricao,p.*  fr' +
        'om OIMPRESSO_LOG OL'
      'LEFT JOIN USUARIO U ON OL.CODUSUARIO = U.CODIGO'
      'LEFT JOIN PRODUTO P ON OL.CHAVE_PK2 = P.CODIGO'
      'WHERE OL.CODOIMPRESSO = :Codigo')
  end
  inherited Select_OImpresso: TFDQuery
    SQL.Strings = (
      'select * From PRODUTO'
      'where (OIMPRESSO_ATIVO = '#39'S'#39')AND(OIMPRESSO_DT_ALTERACAO is Null)')
  end
  inherited Select_Cadastro: TFDQuery
    SQL.Strings = (
      'select * from PRODUTO'
      'WHERE Codigo = :Chave_PK2')
    ParamData = <
      item
        Name = 'CHAVE_PK2'
        ParamType = ptInput
      end>
  end
  inherited RESTClient_CONECTAR: TRESTClient
    BaseURL = 'http://localhost:8000'
  end
  inherited RESTRequest_CONECTAR: TRESTRequest
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Authorization'
        Options = [poDoNotEncode]
        Value = 
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjgwYWZjOGI0M' +
          '2Y5M2Q4ZDY4OWQyMzk0M2IwYjY4ZjA5ODAwYzI3MTdhYjVlNTgxNjNlMWUzY2Y4Y' +
          'mU2N2FkZTgxYmRlYjAxMDE2ZDVlYjNmIn0.eyJhdWQiOiIzIiwianRpIjoiODBhZ' +
          'mM4YjQzZjkzZDhkNjg5ZDIzOTQzYjBiNjhmMDk4MDBjMjcxN2FiNWU1ODE2M2UxZ' +
          'TNjZjhiZTY3YWRlODFiZGViMDEwMTZkNWViM2YiLCJpYXQiOjE2NzM0Mzc4NjUsI' +
          'm5iZiI6MTY3MzQzNzg2NSwiZXhwIjoxNzA0OTczODY1LCJzdWIiOiIxIiwic2Nvc' +
          'GVzIjpbXX0.GEslzycGSCI2aqN_KJ_-wEOmyrA4egnfxiBVBjhVmQV9MQfFwB7bD' +
          'Mk4DU6qf27Gwc57iS2bUDsjq09nz25yPVAUDFGPTFZiA7jRwGbjkc-TSrt6Ya6x4' +
          'H_E1sVUrfcvXtNkZ1p1HLrX5NFzKelsdbhNN89V-zVSUUu5wkiBrj1V5ADgPTyUi' +
          'JGuQARNoSS612ShSS6ardOfOwmuhloqigOavWXAJEyjB9AK9CLrgg8TdAIpbUj0G' +
          '0358BwNdNQ5oIN6k1Iq7x5Zw4sGcEf1-RYwoNS61HEdS4b3QmTCuCLEZh7IZ36gK' +
          '6Ps9tOEs5n3JZ6PNGaBzhzksRWug_QhJg5zH1h58YwMI7P-VzApM4tTfWwU6mKL5' +
          'bKxMdVSnKT3ZFMdQYINLqlOgW7Z2cqWl9xRlbcuikmTEjlYRU7d_xxkcVCbure7v' +
          'mKuiydljPDDuG3DeuMHOp4x3KIghAU10ahqMu99-nKkoCIFZ5foiYLphYQWVnbEq' +
          'XZURYicGZxNBFgVwrSy81zaUt089NNCq360iLj6OSo-OAW53213uBvm0K1XxueCx' +
          'azllGlt21uhZPut8q37reZmI85OQtgD3K79wHSzyB-K1CKOPUxkQcnz-N08NZAQ7' +
          '6SXSk9NPMs_lbKsX7mmQTID5gHNSqfbi3RD4VrQdszVojNisv8ciZg'
      end
      item
        Kind = pkHTTPHEADER
        Name = 'Accept'
        Options = [poDoNotEncode]
        Value = 'application/json'
      end
      item
        Kind = pkHTTPHEADER
        Name = 'Content-Type'
        Options = [poDoNotEncode]
        Value = 'application/json'
      end>
    Resource = 'connector/api/product'
  end
  inherited RESTResponseDataSetAdapter_CONECTAR: TRESTResponseDataSetAdapter
    Active = True
  end
  inherited MemTabela: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftFloat
      end
      item
        Name = 'name'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'business_id'
        DataType = ftFloat
      end
      item
        Name = 'type'
        DataType = ftWideString
        Size = 6
      end
      item
        Name = 'sub_unit_ids'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'enable_stock'
        DataType = ftFloat
      end
      item
        Name = 'alert_quantity'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'sku'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'barcode_type'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'expiry_period'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'expiry_period_type'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'enable_sr_no'
        DataType = ftFloat
      end
      item
        Name = 'weight'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field1'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field2'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field3'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field4'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'image'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'woocommerce_media_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_description'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'created_by'
        DataType = ftFloat
      end
      item
        Name = 'woocommerce_product_id'
        DataType = ftFloat
      end
      item
        Name = 'woocommerce_disable_sync'
        DataType = ftFloat
      end
      item
        Name = 'warranty_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'is_inactive'
        DataType = ftFloat
      end
      item
        Name = 'repair_model_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'not_for_selling'
        DataType = ftFloat
      end
      item
        Name = 'perc_icms'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'perc_pis'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'perc_cofins'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'perc_ipi'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'cfop_interno'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'cfop_externo'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'cst_csosn'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'cst_pis'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'cst_cofins'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'cst_ipi'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'ncm'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'cest'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'image_url'
        DataType = ftWideString
        Size = 37
      end
      item
        Name = 'product_variations'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'brand'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.id'
        DataType = ftFloat
      end
      item
        Name = 'unit.business_id'
        DataType = ftFloat
      end
      item
        Name = 'unit.actual_name'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'unit.short_name'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'unit.allow_decimal'
        DataType = ftFloat
      end
      item
        Name = 'unit.base_unit_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.base_unit_multiplier'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.created_by'
        DataType = ftFloat
      end
      item
        Name = 'unit.deleted_at'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.created_at'
        DataType = ftWideString
        Size = 19
      end
      item
        Name = 'unit.updated_at'
        DataType = ftWideString
        Size = 19
      end
      item
        Name = 'category'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'sub_category'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_tax'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_locations'
        DataType = ftWideString
        Size = 2000
      end>
    Left = 488
    Top = 334
  end
  inherited UCHist_Select_Cadastro: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = 'CODIGO'
    Tabela = 'PRODUTO'
    Modulo = 'PRODUTO'
  end
  inherited WREventosCadastro_Mestre: TWREventosCadastro
    FormClassCadastro = 'TFrmProduto_ProdutoSimples_Frame'
    AcaoTabelaAtiva = 'PRODUTO'
  end
  inherited MemBackup: TFDMemTable
    Left = 516
    Top = 334
  end
  inherited ImageSetinhas16x16: TcxImageList
    FormatVersion = 1
  end
  object AdapterProdVariations: TRESTResponseDataSetAdapter
    Active = True
    Dataset = MemTableProdVariations
    FieldDefs = <>
    Response = RESTResponse_CONECTAR
    TypesMode = JSONOnly
    NestedElements = True
    StringFieldSize = 2000
    Left = 460
    Top = 362
  end
  object AdapterVariations: TRESTResponseDataSetAdapter
    Active = True
    Dataset = MemTableVariations
    FieldDefs = <>
    Response = RESTResponse_CONECTAR
    TypesMode = JSONOnly
    NestedElements = True
    StringFieldSize = 2000
    Left = 460
    Top = 390
  end
  object AdapterVarLocDetails: TRESTResponseDataSetAdapter
    Active = True
    Dataset = MemTableVarLocDetails
    FieldDefs = <>
    Response = RESTResponse_CONECTAR
    TypesMode = JSONOnly
    NestedElements = True
    StringFieldSize = 2000
    Left = 460
    Top = 418
  end
  object MemTableProdVariations: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftFloat
      end
      item
        Name = 'name'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'business_id'
        DataType = ftFloat
      end
      item
        Name = 'type'
        DataType = ftWideString
        Size = 6
      end
      item
        Name = 'sub_unit_ids'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'enable_stock'
        DataType = ftFloat
      end
      item
        Name = 'alert_quantity'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'sku'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'barcode_type'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'expiry_period'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'expiry_period_type'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'enable_sr_no'
        DataType = ftFloat
      end
      item
        Name = 'weight'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field1'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field2'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field3'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field4'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'image'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'woocommerce_media_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_description'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'created_by'
        DataType = ftFloat
      end
      item
        Name = 'woocommerce_product_id'
        DataType = ftFloat
      end
      item
        Name = 'woocommerce_disable_sync'
        DataType = ftFloat
      end
      item
        Name = 'warranty_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'is_inactive'
        DataType = ftFloat
      end
      item
        Name = 'repair_model_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'not_for_selling'
        DataType = ftFloat
      end
      item
        Name = 'perc_icms'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'perc_pis'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'perc_cofins'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'perc_ipi'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'cfop_interno'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'cfop_externo'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'cst_csosn'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'cst_pis'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'cst_cofins'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'cst_ipi'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'ncm'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'cest'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'image_url'
        DataType = ftWideString
        Size = 37
      end
      item
        Name = 'product_variations'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'brand'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.id'
        DataType = ftFloat
      end
      item
        Name = 'unit.business_id'
        DataType = ftFloat
      end
      item
        Name = 'unit.actual_name'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'unit.short_name'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'unit.allow_decimal'
        DataType = ftFloat
      end
      item
        Name = 'unit.base_unit_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.base_unit_multiplier'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.created_by'
        DataType = ftFloat
      end
      item
        Name = 'unit.deleted_at'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.created_at'
        DataType = ftWideString
        Size = 19
      end
      item
        Name = 'unit.updated_at'
        DataType = ftWideString
        Size = 19
      end
      item
        Name = 'category'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'sub_category'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_tax'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_locations'
        DataType = ftWideString
        Size = 2000
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvFmtDisplayDateTime, fvFmtDisplayDate, fvFmtDisplayTime]
    FormatOptions.FmtDisplayDateTime = 'yyyy-mm-dd hh:nn:ss'
    FormatOptions.FmtDisplayDate = 'yyyy-mm-dd'
    FormatOptions.FmtDisplayTime = 'hh:nn:ss'
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvUpdateNonBaseFields]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 488
    Top = 362
  end
  object MemTableVariations: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftFloat
      end
      item
        Name = 'name'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'business_id'
        DataType = ftFloat
      end
      item
        Name = 'type'
        DataType = ftWideString
        Size = 6
      end
      item
        Name = 'sub_unit_ids'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'enable_stock'
        DataType = ftFloat
      end
      item
        Name = 'alert_quantity'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'sku'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'barcode_type'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'expiry_period'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'expiry_period_type'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'enable_sr_no'
        DataType = ftFloat
      end
      item
        Name = 'weight'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field1'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field2'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field3'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field4'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'image'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'woocommerce_media_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_description'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'created_by'
        DataType = ftFloat
      end
      item
        Name = 'woocommerce_product_id'
        DataType = ftFloat
      end
      item
        Name = 'woocommerce_disable_sync'
        DataType = ftFloat
      end
      item
        Name = 'warranty_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'is_inactive'
        DataType = ftFloat
      end
      item
        Name = 'repair_model_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'not_for_selling'
        DataType = ftFloat
      end
      item
        Name = 'perc_icms'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'perc_pis'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'perc_cofins'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'perc_ipi'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'cfop_interno'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'cfop_externo'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'cst_csosn'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'cst_pis'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'cst_cofins'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'cst_ipi'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'ncm'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'cest'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'image_url'
        DataType = ftWideString
        Size = 37
      end
      item
        Name = 'product_variations'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'brand'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.id'
        DataType = ftFloat
      end
      item
        Name = 'unit.business_id'
        DataType = ftFloat
      end
      item
        Name = 'unit.actual_name'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'unit.short_name'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'unit.allow_decimal'
        DataType = ftFloat
      end
      item
        Name = 'unit.base_unit_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.base_unit_multiplier'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.created_by'
        DataType = ftFloat
      end
      item
        Name = 'unit.deleted_at'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.created_at'
        DataType = ftWideString
        Size = 19
      end
      item
        Name = 'unit.updated_at'
        DataType = ftWideString
        Size = 19
      end
      item
        Name = 'category'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'sub_category'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_tax'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_locations'
        DataType = ftWideString
        Size = 2000
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvFmtDisplayDateTime, fvFmtDisplayDate, fvFmtDisplayTime]
    FormatOptions.FmtDisplayDateTime = 'yyyy-mm-dd hh:nn:ss'
    FormatOptions.FmtDisplayDate = 'yyyy-mm-dd'
    FormatOptions.FmtDisplayTime = 'hh:nn:ss'
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvUpdateNonBaseFields]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 488
    Top = 390
  end
  object MemTableVarLocDetails: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftFloat
      end
      item
        Name = 'name'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'business_id'
        DataType = ftFloat
      end
      item
        Name = 'type'
        DataType = ftWideString
        Size = 6
      end
      item
        Name = 'sub_unit_ids'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'enable_stock'
        DataType = ftFloat
      end
      item
        Name = 'alert_quantity'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'sku'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'barcode_type'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'expiry_period'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'expiry_period_type'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'enable_sr_no'
        DataType = ftFloat
      end
      item
        Name = 'weight'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field1'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field2'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field3'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_custom_field4'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'image'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'woocommerce_media_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_description'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'created_by'
        DataType = ftFloat
      end
      item
        Name = 'woocommerce_product_id'
        DataType = ftFloat
      end
      item
        Name = 'woocommerce_disable_sync'
        DataType = ftFloat
      end
      item
        Name = 'warranty_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'is_inactive'
        DataType = ftFloat
      end
      item
        Name = 'repair_model_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'not_for_selling'
        DataType = ftFloat
      end
      item
        Name = 'perc_icms'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'perc_pis'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'perc_cofins'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'perc_ipi'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'cfop_interno'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'cfop_externo'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'cst_csosn'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'cst_pis'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'cst_cofins'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'cst_ipi'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'ncm'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'cest'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'image_url'
        DataType = ftWideString
        Size = 37
      end
      item
        Name = 'product_variations'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'brand'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.id'
        DataType = ftFloat
      end
      item
        Name = 'unit.business_id'
        DataType = ftFloat
      end
      item
        Name = 'unit.actual_name'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'unit.short_name'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'unit.allow_decimal'
        DataType = ftFloat
      end
      item
        Name = 'unit.base_unit_id'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.base_unit_multiplier'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.created_by'
        DataType = ftFloat
      end
      item
        Name = 'unit.deleted_at'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'unit.created_at'
        DataType = ftWideString
        Size = 19
      end
      item
        Name = 'unit.updated_at'
        DataType = ftWideString
        Size = 19
      end
      item
        Name = 'category'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'sub_category'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_tax'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'product_locations'
        DataType = ftWideString
        Size = 2000
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvFmtDisplayDateTime, fvFmtDisplayDate, fvFmtDisplayTime]
    FormatOptions.FmtDisplayDateTime = 'yyyy-mm-dd hh:nn:ss'
    FormatOptions.FmtDisplayDate = 'yyyy-mm-dd'
    FormatOptions.FmtDisplayTime = 'hh:nn:ss'
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvUpdateNonBaseFields]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 488
    Top = 418
  end
  object AdapterMarca: TRESTResponseDataSetAdapter
    Dataset = MemTableMarca
    FieldDefs = <>
    Response = RESTResponse_CONECTAR
    TypesMode = JSONOnly
    NestedElements = True
    StringFieldSize = 2000
    Left = 564
    Top = 334
  end
  object AdapterGrupo: TRESTResponseDataSetAdapter
    Dataset = MemTableGrupo
    FieldDefs = <>
    Response = RESTResponse_CONECTAR
    TypesMode = JSONOnly
    NestedElements = True
    StringFieldSize = 2000
    Left = 564
    Top = 362
  end
  object AdapterCategoria: TRESTResponseDataSetAdapter
    Dataset = MemTableCategoria
    FieldDefs = <>
    Response = RESTResponse_CONECTAR
    TypesMode = JSONOnly
    NestedElements = True
    StringFieldSize = 2000
    Left = 564
    Top = 390
  end
  object AdapterLocalizacao: TRESTResponseDataSetAdapter
    Dataset = MemTableLocalizacao
    FieldDefs = <>
    Response = RESTResponse_CONECTAR
    TypesMode = JSONOnly
    NestedElements = True
    StringFieldSize = 2000
    Left = 564
    Top = 418
  end
  object MemTableMarca: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvFmtDisplayDateTime, fvFmtDisplayDate, fvFmtDisplayTime]
    FormatOptions.FmtDisplayDateTime = 'yyyy-mm-dd hh:nn:ss'
    FormatOptions.FmtDisplayDate = 'yyyy-mm-dd'
    FormatOptions.FmtDisplayTime = 'hh:nn:ss'
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvUpdateNonBaseFields]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 592
    Top = 334
  end
  object MemTableGrupo: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvFmtDisplayDateTime, fvFmtDisplayDate, fvFmtDisplayTime]
    FormatOptions.FmtDisplayDateTime = 'yyyy-mm-dd hh:nn:ss'
    FormatOptions.FmtDisplayDate = 'yyyy-mm-dd'
    FormatOptions.FmtDisplayTime = 'hh:nn:ss'
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvUpdateNonBaseFields]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 592
    Top = 362
  end
  object MemTableCategoria: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvFmtDisplayDateTime, fvFmtDisplayDate, fvFmtDisplayTime]
    FormatOptions.FmtDisplayDateTime = 'yyyy-mm-dd hh:nn:ss'
    FormatOptions.FmtDisplayDate = 'yyyy-mm-dd'
    FormatOptions.FmtDisplayTime = 'hh:nn:ss'
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvUpdateNonBaseFields]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 592
    Top = 390
  end
  object MemTableLocalizacao: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvFmtDisplayDateTime, fvFmtDisplayDate, fvFmtDisplayTime]
    FormatOptions.FmtDisplayDateTime = 'yyyy-mm-dd hh:nn:ss'
    FormatOptions.FmtDisplayDate = 'yyyy-mm-dd'
    FormatOptions.FmtDisplayTime = 'hh:nn:ss'
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvUpdateNonBaseFields]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 592
    Top = 418
  end
  object AdapterUnidade: TRESTResponseDataSetAdapter
    Dataset = MemTableUnidade
    FieldDefs = <>
    Response = RESTResponse_CONECTAR
    TypesMode = JSONOnly
    NestedElements = True
    StringFieldSize = 2000
    Left = 564
    Top = 446
  end
  object MemTableUnidade: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvFmtDisplayDateTime, fvFmtDisplayDate, fvFmtDisplayTime]
    FormatOptions.FmtDisplayDateTime = 'yyyy-mm-dd hh:nn:ss'
    FormatOptions.FmtDisplayDate = 'yyyy-mm-dd'
    FormatOptions.FmtDisplayTime = 'hh:nn:ss'
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvUpdateNonBaseFields]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 592
    Top = 446
  end
  object Select_Grupo: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = Transa_Cadastro
    SQL.Strings = (
      'select * from PRODUTO_GRUPO'
      'WHERE OIMPRESSO_CODIGO = :Codigo')
    Left = 214
    Top = 394
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object UCHist_Grupo: TUCHist_DataSet
    DataSet = Select_Grupo
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    DS = DSGrupo
    Tabela = 'PRODUTO_GRUPO'
    Modulo = 'PRODUTO'
    Left = 274
    Top = 394
  end
  object Select_Categoria: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = Transa_Cadastro
    SQL.Strings = (
      'select * from PRODUTO_CATEGORIA'
      'WHERE OIMPRESSO_CODIGO = :Codigo')
    Left = 214
    Top = 422
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object UCHist_Categoria: TUCHist_DataSet
    DataSet = Select_Categoria
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    DS = DSCategoria
    Tabela = 'PRODUTO_CATEGORIA'
    Modulo = 'PRODUTO'
    Left = 274
    Top = 422
  end
  object Select_Unidade: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = Transa_Cadastro
    SQL.Strings = (
      'select * from UNIDADE'
      'WHERE OIMPRESSO_CODIGO = :Codigo')
    Left = 214
    Top = 450
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object UCHist_Unidade: TUCHist_DataSet
    DataSet = Select_Unidade
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    DS = DSUnidade
    Tabela = 'UNIDADE'
    Modulo = 'UNIDADE'
    Left = 274
    Top = 450
  end
  object Select_Marca: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = Transa_Cadastro
    SQL.Strings = (
      'select * from PRODUTO_MARCA'
      'WHERE OIMPRESSO_CODIGO = :Codigo')
    Left = 214
    Top = 478
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object UCHist_Marca: TUCHist_DataSet
    DataSet = Select_Marca
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    DS = DSMarca
    Tabela = 'PRODUTO_MARCA'
    Modulo = 'PRODUTO'
    Left = 274
    Top = 478
  end
  object Select_Estoque: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = Transa_Cadastro
    SQL.Strings = (
      'select * from PRODUTO_ESTOQUE'
      'WHERE CODPRODUTO = :Codigo')
    Left = 214
    Top = 506
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object UCHist_Estoque: TUCHist_DataSet
    DataSet = Select_Estoque
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    DS = DSEstoque
    Tabela = 'PRODUTO_ESTOQUE'
    Modulo = 'ESTOQUE'
    Left = 274
    Top = 506
  end
  object WREventosCadastro_Grupo: TWREventosCadastro
    Versao_Configuracao = 2
    Transacao = Transa_Cadastro
    Empresa = 0
    FormClassCadastro = 'TFrmProduto_Grupo'
    FormClassConsulta = 'TConsuWeb_Service'
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    UsaTravaCadastroPocket = False
    AcaoTabelaAtiva = 'PRODUTO_GRUPO'
    Left = 302
    Top = 394
  end
  object WREventosCadastro_Categoria: TWREventosCadastro
    Versao_Configuracao = 2
    Transacao = Transa_Cadastro
    Empresa = 0
    FormClassCadastro = 'TFrmProduto_Categoria'
    FormClassConsulta = 'TConsuWeb_Service'
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    UsaTravaCadastroPocket = False
    AcaoTabelaAtiva = 'PRODUTO_CATEGORIA'
    Left = 302
    Top = 422
  end
  object WREventosCadastro_Unidade: TWREventosCadastro
    Versao_Configuracao = 2
    Transacao = Transa_Cadastro
    Empresa = 0
    FormClassCadastro = 'TFrmUnidade'
    FormClassConsulta = 'TConsuWeb_Service'
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    UsaTravaCadastroPocket = False
    AcaoTabelaAtiva = 'PRODUTO_UNIDADE'
    Left = 302
    Top = 450
  end
  object WREventosCadastro_Marca: TWREventosCadastro
    Versao_Configuracao = 2
    Transacao = Transa_Cadastro
    Empresa = 0
    FormClassCadastro = 'TFrmProduto_Marca'
    FormClassConsulta = 'TConsuWeb_Service'
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    UsaTravaCadastroPocket = False
    AcaoTabelaAtiva = 'PRODUTO_MARCA'
    Left = 302
    Top = 478
  end
  object WREventosCadastroEstoque: TWREventosCadastro
    Versao_Configuracao = 2
    Transacao = Transa_Cadastro
    Empresa = 0
    FormClassCadastro = 'TFrmProduto_Estoque_Local'
    FormClassConsulta = 'TConsuWeb_Service'
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    UsaTravaCadastroPocket = False
    AcaoTabelaAtiva = 'PRODUTO_ESTOQUE'
    Left = 302
    Top = 506
  end
  object DSGrupo: TDataSource
    DataSet = Select_Grupo
    Left = 242
    Top = 394
  end
  object DSCategoria: TDataSource
    DataSet = Select_Categoria
    Left = 242
    Top = 422
  end
  object DSUnidade: TDataSource
    DataSet = Select_Unidade
    Left = 242
    Top = 450
  end
  object DSEstoque: TDataSource
    DataSet = Select_Estoque
    Left = 242
    Top = 506
  end
  object DSMarca: TDataSource
    DataSet = Select_Marca
    Left = 242
    Top = 478
  end
  object DataSource1: TDataSource
    Left = 574
    Top = 171
  end
end
