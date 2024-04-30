inherited ImpriVeiculos_Medidas: TImpriVeiculos_Medidas
  Caption = 'ImpriVeiculos_Medidas'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep1: TQuickRep
    Left = 5
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    ExplicitLeft = 5
    inherited QRBand1: TQRBand
      Size.Values = (
        317.500000000000000000
        1899.708333333333000000)
      inherited QRSysData1: TQRSysData
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          256.645833333333300000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QR_Titulo: TQRLabel
        Width = 316
        Size.Values = (
          63.500000000000000000
          547.687500000000000000
          193.145833333333300000
          836.083333333333300000)
        Caption = ' Relat'#243'rio de Ve'#237'culos com Medidas'
        FontSize = 12
        ExplicitWidth = 316
      end
      inherited QR_Periodo: TQRLabel
        Enabled = False
        Size.Values = (
          44.979166666666670000
          547.687500000000000000
          256.645833333333300000
          624.416666666666700000)
        FontSize = 10
      end
      inherited QRLabel1: TQRLabel
        Size.Values = (
          44.979166666666670000
          1394.354166666667000000
          256.645833333333300000
          161.395833333333300000)
        FontSize = 10
      end
      inherited QR_Fantasia: TQRLabel
        Width = 481
        Size.Values = (
          52.916666666666670000
          547.687500000000000000
          0.000000000000000000
          1272.645833333333000000)
        FontSize = 12
        ExplicitWidth = 481
      end
      inherited QR_Endereco: TQRLabel
        Width = 402
        Size.Values = (
          39.687500000000000000
          547.687500000000000000
          60.854166666666670000
          1063.625000000000000000)
        Font.Height = -11
        FontSize = 8
        ExplicitWidth = 402
      end
      inherited QR_CNPJ_INSC_Fone: TQRLabel
        Width = 273
        Size.Values = (
          39.687500000000000000
          547.687500000000000000
          103.187500000000000000
          722.312500000000000000)
        Font.Height = -11
        FontSize = 8
        ExplicitWidth = 273
      end
      inherited QRImage1: TQRImage
        Size.Values = (
          317.500000000000000000
          2.645833333333333000
          2.645833333333333000
          529.166666666666700000)
      end
    end
    inherited QRBand2: TQRBand
      Height = 12
      Size.Values = (
        31.750000000000000000
        1899.708333333333000000)
      ExplicitHeight = 12
      inherited QRLabel2: TQRLabel
        Left = 387
        Width = 328
        Size.Values = (
          39.687500000000000000
          1023.937500000000000000
          -5.291666666666667000
          867.833333333333300000)
        FontSize = 8
        ExplicitLeft = 387
        ExplicitWidth = 328
      end
      inherited QRSysData2: TQRSysData
        Size.Values = (
          39.687500000000000000
          896.937500000000000000
          -5.291666666666667000
          103.187500000000000000)
        FontSize = 8
      end
    end
  end
  object Carro: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM CARRO'
      'ORDER BY DESCRICAO')
    Left = 380
    Top = 187
    object CarroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CARRO.CODIGO'
      Required = True
    end
    object CarroDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'CARRO.DESCRICAO'
      Size = 50
    end
  end
  object DSCarro: TDataSource
    DataSet = Carro
    Left = 408
    Top = 187
  end
  object CarroTemp: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    OnCalcFields = CarroTempCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DSCarro
    ParamCheck = True
    SQL.Strings = (
      'SELECT CT.*,L.DESCRICAO LOCAL, MC.DESCRICAO MARCA'
      'FROM CARROTEMP CT'
      ''
      'LEFT JOIN LOCAL L ON CT.CODLOCAL = L.CODIGO'
      'LEFT JOIN MARCA MC ON CT.CODMARCA = MC.CODIGO'
      ''
      ''
      'WHERE CT.CODCARRO= :Codigo'
      'ORDER BY CT.CODMARCA, CT.CODLOCAL '
      ' '
      '   ')
    Left = 436
    Top = 187
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
end
