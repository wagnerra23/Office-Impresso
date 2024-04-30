inherited FrmProducao_Estagio: TFrmProducao_Estagio
  Caption = 'Cadastro de Est'#225'gio de produ'#231#227'o'
  ExplicitTop = -36
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 550
      TabOrder = 21
      ExplicitLeft = 550
    end
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 25
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 24
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 22
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 506
      TabOrder = 20
      ExplicitLeft = 506
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Est'#225'gio de produ'#231#227'o'
    end
    object edtIcone: TcxDBTextEdit [25]
      Left = 463
      Top = 61
      DataBinding.DataField = 'ICONE'
      DataBinding.DataSource = DS
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 19
      Width = 42
    end
    inherited MainLayoutGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 4
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Icone'
      CaptionOptions.Layout = clTop
      Control = edtIcone
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 42
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmVenda_Estagio'
    FormClassConsulta = 'TConsuVenda_Estagio'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PRODUCAO_ESTAGIO'
      'WHERE CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUCAO_ESTAGIO'
    Modulo = 'PRODUCAO'
  end
end
