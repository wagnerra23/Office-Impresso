inherited FrmSpreadSheet_Referencia: TFrmSpreadSheet_Referencia
  Caption = 'Cadastro de Refer'#234'ncia de SpreadSheet'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtCodigo: TcxDBTextEdit
      Top = 99
      TabOrder = 18
      ExplicitTop = 99
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 685
      Top = 99
      TabOrder = 22
      ExplicitLeft = 685
      ExplicitTop = 99
    end
    inherited edtDescricao: TcxDBTextEdit
      Top = 99
      TabOrder = 19
      ExplicitTop = 99
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 25
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 24
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 23
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 641
      Top = 99
      TabOrder = 21
      ExplicitLeft = 641
      ExplicitTop = 99
    end
    object edtSpreadSheet: TcxDBTextEdit [24]
      Left = 463
      Top = 99
      AutoSize = False
      DataBinding.DataField = 'SPREADSHEET'
      DataBinding.DataSource = DS
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 20
      Height = 21
      Width = 177
    end
    object edtReferencia: TcxDBTextEdit [25]
      Left = 3
      Top = 54
      DataBinding.DataField = 'REFERENCIA'
      DataBinding.DataSource = DS
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 17
      Width = 214
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 4
      Index = 4
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 4
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Index = 5
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 3
    end
    inherited liSeparadorFrameBase: TdxLayoutSeparatorItem
      Index = 2
    end
    object LiedtSpreadSheet: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'SpreadSheet'
      CaptionOptions.Layout = clTop
      Control = edtSpreadSheet
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 177
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LiedtReferencia: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Refer'#234'ncia'
      CaptionOptions.Layout = clTop
      Control = edtReferencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 214
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 1
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from SPREADSHEET_REFERENCIA')
  end
end
