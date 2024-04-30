inherited Frame_NotaFiscalEntrada: TFrame_NotaFiscalEntrada
  inherited pnlMenuCadastro: TPanel
    inherited tcCadastro: TdxTileControl
      Visible = False
    end
    inherited dxTileControl1: TdxTileControl
      Visible = False
    end
    inherited tcCadastroAcoes: TdxTileControl
      Visible = False
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      
        'select nfe.codigo, nfe.NF_CHAVE, nfe.NF_RAZAOSOCIAL_EMITENTE as ' +
        'DESCRICAO, nfe.ATIVO, nfe.NF_DT_EMISSAO as DT_ALTERACAO  from NF' +
        '_ENTRADA_MANIFESTO nfe'
      'where nfe.codigo = :CODIGO')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'NF_ENTRADA_MANIFESTO'
    Modulo = 'COMPRA'
  end
end
