inherited ConsuProduto_Grade_Modelo: TConsuProduto_Grade_Modelo
  Caption = 'Modelo de Grade'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      Left = 12
      Width = 1191
      ExplicitLeft = 12
      ExplicitWidth = 1191
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 37
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 180
        end
      end
    end
    inherited EdtPesquisa: TcxButtonEdit
      Left = 691
      ExplicitLeft = 691
      ExplicitWidth = 558
      Width = 558
    end
    inherited BtnPesquisar: TcxButton
      Left = 635
      ExplicitLeft = 635
    end
    inherited LbQuantRegistrosInicial: TcxLabel
      Left = 9517
      ExplicitLeft = 9517
    end
    inherited LbQuantRegistrosFinal: TcxLabel
      Left = 9517
      ExplicitLeft = 9517
    end
    inherited BtnPaginaAnterior: TcxButton
      Left = 9517
      TabOrder = 24
      ExplicitLeft = 9517
    end
    inherited LbFiltosAtivos: TcxLabel
      Left = -228
      ExplicitLeft = -228
      AnchorY = 53
    end
    inherited LbPesquisaFixa1: TcxLabel
      Left = -90
      ExplicitLeft = -90
      AnchorY = 53
    end
    inherited LbPesquisaFixa2: TcxLabel
      Left = -21
      ExplicitLeft = -21
      AnchorY = 53
    end
    inherited LbPesquisaFixa3: TcxLabel
      Left = 51
      ExplicitLeft = 51
      AnchorY = 53
    end
    inherited LbPesquisaFixa4: TcxLabel
      Left = 73
      ExplicitLeft = 73
      AnchorY = 53
    end
    inherited BtnProximaPagina: TcxButton
      Left = 9517
      ExplicitLeft = 9517
    end
    inherited LbTotalRegistros: TcxLabel
      Left = 9517
      ExplicitLeft = 9517
    end
    inherited LbNumeroRegistrosPagina: TcxLabel
      Left = 9517
      ExplicitLeft = 9517
    end
    inherited cxButton2: TcxButton
      Left = 9517
      TabOrder = 25
      ExplicitLeft = 9517
    end
    inherited BtnGoogleMais: TcxButton
      Left = 9517
      TabOrder = 20
      ExplicitLeft = 9517
    end
    inherited GridSubGrid: TcxGrid
      Left = -228
      Width = 239
      ExplicitLeft = -228
      ExplicitWidth = 239
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      Left = 9517
      TabOrder = 21
      ExplicitLeft = 9517
    end
    inherited pnlFlipRotate: TPanel
      Left = 1206
      Width = 43
      ExplicitLeft = 1206
      ExplicitWidth = 43
    end
    inherited btnDashBoard: TcxButton
      Left = 1169
      ExplicitLeft = 1169
    end
    inherited btnTabela: TcxButton
      Left = 1196
      ExplicitLeft = 1196
    end
    inherited btnKanbam: TcxButton
      Left = 9517
      ExplicitLeft = 9517
    end
    inherited btnNovoCadastro: TcxButton
      Left = 1106
      ExplicitLeft = 1106
    end
    inherited btnMenu: TcxButton
      Left = 1223
      ExplicitLeft = 1223
    end
    inherited LbTitulo: TcxLabel
      Left = -228
      Caption = 'Modelo de Grade'
      ExplicitLeft = -228
      ExplicitWidth = 194
    end
    inherited edtRapidoFiltro: TcxComboBox
      Left = 501
      ExplicitLeft = 501
    end
    inherited edtRapidoAgrupar: TcxComboBox
      Left = 360
      ExplicitLeft = 360
    end
    inherited edtRapidoData: TcxComboBox
      Left = 151
      ExplicitLeft = 151
    end
    inherited LiEdtPesquisa: TdxLayoutItem
      ControlOptions.OriginalWidth = 558
    end
    inherited LiGridSubGrid: TdxLayoutItem
      ControlOptions.OriginalWidth = 239
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 194
    end
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
      ReportDocument.CreationDate = 42139.740942245370000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'SELECT PGM.*'
      'FROM Produto_Grade_Modelo PGM'
      '')
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
    object ConsultaT1: TStringField [2]
      FieldName = 'T1'
      Origin = 'T1'
      Size = 15
    end
    object ConsultaT2: TStringField [3]
      FieldName = 'T2'
      Origin = 'T2'
      Size = 15
    end
    object ConsultaT3: TStringField [4]
      FieldName = 'T3'
      Origin = 'T3'
      Size = 15
    end
    object ConsultaT4: TStringField [5]
      FieldName = 'T4'
      Origin = 'T4'
      Size = 15
    end
    object ConsultaT5: TStringField [6]
      FieldName = 'T5'
      Origin = 'T5'
      Size = 15
    end
    object ConsultaT6: TStringField [7]
      FieldName = 'T6'
      Origin = 'T6'
      Size = 15
    end
    object ConsultaT7: TStringField [8]
      FieldName = 'T7'
      Origin = 'T7'
      Size = 15
    end
    object ConsultaT8: TStringField [9]
      FieldName = 'T8'
      Origin = 'T8'
      Size = 15
    end
    object ConsultaT9: TStringField [10]
      FieldName = 'T9'
      Origin = 'T9'
      Size = 15
    end
    object ConsultaT10: TStringField [11]
      FieldName = 'T10'
      Origin = 'T10'
      Size = 15
    end
    object ConsultaT11: TStringField [12]
      FieldName = 'T11'
      Origin = 'T11'
      Size = 15
    end
    object ConsultaT12: TStringField [13]
      FieldName = 'T12'
      Origin = 'T12'
      Size = 15
    end
    object ConsultaT13: TStringField [14]
      FieldName = 'T13'
      Origin = 'T13'
      Size = 15
    end
    object ConsultaT14: TStringField [15]
      FieldName = 'T14'
      Origin = 'T14'
      Size = 15
    end
    object ConsultaT15: TStringField [16]
      FieldName = 'T15'
      Origin = 'T15'
      Size = 15
    end
    object ConsultaT16: TStringField [17]
      FieldName = 'T16'
      Origin = 'T16'
      Size = 15
    end
    object ConsultaT17: TStringField [18]
      FieldName = 'T17'
      Origin = 'T17'
      Size = 15
    end
    object ConsultaT18: TStringField [19]
      FieldName = 'T18'
      Origin = 'T18'
      Size = 15
    end
    object ConsultaT19: TStringField [20]
      FieldName = 'T19'
      Origin = 'T19'
      Size = 15
    end
    object ConsultaT20: TStringField [21]
      FieldName = 'T20'
      Origin = 'T20'
      Size = 15
    end
    object ConsultaT21: TStringField [22]
      FieldName = 'T21'
      Origin = 'T21'
      Size = 15
    end
    object ConsultaT22: TStringField [23]
      FieldName = 'T22'
      Origin = 'T22'
      Size = 15
    end
    object ConsultaT23: TStringField [24]
      FieldName = 'T23'
      Origin = 'T23'
      Size = 15
    end
    object ConsultaT24: TStringField [25]
      FieldName = 'T24'
      Origin = 'T24'
      Size = 15
    end
    object ConsultaT25: TStringField [26]
      FieldName = 'T25'
      Origin = 'T25'
      Size = 15
    end
    object ConsultaT26: TStringField [27]
      FieldName = 'T26'
      Origin = 'T26'
      Size = 15
    end
    object ConsultaT27: TStringField [28]
      FieldName = 'T27'
      Origin = 'T27'
      Size = 15
    end
    object ConsultaT28: TStringField [29]
      FieldName = 'T28'
      Origin = 'T28'
      Size = 15
    end
    object ConsultaT29: TStringField [30]
      FieldName = 'T29'
      Origin = 'T29'
      Size = 15
    end
    object ConsultaT30: TStringField [31]
      FieldName = 'T30'
      Origin = 'T30'
      Size = 15
    end
    object ConsultaTIPO: TStringField [32]
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 15
    end
    object ConsultaATIVO: TStringField [33]
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField [34]
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
    FormClassCadastro = 'TFrmProduto_Grade_Modelo'
    FormClassConsulta = 'TConsuProduto_Grade_Modelo'
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUTO_GRADE_MODELO'
    Modulo = 'PRODUTO'
  end
end
