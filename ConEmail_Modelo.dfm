inherited ConsuEmail_Modelo: TConsuEmail_Modelo
  Caption = 'Modelo de Email'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 368
        end
        object GridConsultaDBTableView1FORM: TcxGridDBColumn
          Caption = 'Tela'
          DataBinding.FieldName = 'FORM'
          Width = 170
        end
        object GridConsultaDBTableView1ASSUNTO: TcxGridDBColumn
          Caption = 'Assunto'
          DataBinding.FieldName = 'ASSUNTO'
          Width = 362
        end
        object GridConsultaDBTableView1PADRAO: TcxGridDBColumn
          Caption = 'Padr'#227'o'
          DataBinding.FieldName = 'PADRAO'
          Width = 48
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 20
        end
        object GridConsultaDBTableView1MODELO: TcxGridDBColumn
          DataBinding.FieldName = 'MODELO'
          PropertiesClassName = 'TcxRichEditProperties'
          Width = 515
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
      end
    end
    inherited LbFiltosAtivos: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa1: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa2: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa3: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa4: TcxLabel
      AnchorY = 53
    end
    inherited BtnProximaPagina: TcxButton
      TabOrder = 26
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 27
    end
    inherited btnKanbam: TcxButton
      TabOrder = 25
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Modelo de Email'
      ExplicitWidth = 186
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 186
    end
  end
  inherited pnlFiltroData: TPanel
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 43378.595269178230000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select *'
      'from EMAIL_MODELO')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 600
    end
    object ConsultaMODELO: TMemoField [2]
      FieldName = 'MODELO'
      Origin = 'MODELO'
      BlobType = ftMemo
    end
    object ConsultaFORM: TStringField [3]
      FieldName = 'FORM'
      Origin = 'FORM'
      Size = 40
    end
    object ConsultaPADRAO: TStringField [4]
      FieldName = 'PADRAO'
      Origin = 'PADRAO'
      Size = 1
    end
    object ConsultaASSUNTO: TStringField [5]
      FieldName = 'ASSUNTO'
      Origin = 'ASSUNTO'
      Size = 150
    end
    object ConsultaATIVO: TStringField [6]
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField [7]
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited cxEditStyleController1: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited dxScreenTipRepository1: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited RespositorioEstilos: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited ActListConsulta: TActionList
    object ActFiltroForm: TAction
      Category = 'Filtros'
      AutoCheck = True
      Caption = 'Modelos da tela atual'
      Checked = True
    end
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmEmail_Modelo'
    FormClassConsulta = 'TConsuEmail_Modelo'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'EMAIL_MODELO'
    Modulo = 'CRM'
  end
end
