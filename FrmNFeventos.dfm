object FormNFeventos: TFormNFeventos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Eventos Nota Fiscal'
  ClientHeight = 249
  ClientWidth = 930
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
    Width = 932
    Height = 250
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 10
      Top = 10
      Width = 912
      Height = 230
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'UserSkin'
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.ShowEditButtons = gsebAlways
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object cxGrid1DBTableView1CODEMPRESA: TcxGridDBColumn
          DataBinding.FieldName = 'CODEMPRESA'
          Visible = False
        end
        object cxGrid1DBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Options.Editing = False
        end
        object cxGrid1DBTableView1ARQUIVO_XML_ENVIO: TcxGridDBColumn
          Caption = 'XML Envio'
          DataBinding.FieldName = 'ARQUIVO_XML_ENVIO'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Caption = 'XML Envio'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          Properties.OnButtonClick = cxGrid1DBTableView1ARQUIVO_XML_ENVIOPropertiesButtonClick
          Width = 93
        end
        object cxGrid1DBTableView1ARQUIVO_XML_RETORNO: TcxGridDBColumn
          Caption = 'XML Retorno'
          DataBinding.FieldName = 'ARQUIVO_XML_RETORNO'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Caption = 'XML Retorno'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          Properties.OnButtonClick = cxGrid1DBTableView1ARQUIVO_XML_RETORNOPropertiesButtonClick
          Width = 93
        end
        object cxGrid1DBTableView1NF_CHAVE: TcxGridDBColumn
          DataBinding.FieldName = 'NF_CHAVE'
          Visible = False
          Width = 58
        end
        object cxGrid1DBTableView1NF_NUMERO: TcxGridDBColumn
          DataBinding.FieldName = 'NF_NUMERO'
          Visible = False
          Width = 68
        end
        object cxGrid1DBTableView1NF_SERIE: TcxGridDBColumn
          DataBinding.FieldName = 'NF_SERIE'
          Visible = False
          Width = 54
        end
        object cxGrid1DBTableView1TIPO_OPERACAO: TcxGridDBColumn
          Caption = 'Tipo de Opera'#231#227'o'
          DataBinding.FieldName = 'TIPO_OPERACAO'
          Options.Editing = False
          Width = 98
        end
        object cxGrid1DBTableView1NF_CODERRO: TcxGridDBColumn
          Caption = 'C'#243'd. Erro'
          DataBinding.FieldName = 'NF_CODERRO'
          Options.Editing = False
          Width = 64
        end
        object cxGrid1DBTableView1NF_ERRO: TcxGridDBColumn
          Caption = 'Erro'
          DataBinding.FieldName = 'NF_ERRO'
          Options.Editing = False
          Width = 198
        end
        object cxGrid1DBTableView1NF_CORRECAO: TcxGridDBColumn
          Caption = 'Corre'#231#227'o'
          DataBinding.FieldName = 'NF_CORRECAO'
          Options.Editing = False
          Width = 62
        end
        object cxGrid1DBTableView1NF_LOTE: TcxGridDBColumn
          Caption = 'N'#186' Lote'
          DataBinding.FieldName = 'NF_LOTE'
          Options.Editing = False
          Width = 62
        end
        object cxGrid1DBTableView1NF_ID_NOTA: TcxGridDBColumn
          DataBinding.FieldName = 'NF_ID_NOTA'
          Visible = False
        end
        object cxGrid1DBTableView1NF_PROTOCOLO: TcxGridDBColumn
          Caption = 'N'#186' Protocolo'
          DataBinding.FieldName = 'NF_PROTOCOLO'
          Options.Editing = False
          Width = 69
        end
        object cxGrid1DBTableView1NF_TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'NF_TIPO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1NF_LINK: TcxGridDBColumn
          DataBinding.FieldName = 'NF_LINK'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1NF_CNPJCPF_EMITENTE: TcxGridDBColumn
          DataBinding.FieldName = 'NF_CNPJCPF_EMITENTE'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1NF_AMBIENTE: TcxGridDBColumn
          DataBinding.FieldName = 'NF_AMBIENTE'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1NF_RAZAOSOCIAL_EMITENTE: TcxGridDBColumn
          DataBinding.FieldName = 'NF_RAZAOSOCIAL_EMITENTE'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1NF_MANIFESTO: TcxGridDBColumn
          DataBinding.FieldName = 'NF_MANIFESTO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1NF_DT_EMISSAO: TcxGridDBColumn
          DataBinding.FieldName = 'NF_DT_EMISSAO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1NF_TOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'NF_TOTAL'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1NF_SITUACAO: TcxGridDBColumn
          DataBinding.FieldName = 'NF_SITUACAO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1NF_DESC_SITUACAO: TcxGridDBColumn
          DataBinding.FieldName = 'NF_DESC_SITUACAO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1DT_RECEBIMENTO: TcxGridDBColumn
          Caption = 'Data Recebimento'
          DataBinding.FieldName = 'DT_RECEBIMENTO'
          Options.Editing = False
          Width = 94
        end
        object cxGrid1DBTableView1SUCESSO: TcxGridDBColumn
          DataBinding.FieldName = 'SUCESSO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1NSU: TcxGridDBColumn
          DataBinding.FieldName = 'NSU'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1SCHEMA: TcxGridDBColumn
          DataBinding.FieldName = 'SCHEMA'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1ATIVO: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1CODVENDA: TcxGridDBColumn
          DataBinding.FieldName = 'CODVENDA'
          Visible = False
          VisibleForCustomization = False
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
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 463
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object DS: TDataSource
    Left = 336
    Top = 104
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 368
    Top = 104
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = False
      PixelsPerInch = 96
    end
  end
end
