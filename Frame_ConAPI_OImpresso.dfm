inherited Frame_ConsuAPI_OImpresso: TFrame_ConsuAPI_OImpresso
  inherited dxLayoutControl1: TdxLayoutControl [0]
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OnDblClick = GridConsultaDBTableView1DblPocketClick
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Width = 25
        end
        object GridConsultaDBTableView1DATA: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DATA'
          SortIndex = 0
          SortOrder = soDescending
          Width = 156
        end
        object GridConsultaDBTableView1MODULO: TcxGridDBColumn
          Caption = 'M'#243'dulo'
          DataBinding.FieldName = 'MODULO'
          Visible = False
          GroupIndex = 0
          Width = 91
        end
        object GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn
          Caption = 'Cod. Usu'#225'rio'
          DataBinding.FieldName = 'CODUSUARIO'
          Visible = False
        end
        object GridConsultaDBTableView1USUARIO: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USUARIO'
          Width = 155
        end
        object GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn
          Caption = 'Log'
          DataBinding.FieldName = 'OBSERVACAO'
          Width = 287
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Dt. Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 201
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 38
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Visible = False
          Width = 268
        end
      end
    end
    inherited tcAcoes: TdxTileControl
      inherited dxTileControlItem1: TdxTileControlItem
        Visible = False
      end
      object tiSincronizarContatos: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Sincronizar Contatos'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiSincronizarContatosClick
      end
      object tiSincronizarVenda: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Sincronizar Venda'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tiSincronizarFinanceiro: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Sincronizar Financeiro'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tiSincronizarProduto: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Sincronizar Produto'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiSincronizarProdutoClick
      end
      object tiTokemGerado: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 5
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Tokem Gerado'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object dxTileControl1Item1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 6
        Style.GradientBeginColor = 8224255
        Style.GradientEndColor = clRed
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Atualizar Tudo'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
    end
  end
  inherited pnlFiltros: TPanel [1]
    Top = 141
    ExplicitTop = 141
  end
  inherited pnlFiltroData: TPanel [2]
    Top = 151
    ExplicitTop = 151
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited pnlIniciar: TPanel [3]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited pnlAgrupador: TPanel [4]
    Top = 151
    ExplicitTop = 151
    inherited tcAgrupador: TdxTileControl
      object tcAgrupadorModulo: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = []
        Text1.Value = 'M'#243'dulo'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tcAgrupadorModuloClick
      end
    end
  end
  inherited pnlImpressoes: TPanel [5]
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44893.331373229160000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited cxEditStyleController1: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited dxScreenTipRepository1: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited RespositorioEstilos: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'SELECT O.*, U.LOGIN AS USUARIO FROM OIMPRESSO O'
      'LEFT JOIN USUARIO U ON U.CODIGO = O.CODUSUARIO')
    object ConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object ConsultaATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
    end
    object ConsultaDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object ConsultaMODULO: TStringField
      FieldName = 'MODULO'
      Size = 255
    end
    object ConsultaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object ConsultaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
    object ConsultaUSUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO'
      Origin = 'LOGIN'
      ProviderFlags = []
      Size = 30
    end
  end
end
