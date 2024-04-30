inherited ConsuSetor: TConsuSetor
  Caption = 'Setores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      Left = 132
      Width = 649
      TabOrder = 16
      ExplicitLeft = 132
      ExplicitWidth = 649
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 405
        end
        object GridConsultaDBTableView1RESPONSAVEL: TcxGridDBColumn
          Caption = 'Respons'#225'vel'
          DataBinding.FieldName = 'RESPONSAVEL'
          Width = 277
        end
        object GridConsultaDBTableView1PARENT: TcxGridDBColumn
          Caption = 'Ordem'
          DataBinding.FieldName = 'PARENT'
          Visible = False
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 39
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Atera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
      end
    end
    inherited EdtPesquisa: TcxButtonEdit
      TabOrder = 14
      ExplicitWidth = 343
      Width = 343
    end
    inherited BtnPesquisar: TcxButton
      Left = 730
      TabOrder = 28
      ExplicitLeft = 730
    end
    inherited BtnPaginaAnterior: TcxButton
      TabOrder = 25
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
    inherited BtnProximaPagina: TcxButton
      TabOrder = 29
    end
    inherited GridSubGrid: TcxGrid
      Width = 131
      TabOrder = 15
      ExplicitWidth = 131
    end
    inherited pnlFlipRotate: TPanel
      Left = 1238
      Width = 24
      TabOrder = 18
      ExplicitLeft = 1238
      ExplicitWidth = 24
    end
    inherited btnDashBoard: TcxButton
      Left = 1092
      TabOrder = 0
      ExplicitLeft = 1092
    end
    inherited btnTabela: TcxButton
      Left = 1119
      SpeedButtonOptions.Down = False
      TabOrder = 1
      ExplicitLeft = 1119
    end
    inherited btnKanbam: TcxButton
      Left = 1256
      ExplicitLeft = 1256
    end
    inherited btnNovoCadastro: TcxButton
      Left = 1173
      TabOrder = 3
      ExplicitLeft = 1173
    end
    inherited btnMenu: TcxButton
      Left = 1236
      TabOrder = 4
      ExplicitLeft = 1236
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Setores'
      ExplicitWidth = 85
    end
    inherited edtRapidoFiltro: TcxComboBox
      TabOrder = 13
    end
    inherited edtRapidoAgrupar: TcxComboBox
      TabOrder = 12
    end
    object GridArvore: TcxDBTreeList [28]
      Left = 782
      Top = 64
      Width = 453
      Height = 500
      Bands = <
        item
        end>
      DataController.DataSource = DSSetorTreelist
      DataController.ParentField = 'PARENT'
      DataController.KeyField = 'CODIGO'
      DragMode = dmAutomatic
      Navigator.Buttons.CustomButtons = <>
      OptionsView.ColumnAutoWidth = True
      RootValue = -1
      TabOrder = 17
      OnDragOver = GridArvoreDragOver
      object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
        Caption.Text = 'C'#243'digo'
        DataBinding.FieldName = 'CODIGO'
        Options.Editing = False
        Width = 72
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn
        Caption.Text = 'Setor'
        DataBinding.FieldName = 'DESCRICAO'
        Options.Editing = False
        Width = 741
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'DESCRICAO'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Caption.Text = 'Tipo'
        DataBinding.FieldName = 'TIPO'
        Width = 73
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object btnArvore: TcxButton [29]
      Left = 1146
      Top = 0
      Width = 26
      Height = 36
      Hint = 'Tabela'
      Anchors = [akTop, akRight]
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      Kind = cxbkDropDown
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 16
      OptionsImage.Glyph.SourceWidth = 16
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E477265656E7B66696C6C3A233033394332
        333B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A233732
        373237323B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
        31314331433B7D262331333B262331303B2623393B2E59656C6C6F777B66696C
        6C3A234646423131353B7D262331333B262331303B2623393B2E426C75657B66
        696C6C3A233131373744373B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
        74317B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
        3D22496E736572745472656556696577223E0D0A09093C7061746820636C6173
        733D2259656C6C6F772220643D224D31332C38483543342E342C382C342C372E
        362C342C37563363302D302E352C302E342D312C312D31683863302E362C302C
        312C302E352C312C3176344331342C372E362C31332E362C382C31332C387A20
        4D32362C3137762D3420202623393B2623393B63302D302E362D302E352D312D
        312D31682D38632D302E352C302D312C302E342D312C31763463302C302E352C
        302E352C312C312C3168384332352E352C31382C32362C31372E352C32362C31
        377A204D32362C3237762D3463302D302E352D302E352D312D312D31682D3863
        2D302E352C302D312C302E352D312C3120202623393B2623393B763463302C30
        2E352C302E352C312C312C3168384332352E352C32382C32362C32372E352C32
        362C32377A222F3E0D0A09093C706F6C79676F6E20636C6173733D22426C6163
        6B2220706F696E74733D2231342C31362031342C31342031302C31342031302C
        313020382C313020382C32362031342C32362031342C32342031302C32342031
        302C3136202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      OptionsImage.Spacing = 0
      SpeedButtonOptions.GroupIndex = 77
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Down = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
      OnDropDownMenuPopup = btnArvoreDropDownMenuPopup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited LiEdtPesquisa: TdxLayoutItem
      ControlOptions.OriginalWidth = 343
    end
    inherited GrupoCabecalhoBottom: TdxLayoutGroup
      Index = 0
    end
    inherited LiLbFiltosAtivos: TdxLayoutItem
      Index = 2
    end
    inherited LipnlFlipRotate: TdxLayoutItem
      Index = 3
    end
    inherited splFlipRotate: TdxLayoutSplitterItem
      Index = 2
    end
    inherited GrupoFrame: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited libtnDashBoard: TdxLayoutItem
      Index = 0
    end
    inherited LibtnTabela: TdxLayoutItem
      Index = 1
    end
    inherited LibtnNovoCadastro: TdxLayoutItem
      Index = 3
    end
    inherited LibtnMenu: TdxLayoutItem
      Index = 5
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 85
      Index = 6
    end
    inherited liSeparadorFrame: TdxLayoutSeparatorItem
      Index = 4
    end
    inherited LiedtRapidoData: TdxLayoutItem
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      ButtonOptions.Buttons = <>
      Index = -1
    end
    object liGridArvore: TdxLayoutItem
      Parent = GrupoDados
      AlignHorz = ahClient
      AlignVert = avClient
      Visible = False
      Control = GridArvore
      ControlOptions.OriginalHeight = 598
      ControlOptions.OriginalWidth = 868
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoFrame
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = #193'rvore'
      CaptionOptions.Visible = False
      Control = btnArvore
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 41943.435728136580000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      
        'select S.CODIGO, S.DESCRICAO,S.PARENT,S.ATIVO,S.DT_ALTERACAO, P.' +
        'RAZAOSOCIAL as RESPONSAVEL'
      'from SETOR S'
      'left join PESSOAS P on (S.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO)')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object ConsultaRESPONSAVEL: TStringField [2]
      AutoGenerateValue = arDefault
      FieldName = 'RESPONSAVEL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object ConsultaPARENT: TIntegerField [3]
      FieldName = 'PARENT'
      Origin = 'PARENT'
    end
    object ConsultaATIVO: TStringField [4]
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField [5]
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
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
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmSetor'
    FormClassConsulta = 'TConsuSetor'
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'SETOR'
    Modulo = 'RH'
  end
  object SetorTreelist: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select S.*, P.RAZAOSOCIAL'
      'from SETOR S'
      'left join PESSOAS P on (P.CODIGO = S.PESSOA_RESPONSAVEL_CODIGO)'
      '')
    Left = 385
    Top = 486
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object StringField2: TStringField
      FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
      Origin = 'PESSOA_RESPONSAVEL_CODIGO'
      Size = 10
    end
    object StringField3: TStringField
      FieldName = 'PESSOA_RESPONSAVEL_TIPO'
      Origin = 'PESSOA_RESPONSAVEL_TIPO'
      Size = 3
    end
    object IntegerField2: TIntegerField
      FieldName = 'PESSOA_RESPONSAVEL_SEQUENCIA'
      Origin = 'PESSOA_RESPONSAVEL_SEQUENCIA'
    end
    object StringField4: TStringField
      FieldName = 'SETOR_TIPO'
      Origin = 'SETOR_TIPO'
      Size = 15
    end
    object BlobField1: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object IntegerField3: TIntegerField
      FieldName = 'PARENT'
      Origin = 'PARENT'
    end
    object StringField5: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'KANBAN'
      Origin = 'KANBAN'
      Size = 1
    end
    object StringField7: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object StringField8: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  object DSSetorTreelist: TDataSource
    DataSet = SetorTreelist
    OnStateChange = DSStateChange
    Left = 413
    Top = 486
  end
end
