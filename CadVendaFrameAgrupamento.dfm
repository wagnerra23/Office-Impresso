inherited FrmVendaFrameAgrupamento: TFrmVendaFrameAgrupamento
  Width = 451
  Height = 305
  Align = alClient
  ExplicitWidth = 451
  ExplicitHeight = 305
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 451
    Height = 305
    ExplicitWidth = 451
    ExplicitHeight = 305
    inherited btnMenuConfig: TcxButton
      Left = 10000
      Top = 10000
      TabOrder = 1
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
    end
    object GridVendasAgrupadas: TcxGrid [1]
      Left = 0
      Top = 0
      Width = 451
      Height = 305
      TabOrder = 0
      object GridVendasAgrupadasDBTableView1: TcxGridDBTableView
        OnDblClick = GridVendasAgrupadasDBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSAgrupamento_Venda
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        object GridVendasAgrupadasDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridVendasAgrupadasDBTableView1SEQUENCIA: TcxGridDBColumn
          Caption = 'Sequ'#234'ncia'
          DataBinding.FieldName = 'SEQUENCIA'
        end
        object GridVendasAgrupadasDBTableView1DT_EMISSAO: TcxGridDBColumn
          Caption = 'Dt. Emiss'#227'o'
          DataBinding.FieldName = 'DT_EMISSAO'
          Width = 143
        end
        object GridVendasAgrupadasDBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 100
        end
        object GridVendasAgrupadasDBTableView1NOTAFISCAL: TcxGridDBColumn
          Caption = 'Nota Fiscal'
          DataBinding.FieldName = 'NOTAFISCAL'
        end
        object GridVendasAgrupadasDBTableView1DT_FATURAMENTO: TcxGridDBColumn
          Caption = 'Dt. Faturamento'
          DataBinding.FieldName = 'DT_FATURAMENTO'
          Width = 130
        end
        object GridVendasAgrupadasDBTableView1SUB_TOTAL: TcxGridDBColumn
          Caption = 'R$ SubTotal'
          DataBinding.FieldName = 'SUB_TOTAL'
          Width = 99
        end
        object GridVendasAgrupadasDBTableView1TOTAL: TcxGridDBColumn
          Caption = 'R$ Total'
          DataBinding.FieldName = 'TOTAL'
        end
        object GridVendasAgrupadasDBTableView1STATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STATUS'
        end
        object GridVendasAgrupadasDBTableView1VOUTRO: TcxGridDBColumn
          Caption = 'R$ Acr'#233'scimo'
          DataBinding.FieldName = 'VOUTRO'
          Width = 78
        end
        object GridVendasAgrupadasDBTableView1VDESC: TcxGridDBColumn
          Caption = 'R$ Desconto'
          DataBinding.FieldName = 'VDESC'
          Width = 74
        end
        object GridVendasAgrupadasDBTableView1VENDA_TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'VENDA_TIPO'
        end
        object GridVendasAgrupadasDBTableView1SITUACAO: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'SITUACAO'
        end
        object GridVendasAgrupadasDBTableView1VENDA_TIPO_MODELO: TcxGridDBColumn
          Caption = 'Modelo'
          DataBinding.FieldName = 'VENDA_TIPO_MODELO'
        end
      end
      object GridVendasAgrupadasLevel1: TcxGridLevel
        GridView = GridVendasAgrupadasDBTableView1
      end
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Parent = nil
      Padding.AssignedValues = [lpavTop]
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridVendasAgrupadas
      ControlOptions.OriginalHeight = 55
      ControlOptions.OriginalWidth = 31
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited wrFrameEventos: TwrFrameEventos
    OnInicializar = wrFrameEventosInicializar
  end
  inherited WRFormataCamposDataSets: TWRFormataCamposDataSets
    OnCarregaDataSets = WRFormataCamposDataSetsCarregaDataSets
  end
  object Agrupamento_Venda: TFDQuery
    MasterSource = DS
    MasterFields = 'CODIGO'
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'with VENDAS'
      'as (select VP.CODVENDA_ORIGINAL'
      '    from VENDA_PRODUTO VP'
      '    where (VP.CODVENDA = :CODIGO))'
      
        'select V.CODIGO, V.SEQUENCIA, V.DT_EMISSAO, V.RAZAOSOCIAL, V.NOT' +
        'AFISCAL,'
      
        '       V.DT_FATURAMENTO, V.SUB_TOTAL, V.TOTAL, V.STATUS, V.VOUTR' +
        'O, V.VDESC, V.VENDA_TIPO, V.SITUACAO'
      'from VENDA V'
      'inner join VENDAS V2 on (V.CODIGO = V2.CODVENDA_ORIGINAL)'
      'union'
      ''
      
        'select distinct V.CODIGO, V.SEQUENCIA, V.DT_EMISSAO, V.RAZAOSOCI' +
        'AL, V.NOTAFISCAL,'
      
        '                V.DT_FATURAMENTO, V.SUB_TOTAL, V.TOTAL, V.STATUS' +
        ', V.VOUTRO, V.VDESC, V.VENDA_TIPO, V.SITUACAO'
      'from VENDA_PRODUTO VP'
      'left join VENDA V on (V.CODIGO = VP.CODVENDA)'
      'where (VP.CODVENDA_ORIGINAL = :CODIGO)')
    Left = 292
    Top = 128
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object DSAgrupamento_Venda: TDataSource
    DataSet = Agrupamento_Venda
    Left = 320
    Top = 128
  end
end
