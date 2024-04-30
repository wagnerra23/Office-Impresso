inherited ConsuEquipamento_Rateio: TConsuEquipamento_Rateio
  Caption = 'Boletos eventuais a contribui'#231#227'o'
  ExplicitLeft = -232
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      Left = -26
      ExplicitLeft = -26
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        DataController.DataSource = DS
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          SortIndex = 0
          SortOrder = soDescending
          Width = 51
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 173
        end
        object GridConsultaDBTableView1PLACA: TcxGridDBColumn
          DataBinding.FieldName = 'PLACA'
        end
        object GridConsultaDBTableView1CODEQUIPAMENTO: TcxGridDBColumn
          Caption = 'C'#243'd. Equipamento'
          DataBinding.FieldName = 'CODEQUIPAMENTO'
          Visible = False
        end
        object GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Responss'#225'vel'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 246
        end
        object GridConsultaDBTableView1Column2: TcxGridDBColumn
          Caption = 'Parcelas'
        end
        object GridConsultaDBTableView1TOTAL: TcxGridDBColumn
          Caption = 'Valor Total'
          DataBinding.FieldName = 'TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 100
        end
        object GridConsultaDBTableView1DATA: TcxGridDBColumn
          Caption = 'Dt Cadastro Equipamento'
          DataBinding.FieldName = 'DATA'
          Width = 129
        end
        object GridConsultaDBTableView1DATAEXCLUSAO: TcxGridDBColumn
          Caption = 'Dt Exclus'#227'o Equipamento'
          DataBinding.FieldName = 'DATAEXCLUSAO'
          Width = 124
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 31
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima altea'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 102
        end
      end
    end
    inherited EdtPesquisa: TcxButtonEdit
      Left = 664
      ExplicitLeft = 664
    end
    inherited LbFiltosAtivos: TcxLabel
      Left = -255
      ExplicitLeft = -255
      AnchorY = 53
    end
    inherited LbPesquisaFixa1: TcxLabel
      Left = -117
      ExplicitLeft = -117
      AnchorY = 53
    end
    inherited LbPesquisaFixa2: TcxLabel
      Left = -48
      ExplicitLeft = -48
      AnchorY = 53
    end
    inherited LbPesquisaFixa3: TcxLabel
      Left = 24
      ExplicitLeft = 24
      AnchorY = 53
    end
    inherited LbPesquisaFixa4: TcxLabel
      Left = 46
      ExplicitLeft = 46
      AnchorY = 53
    end
    inherited GridSubGrid: TcxGrid
      Left = -255
      ExplicitLeft = -255
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 25
    end
    inherited pnlFlipRotate: TPanel
      Left = 943
      ExplicitLeft = 943
    end
    inherited btnDashBoard: TcxButton
      Left = 899
      ExplicitLeft = 899
    end
    inherited btnTabela: TcxButton
      Left = 926
      ExplicitLeft = 926
    end
    inherited btnNovoCadastro: TcxButton
      Left = 836
      ExplicitLeft = 836
    end
    inherited btnMenu: TcxButton
      Left = 953
      ExplicitLeft = 953
    end
    inherited LbTitulo: TcxLabel
      Left = -255
      Caption = 'Boletos eventuais'
      ExplicitLeft = -255
      ExplicitWidth = 196
    end
    inherited edtRapidoFiltro: TcxComboBox
      Left = 474
      ExplicitLeft = 474
    end
    inherited edtRapidoAgrupar: TcxComboBox
      Left = 333
      ExplicitLeft = 333
    end
    inherited edtRapidoData: TcxComboBox
      Left = 124
      ExplicitLeft = 124
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 196
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44645.465225752310000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      
        'select ER.*, E.PLACA, E.DATA, E.DATAEXCLUSAO, P.RAZAOSOCIAL from' +
        ' Equipamento_Rateio ER'
      'LEFT JOIN EQUIPAMENTO E ON E.CODIGO = ER.CODEQUIPAMENTO'
      'LEFT JOIN PESSOAS P ON P.CODIGO = E.PESSOA_ASSOCIADO_CODIGO')
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
    Transacao = TransaDragAndDrop
    FormClassCadastro = 'TFrmEquipamento_Rateio'
    FormClassConsulta = 'TConsuEquipamento_Rateio'
  end
  inherited DS: TDataSource
    DataSet = Consulta
  end
end
