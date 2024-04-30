object FrmMarkupDashBoard: TFrmMarkupDashBoard
  Left = 0
  Top = 0
  Caption = 'Markup DashBoard'
  ClientHeight = 484
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 8
    Top = -4
    Width = 721
    Height = 479
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 10
      Top = 216
      Width = 250
      Height = 200
      TabOrder = 1
      object cxGrid1DBChartView1: TcxGridDBChartView
        DataController.DataSource = DSFinanceiro1Mes
        DiagramPie.Active = True
        object cxGrid1DBChartView1DataGroup1: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'TIPO_CUSTO'
        end
        object cxGrid1DBChartView1Series1: TcxGridDBChartSeries
          DataBinding.FieldName = 'TOTAL'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBChartView1
      end
    end
    object cxGrid2: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object cxGridDBChartView1: TcxGridDBChartView
        DataController.DataSource = DSFinanceiro1Mes
        DiagramPie.Active = True
        object cxGridDBChartDataGroup1: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'TIPO_CUSTO'
        end
        object cxGridDBChartSeries1: TcxGridDBChartSeries
          DataBinding.FieldName = 'TOTAL'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBChartView1
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Control = cxGrid2
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object DSFinanceiro1Mes: TDataSource
    DataSet = Financeiro1Mes
    Left = 409
    Top = 384
  end
  object Financeiro1Mes: TFDQuery
    BeforeOpen = Financeiro1MesBeforeOpen
    IndexesActive = False
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select sum(f.valor) as total, pc.tipo_custo from financeiro f'
      
        '                     left join planocontas pc on pc.codigo = f.c' +
        'odplanocontas'
      
        '                     where f.status like '#39'ATIVO%'#39' and f.tipo in ' +
        '('#39'PAGA'#39', '#39'A PAGAR'#39') and (f.emissao between :D1 and :D2)'
      '                     group by 2;')
    Left = 382
    Top = 384
    ParamData = <
      item
        Name = 'D1'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'D2'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object FDQuery1: TFDQuery
    BeforeOpen = Financeiro1MesBeforeOpen
    IndexesActive = False
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select sum(f.valor) as total, pc.tipo_custo from financeiro f'
      
        '                     left join planocontas pc on pc.codigo = f.c' +
        'odplanocontas'
      
        '                     where f.status like '#39'ATIVO%'#39' and f.tipo in ' +
        '('#39'PAGA'#39', '#39'A PAGAR'#39') and (f.emissao between :D1 and :D2)'
      '                     group by 2;')
    Left = 382
    Top = 357
    ParamData = <
      item
        Name = 'D1'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'D2'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 409
    Top = 358
  end
end
