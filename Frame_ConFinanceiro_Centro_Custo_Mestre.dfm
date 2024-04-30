inherited Frame_ConsuFinanceiro_Centro_Custo_Mestre: TFrame_ConsuFinanceiro_Centro_Custo_Mestre
  inherited pnlImpressoes: TPanel [0]
    Left = 962
    Top = 99
    ExplicitLeft = 962
    ExplicitTop = 99
  end
  inherited pnlFiltros: TPanel [1]
  end
  inherited pnlIniciar: TPanel [2]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited pnlImportar: TPanel [4]
  end
  inherited dxLayoutControl1: TdxLayoutControl [5]
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OnCustomDrawCell = GridConsultaDBTableView1CustomDrawCell
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'TOTAL'
            Column = GridConsultaDBTableView1Total
          end
          item
            Kind = skSum
            FieldName = 'Credito'
            Column = GridConsultaDBTableView1Credito
          end
          item
            Kind = skSum
            FieldName = 'Debito'
            Column = GridConsultaDBTableView1Debito
          end
          item
            Kind = skSum
            Column = GridConsultaDBTableView1Direto_Debito
          end
          item
            Kind = skSum
            Column = GridConsultaDBTableView1Direto_Credito
          end>
        OptionsData.Appending = True
        OptionsData.Editing = True
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.Footer = True
        object GridConsultaDBTableView1CODCENTRO_CUSTO: TcxGridDBColumn [0]
          Caption = 'C'#243'd Centro de Custo'
          DataBinding.FieldName = 'CODCENTRO_CUSTO'
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1PLANOCONTAS: TcxGridDBColumn [1]
          Options.Editing = False
        end
        object GridConsultaDBTableView1CENTRO_CUSTO: TcxGridDBColumn [2]
          Caption = 'Centro Custo'
          DataBinding.FieldName = 'CENTRO_CUSTO'
          Visible = False
          GroupIndex = 0
          Options.ShowEditButtons = isebAlways
        end
        inherited GridConsultaDBTableView1CODIGO: TcxGridDBColumn [3]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1CODPEDIDO: TcxGridDBColumn [4]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1CODEMPRESA: TcxGridDBColumn [5]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1DOCUMENTO: TcxGridDBColumn [6]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1NOTAFISCAL: TcxGridDBColumn [7]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1PESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn [8]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn [9]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1VENCTO: TcxGridDBColumn [10]
          Visible = False
          Options.Editing = False
          Options.ShowEditButtons = isebNever
        end
        inherited GridConsultaDBTableView1DATAPAGTO: TcxGridDBColumn [11]
          Visible = False
          Options.Editing = False
          Options.ShowEditButtons = isebNever
        end
        inherited GridConsultaDBTableView1Total: TcxGridDBColumn [12]
          Caption = 'R$ Valor de Refer'#234'ncial'
          Options.Editing = False
          Width = 131
        end
        object GridConsultaDBTableView1Direto_Credito: TcxGridDBColumn [13]
          Caption = 'CR'#201'DITO (direto)'
          DataBinding.FieldName = 'Credito'
          Width = 120
        end
        object GridConsultaDBTableView1Direto_Debito: TcxGridDBColumn [14]
          Caption = 'D'#201'BITO (direto)'
          DataBinding.FieldName = 'Debito'
          Width = 116
        end
        object GridConsultaDBTableView1Indireto_Credito: TcxGridDBColumn [15]
          Caption = 'CR'#201'DITO (indireto)'
          DataBinding.FieldName = 'Indireto_Credito'
          Width = 124
        end
        object GridConsultaDBTableView1Indireto_Debito: TcxGridDBColumn [16]
          Caption = 'D'#201'BITO (indireto)'
          DataBinding.FieldName = 'Indireto_Debito'
          Width = 104
        end
        object GridConsultaDBTableView1PERCENTUAL: TcxGridDBColumn [17]
          Caption = 'Percentual CC'
          DataBinding.FieldName = 'PERCENTUAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '%0.00;-%0.00'
          Width = 78
        end
        object GridConsultaDBTableView1Valor_Rateado: TcxGridDBColumn [18]
          Caption = 'Valor Rateado'
          DataBinding.FieldName = 'Valor_Rateado'
          Options.Editing = False
          Width = 119
        end
        inherited GridConsultaDBTableView1CHEQUE_NUMERO: TcxGridDBColumn [19]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1TIPOPAGTO: TcxGridDBColumn [20]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1TIPO: TcxGridDBColumn [21]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1STATUS: TcxGridDBColumn [22]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1HISTORICO: TcxGridDBColumn [23]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1EMISSAO: TcxGridDBColumn [24]
          Visible = False
          Options.Editing = False
          Options.ShowEditButtons = isebNever
        end
        inherited GridConsultaDBTableView1VALOR: TcxGridDBColumn [25]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1JUROS: TcxGridDBColumn [26]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1DESCONTO: TcxGridDBColumn [27]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1CODPLANOCONTAS: TcxGridDBColumn [28]
          Options.Editing = False
          Options.ShowEditButtons = isebAlways
        end
        inherited GridConsultaDBTableView1CODTIPOPAGTO: TcxGridDBColumn [29]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1CODCONDICAOPAGTO: TcxGridDBColumn [30]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1CONDICAOPAGTO: TcxGridDBColumn [31]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1CONTATOS: TcxGridDBColumn [32]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1PARCELA: TcxGridDBColumn [33]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn [34]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1BOLETO_NOSSO_NR: TcxGridDBColumn [35]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1CODNF_ENTRADA: TcxGridDBColumn [36]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1DT_NOTAFISCAL: TcxGridDBColumn [37]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1CODFINANCEIRO_GRUPO: TcxGridDBColumn [38]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1DT_EXCLUSAO: TcxGridDBColumn [39]
          Options.Editing = False
          Options.ShowEditButtons = isebNever
        end
        inherited GridConsultaDBTableView1MOTIVO_EXCLUSAO: TcxGridDBColumn [40]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1COMISSAO_PAGA: TcxGridDBColumn [41]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn [42]
          Options.Editing = False
          Options.ShowEditButtons = isebNever
        end
        inherited GridConsultaDBTableView1CODCONTA: TcxGridDBColumn [43]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1AGRUPADOR: TcxGridDBColumn [44]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn [45]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1PESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn [46]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1DT_EMISSAO_VENDA: TcxGridDBColumn [47]
          Options.Editing = False
          Options.ShowEditButtons = isebNever
        end
        inherited GridConsultaDBTableView1PREVISAO: TcxGridDBColumn [48]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1DT_PREVISAO: TcxGridDBColumn [49]
          Options.Editing = False
          Options.ShowEditButtons = isebNever
        end
        inherited GridConsultaDBTableView1LANCAMENTO_FUTURO: TcxGridDBColumn [50]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1CHEQUE_COMPE: TcxGridDBColumn [51]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1DT_COMPETENCIA: TcxGridDBColumn [52]
          Options.Editing = False
          Options.ShowEditButtons = isebNever
        end
        inherited GridConsultaDBTableView1EM_EXTRATO: TcxGridDBColumn [53]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1CONCILIADO: TcxGridDBColumn [54]
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1DT_CONCILIADO: TcxGridDBColumn [55]
          Visible = False
          Options.Editing = False
          Options.ShowEditButtons = isebNever
        end
        inherited GridConsultaDBTableView1CODUSUARIO_CONTA: TcxGridDBColumn [56]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1TRANSFERIDO: TcxGridDBColumn [57]
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1CONTA: TcxGridDBColumn
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1USUARIO: TcxGridDBColumn
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1USUARIO_CONTA: TcxGridDBColumn
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1COR: TcxGridDBColumn
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1Credito: TcxGridDBColumn
          Visible = False
          Options.Editing = False
        end
        inherited GridConsultaDBTableView1Debito: TcxGridDBColumn
          Visible = False
          Options.Editing = False
        end
        object GridConsultaDBTableView1CENTRO_CUSTO_NIVEL1: TcxGridDBColumn
          Caption = 'N'#237'vel 1'
          DataBinding.FieldName = 'CENTRO_CUSTO_NIVEL1'
        end
        object GridConsultaDBTableView1CENTRO_CUSTO_NIVEL2: TcxGridDBColumn
          Caption = 'N'#237'vel 2'
          DataBinding.FieldName = 'CENTRO_CUSTO_NIVEL2'
        end
        object GridConsultaDBTableView1CENTRO_CUSTO_NIVEL3: TcxGridDBColumn
          Caption = 'N'#237'vel 3'
          DataBinding.FieldName = 'CENTRO_CUSTO_NIVEL3'
        end
        object GridConsultaDBTableView1CENTRO_CUSTO_NIVEL4: TcxGridDBColumn
          Caption = 'N'#237'vel 4'
          DataBinding.FieldName = 'CENTRO_CUSTO_NIVEL4'
        end
        object GridConsultaDBTableView1CENTRO_CUSTO_NIVEL5: TcxGridDBColumn
          Caption = 'N'#237'vel 5'
          DataBinding.FieldName = 'CENTRO_CUSTO_NIVEL5'
        end
        object GridConsultaDBTableView1CENTRO_CUSTO_NIVEL6: TcxGridDBColumn
          Caption = 'N'#237'vel 6'
          DataBinding.FieldName = 'CENTRO_CUSTO_NIVEL6'
        end
      end
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
      ReportDocument.CreationDate = 44951.553588298600000000
      PixelsPerInch = 96
      BuiltInReportLink = True
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
  inherited MenuAcoes: TPopupMenu
    object AbrirPedido1: TMenuItem [2]
      Caption = 'Abrir Pedido'
      OnClick = AbrirPedido1Click
    end
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    OnImpressaoBeforePrint = WREventosCadastroImpressaoBeforePrint
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      
        'select F.CODIGO, F.CODPEDIDO, F.CODEMPRESA, F.RAZAOSOCIAL, F.DOC' +
        'UMENTO,'
      
        '       F.NOTAFISCAL, F.HISTORICO, F.EMISSAO, F.VENCTO, F.DATAPAG' +
        'TO, F.VALOR,'
      
        '       F.JUROS, F.DESCONTO, F.CODPLANOCONTAS, F.CODTIPOPAGTO, F.' +
        'TIPOPAGTO,'
      
        '       F.CODCONDICAOPAGTO, F.CONDICAOPAGTO, F.CONTATOS, F.PARCEL' +
        'A, F.CODUSUARIO,'
      
        '       F.TIPO, F.STATUS, F.CHEQUE_NUMERO, F.BOLETO_NOSSO_NR, F.C' +
        'ODNF_ENTRADA,'
      
        '       F.DT_NOTAFISCAL, F.CODFINANCEIRO_GRUPO, F.DT_EXCLUSAO, F.' +
        'MOTIVO_EXCLUSAO,'
      
        '       F.COR, F.COMISSAO_PAGA, F.DT_ALTERACAO, F.CODCONTA, F.AGR' +
        'UPADOR,'
      '       F.PESSOA_RESPONSAVEL_CODIGO, F.PESSOA_RESPONSAVEL_TIPO,'
      
        '       F.PESSOA_RESPONSAVEL_SEQUENCIA, F.CREDITO, F.DT_EMISSAO_V' +
        'ENDA,'
      
        '       F.PREVISAO, F.DT_PREVISAO, F.LANCAMENTO_FUTURO, F.CHEQUE_' +
        'COMPE,'
      
        '       F.DT_COMPETENCIA, F.EM_EXTRATO, F.CONCILIADO, F.DT_CONCIL' +
        'IADO,'
      '       F.CODUSUARIO_CONTA, PC.DESCRICAO as PLANOCONTAS,'
      '       FCC.codcentro_custo,'
      
        '       C.DESCRICAO as CONTA, U.USUARIO, UC.USUARIO as USUARIO_CO' +
        'NTA, FCC.PERCENTUAL,'
      
        '       CC1.DESCRICAO as CENTRO_CUSTO_NIVEL1, CC2.DESCRICAO as CE' +
        'NTRO_CUSTO_NIVEL2, CC3.DESCRICAO as CENTRO_CUSTO_NIVEL3, '
      
        '       CC4.DESCRICAO as CENTRO_CUSTO_NIVEL4, CC5.DESCRICAO as CE' +
        'NTRO_CUSTO_NIVEL5, CC6.DESCRICAO as CENTRO_CUSTO_NIVEL6'
      'from FINANCEIRO F'
      'left join PLANOCONTAS PC on (F.CODPLANOCONTAS = PC.CODIGO)'
      'left join CONTAS C on (F.CODCONTA = C.CODIGO)'
      'left join USUARIO U on (F.CODUSUARIO = U.CODIGO)'
      'left join USUARIO UC on (F.CODUSUARIO_CONTA = UC.CODIGO)'
      
        'left join FINANCEIRO_CENTRO_CUSTO FCC on (F.CODIGO = FCC.CODFINA' +
        'NCEIRO)'
      'left join CENTRO_CUSTO CC ON  (FCC.CODCENTRO_CUSTO = CC.CODIGO)'
      'left join CENTRO_CUSTO CC1 ON  (CC.NIVEL1 = CC1.CODIGO)'
      'left join CENTRO_CUSTO CC2 ON  (CC.NIVEL2 = CC2.CODIGO)'
      'left join CENTRO_CUSTO CC3 ON  (CC.NIVEL3 = CC3.CODIGO)'
      'left join CENTRO_CUSTO CC4 ON  (CC.NIVEL4 = CC4.CODIGO)'
      'left join CENTRO_CUSTO CC5 ON  (CC.NIVEL5 = CC5.CODIGO)'
      'left join CENTRO_CUSTO CC6 ON  (CC.NIVEL6 = CC6.CODIGO)')
    object ConsultaValor_Rateado: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Valor_Rateado'
      Calculated = True
    end
    object ConsultaCODCENTRO_CUSTO: TIntegerField
      FieldName = 'CODCENTRO_CUSTO'
    end
    object ConsultaPERCENTUAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      ProviderFlags = []
    end
    object ConsultaIndireto_Debito: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Indireto_Debito'
      Calculated = True
    end
    object ConsultaIndireto_Credito: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Indireto_Credito'
      Calculated = True
    end
  end
end
