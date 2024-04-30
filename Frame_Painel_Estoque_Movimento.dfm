inherited Painel_Estoque_Movimento: TPainel_Estoque_Movimento
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dsChart: TDataSource
    Left = 220
    Top = 288
  end
  inherited cdsChart: TClientDataSet
    Left = 248
    Top = 288
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      
        'select ps.codigo, ps.razaosocial as DESCRICAO, sum(pm.quant) as ' +
        'QTDPRODUTO, sum(pp.custo) as CUSTOTOTAL from producao_movimento ' +
        'pm'
      
        'left join producao_produto pp on pp.codproducao = pm.codproducao' +
        ' and pp.codigo = pm.codproducao_produto'
      'left join PESSOAS PS on PS.CODIGO = PM.PESSOA_FUNCIONARIO_CODIGO'
      'where PM.DT_ALTERACAO between :Dt_inicio and :Dt_Fim'
      'and pm.tipo_uso = :tipoUso'
      'group by 1,2'
      'order by 1')
    ParamData = <
      item
        Name = 'DT_INICIO'
        ParamType = ptInput
      end
      item
        Name = 'DT_FIM'
        ParamType = ptInput
      end
      item
        Name = 'TIPOUSO'
        ParamType = ptInput
      end>
  end
  inherited Cadastro_Analitico: TFDQuery
    SQL.Strings = (
      'select PM.CODPRODUCAO, PM.CODPRODUTO, P.DESCRICAO, PM.CODVENDA,'
      
        '       PM.CODVENDA_PRODUTO, PM.CODCENTRO_TRABALHO, PM.OBSERVACAO' +
        ','
      
        '       PM.PESSOA_FUNCIONARIO_CODIGO, PM.TIPO_USO, PM.QUANT AS QT' +
        'DPRODUTO, PP.CUSTO, (PM.QUANT * PP.CUSTO) AS QUANT'
      'from PRODUCAO_MOVIMENTO PM'
      
        'left join producao_produto pp on pp.codproducao = pm.codproducao' +
        ' and pp.codigo = pm.codproducao_produto'
      'left join PRODUTO P on P.CODIGO = PM.CODPRODUTO'
      
        'left join CENTRO_TRABALHO CT on CT.CODIGO = PM.CODCENTRO_TRABALH' +
        'O'
      'left join PESSOAS PS on PS.CODIGO = PM.PESSOA_FUNCIONARIO_CODIGO'
      'where PM.DT_ALTERACAO between :Dt_Inicio and :Dt_Fim'
      'and PM.PESSOA_FUNCIONARIO_CODIGO = :CodPessoa'
      'and pm.tipo_uso = :tipoUso')
    ParamData = <
      item
        Name = 'DT_INICIO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'DT_FIM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'CODPESSOA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'TIPOUSO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  inherited WREventosCadastro: TWREventosCadastro
    OnPreencheVariaveisImpressaoPersonalizada = WREventosCadastroPreencheVariaveisImpressaoPersonalizada
  end
  inherited Totalizador: TFDQuery
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
        ParamType = ptInput
      end
      item
        Name = 'DT_INICIO'
        ParamType = ptInput
      end
      item
        Name = 'DT_FIM'
        ParamType = ptInput
      end>
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
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 0
  end
  object Totalizador_Producao: TFDQuery
    Connection = DMBanco.Banco
    Transaction = DMBanco.Transacao
    SQL.Strings = (
      'with TOTALTIPO'
      
        'as (select PM.TIPO_USO, iif(PM.TIPO_USO = '#39'Despesa'#39', sum(PP.CUST' +
        'O), 0) as DESPESA,'
      
        '           iif(PM.TIPO_USO = '#39'Reaproveitamento'#39', sum(PP.CUSTO), ' +
        '0) as REAPROVEITAMENTO,'
      
        '           iif(PM.TIPO_USO = '#39'Fatura'#39', sum(PP.CUSTO), 0) as FATU' +
        'RA'
      '    from PRODUCAO_MOVIMENTO PM'
      
        '    left join PRODUCAO_PRODUTO PP on PP.CODPRODUCAO = PM.CODPROD' +
        'UCAO and PP.CODIGO = PM.CODPRODUCAO_PRODUTO'
      '    where PM.DT_ALTERACAO between :DT_INICIO and :DT_FIM'
      '    group by 1)'
      
        'select sum(DESPESA) as DESPESA, sum(REAPROVEITAMENTO) as REAPROV' +
        'EITAMENTO,'
      '       sum(FATURA) as FATURA'
      'from TOTALTIPO'
      '')
    Left = 120
    Top = 252
    ParamData = <
      item
        Name = 'DT_INICIO'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DT_FIM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
end
