inherited ConsuProducao_Situacao: TConsuProducao_Situacao
  Caption = 'Situa'#231#245'es de Produ'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      Left = -26
      TabOrder = 16
      ExplicitLeft = -26
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 497
        end
        object GridConsultaDBTableView1COR: TcxGridDBColumn
          Caption = 'Cor'
          DataBinding.FieldName = 'COR'
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.CustomColors = <>
          Width = 34
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 91
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 38
        end
        object GridConsultaDBTableView1FILA: TcxGridDBColumn
          Caption = 'Fila'
          DataBinding.FieldName = 'FILA'
          SortIndex = 0
          SortOrder = soDescending
          Width = 51
        end
      end
    end
    inherited EdtPesquisa: TcxButtonEdit
      Left = 664
      TabOrder = 14
      ExplicitLeft = 664
    end
    inherited BtnPesquisar: TcxButton
      Left = 9235
      TabOrder = 26
      ExplicitLeft = 9235
    end
    inherited LbQuantRegistrosInicial: TcxLabel
      Left = 9235
      ExplicitLeft = 9235
    end
    inherited LbQuantRegistrosFinal: TcxLabel
      Left = 9235
      ExplicitLeft = 9235
    end
    inherited BtnPaginaAnterior: TcxButton
      Left = 9235
      TabOrder = 25
      ExplicitLeft = 9235
    end
    inherited LbFiltosAtivos: TcxLabel
      Left = -255
      ExplicitLeft = -255
      AnchorY = 53
    end
    inherited LbPesquisaFixa1: TcxLabel
      Left = -117
      ExplicitLeft = -117
      AnchorY = 53
    end
    inherited LbPesquisaFixa2: TcxLabel
      Left = -48
      ExplicitLeft = -48
      AnchorY = 53
    end
    inherited LbPesquisaFixa3: TcxLabel
      Left = 24
      ExplicitLeft = 24
      AnchorY = 53
    end
    inherited LbPesquisaFixa4: TcxLabel
      Left = 46
      ExplicitLeft = 46
      AnchorY = 53
    end
    inherited BtnProximaPagina: TcxButton
      Left = 9235
      TabOrder = 28
      ExplicitLeft = 9235
    end
    inherited LbTotalRegistros: TcxLabel
      Left = 9235
      ExplicitLeft = 9235
    end
    inherited LbNumeroRegistrosPagina: TcxLabel
      Left = 9235
      ExplicitLeft = 9235
    end
    inherited cxButton2: TcxButton
      Left = 9235
      TabOrder = 20
      ExplicitLeft = 9235
    end
    inherited BtnGoogleMais: TcxButton
      Left = 9235
      TabOrder = 21
      ExplicitLeft = 9235
    end
    inherited GridSubGrid: TcxGrid
      Left = -255
      TabOrder = 15
      ExplicitLeft = -255
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      Left = 9235
      TabOrder = 22
      ExplicitLeft = 9235
    end
    inherited pnlFlipRotate: TPanel
      Left = 943
      TabOrder = 17
      ExplicitLeft = 943
    end
    inherited btnDashBoard: TcxButton
      Left = 899
      TabOrder = 2
      ExplicitLeft = 899
    end
    inherited btnTabela: TcxButton
      Left = 926
      TabOrder = 3
      ExplicitLeft = 926
    end
    inherited btnKanbam: TcxButton
      Left = 9235
      TabOrder = 27
      ExplicitLeft = 9235
    end
    inherited btnNovoCadastro: TcxButton
      Left = 836
      TabOrder = 1
      ExplicitLeft = 836
    end
    inherited btnMenu: TcxButton
      Left = 953
      TabOrder = 4
      ExplicitLeft = 953
    end
    inherited LbTitulo: TcxLabel
      Left = -255
      Caption = 'Situa'#231#245'es de produ'#231#227'o'
      ExplicitLeft = -255
      ExplicitWidth = 251
    end
    inherited edtRapidoFiltro: TcxComboBox
      Left = 474
      TabOrder = 13
      ExplicitLeft = 474
    end
    inherited edtRapidoAgrupar: TcxComboBox
      Left = 333
      TabOrder = 12
      ExplicitLeft = 333
    end
    inherited edtRapidoData: TcxComboBox
      Left = 124
      TabOrder = 11
      ExplicitLeft = 124
    end
    object cxButton1: TcxButton [28]
      Left = 780
      Top = 0
      Width = 55
      Height = 36
      Hint = 'Novo Cadastro'
      Anchors = [akTop, akRight]
      Caption = 'Ordem'
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      LookAndFeel.NativeStyle = True
      OptionsImage.Spacing = 0
      SpeedButtonOptions.GroupIndex = 77
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton1Click
    end
    inherited libtnDashBoard: TdxLayoutItem
      Index = 3
    end
    inherited LibtnTabela: TdxLayoutItem
      Index = 4
    end
    inherited LibtnNovoCadastro: TdxLayoutItem
      Index = 1
    end
    inherited LibtnMenu: TdxLayoutItem
      Index = 5
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 251
      Index = 6
    end
    inherited liSeparadorFrame: TdxLayoutSeparatorItem
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoFrame
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Ordem'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 55
      ControlOptions.ShowBorder = False
      Index = 0
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
      ReportDocument.CreationDate = 44080.361866886570000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PRODUCAO_SITUACAO')
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
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmProducao_Situacao'
    FormClassConsulta = 'TConsuProducao_Situacao'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUCAO_SITUACAO'
    Modulo = 'PRODUCAO'
  end
end
