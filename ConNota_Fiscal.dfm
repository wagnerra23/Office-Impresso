inherited ConsuNota_Fiscal: TConsuNota_Fiscal
  Caption = 'Notas Fiscais'
  ClientHeight = 496
  ClientWidth = 1267
  ExplicitWidth = 1283
  ExplicitHeight = 535
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1267
    Height = 477
    ExplicitWidth = 1267
    ExplicitHeight = 477
    inherited GridConsulta: TcxGrid
      Left = 206
      Width = 1020
      Height = 413
      ExplicitLeft = 206
      ExplicitWidth = 1020
      ExplicitHeight = 413
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OnCustomDrawCell = GridConsultaDBTableView1CustomDrawCell
        object GridConsultaDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Width = 100
        end
        object GridConsultaDBTableView1NF_NUMERO: TcxGridDBColumn
          Caption = 'N'#250'mero da NF'
          DataBinding.FieldName = 'NF_NUMERO'
          Width = 146
        end
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1CODEMPRESA: TcxGridDBColumn
          Caption = 'C'#243'd. Empresa'
          DataBinding.FieldName = 'CODEMPRESA'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1NF_DT_EMISSAO: TcxGridDBColumn
          Caption = 'Dt Emiss'#227'o'
          DataBinding.FieldName = 'NF_DT_EMISSAO'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'DD/MM/YYYY'
          Width = 100
        end
        object GridConsultaDBTableView1NF_RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'NF_RAZAOSOCIAL'
          Width = 314
        end
        object GridConsultaDBTableView1NF_SITUACAO: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'NF_SITUACAO'
          Width = 100
        end
        object GridConsultaDBTableView1CODVENDA: TcxGridDBColumn
          Caption = 'C'#243'd. Venda'
          DataBinding.FieldName = 'CODVENDA'
          Width = 100
        end
        object GridConsultaDBTableView1NF_NATUREZA_OPERACAO: TcxGridDBColumn
          Caption = 'Natureza da Opera'#231#227'o'
          DataBinding.FieldName = 'NF_NATUREZA_OPERACAO'
          Visible = False
          Width = 124
        end
        object GridConsultaDBTableView1NF_CHAVE: TcxGridDBColumn
          Caption = 'Chave'
          DataBinding.FieldName = 'NF_CHAVE'
          Visible = False
          Width = 263
        end
        object GridConsultaDBTableView1NF_PROTOCOLO: TcxGridDBColumn
          Caption = 'Protocolo'
          DataBinding.FieldName = 'NF_PROTOCOLO'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1AmbienteStr: TcxGridDBColumn
          Caption = 'Ambiente'
          DataBinding.FieldName = 'AmbienteStr'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1NF_PROTOCOLO_CANCELAMENTO: TcxGridDBColumn
          Caption = 'Protocolo de Cancelamento'
          DataBinding.FieldName = 'NF_PROTOCOLO_CANCELAMENTO'
          Visible = False
          Width = 156
        end
        object GridConsultaDBTableView1NF_DT_CANCELAMENTO: TcxGridDBColumn
          Caption = 'Dt. Cancelamento'
          DataBinding.FieldName = 'NF_DT_CANCELAMENTO'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'DD/MM/YYYY'
          Width = 110
        end
        object GridConsultaDBTableView1MOTIVO_CANCELAMENTO: TcxGridDBColumn
          Caption = 'Cancelamento Motivo'
          DataBinding.FieldName = 'MOTIVO_CANCELAMENTO'
          Visible = False
          Width = 137
        end
        object GridConsultaDBTableView1NF_MOTIVO_STATUS: TcxGridDBColumn
          Caption = 'Motivo do Status'
          DataBinding.FieldName = 'NF_MOTIVO_STATUS'
          Visible = False
          Width = 123
        end
        object GridConsultaDBTableView1NF_SEQUENCIA_EVENTO: TcxGridDBColumn
          Caption = 'Sequ'#234'ncia do Evento'
          DataBinding.FieldName = 'NF_SEQUENCIA_EVENTO'
          Visible = False
          Width = 144
        end
        object GridConsultaDBTableView1NF_CNPJCPF_DESTINO: TcxGridDBColumn
          Caption = 'CNPJ / CPF do Destinat'#225'rio'
          DataBinding.FieldName = 'NF_CNPJCPF_DESTINO'
          Width = 191
        end
        object GridConsultaDBTableView1SERIE: TcxGridDBColumn
          Caption = 'S'#233'rie'
          DataBinding.FieldName = 'SERIE'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1NF_MODELO: TcxGridDBColumn
          Caption = 'Modelo'
          DataBinding.FieldName = 'NF_MODELO'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1NF_CNPJ: TcxGridDBColumn
          Caption = 'CNPJ do Emitente'
          DataBinding.FieldName = 'NF_CNPJ'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1NF_NUM_LOTE: TcxGridDBColumn
          Caption = 'Lote'
          DataBinding.FieldName = 'NF_NUM_LOTE'
          Visible = False
          Width = 100
        end
        object GridConsultaDBTableView1TipoStr: TcxGridDBColumn
          Caption = 'Entrada / Sa'#237'da'
          DataBinding.FieldName = 'TipoStr'
          Width = 121
        end
        object GridConsultaDBTableView1TOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL'
        end
        object GridConsultaDBTableView1NF_VPIS: TcxGridDBColumn
          DataBinding.FieldName = 'NF_VPIS'
        end
        object GridConsultaDBTableView1NF_VCOFINS: TcxGridDBColumn
          DataBinding.FieldName = 'NF_VCOFINS'
        end
        object GridConsultaDBTableView1NF_VST: TcxGridDBColumn
          DataBinding.FieldName = 'NF_VST'
        end
      end
    end
    inherited EdtPesquisa: TcxButtonEdit
      Left = 952
      ExplicitLeft = 952
    end
    inherited BtnPaginaAnterior: TcxButton
      Left = 436
      Top = 452
      ExplicitLeft = 436
      ExplicitTop = 452
    end
    inherited LbFiltosAtivos: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa1: TcxLabel
      Left = 171
      ExplicitLeft = 171
      AnchorY = 53
    end
    inherited LbPesquisaFixa2: TcxLabel
      Left = 240
      ExplicitLeft = 240
      AnchorY = 53
    end
    inherited LbPesquisaFixa3: TcxLabel
      Left = 312
      ExplicitLeft = 312
      AnchorY = 53
    end
    inherited LbPesquisaFixa4: TcxLabel
      Left = 334
      ExplicitLeft = 334
      AnchorY = 53
    end
    inherited BtnProximaPagina: TcxButton
      Left = 627
      Top = 452
      TabOrder = 35
      ExplicitLeft = 627
      ExplicitTop = 452
    end
    inherited LbTotalRegistros: TcxLabel
      Left = 542
      Top = 455
      ExplicitLeft = 542
      ExplicitTop = 455
    end
    inherited LbNumeroRegistrosPagina: TcxLabel
      Left = 577
      Top = 455
      ExplicitLeft = 577
      ExplicitTop = 455
    end
    inherited cxButton2: TcxButton
      Left = 733
      Top = 452
      ExplicitLeft = 733
      ExplicitTop = 452
    end
    inherited BtnGoogleMais: TcxButton
      Left = 760
      Top = 452
      TabOrder = 25
      ExplicitLeft = 760
      ExplicitTop = 452
    end
    inherited GridSubGrid: TcxGrid
      Width = 205
      Height = 413
      ExplicitWidth = 205
      ExplicitHeight = 413
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 22
    end
    inherited pnlFlipRotate: TPanel
      Left = 1229
      Width = 38
      Height = 413
      ExplicitLeft = 1229
      ExplicitWidth = 38
      ExplicitHeight = 413
    end
    inherited btnDashBoard: TcxButton
      Left = 1187
      ExplicitLeft = 1187
    end
    inherited btnTabela: TcxButton
      Left = 1214
      ExplicitLeft = 1214
    end
    inherited btnKanbam: TcxButton
      TabOrder = 34
    end
    inherited btnNovoCadastro: TcxButton
      Left = 1124
      ExplicitLeft = 1124
    end
    inherited btnMenu: TcxButton
      Left = 1241
      ExplicitLeft = 1241
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Notas Fiscais'
      ExplicitWidth = 143
    end
    inherited edtRapidoFiltro: TcxComboBox
      Left = 762
      ExplicitLeft = 762
    end
    inherited edtRapidoAgrupar: TcxComboBox
      Left = 621
      ExplicitLeft = 621
    end
    inherited edtRapidoData: TcxComboBox
      Left = 412
      ExplicitLeft = 412
    end
    object WRButtonFlat1: TWRButtonFlat [28]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = ActFiltroGrupoTipo
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 26
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object WRButtonFlat2: TWRButtonFlat [29]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = ActNFVisualizar
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
    end
    object WRButtonFlat3: TWRButtonFlat [30]
      Left = 10000
      Top = 10000
      Width = 126
      Height = 25
      Action = ActNFEnviarPorEmail
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 29
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object WRButtonFlat7: TWRButtonFlat [31]
      Left = 10000
      Top = 10000
      Width = 111
      Height = 25
      Caption = 'Outras A'#231#245'es'
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      DropDownMenu = MenuOutrasAcoes
      Kind = cxbkDropDown
      TabOrder = 27
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object WRButtonFlat8: TWRButtonFlat [32]
      Left = 10000
      Top = 10000
      Width = 101
      Height = 25
      Action = ActNFSalvarPDF
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 31
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object WRButtonFlat4: TWRButtonFlat [33]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = ActFiltroGrupoSituacao
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 30
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object WRButtonFlat5: TWRButtonFlat [34]
      Left = 10000
      Top = 10000
      Width = 118
      Height = 25
      Action = ActFiltroGrupoEntradaSaida
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
    object WRButtonFlat6: TWRButtonFlat [35]
      Left = 10000
      Top = 10000
      Width = 162
      Height = 25
      Action = ActNFEnviarContabilidade
      Colors.Default = 10073889
      Colors.DefaultText = clWhite
      Colors.Hot = 6979607
      Colors.Pressed = 6973952
      TabOrder = 28
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    inherited LiGridSubGrid: TdxLayoutItem
      Visible = True
      ControlOptions.OriginalWidth = 205
    end
    inherited GrupoFiltrosAcoes: TdxLayoutGroup
      Visible = True
      ItemIndex = 2
    end
    inherited LiBtnSubGrdTODOS: TdxLayoutItem
      Index = 6
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 143
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoFiltrosAcoes
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = WRButtonFlat1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoFiltrosAcoes
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = WRButtonFlat2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoFiltrosAcoes
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = WRButtonFlat3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = GrupoFiltrosAcoes
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = WRButtonFlat7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = GrupoFiltrosAcoes
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = WRButtonFlat8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = GrupoFiltrosAcoes
      AlignHorz = ahRight
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = GrupoFiltrosAcoes
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = WRButtonFlat4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = GrupoFiltrosAcoes
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = WRButtonFlat5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = GrupoFiltrosAcoes
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = WRButtonFlat6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 162
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxStatusBar1: TdxRibbonStatusBar
    Top = 477
    Width = 1267
    ExplicitTop = 477
    ExplicitWidth = 1267
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44078.476421608790000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    OnCalcFields = ConsultaCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    SQL.Strings = (
      'select NF.*, '
      '       case NF.NF_TIPO'
      '         when 0 then '#39'Entrada'#39
      '         when 1 then '#39'Sa'#237'da'#39
      '       else'
      '         '#39'Desconhecido'#39' '
      '       end as TipoStr'
      'from NOTA_FISCAL NF')
    object ConsultaAmbienteStr: TStringField [0]
      FieldKind = fkCalculated
      FieldName = 'AmbienteStr'
      Size = 50
      Calculated = True
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
  inherited MenuAcoes: TPopupMenu
    object Visualizar1: TMenuItem [0]
      Action = ActNFVisualizar
    end
    object SalvaremPDF1: TMenuItem [1]
      Action = ActNFSalvarPDF
    end
  end
  inherited ActListConsulta: TActionList
    object ActNFVisualizar: TAction
      Category = 'Nota Fiscal'
      Caption = 'Visualizar'
      OnExecute = ActNFVisualizarExecute
    end
    object ActNFVisualizarXML: TAction
      Category = 'Nota Fiscal'
      Caption = 'Visualizar XML'
      OnExecute = ActNFVisualizarXMLExecute
    end
    object ActNFEnviarPorEmail: TAction
      Category = 'Nota Fiscal'
      Caption = 'Enviar por Email'
      OnExecute = ActNFEnviarPorEmailExecute
    end
    object ActNFSalvarPDF: TAction
      Category = 'Nota Fiscal'
      Caption = 'Salvar em PDF'
      OnExecute = ActNFSalvarPDFExecute
    end
    object ActNFExportarXML: TAction
      Category = 'Nota Fiscal'
      Caption = 'Exportar XML'
      OnExecute = ActNFExportarXMLExecute
    end
    object ActNFVisualizarDanfeSemValidacoes: TAction
      Category = 'Nota Fiscal'
      Caption = 'Visualizar DANFe Sem Valida'#231#245'es'
    end
    object ActFiltroGrupoTipo: TAction
      Category = 'Filtros'
      AutoCheck = True
      Caption = 'TIPO'
      GroupIndex = 33
      OnExecute = ActFiltrosGrupoExecute
    end
    object ActFiltroGrupoSituacao: TAction
      Category = 'Filtros'
      AutoCheck = True
      Caption = 'SITUA'#199#195'O'
      GroupIndex = 33
      OnExecute = ActFiltrosGrupoExecute
    end
    object ActFiltroGrupoEntradaSaida: TAction
      Category = 'Filtros'
      AutoCheck = True
      Caption = 'ENTRADA / SA'#205'DA'
      GroupIndex = 33
      OnExecute = ActFiltrosGrupoExecute
    end
    object ActNFEnviarContabilidade: TAction
      Category = 'Nota Fiscal'
      Caption = 'Enviar para Contabilidade'
      OnExecute = ActNFEnviarContabilidadeExecute
    end
    object ActFiltroAmbienteProducao: TAction
      Category = 'Filtros'
      AutoCheck = True
      Caption = 'Ambiente de Produ'#231#227'o'
      Checked = True
      GroupIndex = 32
      OnExecute = ActFiltrosGrupoExecute
    end
    object ActFiltroAmbienteHomologacao: TAction
      Category = 'Filtros'
      AutoCheck = True
      Caption = 'Ambiente de Homologa'#231#227'o'
      GroupIndex = 32
      OnExecute = ActFiltrosGrupoExecute
    end
    object ActFiltroAmbienteTodos: TAction
      Category = 'Filtros'
      AutoCheck = True
      Caption = 'Qualquer Ambiente'
      GroupIndex = 32
      OnExecute = ActFiltrosGrupoExecute
    end
    object ActNFSalvarZip: TAction
      Category = 'Nota Fiscal'
      Caption = 'Salvar notas em arquivo compactado'
      OnExecute = ActNFSalvarZipExecute
    end
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmNota_Fiscal'
    FormClassConsulta = 'TConsuNota_Fiscal'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
  object MenuOutrasAcoes: TPopupMenu
    Left = 603
    Top = 333
    object VisualizarXML1: TMenuItem
      Action = ActNFVisualizarXML
    end
    object ActNFExportarXML1: TMenuItem
      Action = ActNFExportarXML
    end
    object VisualizarDANFeSemValidaes1: TMenuItem
      Action = ActNFVisualizarDanfeSemValidacoes
    end
    object Salvarnotasemarquivocompactado1: TMenuItem
      Action = ActNFSalvarZip
    end
  end
  object SdlArquivoXML: TSaveDialog
    Filter = 'Arquivo XML|*.xml|Todos|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 519
    Top = 361
  end
  object Nota_FiscalEventos: TFDQuery
    MasterSource = DS
    MasterFields = 'NF_CHAVE'
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select *'
      'from NOTA_FISCAL'
      'where (TIPO in ('#39'CCe'#39', '#39'NFeCancel'#39', '#39'NFSeCancel'#39'))  '
      '      and (NF_CHAVE = :NF_CHAVE)')
    Left = 267
    Top = 361
    ParamData = <
      item
        Name = 'NF_CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 44
      end>
  end
  object DSNota_FiscalEventos: TDataSource
    DataSet = Nota_FiscalEventos
    Left = 295
    Top = 361
  end
  object NotaFiscalInutilizada: TFDQuery
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select *'
      'from NOTA_FISCAL'
      'where (TIPO = '#39'NFeInut'#39')'
      '      and (NF_AMBIENTE = :Ambiente)'
      '      and (NF_DT_INUTILIZACAO between :DtInicio and :DtFim)')
    Left = 323
    Top = 361
    ParamData = <
      item
        Name = 'AMBIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DTINICIO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'DTFIM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object SdlArquivoZip: TSaveDialog
    DefaultExt = '.zip'
    Filter = 'Arquivo Compactado|*.zip'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 547
    Top = 361
  end
end
