inherited FrmProduto_Markup: TFrmProduto_Markup
  Caption = 'Cadastro de Markup'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtCodigo: TcxDBTextEdit
      TabOrder = 18
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      TabOrder = 21
    end
    inherited edtDescricao: TcxDBTextEdit
      TabOrder = 19
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 28
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 29
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 23
    end
    inherited cbxAtivo: TcxDBComboBox
      TabOrder = 20
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Markup'
    end
    object edtPerc_Custo_Fixo: TcxDBTextEdit [24]
      Left = 15
      Top = 137
      DataBinding.DataField = 'PERC_CUSTO_FIXO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 24
      Width = 94
    end
    object edtPerc_Custo_Financeiro: TcxDBTextEdit [25]
      Left = 206
      Top = 137
      AutoSize = False
      DataBinding.DataField = 'PERC_CUSTO_FINANCEIRO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 26
      Height = 21
      Width = 95
    end
    object edtPerc_Custo_Variavel: TcxDBTextEdit [26]
      Left = 110
      Top = 137
      AutoSize = False
      DataBinding.DataField = 'PERC_CUSTO_VARIAVEL'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 25
      Height = 21
      Width = 95
    end
    object edtPerc_Lucro_Desejado: TcxDBTextEdit [27]
      Left = 302
      Top = 137
      DataBinding.DataField = 'PERC_LUCRO_DESEJADO'
      DataBinding.DataSource = DS
      Style.Color = clMoneyGreen
      Style.HotTrack = False
      TabOrder = 27
      Width = 95
    end
    object btnMenu: TcxButton [28]
      AlignWithMargins = True
      Left = 889
      Top = 370
      Width = 116
      Height = 25
      Hint = 'Menu'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 15
      Caption = 'Menu'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = ImgListBotoes16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      OnClick = btnMenuClick
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [29]
      Left = 69
      Top = 83
      Properties.Buttons = <
        item
          Default = True
        end>
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 22
      Width = 806
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      ItemIndex = 11
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      AlignVert = avBottom
      Index = 4
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Index = 5
    end
    object liedtPerc_Custo_Fixo: TdxLayoutItem
      Parent = GrupoIndices
      AlignVert = avBottom
      CaptionOptions.Text = '% Custo fixo'
      CaptionOptions.Layout = clTop
      Control = edtPerc_Custo_Fixo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtPerc_Custo_Financeiro: TdxLayoutItem
      Parent = GrupoIndices
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = '% Custo Financeiro'
      CaptionOptions.Layout = clTop
      Control = edtPerc_Custo_Financeiro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtPerc_Custo_Variavel: TdxLayoutItem
      Parent = GrupoIndices
      CaptionOptions.Text = '% Custo Vari'#225'vel'
      CaptionOptions.Layout = clTop
      Control = edtPerc_Custo_Variavel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtPerc_Lucro_Desejado: TdxLayoutItem
      Parent = GrupoIndices
      AlignVert = avBottom
      CaptionOptions.Text = '% Lucro desejado'
      CaptionOptions.Layout = clTop
      Control = edtPerc_Lucro_Desejado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = GrupoMenuInterno
      CaptionOptions.Visible = False
      Offsets.Top = 20
      Control = btnMenu
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object GrupoIndices: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Markup'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      Index = 6
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoMain
      CaptionOptions.Text = 'Custo Fixo %'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 1
    FormClassCadastro = 'TFrmProduto_Markup'
    FormClassConsulta = 'TConsuProduto_Markup'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select * from PRODUTO_MARKUP'
      'where codigo = :codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUTO_MARKUP'
    Modulo = 'PRODUTO'
  end
  object popMenu: TPopupMenu
    OnPopup = MenuConfigPopup
    Left = 512
    Top = 100
    object Realocaresteslanamentos1: TMenuItem
      Caption = 'Classificar makup por Produtos'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object AplicarClassificaodaDRE1: TMenuItem
      Caption = 'Aplicar Makup em todos produtos'
    end
  end
end
