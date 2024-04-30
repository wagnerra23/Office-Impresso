inherited ConsuMensalidade: TConsuMensalidade
  Caption = 'Mensalidade'
  ClientWidth = 1211
  ExplicitWidth = 1227
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1211
    ExplicitWidth = 1016
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Width = 45
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 439
        end
        object GridConsultaDBTableView1MES: TcxGridDBColumn
          Caption = 'M'#234's de Refer'#234'ncia'
          DataBinding.FieldName = 'MES'
          SortIndex = 0
          SortOrder = soDescending
          Width = 102
        end
        object GridConsultaDBTableView1DT_FINANCEIRO: TcxGridDBColumn
          Caption = 'Dt. Financeiro'
          DataBinding.FieldName = 'DT_FINANCEIRO'
          Width = 110
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 34
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 155
        end
      end
    end
    inherited BtnPaginaAnterior: TcxButton
      Left = 472
      Top = 556
      TabOrder = 23
      ExplicitLeft = 472
      ExplicitTop = 556
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
      Left = 663
      Top = 556
      ExplicitLeft = 663
      ExplicitTop = 556
    end
    inherited LbTotalRegistros: TcxLabel
      Left = 578
      Top = 559
      ExplicitLeft = 578
      ExplicitTop = 559
    end
    inherited LbNumeroRegistrosPagina: TcxLabel
      Left = 613
      Top = 559
      ExplicitLeft = 613
      ExplicitTop = 559
    end
    inherited cxButton2: TcxButton
      Left = 769
      Top = 556
      TabOrder = 25
      ExplicitLeft = 769
      ExplicitTop = 556
    end
    inherited BtnGoogleMais: TcxButton
      Left = 796
      Top = 556
      TabOrder = 20
      ExplicitLeft = 796
      ExplicitTop = 556
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 21
    end
    inherited btnKanbam: TcxButton
      Left = 1000
      ExplicitLeft = 1000
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Mensalidade'
      ExplicitWidth = 142
    end
    inherited edtRapidoData: TcxComboBox
      TabOrder = 9
    end
    inherited GrupoCabecalhoBottom: TdxLayoutGroup
      Index = 0
    end
    inherited LiLbFiltosAtivos: TdxLayoutItem
      Index = 2
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 142
    end
    inherited LiedtRapidoData: TdxLayoutItem
      Index = 1
    end
  end
  inherited dxStatusBar1: TdxRibbonStatusBar
    Width = 1211
    ExplicitWidth = 1016
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
      ReportDocument.CreationDate = 42621.647276840270000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      
        'select CODIGO, DESCRICAO, MES, DT_FINANCEIRO, ATIVO, DT_ALTERACA' +
        'O'
      'from MENSALIDADE')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object ConsultaMES: TDateField [2]
      FieldName = 'MES'
      Origin = 'MES'
    end
    object ConsultaDT_FINANCEIRO: TSQLTimeStampField [3]
      FieldName = 'DT_FINANCEIRO'
      Origin = 'DT_FINANCEIRO'
    end
    object ConsultaATIVO: TStringField [4]
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField [5]
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
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmMensalidade'
    FormClassConsulta = 'TConsuMensalidade'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'MENSALIDADE'
    Modulo = 'FINANCEIRO'
  end
end
