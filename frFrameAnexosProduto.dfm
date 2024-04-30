inherited FrameAnexosProduto: TFrameAnexosProduto
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridAnexos: TcxGrid
      TabOrder = 7
    end
    inherited cxShellListView: TcxShellListView
      TabOrder = 8
    end
    inherited tcMenuAnexo: TdxTileControl
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.IndentVert = 0
      OptionsView.ItemIndent = 0
      TabOrder = 6
      object tcMenuAnexoGroup1: TdxTileControlGroup
        Index = 0
      end
      object tiAnexo: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Style.BorderColor = 541559278
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clDefault
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.GradientBeginColor = 538992358
        Style.GradientEndColor = 541559278
        Text1.AssignedValues = []
        Text1.Value = 'Anexos'
        Text2.AssignedValues = []
        Text3.AssignedValues = [avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -11
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.IndentVert = 20
        Text3.Value = 'Apenas no cadastro'
        Text4.AssignedValues = []
        OnClick = tiAnexoClick
      end
      object tiVenda: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Style.BorderColor = 538626272
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clDefault
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.GradientBeginColor = 56038
        Style.GradientEndColor = 538626272
        Text1.AssignedValues = []
        Text1.Value = 'Venda'
        Text2.AssignedValues = []
        Text3.AssignedValues = [avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -11
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.IndentVert = 20
        Text3.Value = 'Vis'#237'vel na venda'
        Text4.AssignedValues = []
        OnClick = tiVendaClick
      end
      object tiProducao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Style.BorderColor = 540330879
        Style.GradientBeginColor = 537833300
        Style.GradientEndColor = 537969256
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Produ'#231#227'o'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text3.IndentVert = 20
        Text3.Value = 'Vis'#237'vel na produ'#231#227'o'
        Text4.AssignedValues = []
        OnClick = tiProducaoClick
      end
    end
    inherited lblMensagemCabecalho: TcxLabel
      ExplicitWidth = 53
      Width = 53
      AnchorY = 17
    end
    inherited lblSelecionado: TcxLabel
      AnchorY = 17
    end
    object btnMigraFotos: TcxButton [8]
      Left = 512
      Top = 0
      Width = 113
      Height = 34
      Caption = 'Migrar fotos antigas'
      TabOrder = 5
      OnClick = btnMigraFotosClick
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      ItemIndex = 5
    end
    inherited dxLayoutItem2: TdxLayoutItem
      ControlOptions.OriginalHeight = 23
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnMigraFotos
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  inherited PnlAguarde: TPanel
    inherited cxProgressBar1: TcxProgressBar
      Properties.Marquee = False
    end
    object imgProduto: TcxImage
      Left = 354
      Top = 12
      Properties.GraphicClassName = 'TdxSmartImage'
      Properties.ImmediatePost = True
      Properties.PopupMenuLayout.CustomMenuItemGlyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBED6C9CDDCD3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FCCB31DC3742AC178B9D4C3FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC5A721C37490F4C2
        98F5C72DBF75A9CDB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA7ABD9720
        C06F78EEB08DF4BCB1FBD7ABF8D22BBE7097C6A9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
        F168B6891FC26B56E8975CEB9774EFAA90F4C1B2FCD9A1F5CA2ABB6C84BE99FC
        FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE8E9E855AF7919C3662BE07B20E16E41E58462EB9C78EFAD85F2B792F6
        C187F0B727BB6971B58AF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE0E4E143A66911C15F1BD96B00D85506DB5E28E07245E687
        59E99564EC9D65EC9E63ED9C62E99C26BC655EAC7AEEEEEEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD2DBD4349F5906BD550CD05D00CF4C00D25000
        D65402DB5C1CE06B30E27839E47E3BE48031E37A24E1712DE17A1CBC5E4CA469
        E3E5E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5E0D728974B00BA4C00C74C00C4
        3F00C9480DD1561DD7642DDD7135E37842E58045E3823EE27E2DE07413DC6500
        D95710D86311B9533D9C5AD6DCD7FFFFFFFFFFFFFFFFFFFFFFFF8DBF9B00B240
        00BD3C00BD3924C9584DD47763DC8973E09567E59122D9672EDE716DE99870E5
        986CE59566E39052DE842BD76A0FD25B05B5472C9246C9D5CBFFFFFFFFFFFFFF
        FFFFA2D7B200BB321FBF4860D07E81DB9785DD9B8AE0A26FE39323D262A1EABA
        97EBB52FDA6F7BEAA086E6A481E4A084E3A185E2A060D98510CB5500B03A1F89
        36B9CBBBFFFFFFFFFFFFF4FBF563C97646CD649FE1AC98DEA89CE2AD76E2952C
        CD60B4EDC4FFFFFFFFFFFFA9ECBE36D46E88EAA69BE7B093E4AA94E3AA9AE3AD
        7BDA941FC65500A82E127F21A8C0A9FFFFFFFFFFFFFFFFFF78D1894BCA68AAE6
        B67BE09533C95FC5EDCEFFFFFFFFFFFFFFFFFFFFFFFFBCEEC93BD16D8FEAAAB0
        E9BFA7E6B7A6E5B6ADE4B999DEA82FC25700A01E07760CA1BEA1FFFFFFFFFFFF
        FFFFFF8BD69A32C2543DC762D7F1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFCDEFD342CD6D93E9ABC6EDCEBBE9C5BAE8C4C0E8C7B1E2B93CBF59009C1339
        913BFFFFFFFFFFFFFFFFFFFFFFFFBEE7C1E4F4E5FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFDDF3DE4BCB6E94E6A8DAF2DECFEDD4CDECD2D3ED
        D6D4EDD751CA6635A53DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF6EB53C86E90E2A1
        EBF8EEE2F3E5EAF6ECD3F2D745B8509DD49EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF6F9F663C77487D994FFFFFFCFF0D33AB042A7D5A7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD72C77D63C76F3EB148B8DBB8FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1D3A1CCE6
        CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 2
      Visible = False
      Height = 71
      Width = 88
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited cxImageListTreeList: TcxImageList
    FormatVersion = 1
  end
  inherited RespositorioEstilos: TcxStyleRepository
    PixelsPerInch = 96
  end
  object Produto_FotosAntigas: TFDQuery
    Connection = DMBanco.Banco
    Transaction = Transa
    SQL.Strings = (
      'select Codigo ,CODFAMILIA '
      'from Produto '
      '')
    Left = 472
    Top = 204
  end
end
