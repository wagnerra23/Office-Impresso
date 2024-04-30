inherited ConsuPlanilha_Tempo: TConsuPlanilha_Tempo
  Caption = 'Consulta da Planilha de Tempo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      TabOrder = 20
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1CODPESSOA: TcxGridDBColumn
          Caption = 'C'#243'd. Pessoa'
          DataBinding.FieldName = 'CODPESSOA'
          Width = 113
        end
        object GridConsultaDBTableView1DT_INICIO: TcxGridDBColumn
          Caption = 'Dt. Inicio'
          DataBinding.FieldName = 'DT_INICIO'
          Width = 90
        end
        object GridConsultaDBTableView1DT_FIM: TcxGridDBColumn
          Caption = 'Dt. Fim'
          DataBinding.FieldName = 'DT_FIM'
          Width = 76
        end
        object GridConsultaDBTableView1DURACAO: TcxGridDBColumn
          Caption = 'Dura'#231#227'o'
          DataBinding.FieldName = 'DURACAO'
          Width = 80
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 129
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 55
        end
      end
      object GridConsultaDBTableViewLogados: TcxGridDBTableView [2]
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSConsultaLogados
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Indicator = True
        object GridConsultaDBTableViewLogadosID_LOGIN: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'ID_LOGIN'
        end
        object GridConsultaDBTableViewLogadosUSUARIO: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USUARIO'
          Width = 242
        end
        object GridConsultaDBTableViewLogadosCODEMPRESA: TcxGridDBColumn
          Caption = 'Empresa'
          DataBinding.FieldName = 'CODEMPRESA'
          Width = 51
        end
        object GridConsultaDBTableViewLogadosNOME_MAQUINA: TcxGridDBColumn
          Caption = 'Nome da M'#225'quina'
          DataBinding.FieldName = 'NOME_MAQUINA'
          Width = 249
        end
        object GridConsultaDBTableViewLogadosDATA: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DATA'
        end
      end
    end
    inherited EdtPesquisa: TcxButtonEdit
      TabOrder = 18
    end
    inherited BtnPesquisar: TcxButton
      TabOrder = 24
    end
    inherited BtnPaginaAnterior: TcxButton
      TabOrder = 26
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
      TabOrder = 31
    end
    inherited cxButton2: TcxButton
      TabOrder = 27
    end
    inherited BtnGoogleMais: TcxButton
      TabOrder = 29
    end
    inherited GridSubGrid: TcxGrid
      TabOrder = 19
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 32
    end
    inherited pnlFlipRotate: TPanel
      TabOrder = 21
    end
    inherited btnKanbam: TcxButton
      TabOrder = 25
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Planilha de Tempo'
      ExplicitWidth = 204
    end
    inherited edtRapidoFiltro: TcxComboBox
      TabOrder = 17
    end
    inherited edtRapidoAgrupar: TcxComboBox
      TabOrder = 16
    end
    inherited edtRapidoData: TcxComboBox
      TabOrder = 15
    end
    object btnNovas: TcxButton [28]
      Left = 205
      Top = 0
      Width = 71
      Height = 36
      Caption = 'Di'#225'rio'
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      Kind = cxbkDropDown
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001E744558745469746C65004C65747465723B652D6D6169
        6C3B656D61696C3B6D61696C1A9193DA0000006D49444154785ECDD34D0AC020
        0C84512FD82B05D24BE9C6B3A53F08AD0C1F14B3E9621601E7A9A0252252C903
        DBDEFA995848BF81315C907F047CAC8F37608050D92680112E0BA00897056044
        CB0CE8E202B302B093C1EC0AF0318DAE37015AD628F20075F125D6F45FF80770
        00B950887C16299FEC0000000049454E44AE426082}
      OptionsImage.Spacing = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 5
      OnDropDownMenuPopup = btnNovasDropDownMenuPopup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton1: TcxButton [29]
      Left = 277
      Top = 0
      Width = 71
      Height = 36
      Caption = 'Resumo'
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      Kind = cxbkDropDown
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001E744558745469746C65004C65747465723B652D6D6169
        6C3B656D61696C3B6D61696C1A9193DA0000006D49444154785ECDD34D0AC020
        0C84512FD82B05D24BE9C6B3A53F08AD0C1F14B3E9621601E7A9A0252252C903
        DBDEFA995848BF81315C907F047CAC8F37608050D92680112E0BA00897056044
        CB0CE8E202B302B093C1EC0AF0318DAE37015AD628F20075F125D6F45FF80770
        00B950887C16299FEC0000000049454E44AE426082}
      OptionsImage.Spacing = 0
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
    end
    object cxButton3: TcxButton [30]
      Left = 349
      Top = 0
      Width = 164
      Height = 36
      Caption = 'Detalhes Resumidos'
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      Kind = cxbkDropDown
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001E744558745469746C65004C65747465723B652D6D6169
        6C3B656D61696C3B6D61696C1A9193DA0000006D49444154785ECDD34D0AC020
        0C84512FD82B05D24BE9C6B3A53F08AD0C1F14B3E9621601E7A9A0252252C903
        DBDEFA995848BF81315C907F047CAC8F37608050D92680112E0BA00897056044
        CB0CE8E202B302B093C1EC0AF0318DAE37015AD628F20075F125D6F45FF80770
        00B950887C16299FEC0000000049454E44AE426082}
      OptionsImage.Spacing = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton4: TcxButton [31]
      Left = 514
      Top = 0
      Width = 191
      Height = 36
      Caption = 'Membros cronometrados'
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      Kind = cxbkDropDown
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001E744558745469746C65004C65747465723B652D6D6169
        6C3B656D61696C3B6D61696C1A9193DA0000006D49444154785ECDD34D0AC020
        0C84512FD82B05D24BE9C6B3A53F08AD0C1F14B3E9621601E7A9A0252252C903
        DBDEFA995848BF81315C907F047CAC8F37608050D92680112E0BA00897056044
        CB0CE8E202B302B093C1EC0AF0318DAE37015AD628F20075F125D6F45FF80770
        00B950887C16299FEC0000000049454E44AE426082}
      OptionsImage.Spacing = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnLogados: TcxButton [32]
      Left = 706
      Top = 0
      Width = 182
      Height = 36
      Caption = 'Hor'#225'rio de Entrada/Sa'#237'da'
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      Kind = cxbkDropDown
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001E744558745469746C65004C65747465723B652D6D6169
        6C3B656D61696C3B6D61696C1A9193DA0000006D49444154785ECDD34D0AC020
        0C84512FD82B05D24BE9C6B3A53F08AD0C1F14B3E9621601E7A9A0252252C903
        DBDEFA995848BF81315C907F047CAC8F37608050D92680112E0BA00897056044
        CB0CE8E202B302B093C1EC0AF0318DAE37015AD628F20075F125D6F45FF80770
        00B950887C16299FEC0000000049454E44AE426082}
      OptionsImage.Spacing = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 9
      OnDropDownMenuPopup = btnLogadosDropDownMenuPopup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited GrupoFrame: TdxLayoutGroup
      ItemIndex = 10
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 204
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoFrame
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnNovas
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoFrame
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = GrupoFrame
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 164
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = GrupoFrame
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 191
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = GrupoFrame
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnLogados
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 182
      ControlOptions.ShowBorder = False
      Index = 10
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44438.352441412040000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'Select * From Planilha_Tempo'
      ' '
      ' ')
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
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
    FormClassCadastro = 'TFrmPlanilha_Tempo'
    FormClassConsulta = 'TConsuPlanilha_Tempo'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
  object DSConsultaLogados: TDataSource
    DataSet = ConsultaLogados
    OnStateChange = DSStateChange
    Left = 295
    Top = 377
  end
  object ConsultaLogados: TFDQuery
    Connection = DMBanco.Banco
    Transaction = Transa
    SQL.Strings = (
      'Select * From USUARIO_LOGADO'
      ' '
      ' ')
    Left = 267
    Top = 377
  end
end
