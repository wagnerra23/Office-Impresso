inherited ConsuLocal: TConsuLocal
  Caption = 'Local de Aplica'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      Left = 206
      Width = 1022
      ExplicitLeft = 206
      ExplicitWidth = 1022
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 433
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 32
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 179
        end
      end
    end
    inherited EdtPesquisa: TcxButtonEdit
      ExplicitWidth = 350
      Width = 350
    end
    inherited BtnPesquisar: TcxButton
      Left = 720
      ExplicitLeft = 720
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
    inherited GridSubGrid: TcxGrid
      Width = 205
      ExplicitWidth = 205
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 25
    end
    inherited pnlFlipRotate: TPanel
      Left = 1231
      Width = 38
      ExplicitLeft = 1231
      ExplicitWidth = 38
    end
    inherited btnDashBoard: TcxButton
      Left = 1189
      ExplicitLeft = 1189
    end
    inherited btnTabela: TcxButton
      Left = 1216
      ExplicitLeft = 1216
    end
    inherited btnNovoCadastro: TcxButton
      Left = 1126
      ExplicitLeft = 1126
    end
    inherited btnMenu: TcxButton
      Left = 1243
      ExplicitLeft = 1243
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Local de Aplica'#231#227'o'
      ExplicitWidth = 205
    end
    inherited edtRapidoData: TcxComboBox
      TabOrder = 9
    end
    inherited LiEdtPesquisa: TdxLayoutItem
      ControlOptions.OriginalWidth = 350
    end
    inherited GrupoCabecalhoBottom: TdxLayoutGroup
      Index = 0
    end
    inherited LiLbFiltosAtivos: TdxLayoutItem
      Index = 2
    end
    inherited LiGridSubGrid: TdxLayoutItem
      ControlOptions.OriginalWidth = 205
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 205
    end
    inherited LiedtRapidoData: TdxLayoutItem
      Index = 1
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
      ReportDocument.CreationDate = 42040.749291261570000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select *'
      'from LOCAL')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField [2]
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ConsultaATIVO: TStringField [3]
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
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
    FormClassCadastro = 'TFrmLocal'
    FormClassConsulta = 'TConsuLocal'
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'LOCAL'
    Modulo = 'PRODUCAO'
  end
  object pm32: TPopupMenu
    Left = 562
    Top = 196
  end
end
