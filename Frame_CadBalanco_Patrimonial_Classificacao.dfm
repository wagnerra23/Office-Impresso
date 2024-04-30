inherited Frame_Balanco_Patr_Classificacao: TFrame_Balanco_Patr_Classificacao
  inherited MainLayout: TdxLayoutControl
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 5
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 6
    end
    object cbBalancoClassificacao: TcxDBComboBox [6]
      Left = 641
      Top = 26
      AutoSize = False
      DataBinding.DataField = 'CLASSIFICACAO'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Ativo Circulante'
        'Ativo N'#227'o Circulante'
        'Realiz'#225'vel a Longo Prazo'
        'Investimentos'
        'Imobilizado'
        'Intang'#237'vel'
        'Passivo Circulante'
        'Passivo N'#227'o Circulante'
        'Exig'#237'vel a Longo Prazo'
        'Patrim'#244'nio L'#237'quido')
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Height = 19
      Width = 173
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Text = 'Classifica'#231#227'o Do Balan'#231'o Patrimonial'
      CaptionOptions.Layout = clTop
      Control = cbBalancoClassificacao
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 173
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 2
    FormClassCadastro = 'TFrmSituacao'
    FormClassConsulta = 'TFrmSituacao'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM BALANCO_PATR_CLASSIFICACAO'
      'WHERE CODIGO = :CODIGO')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'BALANCO_PATR_CLASSIFICACAO'
  end
end
