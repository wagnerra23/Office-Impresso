inherited ConsuNF_Entrada: TConsuNF_Entrada
  Caption = 'Compra'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      Left = 245
      Width = 1215
      Height = 462
      TabOrder = 18
      ExplicitLeft = 245
      ExplicitWidth = 1215
      ExplicitHeight = 462
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'TOTAL'
            Column = GridConsultaDBTableView1TOTAL
          end>
        DataController.Summary.OnAfterSummary = GridConsultaDBTableView1DataControllerSummaryAfterSummary
        object GridConsultaDBTableView1DATA: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DATA'
          SortIndex = 0
          SortOrder = soDescending
          Width = 156
        end
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object GridConsultaDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Options.CellMerging = True
        end
        object GridConsultaDBTableView1NUN_NF: TcxGridDBColumn
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'NUN_NF'
        end
        object GridConsultaDBTableView1PESSOA_FORNECEDOR_CODIGO: TcxGridDBColumn
          Caption = 'C'#243'd. Fornecedor'
          DataBinding.FieldName = 'PESSOA_FORNECEDOR_CODIGO'
          Visible = False
        end
        object GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 262
        end
        object GridConsultaDBTableView1ATUALIZA_ESTOQUE: TcxGridDBColumn
          Caption = 'Estoque'
          DataBinding.FieldName = 'ATUALIZA_ESTOQUE'
          Width = 46
        end
        object GridConsultaDBTableView1GERA_FINANCEIRO: TcxGridDBColumn
          Caption = 'Financeiro'
          DataBinding.FieldName = 'GERA_FINANCEIRO'
          Width = 55
        end
        object GridConsultaDBTableView1TOTAL: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TOTAL'
          Width = 127
        end
        object GridConsultaDBTableView1USUARIO: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USUARIO'
        end
        object GridConsultaDBTableView1DT_NOTA: TcxGridDBColumn
          Caption = 'Dt. Nota'
          DataBinding.FieldName = 'DT_NOTA'
          Width = 145
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 37
        end
        object GridConsultaDBTableView1QUANTIDADE: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'QUANTIDADE'
        end
        object GridConsultaDBTableView1DT_FATURAMENTO: TcxGridDBColumn
          Caption = 'Dt. Faturamento'
          DataBinding.FieldName = 'DT_FATURAMENTO'
          Width = 145
        end
        object GridConsultaDBTableView1EMPRESA: TcxGridDBColumn
          Caption = 'Empresa'
          DataBinding.FieldName = 'EMPRESA'
          Visible = False
        end
        object GridConsultaDBTableView1NF_CHAVE: TcxGridDBColumn
          Caption = 'Chave de Acesso'
          DataBinding.FieldName = 'NF_CHAVE'
        end
      end
    end
    inherited EdtPesquisa: TcxButtonEdit
      Left = 1192
      TabOrder = 16
      ExplicitLeft = 1192
    end
    inherited BtnPesquisar: TcxButton
      TabOrder = 29
    end
    inherited LbQuantRegistrosInicial: TcxLabel
      Left = 1204
      ExplicitLeft = 1204
    end
    inherited LbQuantRegistrosFinal: TcxLabel
      Left = 1244
      ExplicitLeft = 1244
    end
    inherited BtnPaginaAnterior: TcxButton
      Left = 556
      Top = 533
      Visible = True
      ExplicitLeft = 556
      ExplicitTop = 533
    end
    inherited LbFiltosAtivos: TcxLabel
      Left = 273
      ExplicitLeft = 273
      AnchorY = 53
    end
    inherited LbPesquisaFixa1: TcxLabel
      Left = 411
      ExplicitLeft = 411
      ExplicitHeight = 21
      AnchorY = 53
    end
    inherited LbPesquisaFixa2: TcxLabel
      Left = 480
      ExplicitLeft = 480
      ExplicitHeight = 21
      Height = 21
      AnchorY = 53
    end
    inherited LbPesquisaFixa3: TcxLabel
      Left = 552
      ExplicitLeft = 552
      ExplicitHeight = 21
      AnchorY = 53
    end
    inherited LbPesquisaFixa4: TcxLabel
      Left = 574
      ExplicitLeft = 574
      ExplicitHeight = 21
      Height = 21
      AnchorY = 53
    end
    inherited BtnProximaPagina: TcxButton
      Left = 747
      Top = 533
      TabOrder = 23
      Visible = True
      ExplicitLeft = 747
      ExplicitTop = 533
    end
    inherited LbTotalRegistros: TcxLabel
      Left = 662
      Top = 536
      Visible = True
      ExplicitLeft = 662
      ExplicitTop = 536
    end
    inherited LbNumeroRegistrosPagina: TcxLabel
      Left = 697
      Top = 536
      Visible = True
      ExplicitLeft = 697
      ExplicitTop = 536
    end
    inherited cxButton2: TcxButton
      Left = 853
      Top = 533
      TabOrder = 24
      Visible = True
      ExplicitLeft = 853
      ExplicitTop = 533
    end
    inherited BtnGoogleMais: TcxButton
      Left = 880
      Top = 533
      TabOrder = 25
      Visible = True
      ExplicitLeft = 880
      ExplicitTop = 533
    end
    inherited GridSubGrid: TcxGrid
      Width = 244
      Height = 462
      TabOrder = 17
      ExplicitWidth = 244
      ExplicitHeight = 462
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 31
    end
    inherited pnlFlipRotate: TPanel
      Left = 1463
      Width = 44
      Height = 462
      TabOrder = 19
      ExplicitLeft = 1463
      ExplicitWidth = 44
      ExplicitHeight = 462
    end
    inherited btnDashBoard: TcxButton
      Left = 1427
      ExplicitLeft = 1427
    end
    inherited btnTabela: TcxButton
      Left = 1454
      ExplicitLeft = 1454
    end
    inherited btnKanbam: TcxButton
      TabOrder = 30
    end
    inherited btnNovoCadastro: TcxButton
      Left = 1364
      ExplicitLeft = 1364
    end
    inherited btnMenu: TcxButton
      Left = 1481
      ExplicitLeft = 1481
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Compra'
      ExplicitWidth = 90
    end
    inherited edtRapidoFiltro: TcxComboBox
      Left = 1002
      Properties.Items.Strings = (
        '-Filtros R'#225'pidos-'
        'Arquivados'
        'Empresa Ativa')
      TabOrder = 15
      ExplicitLeft = 1002
    end
    inherited edtRapidoAgrupar: TcxComboBox
      Left = 861
      Properties.Items.Strings = (
        '-Agrupar Por-'
        'Tipo'
        'Fornecedor'
        'Usu'#225'rio'
        'Empresa'
        'Financeiro Atualizado'
        'Estoque Atualizado')
      TabOrder = 14
      ExplicitLeft = 861
    end
    inherited edtRapidoData: TcxComboBox
      Left = 652
      TabOrder = 13
      ExplicitLeft = 652
    end
    object EdtTotal: TcxCurrencyEdit [28]
      Left = 1331
      Top = 532
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 26
      Width = 176
    end
    object BtnConsultarSefaz: TWRButtonFlat [29]
      Left = 10000
      Top = 10000
      Width = 109
      Height = 25
      Caption = 'Consultar SEFAZ'
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 33
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      OnClick = BtnConsultarSefazClick
    end
    object WRButtonFlat1: TWRButtonFlat [30]
      Left = 10000
      Top = 10000
      Width = 117
      Height = 25
      Action = ActFiltroViewNotas
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 32
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object cxButton1: TcxButton [31]
      Left = 91
      Top = 0
      Width = 188
      Height = 36
      Hint = 'Novo Cadastro'
      Anchors = [akTop, akRight]
      Caption = 'Importar XML - Arquivo'
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      LookAndFeel.NativeStyle = True
      OptionsImage.Spacing = 0
      SpeedButtonOptions.GroupIndex = 77
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton1Click
    end
    object cxButton3: TcxButton [32]
      Left = 280
      Top = 0
      Width = 381
      Height = 36
      Hint = 'Novo Cadastro'
      Anchors = [akTop, akRight]
      Caption = 'Manifesta'#231#227'o do destinat'#225'rio (Importar XML autom'#225'tico)'
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      LookAndFeel.NativeStyle = True
      OptionsImage.Spacing = 0
      SpeedButtonOptions.GroupIndex = 77
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton3Click
    end
    object ComboEmpresa: TcxComboBox [33]
      Left = 0
      Top = 42
      AutoSize = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        '-Selecione uma empresa-')
      Properties.OnEditValueChanged = ComboEmpresaPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 7
      Text = '-Selecione uma empresa-'
      Height = 22
      Width = 273
    end
    inherited GrupoCabecalhoTopo: TdxLayoutGroup
      Index = 6
    end
    inherited GrupoCabecalhoBottom: TdxLayoutGroup
      AlignVert = avTop
      Index = 2
    end
    inherited LiLbFiltosAtivos: TdxLayoutItem
      Index = 1
    end
    inherited LiBtnProximaPagina: TdxLayoutItem
      AlignVert = avCenter
    end
    inherited GrupoNavegador: TdxLayoutGroup
      Parent = GrupoRodape
      AlignVert = avCenter
      Index = 0
    end
    inherited GrupoBotoesGoogle: TdxLayoutGroup
      AlignVert = avCenter
    end
    inherited LiGridSubGrid: TdxLayoutItem
      ControlOptions.OriginalWidth = 244
    end
    inherited GrupoFiltrosAcoes: TdxLayoutGroup
      Visible = True
    end
    inherited LiBtnSubGrdTODOS: TdxLayoutItem
      Index = 1
    end
    inherited GrupoFrame: TdxLayoutGroup
      ItemIndex = 7
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 90
    end
    inherited liedtRapidoFiltro: TdxLayoutItem
      Index = 5
    end
    inherited LiedtRapidoAgrupar: TdxLayoutItem
      Visible = True
      Index = 4
    end
    inherited LiedtRapidoData: TdxLayoutItem
      Index = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoRodape
      AlignHorz = ahRight
      Offsets.Bottom = 5
      Offsets.Top = 5
      CaptionOptions.Text = 'Total:'
      Control = EdtTotal
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 176
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoFiltrosAcoes
      AlignHorz = ahRight
      AlignVert = avClient
      Offsets.Left = 15
      CaptionOptions.Visible = False
      Control = BtnConsultarSefaz
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoRodape: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoFiltrosAcoes
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = WRButtonFlat1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = GrupoFrame
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 188
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = GrupoFrame
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 381
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = GrupoCabecalho
      AlignVert = avClient
      Control = ComboEmpresa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 273
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
      ReportDocument.CreationDate = 43558.421118506940000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      
        'select N.TIPO, N.NF_CHAVE, N.DATA, N.CODIGO, N.NUN_NF, N.PESSOA_' +
        'RESPONSAVEL_CODIGO, N.TOTAL, N.CODUSUARIO,N.CODEMPRESA,'
      
        '       N.DT_NOTA, N.ATUALIZA_ESTOQUE,  N.GERA_FINANCEIRO, N.QUAN' +
        'TIDADE, N.ATIVO, N.DT_FATURAMENTO'
      '       ,P.RAZAOSOCIAL, U.USUARIO, E.RAZAOSOCIAL AS EMPRESA'
      'from NF_ENTRADA N'
      'left join PESSOAS P on (N.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO)'
      'left join USUARIO U on (N.CODUSUARIO = U.CODIGO)'
      'left join EMPRESA E ON (N.CODEMPRESA = E.CODIGO)')
    object ConsultaTIPO: TStringField [0]
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
    object ConsultaCODIGO: TStringField [1]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object ConsultaNUN_NF: TIntegerField [2]
      FieldName = 'NUN_NF'
      Origin = 'NUN_NF'
    end
    object ConsultaDT_NOTA: TSQLTimeStampField [3]
      FieldName = 'DT_NOTA'
      Origin = 'DT_NOTA'
    end
    object ConsultaRAZAOSOCIAL: TStringField [4]
      AutoGenerateValue = arDefault
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object ConsultaUSUARIO: TStringField [5]
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object ConsultaATUALIZA_ESTOQUE: TStringField [6]
      FieldName = 'ATUALIZA_ESTOQUE'
      Origin = 'ATUALIZA_ESTOQUE'
      Size = 1
    end
    object ConsultaGERA_FINANCEIRO: TStringField [7]
      FieldName = 'GERA_FINANCEIRO'
      Origin = 'GERA_FINANCEIRO'
      Size = 1
    end
    object ConsultaQUANTIDADE: TFloatField [8]
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object ConsultaATIVO: TStringField [9]
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaPESSOA_RESPONSAVEL_CODIGO: TStringField [10]
      FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
      Origin = 'PESSOA_RESPONSAVEL_CODIGO'
      Size = 10
    end
    object ConsultaTOTAL: TFloatField [11]
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object ConsultaDT_FATURAMENTO: TSQLTimeStampField [12]
      FieldName = 'DT_FATURAMENTO'
      Origin = 'DT_FATURAMENTO'
    end
    object ConsultaDATA: TSQLTimeStampField [13]
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object ConsultaNF_CHAVE: TStringField [14]
      FieldName = 'NF_CHAVE'
      Origin = 'NF_CHAVE'
      Size = 100
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
  inherited ActListConsulta: TActionList
    object ActFiltroMostrarTodasEmpresas: TAction
      Category = 'Filtros'
      AutoCheck = True
      Caption = 'Mostrar Todas as Empresas'
    end
    object ActFiltroViewNotas: TAction
      Category = 'Filtros'
      AutoCheck = True
      Caption = 'Tipo de Notas'
      GroupIndex = 33
      OnExecute = ActFiltroViewNotasExecute
    end
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmNF_Entrada'
    FormClassConsulta = 'TConsuNF_Entrada'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = 'CODIGO'
    Tabela = 'NF_ENTRADA'
    Modulo = 'COMPRA'
  end
end
