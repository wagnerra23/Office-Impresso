inherited FrmNF_Regime_Especial_Tributacao: TFrmNF_Regime_Especial_Tributacao
  Caption = 'Cadastro de Regime Especial Tributa'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtCodigo: TcxDBTextEdit
      Properties.ReadOnly = False
      Style.Color = clWhite
    end
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Regime Especial Tributa'#231#227'o'
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 1
    FormClassCadastro = 'TFrmNF_Regime_Especial_Tributacao'
    FormClassConsulta = 'TConsuNF_Regime_Especial_Tributacao'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select * from NF_Regime_Especial_Tributacao'
      'WHERE CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object CadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object CadastroATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object CadastroDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'NF_REGIME_ESPECIAL_TRIBUTACAO'
    Modulo = 'NOTA_FISCAL'
  end
end
