object FormWR_Kanbam: TFormWR_Kanbam
  Left = 0
  Top = 0
  Caption = 'FormWR_Kanbam'
  ClientHeight = 468
  ClientWidth = 602
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
    Width = 602
    Height = 468
    Align = alClient
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 10
      Top = 10
      Width = 582
      Height = 448
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSWR_KANBAN
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGrid1DBTableView1TAG_TELA: TcxGridDBColumn
          DataBinding.FieldName = 'TAG_TELA'
          Visible = False
        end
        object cxGrid1DBTableView1ORDEM: TcxGridDBColumn
          Caption = 'Ordem'
          DataBinding.FieldName = 'ORDEM'
          Width = 46
        end
        object cxGrid1DBTableView1COLUNA: TcxGridDBColumn
          Caption = 'Coluna'
          DataBinding.FieldName = 'COLUNA'
          Width = 343
        end
        object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRICAO'
          Visible = False
          Width = 65
        end
        object cxGrid1DBTableView1STYLE: TcxGridDBColumn
          DataBinding.FieldName = 'STYLE'
          Visible = False
        end
        object cxGrid1DBTableView1COR: TcxGridDBColumn
          DataBinding.FieldName = 'COR'
          Visible = False
        end
        object cxGrid1DBTableView1ATIVO: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
          Visible = False
        end
        object cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
        end
        object cxGrid1DBTableView1COLUNA_FECHADA: TcxGridDBColumn
          Caption = 'Coluna Fechada?'
          DataBinding.FieldName = 'COLUNA_FECHADA'
          Width = 136
        end
        object cxGrid1DBTableView1CHAVE: TcxGridDBColumn
          DataBinding.FieldName = 'CHAVE'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object WR_KANBAN: TFDQuery
    Connection = DMBanco.Banco
    Transaction = TransaFD
    SQL.Strings = (
      'select * from WR_KANBAN wk where wk.tag_tela = :Codigo')
    Left = 200
    Top = 216
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object WR_KANBANCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object WR_KANBANTAG_TELA: TIntegerField
      FieldName = 'TAG_TELA'
      Origin = 'TAG_TELA'
    end
    object WR_KANBANCOLUNA: TStringField
      FieldName = 'COLUNA'
      Origin = 'COLUNA'
      Size = 255
    end
    object WR_KANBANDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
    object WR_KANBANORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
    end
    object WR_KANBANSTYLE: TMemoField
      FieldName = 'STYLE'
      Origin = 'STYLE'
      BlobType = ftMemo
    end
    object WR_KANBANCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'COR'
    end
    object WR_KANBANATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object WR_KANBANDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object WR_KANBANCOLUNA_FECHADA: TStringField
      FieldName = 'COLUNA_FECHADA'
      Origin = 'COLUNA_FECHADA'
      Size = 1
    end
    object WR_KANBANCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 50
    end
  end
  object DSWR_KANBAN: TDataSource
    DataSet = WR_KANBAN
    Left = 232
    Top = 216
  end
  object TransaFD: TFDTransaction
    Options.Isolation = xiReadCommitted
    Options.DisconnectAction = xdRollback
    Connection = DMBanco.Banco
    Left = 260
    Top = 216
  end
end
