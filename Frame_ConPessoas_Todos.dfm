inherited Frame_ConsuPessoas_Todos: TFrame_ConsuPessoas_Todos
  inherited dxLayoutControl1: TdxLayoutControl
    inherited EdtSequenciaPessoa: TcxTextEdit
      TabOrder = 14
    end
    inherited CbFiltrandoPor: TcxComboBox
      TabOrder = 15
      ExplicitWidth = 77
      ExplicitHeight = 19
      Height = 19
      Width = 77
    end
    inherited dxLayoutControl1Item16: TdxLayoutItem
      AlignHorz = ahRight
    end
    inherited liCbFiltrandoPor: TdxLayoutItem
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 77
    end
  end
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited pnlFiltroData: TPanel
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44865.692923842590000000
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
      'select '
      
        '--Linha dos Fields dos tipos, n'#227'o remover este coment'#225'rio nem al' +
        'terar a posi'#231#227'o neste SQL'
      
        '       P.CODIGO, P.TIPO, P.CNPJCPF, P.RAZAOSOCIAL, P.FANTASIA, P' +
        '.ENDERECO, P.UF, P.TIPO_PADRAO, P.BLOQUEADO,'
      
        '       P.FONE1, P.EMAIL, P.DATACADASTRO, P.LIMITE_DESCONTO, P.AT' +
        'IVO, P.SITUACAO, P.PRIORIDADE_PRODUCAO, P.DATANASCIMENTO, P.ANIV' +
        'ERSARIO,'
      
        '       ASS.RAZAOSOCIAL as ASSOCIADO_RAZAO, ASS.FANTASIA as ASSOC' +
        'IADO_FANTASIA,'
      
        '       C.DESCRICAO as CIDADE, REP.RAZAOSOCIAL as REPRESENTANTE_R' +
        'AZAO, REP.FANTASIA as REPRESENTANTE_FANTASIA, PT.DESCRICAO as PE' +
        'SSOA_TABELA_PRECO'
      '      '
      'from PESSOAS P'
      
        'left join PESSOAS ASS on (P.PESSOA_ASSOCIADO_CODIGO = ASS.CODIGO' +
        ')'
      
        'left join PESSOAS REP on (P.PESSOA_REPRESENTANTE_CODIGO = REP.CO' +
        'DIGO)'
      'left join CIDADES C on (C.CODIGO = P.CODCIDADE)'
      
        'left join PRODUTO_TABELA  PT on (PT.CODIGO = P.CODPRODUTO_TABELA' +
        ')')
    Left = 266
    Top = 303
  end
  inherited Pessoas: TFDQuery
    Left = 266
  end
  inherited TransaFD: TFDTransaction
    Left = 295
  end
  inherited WRFormataCamposDataSets1: TWRFormataCamposDataSets
    Left = 407
  end
end
