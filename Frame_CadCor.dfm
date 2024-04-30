inherited Frame_Cor: TFrame_Cor
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 557
      TabOrder = 4
      ExplicitLeft = 557
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 5
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 6
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 513
      TabOrder = 3
      ExplicitLeft = 513
    end
    object EdtSigla: TcxDBTextEdit [6]
      Left = 478
      Top = 24
      DataBinding.DataField = 'SIGLA'
      DataBinding.DataSource = DS
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 2
      Width = 34
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 4
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignVert = avBottom
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 3
    end
    object LiEdtSigla: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Sigla'
      CaptionOptions.Layout = clTop
      Control = EdtSigla
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 34
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
    Versao_Configuracao = 2
    FormClassCadastro = 'TFrmCor'
    FormClassConsulta = 'TFrmCor'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from COR'
      'where CODIGO = :CODIGO')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'COR'
  end
end
