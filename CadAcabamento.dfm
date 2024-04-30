inherited FrmAcabamento: TFrmAcabamento
  Caption = 'Cadastro de Acabamento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    inherited edtCodigo: TcxDBTextEdit
      TabOrder = 19
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 757
      AutoSize = False
      TabOrder = 18
      ExplicitLeft = 757
    end
    inherited edtDescricao: TcxDBTextEdit
      Properties.CharCase = ecNormal
      TabOrder = 20
      ExplicitWidth = 656
      Width = 656
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 713
      TabOrder = 17
      ExplicitLeft = 713
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Acabamento'
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited LiedtCodigo: TdxLayoutItem
      Index = 2
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      AlignHorz = ahRight
      AlignVert = avClient
      Index = 1
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignHorz = ahClient
      Index = 3
    end
    inherited LicbxAtivo: TdxLayoutItem
      AlignHorz = ahRight
      Index = 0
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 2
    FormClassCadastro = 'TFrmAcabamento'
    FormClassConsulta = 'TConsuAcabamento'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from ACABAMENTO '
      'where Codigo = :Codigo')
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
      Size = 150
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
    Tabela = 'ACABAMENTO'
    Modulo = 'PRODUCAO'
  end
end
