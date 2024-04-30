inherited FrmVenda_Situacao: TFrmVenda_Situacao
  Caption = 'Cadastro de Situa'#231#227'o de Venda'
  ClientHeight = 490
  ExplicitHeight = 529
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    Height = 470
    ExplicitHeight = 470
    inherited btnConsultar: TcxButton
      TabOrder = 13
    end
    inherited btnSair: TcxButton
      Top = 442
      TabOrder = 10
      ExplicitTop = 442
    end
    inherited edtCodigo: TcxDBTextEdit
      TabOrder = 18
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 757
      TabOrder = 21
      ExplicitLeft = 757
    end
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
      TabOrder = 19
      ExplicitWidth = 656
      Width = 656
    end
    inherited btnNavegacaoAnterior: TcxButton
      TabOrder = 11
    end
    inherited btnNavegacaoProximo: TcxButton
      TabOrder = 12
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 25
    end
    inherited BtnSeguidores: TcxButton
      TabOrder = 24
    end
    inherited btnMenuConfig: TcxButton
      TabOrder = 23
    end
    inherited PnlFrameHistorico: TPanel
      Top = 202
      TabOrder = 17
      ExplicitTop = 202
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 713
      TabOrder = 20
      ExplicitLeft = 713
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Situa'#231#227'o de Venda'
    end
    object chkTem_Fatura: TcxDBCheckBox [25]
      Left = 78
      Top = 101
      Hint = 'Usado em recusa Ou Parado do servi'#231'o'
      TabStop = False
      Caption = 'Faturamento'
      DataBinding.DataField = 'TEM_FATURA'
      DataBinding.DataSource = DS
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      Properties.Alignment = taCenter
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 22
      Transparent = True
      Width = 68
    end
    inherited MainLayoutGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      Index = 3
    end
    inherited LiBtnConsultar: TdxLayoutItem
      Index = 9
    end
    inherited LiBtnSair: TdxLayoutItem
      Index = 7
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 4
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignHorz = ahClient
    end
    inherited GrupoNavegacao: TdxLayoutGroup
      Index = 8
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = nil
      Index = -1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Index = 1
    end
    inherited liSeparadorFrameBase: TdxLayoutSeparatorItem
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Faturamento'
      Control = chkTem_Fatura
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 68
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Mudar para essa situa'#231#227'o quando?'
      Index = 4
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 470
    ExplicitTop = 470
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmVenda_Situacao'
    FormClassConsulta = 'TConsuVenda_Situacao'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from VENDA_SITUACAO'
      'WHERE Codigo = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object CadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object CadastroDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object CadastroATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'VENDA_SITUACAO'
    Modulo = 'VENDA'
  end
end
