inherited Painel_Venda_Produto_Tipo: TPainel_Venda_Produto_Tipo
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select T.CODIGO, T.DESCRICAO, MD.META, VALUE1'
      'from KPI_MES K '
      'WHERE K.TAG_APP = :CodTag and k.codCompetencia = :codCompetencia')
    ParamData = <
      item
        Name = 'CODTAG'
        ParamType = ptInput
      end
      item
        Name = 'CODCOMPETENCIA'
        ParamType = ptInput
      end>
    object CadastropercMeta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'percMeta'
      Calculated = True
    end
    object Cadastrofalta: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'falta'
      Calculated = True
    end
    object CadastroNecessario: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Necessario'
      Calculated = True
    end
    object Cadastromedia: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'media'
      Calculated = True
    end
    object Cadastroprojecao: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'projecao'
      Calculated = True
    end
    object CadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 15
    end
    object CadastroMETA: TFloatField
      FieldName = 'META'
      Origin = 'META'
    end
    object CadastroQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'QUANT'
    end
  end
  inherited Cadastro_Analitico: TFDQuery
    SQL.Strings = (
      
        'select count(DISTINCT v.CODIGO) as QTDVENDA, v.DT_COMPETENCIA as' +
        ' DESCRICAO, MD.VALOR as META, coalesce(sum(VP.total_relatorio), ' +
        '0) as QUANT'
      'from VENDA V'
      'LEFT JOIN venda_produto vp ON vp.codvenda = v.codigo'
      'left join produto p on p.codigo = vp.codproduto'
      'left join produto_tipo T on T.codigo = p.codproduto_tipo'
      
        'left join META_DETALHE MD on MD.CODTABELA = T.CODIGO and MD.CODM' +
        'ETA = :CodMeta'
      
        'where (V.ATIVO = '#39'S'#39')and(V.IS_VENDA = '#39'S'#39') and (v.CodEmpresa = :' +
        'CodEmpresa)and'
      
        '      (V.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim) and (v.N' +
        'F_FINALIDADE = 1)'
      '      and not(V.DT_FATURAMENTO is null)'
      '      and (T.CODIGO = :CodTabela)'
      'group by 2,3'
      'order by 2')
    ParamData = <
      item
        Name = 'CODMETA'
        ParamType = ptInput
      end
      item
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end
      item
        Name = 'DT_INICIO'
        ParamType = ptInput
      end
      item
        Name = 'DT_FIM'
        ParamType = ptInput
      end
      item
        Name = 'CODTABELA'
        ParamType = ptInput
      end>
  end
  inherited Totalizador: TFDQuery
    OnCalcFields = TotalizadorCalcFields
    SQL.Strings = (
      
        'select count(DISTINCT v.codigo) as QTDVENDAS, coalesce(sum(VP.to' +
        'tal_relatorio), 0) as QUANT'
      'from VENDA V'
      'LEFT JOIN venda_produto vp ON vp.codvenda = v.codigo'
      'left join produto p on p.codigo = vp.codproduto'
      
        'where (V.ATIVO = '#39'S'#39')and(V.IS_VENDA = '#39'S'#39') and (v.CodEmpresa = :' +
        'CodEmpresa)and'
      
        '      (V.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim) and (v.N' +
        'F_FINALIDADE = 1)'
      '      and not(V.DT_FATURAMENTO is null)')
    ParamData = <
      item
        Name = 'CODEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DT_INICIO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DT_FIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object TotalizadorQTDVENDAS: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'QTDVENDAS'
      Origin = 'QTDVENDAS'
      ProviderFlags = []
    end
    object TotalizadorQUANT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT'
      Origin = 'QUANT'
      ProviderFlags = []
    end
    object Totalizadormediageral: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'mediageral'
      Calculated = True
    end
  end
  inherited imgBase: TcxImageList
    FormatVersion = 1
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
end
