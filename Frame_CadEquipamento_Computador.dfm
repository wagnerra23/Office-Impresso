inherited Frame_Equipamento_Computador: TFrame_Equipamento_Computador
  inherited MainLayout: TdxLayoutControl
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 736
      TabOrder = 4
      ExplicitLeft = 736
    end
    inherited edtDescricao: TcxDBTextEdit
      ExplicitWidth = 281
      Width = 281
    end
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 25
    end
    inherited PnlFrameHistorico: TPanel
      TabOrder = 26
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 692
      TabOrder = 3
      ExplicitLeft = 692
    end
    object edtSenha: TcxDBTextEdit [6]
      Left = 746
      Top = 83
      DataBinding.DataField = 'SENHA'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.EchoMode = eemPassword
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 9
      Width = 182
    end
    object edtUsuario: TcxDBTextEdit [7]
      Left = 577
      Top = 83
      DataBinding.DataField = 'USUARIO'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 8
      Width = 168
    end
    object edtVelocidade: TcxDBTextEdit [8]
      Left = 408
      Top = 83
      AutoSize = False
      DataBinding.DataField = 'VELOCIDADE_CONEXAO'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 7
      Height = 21
      Width = 168
    end
    object edtConexao: TcxDBTextEdit [9]
      Left = 152
      Top = 83
      AutoSize = False
      DataBinding.DataField = 'CONEXAO'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 6
      Height = 21
      Width = 255
    end
    object edtVersaoEXE: TcxDBTextEdit [10]
      Left = 30
      Top = 119
      AutoSize = False
      DataBinding.DataField = 'VERSAO_EXE'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 10
      Height = 21
      Width = 212
    end
    object edtDtInstalacao: TcxDBDateEdit [11]
      Left = 717
      Top = 119
      AutoSize = False
      DataBinding.DataField = 'DATA'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.ReadOnly = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 13
      Height = 21
      Width = 211
    end
    object edtBanco: TcxDBTextEdit [12]
      Left = 243
      Top = 119
      AutoSize = False
      DataBinding.DataField = 'VERSAO_BANCO'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 11
      Height = 21
      Width = 140
    end
    object edtPastaInstalacao: TcxDBTextEdit [13]
      Left = 384
      Top = 119
      AutoSize = False
      DataBinding.DataField = 'PASTA_INSTALACAO'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 12
      Height = 21
      Width = 332
    end
    object edtSistemaOperacional: TcxDBTextEdit [14]
      Left = 30
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'SISTEMA_OPERACIONAL'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 14
      Height = 21
      Width = 223
    end
    object edtProcessador: TcxDBTextEdit [15]
      Left = 254
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'PROCESSADOR'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 15
      Height = 21
      Width = 146
    end
    object edtIpInterno: TcxDBTextEdit [16]
      Left = 401
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'IP_INTERNO'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 16
      Height = 21
      Width = 157
    end
    object edtHd: TcxDBTextEdit [17]
      Left = 559
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'HD'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 17
      Height = 21
      Width = 222
    end
    object edtAntiVirus: TcxDBTextEdit [18]
      Left = 782
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'ANTIVIRUS'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 18
      Height = 21
      Width = 146
    end
    object edtImpressoraFiscal: TcxDBTextEdit [19]
      Left = 152
      Top = 191
      AutoSize = False
      DataBinding.DataField = 'IMPRESSORA_FISCAL'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 20
      Height = 21
      Width = 214
    end
    object edtDtUltimaAssistencia: TcxDBDateEdit [20]
      Left = 714
      Top = 191
      AutoSize = False
      DataBinding.DataField = 'DT_ULTIMA_ASSISTENCIA'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.Color = clSilver
      Style.HotTrack = False
      TabOrder = 23
      Height = 21
      Width = 214
    end
    object edtLeitorBarras: TcxDBTextEdit [21]
      Left = 367
      Top = 191
      AutoSize = False
      DataBinding.DataField = 'LEITOR_BARRAS'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.CharCase = ecUpperCase
      Properties.IncrementalSearch = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Style.HotTrack = False
      TabOrder = 21
      Height = 21
      Width = 224
    end
    object cbTipoAcesso: TcxDBComboBox [22]
      Left = 30
      Top = 83
      DataBinding.DataField = 'TIPODEACESSO'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.Items.Strings = (
        'TeamViewer'
        'Terminal Service'
        'LogMeIn'
        'Single Click'
        'ShowMyPC'
        'VNC')
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cbPAF: TcxDBComboBox [23]
      Left = 30
      Top = 191
      DataBinding.DataField = 'PAF'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.Items.Strings = (
        'S'
        'N')
      Style.HotTrack = False
      TabOrder = 19
      Width = 121
    end
    object cbBackup: TcxDBComboBox [24]
      Left = 592
      Top = 191
      AutoSize = False
      DataBinding.DataField = 'BACKUP_AUTOMATICO'
      DataBinding.DataSource = DSEquipamento_Computador
      Properties.Items.Strings = (
        'S'
        'N')
      Style.HotTrack = False
      TabOrder = 22
      Height = 21
      Width = 121
    end
    object MemoObservacao: TcxDBMemo [25]
      Left = 30
      Top = 243
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = DS
      Style.HotTrack = False
      TabOrder = 24
      Height = 89
      Width = 898
    end
    object EdtClienteÎPessoas: TcxDBButtonEdit [26]
      Left = 353
      Top = 24
      Hint = 'F2 - Consulta / Cadastro'
      Margins.Left = 0
      Margins.Top = 0
      AutoSize = False
      DataBinding.DataField = 'PESSOA_CLIENTE_SEQUENCIA'
      DataBinding.DataSource = DS
      Properties.Buttons = <
        item
          Enabled = False
          Kind = bkText
        end
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 113
      Style.HotTrack = False
      TabOrder = 2
      Height = 21
      Width = 71
    end
    object EdtClienteÎPessoasÎRAZAOSOCIAL: TLabel [27]
      Left = 425
      Top = 26
      Width = 266
      Height = 19
      AutoSize = False
      Color = 16505534
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
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
    inherited LiedtDescricao: TdxLayoutItem
      ControlOptions.OriginalWidth = 281
    end
    inherited LicbxAtivo: TdxLayoutItem
      Index = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Senha'
      CaptionOptions.Layout = clTop
      Control = edtSenha
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Usu'#225'rio'
      CaptionOptions.Layout = clTop
      Control = edtUsuario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Velocidade'
      CaptionOptions.Layout = clTop
      Control = edtVelocidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Conex'#227'o(ID, Endere'#231'o...)'
      CaptionOptions.Layout = clTop
      Control = edtConexao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 191
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Informa'#231#245'es do Computador'
      Offsets.Top = 3
      ItemIndex = 3
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Vers'#227'o EXE'
      CaptionOptions.Layout = clTop
      Control = edtVersaoEXE
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 192
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Data da Instala'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDtInstalacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 191
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Vers'#227'o Banco'
      CaptionOptions.Layout = clTop
      Control = edtBanco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Pasta da Instala'#231#227'o (Execut'#225'veis)'
      CaptionOptions.Layout = clTop
      Control = edtPastaInstalacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Sistema Operacional'
      CaptionOptions.Layout = clTop
      Control = edtSistemaOperacional
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 192
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Processador'
      CaptionOptions.Layout = clTop
      Control = edtProcessador
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'IP Interno'
      CaptionOptions.Layout = clTop
      Control = edtIpInterno
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'N'#250'mero do HD'
      CaptionOptions.Layout = clTop
      Control = edtHd
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 191
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Antivirus'
      CaptionOptions.Layout = clTop
      Control = edtAntiVirus
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Impressora Fiscal(Marca/Modelo)'
      CaptionOptions.Layout = clTop
      Control = edtImpressoraFiscal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 192
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Data da '#250'ltima assist'#234'ncia'
      CaptionOptions.Layout = clTop
      Control = edtDtUltimaAssistencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 192
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Leitor de c'#243'digo de Barras(Marca/Modelo)'
      CaptionOptions.Layout = clTop
      Control = edtLeitorBarras
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 192
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Tipo de Acesso'
      CaptionOptions.Layout = clTop
      Control = cbTipoAcesso
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avBottom
      CaptionOptions.Text = 'PAF'
      CaptionOptions.Layout = clTop
      Control = cbPAF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Backup'
      CaptionOptions.Layout = clTop
      Control = cbBackup
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup6
      Control = MemoObservacao
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 903
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Text = 'Observa'#231#227'o'
      Index = 4
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      CaptionOptions.Text = 'Cliente'
      CaptionOptions.Layout = clTop
      Control = EdtClienteÎPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = EdtClienteÎPessoasÎRAZAOSOCIAL
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 266
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
    FormClassCadastro = 'TFrmEquipamento'
    FormClassConsulta = 'TFrmEquipamento'
  end
  inherited Cadastro: TFDQuery
    AfterEdit = CadastroAfterEdit
    SQL.Strings = (
      'SELECT E.* FROM EQUIPAMENTO E'
      'WHERE E.CODIGO = :CODIGO')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = 'CODIGO'
    Tabela = 'EQUIPAMENTO'
    Modulo = 'EQUIPAMENTO'
  end
  object DSEquipamento_Computador: TDataSource
    DataSet = Equipamento_Computador
    Left = 340
    Top = 136
  end
  object Equipamento_Computador: TFDQuery
    BeforeEdit = Equipamento_ComputadorBeforeEdit
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 5000
    SQL.Strings = (
      'SELECT EC.* FROM EQUIPAMENTO_COMPUTADOR EC'
      'WHERE EC.CODIGO = :CODIGO')
    Left = 312
    Top = 136
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object UCHist_Equipamento_Computador: TUCHist_DataSet
    OnAddHistorico = UCHist_CadastroAddHistorico
    DataSet = Equipamento_Computador
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK2 = 'CODIGO'
    DS = DSEquipamento_Computador
    Tabela = 'EQUIPAMENTO_COMPUTADOR'
    Modulo = 'EQUIPAMENTO'
    Left = 368
    Top = 136
  end
end
