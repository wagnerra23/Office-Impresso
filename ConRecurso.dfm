inherited ConsuRecurso: TConsuRecurso
  Caption = 'Recurso'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo do Recurso'
          DataBinding.FieldName = 'TIPO'
          OnGetDisplayText = GridConsultaDBTableView1TIPOGetDisplayText
        end
        object GridConsultaDBTableView1CODRECURSO: TcxGridDBColumn
          Caption = 'C'#243'd. Recurso'
          DataBinding.FieldName = 'CODRECURSO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 378
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 32
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 160
        end
      end
    end
    inherited BtnPesquisar: TcxButton
      TabOrder = 25
    end
    inherited BtnPaginaAnterior: TcxButton
      TabOrder = 23
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
    inherited cxButton2: TcxButton
      TabOrder = 19
    end
    inherited BtnGoogleMais: TcxButton
      TabOrder = 20
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 21
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Recurso'
      ExplicitWidth = 89
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 89
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 43497.597893483800000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      
        'select R.CODIGO, R.ATIVO,R.DT_ALTERACAO,R.TIPO,R.PESSOA_RESPONSA' +
        'VEL_CODIGO,'
      '       case R.TIPO'
      '         when '#39'PRODUTO'#39' then R.CODPRODUTO'
      '         when '#39'PESSOA'#39' then R.PESSOA_RESPONSAVEL_CODIGO'
      '       end as CODRECURSO,'
      '       case R.TIPO'
      '         when '#39'PRODUTO'#39' then PR.DESCRICAO'
      '         when '#39'PESSOA'#39' then PS.RAZAOSOCIAL'
      '       end as DESCRICAO'
      'from RECURSO R'
      
        'left join PESSOAS PS on (R.PESSOA_RESPONSAVEL_CODIGO = PS.CODIGO' +
        ')'
      'left join PRODUTO PR on (R.CODPRODUTO = PR.CODIGO)')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaTIPO: TStringField [1]
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object ConsultaCODRECURSO: TStringField [2]
      AutoGenerateValue = arDefault
      FieldName = 'CODRECURSO'
      Origin = 'CODRECURSO'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object ConsultaDESCRICAO: TStringField [3]
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 300
    end
    object ConsultaATIVO: TStringField [4]
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField [5]
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ConsultaPESSOA_RESPONSAVEL_CODIGO: TStringField [6]
      FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
      Origin = 'PESSOA_RESPONSAVEL_CODIGO'
      Size = 10
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
    FormClassCadastro = 'TFrmRecurso'
    FormClassConsulta = 'TConsuRecurso'
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'RECURSO'
    Modulo = 'PRODUCAO'
  end
end
