inherited ConsuNF_DadosAdicionais: TConsuNF_DadosAdicionais
  Caption = 'Dados Adicionais para Nota Fiscal'
  ClientWidth = 816
  ExplicitWidth = 832
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 816
    ExplicitWidth = 816
    inherited GridConsulta: TcxGrid
      Left = 208
      Width = 1028
      Height = 649
      ExplicitLeft = 208
      ExplicitWidth = 1028
      ExplicitHeight = 649
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 663
        end
      end
    end
    inherited EdtPesquisa: TcxButtonEdit
      Left = 919
      ExplicitLeft = 919
      ExplicitWidth = 357
      Width = 357
    end
    inherited BtnPesquisar: TcxButton
      Left = 662
      ExplicitLeft = 662
    end
    inherited LbFiltosAtivos: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa1: TcxLabel
      Left = 138
      ExplicitLeft = 138
      AnchorY = 53
    end
    inherited LbPesquisaFixa2: TcxLabel
      Left = 207
      ExplicitLeft = 207
      AnchorY = 53
    end
    inherited LbPesquisaFixa3: TcxLabel
      Left = 279
      ExplicitLeft = 279
      AnchorY = 53
    end
    inherited LbPesquisaFixa4: TcxLabel
      Left = 301
      ExplicitLeft = 301
      AnchorY = 53
    end
    inherited BtnGoogleMais: TcxButton
      TabOrder = 23
    end
    inherited GridSubGrid: TcxGrid
      Width = 207
      Height = 649
      ExplicitWidth = 207
      ExplicitHeight = 649
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 22
    end
    inherited pnlFlipRotate: TPanel
      Left = 1239
      Width = 37
      Height = 649
      ExplicitLeft = 1239
      ExplicitWidth = 37
      ExplicitHeight = 649
    end
    inherited btnDashBoard: TcxButton
      Left = 1196
      ExplicitLeft = 1196
    end
    inherited btnTabela: TcxButton
      Left = 1223
      ExplicitLeft = 1223
    end
    inherited btnKanbam: TcxButton
      Left = 1042
      ExplicitLeft = 1042
    end
    inherited btnNovoCadastro: TcxButton
      Left = 1133
      ExplicitLeft = 1133
    end
    inherited btnMenu: TcxButton
      Left = 1250
      ExplicitLeft = 1250
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Dados Adicionais'
      ExplicitWidth = 189
    end
    inherited edtRapidoFiltro: TcxComboBox
      Left = 729
      ExplicitLeft = 729
    end
    inherited edtRapidoAgrupar: TcxComboBox
      Left = 588
      ExplicitLeft = 588
    end
    inherited edtRapidoData: TcxComboBox
      Left = 379
      ExplicitLeft = 379
    end
    inherited LiEdtPesquisa: TdxLayoutItem
      ControlOptions.OriginalWidth = 357
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 189
    end
  end
  inherited dxStatusBar1: TdxRibbonStatusBar
    Width = 816
    ExplicitWidth = 816
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 42041.708105023150000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select * '
      'from NF_DADOSADICIONAIS')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 5000
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
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
    FormClassCadastro = 'TFrmNF_DadosAdicionais'
    FormClassConsulta = 'TConsuNF_DadosAdicionais'
  end
end
