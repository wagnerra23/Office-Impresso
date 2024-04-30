object FrmConsulta: TFrmConsulta
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Consulta'
  ClientHeight = 208
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 463
    Height = 208
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      DataController.DataSource = DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'Nenhum resultado'
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GroupByBox = False
      OptionsView.Header = False
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Fantasia'
        DataBinding.FieldName = 'RAZAOSOCIAL'
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'FANTASIA'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSProvider'
    ReadOnly = True
    Left = 113
    Top = 151
  end
  object DS: TDataSource
    AutoEdit = False
    DataSet = CdsConsulta
    Left = 141
    Top = 151
  end
  object DSProvider: TDataSetProvider
    DataSet = QrConsulta
    Options = [poReadOnly, poUseQuoteChar]
    Left = 113
    Top = 123
  end
  object QrConsulta: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      '')
    Left = 113
    Top = 95
  end
end
