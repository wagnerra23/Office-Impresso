inherited Frame_Requisicao_Motivo: TFrame_Requisicao_Motivo
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 660
      TabOrder = 5
      ExplicitLeft = 660
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 7
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 8
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 616
      TabOrder = 4
      ExplicitLeft = 616
    end
    object dxDBColorEdit1: TdxDBColorEdit [6]
      Left = 557
      Top = 24
      DataBinding.DataField = 'COR'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 3
      Width = 58
    end
    object cxDBCheckBox1: TcxDBCheckBox [7]
      Left = 18
      Top = 48
      Caption = 'Obrigat'#243'rio informar observa'#231#227'o'
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
    end
    object cxDBComboBox1: TcxDBComboBox [8]
      Left = 478
      Top = 24
      DataBinding.DataField = 'TIPO_MOVIMENTACAO'
      DataBinding.DataSource = DS
      Properties.Items.Strings = (
        'E'
        'S')
      Style.HotTrack = False
      TabOrder = 2
      Width = 78
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Index = 5
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Cor'
      CaptionOptions.Layout = clTop
      Control = dxDBColorEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoMain
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Entrada / Sa'#237'da'
      CaptionOptions.Layout = clTop
      Control = cxDBComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
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
    Versao_Configuracao = 3
    FormClassCadastro = 'TFrame_Requisicao_Motivo'
    FormClassConsulta = 'TFrame_Requisicao_Motivo'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select * from PRODUTO_REQUISICAO_MOTIVO'
      'where CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUTO_REQUISICAO_MOTIVO'
  end
end
