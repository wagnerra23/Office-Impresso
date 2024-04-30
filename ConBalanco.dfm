inherited ConsuBalanco: TConsuBalanco
  Caption = 'Balan'#231'o Patrimonial'
  ClientHeight = 492
  ClientWidth = 878
  ExplicitTop = -5
  ExplicitWidth = 894
  ExplicitHeight = 531
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 878
    Height = 473
    ExplicitWidth = 878
    ExplicitHeight = 473
    inherited GridConsulta: TcxGrid
      Left = 205
      Width = 1016
      Height = 392
      ExplicitLeft = 205
      ExplicitWidth = 1016
      ExplicitHeight = 392
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = DS
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1Column1: TcxGridDBColumn
          Caption = 'Descric'#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 140
        end
        object GridConsultaDBTableView1DATA: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DATA'
        end
      end
    end
    inherited EdtPesquisa: TcxButtonEdit
      ExplicitWidth = 343
      Width = 343
    end
    inherited BtnPesquisar: TcxButton
      Left = 780
      ExplicitLeft = 780
    end
    inherited BtnPaginaAnterior: TcxButton
      Top = 431
      ExplicitTop = 431
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
      Top = 431
      ExplicitTop = 431
    end
    inherited LbTotalRegistros: TcxLabel
      Top = 434
      ExplicitTop = 434
    end
    inherited LbNumeroRegistrosPagina: TcxLabel
      Top = 434
      ExplicitTop = 434
    end
    inherited cxButton2: TcxButton
      Top = 431
      ExplicitTop = 431
    end
    inherited BtnGoogleMais: TcxButton
      Top = 431
      TabOrder = 25
      ExplicitTop = 431
    end
    inherited GridSubGrid: TcxGrid
      Width = 204
      Height = 392
      ExplicitWidth = 204
      ExplicitHeight = 392
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 22
    end
    inherited pnlFlipRotate: TPanel
      Left = 1224
      Width = 38
      Height = 392
      ExplicitLeft = 1224
      ExplicitWidth = 38
      ExplicitHeight = 392
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
      Caption = 'Consulta de Balan'#231'o Patrimonial'
      ExplicitWidth = 357
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
    inherited LibtnNovoCadastro: TdxLayoutItem
      Visible = False
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 357
    end
    inherited LiedtRapidoData: TdxLayoutItem
      Index = 1
    end
  end
  inherited dxStatusBar1: TdxRibbonStatusBar
    Top = 473
    Width = 878
    ExplicitTop = 473
    ExplicitWidth = 878
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 42041.701995856480000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    MasterFields = 'CODBALANCO_TITULO'
    SQL.Strings = (
      'select BT.*, B.DESCRICAO'
      'from BALANCO_TITULO BT'
      'left join BALANCO B on B.CODBALANCO_TITULO = BT.CODIGO'
      '')
    object ConsultaCODIGO: TStringField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object ConsultaDATA: TSQLTimeStampField [1]
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object ConsultaDESCRICAO: TStringField [2]
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 150
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
    FormClassCadastro = 'TFrmBalanco'
    FormClassConsulta = 'TConsuBalanco'
  end
end
