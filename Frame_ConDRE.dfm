inherited ConsuConDRE: TConsuConDRE
  inherited pnlAgrupador: TPanel [0]
  end
  inherited pnlFiltros: TPanel [1]
  end
  inherited pnlIniciar: TPanel [2]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl [3]
    inherited GridConsulta: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1244
      Height = 349
      TabOrder = 13
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 1244
      ExplicitHeight = 349
    end
    inherited pnlFlipRotate: TPanel
      Left = 1090
      Width = 158
      TabOrder = 12
      ExplicitLeft = 1090
      ExplicitWidth = 158
    end
    object cxDBPivotGrid1: TcxDBPivotGrid [15]
      Left = 229
      Top = 72
      Width = 918
      Height = 548
      DataSource = DS
      Groups = <>
      TabOrder = 17
      OnDblClick = cxDBPivotGrid1DblClick
      object cxDBPivotGrid1CODPLANOCONTAS: TcxDBPivotGridField
        AreaIndex = 1
        DataBinding.FieldName = 'CODPLANOCONTAS'
        Visible = True
        UniqueName = 'CODPLANOCONTAS'
      end
      object cxDBPivotGrid1PLANOCONTAS: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 1
        DataBinding.FieldName = 'PLANOCONTAS'
        Visible = True
        UniqueName = 'PLANOCONTAS'
      end
      object cxDBPivotGrid1CODIGO: TcxDBPivotGridField
        AreaIndex = 0
        DataBinding.FieldName = 'CODIGO'
        Visible = True
        UniqueName = 'CODIGO'
      end
      object cxDBPivotGrid1DRE: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        DataBinding.FieldName = 'DRE'
        Visible = True
        UniqueName = 'DRE'
      end
      object cxDBPivotGrid1MES: TcxDBPivotGridField
        AreaIndex = 3
        IsCaptionAssigned = True
        Caption = 'M'#234's'
        DataBinding.FieldName = 'MES'
        Visible = True
        UniqueName = 'MES'
      end
      object cxDBPivotGrid1SOMA: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        DataBinding.FieldName = 'SOMA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = True
        UniqueName = 'SOMA'
      end
      object cxDBPivotGrid1DT_COMPETENCIA: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 1
        IsCaptionAssigned = True
        Caption = 'M'#234's'
        DataBinding.FieldName = 'CASE'
        Options.AlwaysExpanded = True
        Visible = True
        UniqueName = 'EXTRACT'
      end
      object cxDBPivotGrid1ANO: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        DataBinding.FieldName = 'ANO'
        Options.AlwaysExpanded = True
        Visible = True
        UniqueName = 'cxDBPivotGrid1Field1'
      end
      object cxDBPivotGrid1EXTRACT: TcxDBPivotGridField
        AreaIndex = 2
        DataBinding.FieldName = 'EXTRACT'
        Visible = True
        UniqueName = 'cxDBPivotGrid1Field2'
      end
    end
    inherited LiGridConsulta: TdxLayoutItem
      Parent = nil
      Index = -1
    end
    inherited GrupoFooter: TdxLayoutGroup
      Index = 0
    end
  end
  inherited pnlImpressoes: TPanel [4]
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
      ReportDocument.CreationDate = 44991.703369895830000000
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
      'select'
      'case extract(month from P.DT_COMPETENCIA)'
      '                                when '#39'1'#39' then '#39'1 - Janeiro'#39
      '                                when '#39'2'#39' then '#39'2 - Fevereiro'#39
      '                                when '#39'3'#39' then '#39'3 - Mar'#231'o'#39
      '                                when '#39'4'#39' then '#39'4 - Abril'#39
      '                                when '#39'5'#39' then '#39'5 - Maio'#39
      '                                when '#39'6'#39' then '#39'6 - Junho'#39
      '                                when '#39'7'#39' then '#39'7 - Julho'#39
      '                                when '#39'8'#39' then '#39'8 - Agosto'#39
      '                                when '#39'9'#39' then '#39'9 - Setembro'#39
      '                                when '#39'10'#39' then '#39'10 - Outubro'#39
      '                                when '#39'11'#39' then '#39'11 - Novembro'#39
      '                                when '#39'12'#39' then '#39'12 - Dezembro'#39
      '                                else '#39'Sem Mes'#39
      'end,'
      'extract(month from P.DT_COMPETENCIA),'
      
        'extract(Year from P.DT_COMPETENCIA) as ANO, MES, P.CODPLANOCONTA' +
        'S,'
      
        '       PC.DESCRICAO as PLANOCONTAS, DC.CODIGO, DC.DESCRICAO as D' +
        'RE, P.ATIVO,'
      '       sum((P.TOTAL_RECEITAS) - (P.TOTAL_DESPESAS)) as SOMA'
      'from DRE_PLANOCONTAS P'
      'left join PLANOCONTAS PC on PC.CODIGO = P.CODPLANOCONTAS'
      
        'left join DRE_CLASSIFICACAO DC on DC.CODIGO = PC.CODDRE_CLASSIFI' +
        'CACAO')
    object ConsultaMES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
    end
    object ConsultaCODPLANOCONTAS: TStringField
      FieldName = 'CODPLANOCONTAS'
      Origin = 'CODPLANOCONTAS'
      Size = 30
    end
    object ConsultaPLANOCONTAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLANOCONTAS'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 300
    end
    object ConsultaCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
    end
    object ConsultaDRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DRE'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object ConsultaSOMA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SOMA'
      Origin = 'SOMA'
      ProviderFlags = []
    end
    object ConsultaANO: TSmallintField
      FieldName = 'ANO'
    end
    object ConsultaCASE: TStringField
      FieldName = 'CASE'
    end
    object ConsultaEXTRACT: TIntegerField
      FieldName = 'EXTRACT'
    end
  end
  object cxPivotGridDrillDownDataSet1: TcxPivotGridDrillDownDataSet
    PivotGrid = cxDBPivotGrid1
    SynchronizeData = True
    Left = 392
    Top = 256
  end
end
