inherited FrmProduto_Estoque_Local: TFrmProduto_Estoque_Local
  Caption = 'Cadastro de Local de Estoque'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Local de Estoque'
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 1
    FormClassCadastro = 'TFrmProduto_Estoque_Local'
    FormClassConsulta = 'TConsuProduto_Estoque_Local'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM Produto_Estoque_Local'
      'where CODIGO = :Codigo'
      '')
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
      Size = 15
    end
    object CadastroDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object CadastroATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUTO_ESTOQUE_LOCAL'
    Modulo = 'PRODUTO'
  end
end
