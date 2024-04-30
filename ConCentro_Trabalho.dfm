inherited ConsuCentro_Trabalho: TConsuCentro_Trabalho
  Caption = 'Equipe'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      Left = 205
      Width = 1016
      ExplicitLeft = 205
      ExplicitWidth = 1016
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 405
        end
        object GridConsultaDBTableView1RESPONSAVEL: TcxGridDBColumn
          Caption = 'Respons'#225'vel'
          DataBinding.FieldName = 'RESPONSAVEL'
          Width = 277
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 36
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
      end
    end
    inherited EdtPesquisa: TcxButtonEdit
      ExplicitWidth = 343
      Width = 343
    end
    inherited BtnPesquisar: TcxButton
      Left = 730
      TabOrder = 25
      ExplicitLeft = 730
    end
    inherited BtnPaginaAnterior: TcxButton
      TabOrder = 21
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
    inherited cxButton2: TcxButton
      TabOrder = 24
    end
    inherited BtnGoogleMais: TcxButton
      TabOrder = 19
    end
    inherited GridSubGrid: TcxGrid
      Width = 204
      ExplicitWidth = 204
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 20
    end
    inherited pnlFlipRotate: TPanel
      Left = 1224
      Width = 38
      ExplicitLeft = 1224
      ExplicitWidth = 38
    end
    inherited btnDashBoard: TcxButton
      Left = 1182
      ExplicitLeft = 1182
    end
    inherited btnTabela: TcxButton
      Left = 1209
      ExplicitLeft = 1209
    end
    inherited btnNovoCadastro: TcxButton
      Left = 1119
      ExplicitLeft = 1119
    end
    inherited btnMenu: TcxButton
      Left = 1236
      ExplicitLeft = 1236
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Equipe'
      ExplicitWidth = 77
    end
    inherited edtRapidoData: TcxComboBox
      TabOrder = 9
    end
    inherited LiEdtPesquisa: TdxLayoutItem
      ControlOptions.OriginalWidth = 343
    end
    inherited GrupoCabecalhoBottom: TdxLayoutGroup
      Index = 0
    end
    inherited LiLbFiltosAtivos: TdxLayoutItem
      Index = 2
    end
    inherited LiGridSubGrid: TdxLayoutItem
      ControlOptions.OriginalWidth = 204
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 77
    end
    inherited LiedtRapidoData: TdxLayoutItem
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      ButtonOptions.Buttons = <>
      Index = -1
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 41943.435728136580000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      
        'select S.CODIGO, S.DESCRICAO, P.RAZAOSOCIAL as RESPONSAVEL, S.AT' +
        'IVO, S.DT_ALTERACAO'
      'from CENTRO_TRABALHO S'
      'left join PESSOAS P on (S.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO)')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object ConsultaRESPONSAVEL: TStringField [2]
      AutoGenerateValue = arDefault
      FieldName = 'RESPONSAVEL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object ConsultaATIVO: TStringField [3]
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField [4]
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
    FormClassCadastro = 'TFrmCentro_Trabalho'
    FormClassConsulta = 'TConsuCentro_Trabalho'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'CENTRO_TRABALHO'
    Modulo = 'PRODUCAO'
  end
end
