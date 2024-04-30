inherited FrmFrame_Producao_Fluxo_Venda_Produto: TFrmFrame_Producao_Fluxo_Venda_Produto
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxGrid1: TcxGrid
      TabOrder = 28
    end
    inherited cxButton1: TcxButton
      TabOrder = 27
    end
    inherited cxButton2: TcxButton
      TabOrder = 26
    end
    inherited cbxCodProducao_Fluxo: TcxDBLookupComboBox
      TabOrder = 24
    end
    inherited cbxCodProducao_PreRequisito: TcxDBLookupComboBox
      TabOrder = 25
    end
    inherited cxGrid2: TcxGrid
      TabOrder = 35
    end
    inherited cxDBLookupComboBox1: TcxDBLookupComboBox
      TabOrder = 29
    end
    inherited cxDBLookupComboBox2: TcxDBLookupComboBox
      TabOrder = 30
    end
    inherited cxButton3: TcxButton
      TabOrder = 34
    end
    inherited cxButton4: TcxButton
      TabOrder = 33
    end
    inherited cxDBTextEdit1: TcxDBTextEdit
      TabOrder = 32
    end
    inherited cxDBCheckBox1: TcxDBCheckBox
      TabOrder = 31
    end
    inherited GridRecursos: TcxGrid
      Top = 110
      Height = 364
      TabOrder = 10
      ExplicitTop = 110
      ExplicitHeight = 364
    end
    inherited cxGrid3: TcxGrid
      Height = 364
      TabOrder = 16
      ExplicitHeight = 364
    end
    inherited btnRemoverPrerequisito: TcxButton
      TabOrder = 14
    end
    inherited btnAdicionarPrerequisito: TcxButton
      TabOrder = 13
    end
    inherited cbxEtapa: TcxLookupComboBox
      Properties.OnEditValueChanged = cbxEtapaPropertiesEditValueChanged
      TabOrder = 11
    end
    inherited cbxEtapaPreRequisito: TcxLookupComboBox
      TabOrder = 12
    end
    inherited cxGrid4: TcxGrid
      Height = 364
      TabOrder = 18
      ExplicitHeight = 364
    end
    inherited cbxEtapaBaixaAutomatica: TcxLookupComboBox
      TabOrder = 23
    end
    inherited cbxProdutoComposicao: TcxLookupComboBox
      TabOrder = 22
    end
    inherited btnAdicionarMaterialBaixa: TcxButton
      TabOrder = 20
    end
    inherited btnRemoverMaterialBaixa: TcxButton
      TabOrder = 21
    end
    object cxLabel1: TcxLabel [33]
      Left = 10
      Top = 89
      Caption = 'Item em Produ'#231#227'o. N'#227'o '#233' poss'#237'vel alterar.'
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnHighlight
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      AnchorX = 473
      AnchorY = 99
    end
    object cxLabel2: TcxLabel [34]
      Left = 10325
      Top = 10000
      Caption = 'Item em Produ'#231#227'o. N'#227'o '#233' poss'#237'vel alterar.'
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnHighlight
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Visible = False
      AnchorX = 10463
      AnchorY = 10010
    end
    object cxLabel3: TcxLabel [35]
      Left = 10325
      Top = 10000
      Caption = 'Item em Produ'#231#227'o. N'#227'o '#233' poss'#237'vel alterar.'
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnHighlight
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Visible = False
      AnchorX = 10463
      AnchorY = 10010
    end
    inherited dxLayout: TdxLayoutGroup
      OnTabChanged = dxLayoutTabChanged
    end
    inherited GrupoGridEtapas: TdxLayoutItem
      Index = 2
    end
    inherited GrupoGridPrerequisito: TdxLayoutItem
      Index = 2
    end
    inherited dxLayoutItem12: TdxLayoutItem
      Index = 4
    end
    inherited dxLayoutItem13: TdxLayoutItem
      Index = 3
    end
    inherited dxLayoutItem15: TdxLayoutItem
      Index = 2
    end
    inherited dxLayoutItem14: TdxLayoutItem
      Index = 1
    end
    inherited lilblQtdProdutos: TdxLayoutItem
      Index = 0
    end
    inherited GrupoAdicionarBaixaAutomatica: TdxLayoutGroup
      Index = 2
    end
    object LiMensagemEtapa: TdxLayoutItem
      Parent = TabFluxo
      Visible = False
      Padding.AssignedValues = [lpavBottom]
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiMensagemPreRequisito: TdxLayoutItem
      Parent = TabPreRequisito
      Visible = False
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 275
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiMensagemBaixa: TdxLayoutItem
      Parent = TabBaixaMateriaisProducao
      Visible = False
      CaptionOptions.Visible = False
      Control = cxLabel3
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 275
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
