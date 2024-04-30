inherited FrmOImpresso_Pessoas: TFrmOImpresso_Pessoas
  inherited MainLayout: TdxLayoutControl
    inherited edtCodigo: TcxDBTextEdit
      TabOrder = 0
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      TabOrder = 1
    end
    inherited PnlFrameHistorico: TPanel
      Height = 433
      ExplicitHeight = 433
    end
    inherited pnlPrincipal: TPanel
      Height = 433
      ExplicitHeight = 433
      inherited dxLayoutControl2: TdxLayoutControl
        Height = 433
        ExplicitHeight = 433
        inherited cxGrid2: TcxGrid
          Height = 433
          ExplicitHeight = 433
          inherited cxGrid2DBTableView1: TcxGridDBTableView
            OnCellClick = cxGrid2DBTableView1CellClick
            inherited cxGrid2DBTableView1ICONE: TcxGridDBColumn
              Width = 21
              IsCaptionAssigned = True
            end
            inherited cxGrid2DBTableView1CHAVE_PK1: TcxGridDBColumn [2]
              Caption = 'C'#243'digo 1'
              Width = 63
            end
            inherited cxGrid2DBTableView1CHAVE_PK2: TcxGridDBColumn [3]
              Caption = 'C'#243'digo 2'
              Width = 61
            end
            inherited cxGrid2DBTableView1CHAVE_PK3: TcxGridDBColumn [4]
              Caption = 'C'#243'digo 3'
            end
            inherited cxGrid2DBTableView1DATA: TcxGridDBColumn [5]
              Visible = False
              Width = 126
            end
            object cxGrid2DBTableView1DESCRICAO: TcxGridDBColumn [6]
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              Width = 280
            end
            inherited cxGrid2DBTableView1TABELA: TcxGridDBColumn [7]
            end
            inherited cxGrid2DBTableView1EVENTO: TcxGridDBColumn [8]
              Width = 98
            end
            object cxGrid2DBTableView1USUARIO: TcxGridDBColumn [9]
              Caption = 'Usu'#225'rio'
              DataBinding.FieldName = 'USUARIO'
              Width = 117
            end
            inherited cxGrid2DBTableView1OBS: TcxGridDBColumn [10]
              Properties.AutoSelect = True
            end
            inherited cxGrid2DBTableView1ATIVO: TcxGridDBColumn [11]
            end
            inherited cxGrid2DBTableView1DT_ALTERACAO: TcxGridDBColumn [12]
            end
            inherited cxGrid2DBTableView1DT_FECHAMENTO: TcxGridDBColumn [13]
            end
            inherited cxGrid2DBTableView1CODUSUARIO: TcxGridDBColumn [14]
              Visible = False
            end
          end
        end
        inherited dxLayoutItem10: TdxLayoutItem
          ControlOptions.OriginalHeight = 264
        end
      end
    end
    inherited edtArquivo: TcxDBMemo
      ExplicitHeight = 401
      Height = 401
    end
    inherited cxDBMemo2: TcxDBMemo
      DataBinding.DataSource = DS
    end
    inherited LiedtCodigo: TdxLayoutItem
      Index = 0
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 1
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignVert = avBottom
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      Index = -1
    end
    inherited dxLayoutItem6: TdxLayoutItem
      Index = 3
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
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 4
    Left = 358
    Top = 217
  end
  inherited Cadastro: TFDQuery
    Top = 217
  end
  inherited OImpresso_Log: TFDQuery
    SQL.Strings = (
      
        'select OL.*,U.LOGIN AS Usuario, p.razaosocial as Descricao,p.*  ' +
        'from OIMPRESSO_LOG OL'
      'LEFT JOIN USUARIO U ON OL.CODUSUARIO = U.CODIGO'
      'LEFT JOIN PESSOAS P ON OL.CHAVE_PK2 = P.CODIGO'
      'WHERE OL.CODOIMPRESSO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object OImpresso_LogDESCRICAO: TStringField [14]
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 150
    end
  end
  inherited Select_OImpresso: TFDQuery
    SQL.Strings = (
      'select * From Pessoas'
      'where (OIMPRESSO_ATIVO = '#39'S'#39')AND(OIMPRESSO_DT_ALTERACAO is Null)')
  end
  inherited UCHist_OImpresso_Log: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = 'CODIGO'
  end
  inherited Select_Cadastro: TFDQuery
    MasterSource = DSOImpresso_Log
    MasterFields = 'CHAVE_PK2'
    SQL.Strings = (
      'select * from PESSOAS'
      'WHERE Codigo = :Chave_PK2')
    ParamData = <
      item
        Name = 'CHAVE_PK2'
        DataType = ftString
        ParamType = ptInput
        Size = 40
        Value = Null
      end>
  end
  inherited UCHist_Select_Cadastro: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = 'CODIGO'
    Tabela = 'PESSOAS'
    Top = 329
  end
  inherited WREventosCadastro_Mestre: TWREventosCadastro
    FormClassCadastro = 'TFrame_Pessoas_Cliente'
    AcaoTabelaAtiva = 'PESSOAS'
  end
  inherited Transa_Cadastro: TFDTransaction
    Left = 217
    Top = 332
  end
  inherited ImageSetinhas16x16: TcxImageList
    FormatVersion = 1
  end
  object PessoasOffice: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select * from pessoas'
      
        'where OIMPRESSO_DT_ALTERACAO is null and OIMPRESSO_CODIGO is nul' +
        'l')
    Left = 390
    Top = 365
  end
  object DSPessoasOfficePost: TDataSource
    Left = 422
    Top = 365
  end
  object UCHistPessoas: TUCHist_DataSet
    DataSet = PessoasOffice
    CampoPK2 = 'CODIGO'
    DS = DSPessoasOfficePost
    Tabela = 'PESSOAS'
    Left = 450
    Top = 365
  end
  object Select_Cidade: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'Select * From Cidades'
      'where Codigo = :Codigo')
    Left = 246
    Top = 358
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Select_CidadeOIMPRESSO_CODIGO: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'OIMPRESSO_CODIGO'
      Origin = 'OIMPRESSO_CODIGO'
    end
    object Select_CidadeDESCRICAO: TStringField
      DisplayLabel = 'nome'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object Select_CidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Select_CidadeUF: TStringField
      DisplayLabel = 'uf'
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object Select_CidadeDT_ALTERACAO: TSQLTimeStampField
      DisplayLabel = 'created_at'
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object Select_CidadeOIMPRESSO_DT_ALTERACAO: TSQLTimeStampField
      DisplayLabel = 'updated_at'
      FieldName = 'OIMPRESSO_DT_ALTERACAO'
      Origin = 'OIMPRESSO_DT_ALTERACAO'
    end
    object Select_CidadeOIMPRESSO_ATIVO: TStringField
      Tag = 99
      FieldName = 'OIMPRESSO_ATIVO'
      Origin = 'OIMPRESSO_ATIVO'
      Size = 1
    end
  end
  object DSSelect_Cidade: TDataSource
    DataSet = Select_Cadastro
    Left = 274
    Top = 359
  end
end
