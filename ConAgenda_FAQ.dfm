inherited ConsuAgenda_FAQ: TConsuAgenda_FAQ
  Caption = 'Base de Conhecimento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OnCustomDrawCell = GridConsultaDBTableView1CustomDrawCell
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 402
        end
        object GridConsultaDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Width = 41
        end
        object GridConsultaDBTableView1RESPOSTA: TcxGridDBColumn
          Caption = 'Resposta / Solu'#231#227'o'
          DataBinding.FieldName = 'RESPOSTA'
          PropertiesClassName = 'TcxRichEditProperties'
          Properties.MemoMode = True
          Properties.ReadOnly = True
          Options.EditAutoHeight = ieahNone
          Width = 270
        end
        object GridConsultaDBTableView1VALOR: TcxGridDBColumn
          Caption = 'Valor R$'
          DataBinding.FieldName = 'VALOR'
        end
        object GridConsultaDBTableView1TAG: TcxGridDBColumn
          Caption = 'Tag'
          DataBinding.FieldName = 'TAG'
          Width = 177
        end
      end
    end
    inherited LbQuantRegistrosInicial: TcxLabel
      Left = 1387
      Top = 60
      ExplicitLeft = 1387
      ExplicitTop = 60
    end
    inherited LbQuantRegistrosFinal: TcxLabel
      Left = 1427
      Top = 60
      ExplicitLeft = 1427
      ExplicitTop = 60
    end
    inherited BtnPaginaAnterior: TcxButton
      TabOrder = 28
    end
    inherited LbFiltosAtivos: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa1: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa2: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa3: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa4: TcxLabel
      AnchorY = 53
    end
    inherited LbTotalRegistros: TcxLabel
      Left = 610
      ExplicitLeft = 610
    end
    inherited cxButton2: TcxButton
      TabOrder = 20
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Base de Conhecimento'
      ExplicitWidth = 254
    end
    object CbAtivo: TcxComboBox [28]
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '<Todos>'
        'S'
        'N')
      Style.HotTrack = False
      TabOrder = 21
      Text = 'S'
      Visible = False
      Width = 63
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 254
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Index = -1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Ativo:'
      Control = CbAtivo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 42377.585697222210000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'select * '
      'from AGENDA_FAQ'
      'order by INDICE1, INDICE2, INDICE3, INDICE4')
    object ConsultaCODIGO: TStringField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 600
    end
    object ConsultaRESPOSTA: TBlobField [2]
      FieldName = 'RESPOSTA'
      Origin = 'RESPOSTA'
    end
    object ConsultaVALOR: TFloatField [3]
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object ConsultaTIPO: TStringField [4]
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object ConsultaATIVO: TStringField [5]
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaINDICE1: TIntegerField [6]
      FieldName = 'INDICE1'
      Origin = 'INDICE1'
    end
    object ConsultaINDICE2: TIntegerField [7]
      FieldName = 'INDICE2'
      Origin = 'INDICE2'
    end
    object ConsultaINDICE3: TIntegerField [8]
      FieldName = 'INDICE3'
      Origin = 'INDICE3'
    end
    object ConsultaINDICE4: TIntegerField [9]
      FieldName = 'INDICE4'
      Origin = 'INDICE4'
    end
    object ConsultaDATA: TSQLTimeStampField [10]
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object ConsultaTAG: TStringField [11]
      FieldName = 'TAG'
      Origin = 'TAG'
      Size = 255
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
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
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmAgenda_FAQ'
    FormClassConsulta = 'TConsuAgenda_FAQ'
  end
end
