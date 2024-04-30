inherited FrameAnexosProducao: TFrameAnexosProducao
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridAnexos: TcxGrid
      TabOrder = 7
    end
    inherited cxShellListView: TcxShellListView
      TabOrder = 8
    end
    inherited tcMenuAnexo: TdxTileControl
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupIndent = 1
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 5
      OptionsView.IndentVert = 0
      OptionsView.ItemIndent = 0
      TabOrder = 6
      object tcMenuAnexoGroup1: TdxTileControlGroup
        Index = 0
      end
      object tiPessoas: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Style.BorderColor = 541559278
        Style.GradientBeginColor = 538992358
        Style.GradientEndColor = 541559278
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Pessoas'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text3.IndentVert = 18
        Text3.Value = 'Arquivos do Cliente'
        Text4.AssignedValues = []
        OnClick = tiPessoasClick
      end
      object tiVenda: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Style.BorderColor = 539409370
        Style.GradientBeginColor = 56038
        Style.GradientEndColor = 538626272
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Venda'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text3.IndentVert = 18
        Text3.Value = 'Arquivos da Venda'
        Text4.AssignedValues = []
        OnClick = tiVendaClick
      end
      object tiProduto: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Style.BorderColor = 540330879
        Style.GradientBeginColor = 537833300
        Style.GradientEndColor = 537969256
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Produto'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text3.IndentVert = 18
        Text3.Value = 'Arquivos do Produto'
        Text4.AssignedValues = []
        OnClick = tiProdutoClick
      end
      object tiProducao: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Style.BorderColor = 551663654
        Style.GradientBeginColor = 551332608
        Style.GradientEndColor = 551796480
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Anexos'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text3.IndentVert = 18
        Text3.Value = 'Produ'#231#227'o'
        Text4.AssignedValues = []
        OnClick = tiProducaoClick
      end
      object tiVendaProduto: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Style.GradientBeginColor = clTeal
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -15
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Venda Produto'
        Text2.Align = oaBottomLeft
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -11
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.IndentVert = 15
        Text2.Value = 'produto da venda'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiVendaProdutoClick
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
      CaptionOptions.Visible = False
      Control = btnMigraFotos
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 5
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
  inherited Anexos: TFDQuery
    SQL.Strings = (
      'select A.*,U.USUARIO, VP.DESCRICAO as PRODUTO'
      'from ANEXO A'
      'LEFT JOIN USUARIO U ON U.CODIGO=A.CODUSUARIO'
      'LEFT JOIN VENDA_PRODUTO VP ON VP.CODIGO = A.CODPRODUTO'
      ' '
      ' '
      ' '
      ' '
      '')
  end
  inherited FDArquivos: TFDQuery
    Top = 99
  end
  inherited cxImageListTreeList: TcxImageList
    FormatVersion = 1
  end
  inherited RespositorioEstilos: TcxStyleRepository
    PixelsPerInch = 96
  end
  object Producao_Arquivo_Antigas: TFDQuery
    Connection = DMBanco.Banco
    Transaction = Transa
    SQL.Strings = (
      'select Codigo ,PROTOCOLO, CODVENDA, CODVENDA_PRODUTO'
      'from PRODUCAO '
      '')
    Left = 472
    Top = 204
  end
end
