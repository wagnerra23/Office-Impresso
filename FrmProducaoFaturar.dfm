object FormProducaoFaturar: TFormProducaoFaturar
  Left = 0
  Top = 0
  Caption = 'FormProducaoFaturar'
  ClientHeight = 318
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 574
    Height = 318
    Align = alClient
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 10
      Top = 10
      Width = 554
      Height = 298
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSProducaoProduto
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1PRODUTOPRINCIPAL: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'PRODUTOPRINCIPAL'
          Visible = False
          GroupIndex = 0
          Width = 260
        end
        object cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'd. Material/Servi'#231'o'
          DataBinding.FieldName = 'CODPRODUTO'
          Visible = False
          Width = 106
        end
        object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Material/Servi'#231'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 277
        end
        object cxGrid1DBTableView1QUANT_FATURAR: TcxGridDBColumn
          Caption = 'Quant. A Faturar'
          DataBinding.FieldName = 'QUANT_FATURAR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
          Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
          OnValidateDrawValue = cxGrid1DBTableView1QUANT_FATURARValidateDrawValue
          Width = 92
        end
        object cxGrid1DBTableView1QUANT_PREVISTA: TcxGridDBColumn
          Caption = 'Quant Prevista'
          DataBinding.FieldName = 'QUANT_PREVISTA'
          Visible = False
        end
        object cxGrid1DBTableView1PARENT: TcxGridDBColumn
          DataBinding.FieldName = 'PARENT'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
          Caption = 'Respons'#225'vel '
          DataBinding.FieldName = 'USUARIO'
          Width = 70
        end
        object cxGrid1DBTableView1OBSERVACAO: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'OBSERVACAO'
          Width = 64
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 247
      ControlOptions.OriginalWidth = 439
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object ProducaoProduto: TFDQuery
    Connection = DMBanco.Banco
    SQL.Strings = (
      
        'select P.DESCRICAO as PRODUTOPRINCIPAL, PP.CODPRODUTO, PP.DESCRI' +
        'CAO, PP.QUANT_FATURAR, PP.QUANT_PREVISTA,'
      '       PP.PARENT, U.USUARIO, PP.OBSERVACAO'
      'from PRODUCAO_PRODUTO PP'
      'left join PRODUCAO P on P.CODIGO = PP.CODPRODUCAO'
      'left join USUARIO U on U.CODIGO = PP.CODUSUARIO'
      'where PP.CODVENDA = :CODVENDA AND PP.PODE_FATURAR = '#39'S'#39)
    Left = 56
    Top = 136
    ParamData = <
      item
        Name = 'CODVENDA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
    object ProducaoProdutoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 15
    end
    object ProducaoProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 300
    end
    object ProducaoProdutoQUANT_FATURAR: TSingleField
      FieldName = 'QUANT_FATURAR'
      Origin = 'QUANT_FATURAR'
    end
    object ProducaoProdutoQUANT_PREVISTA: TFloatField
      FieldName = 'QUANT_PREVISTA'
      Origin = 'QUANT_PREVISTA'
    end
    object ProducaoProdutoPRODUTOPRINCIPAL: TStringField
      FieldName = 'PRODUTOPRINCIPAL'
      Origin = 'PRODUTOPRINCIPAL'
      Size = 600
    end
    object ProducaoProdutoPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = 'PARENT'
    end
    object ProducaoProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 30
    end
    object ProducaoProdutoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 500
    end
  end
  object DSProducaoProduto: TDataSource
    DataSet = ProducaoProduto
    Left = 84
    Top = 136
  end
end
