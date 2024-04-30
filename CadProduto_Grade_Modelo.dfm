inherited FrmProduto_Grade_Modelo: TFrmProduto_Grade_Modelo
  Caption = 'Cadastro de Modelo de Grade'
  ClientHeight = 534
  ClientWidth = 1025
  ExplicitWidth = 1041
  ExplicitHeight = 573
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    Width = 1025
    Height = 514
    ExplicitWidth = 1025
    ExplicitHeight = 514
    inherited btnSair: TcxButton
      Top = 840
      ExplicitTop = 840
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 629
      TabOrder = 21
      ExplicitLeft = 629
    end
    inherited BtnMostrarLogAtividades: TcxButton
      Left = 915
      TabOrder = 151
      ExplicitLeft = 915
    end
    inherited BtnSeguidores: TcxButton
      TabOrder = 150
    end
    inherited btnMenuConfig: TcxButton
      Left = 906
      TabOrder = 152
      ExplicitLeft = 906
    end
    inherited PnlFrameHistorico: TPanel
      Top = 599
      TabOrder = 149
      ExplicitTop = 599
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Modelo de Grade'
    end
    object cbxTipo: TcxDBComboBox [25]
      Left = 507
      Top = 61
      DataBinding.DataField = 'TIPO'
      DataBinding.DataSource = DS
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'TAMANHO'
        'MEDIDAS')
      Properties.Nullstring = 'TAMANHO'
      Properties.UseNullString = True
      Properties.OnChange = cbTipoGradePropertiesChange
      Style.HotTrack = False
      TabOrder = 20
      Width = 121
    end
    object edtT1: TcxDBTextEdit [26]
      Left = 13
      Top = 505
      DataBinding.DataField = 'T1'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 26
      Width = 78
    end
    object edtT11: TcxDBTextEdit [27]
      Left = 13
      Top = 527
      DataBinding.DataField = 'T11'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 36
      Width = 78
    end
    object edtT21: TcxDBTextEdit [28]
      Left = 13
      Top = 549
      DataBinding.DataField = 'T21'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 46
      Width = 78
    end
    object edtT2: TcxDBTextEdit [29]
      Left = 92
      Top = 505
      DataBinding.DataField = 'T2'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 27
      Width = 78
    end
    object edtT12: TcxDBTextEdit [30]
      Left = 92
      Top = 527
      DataBinding.DataField = 'T12'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 37
      Width = 78
    end
    object edtT22: TcxDBTextEdit [31]
      Left = 92
      Top = 549
      DataBinding.DataField = 'T22'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 47
      Width = 78
    end
    object edtT3: TcxDBTextEdit [32]
      Left = 171
      Top = 505
      DataBinding.DataField = 'T3'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 28
      Width = 78
    end
    object edtT13: TcxDBTextEdit [33]
      Left = 171
      Top = 527
      DataBinding.DataField = 'T13'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 38
      Width = 78
    end
    object edtT23: TcxDBTextEdit [34]
      Left = 171
      Top = 549
      DataBinding.DataField = 'T23'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 48
      Width = 78
    end
    object edtT4: TcxDBTextEdit [35]
      Left = 250
      Top = 505
      DataBinding.DataField = 'T4'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 29
      Width = 78
    end
    object edtT14: TcxDBTextEdit [36]
      Left = 250
      Top = 527
      DataBinding.DataField = 'T14'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 39
      Width = 78
    end
    object edtT24: TcxDBTextEdit [37]
      Left = 250
      Top = 549
      DataBinding.DataField = 'T24'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 49
      Width = 78
    end
    object edtT5: TcxDBTextEdit [38]
      Left = 329
      Top = 505
      DataBinding.DataField = 'T5'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 30
      Width = 78
    end
    object edtT15: TcxDBTextEdit [39]
      Left = 329
      Top = 527
      DataBinding.DataField = 'T15'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 40
      Width = 78
    end
    object edtT25: TcxDBTextEdit [40]
      Left = 329
      Top = 549
      DataBinding.DataField = 'T25'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 50
      Width = 78
    end
    object edtT6: TcxDBTextEdit [41]
      Left = 408
      Top = 505
      DataBinding.DataField = 'T6'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 31
      Width = 78
    end
    object edtT16: TcxDBTextEdit [42]
      Left = 408
      Top = 527
      DataBinding.DataField = 'T16'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 41
      Width = 78
    end
    object edtT26: TcxDBTextEdit [43]
      Left = 408
      Top = 549
      DataBinding.DataField = 'T26'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 51
      Width = 78
    end
    object edtT7: TcxDBTextEdit [44]
      Left = 487
      Top = 505
      DataBinding.DataField = 'T7'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 32
      Width = 78
    end
    object edtT17: TcxDBTextEdit [45]
      Left = 487
      Top = 527
      DataBinding.DataField = 'T17'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 42
      Width = 78
    end
    object edtT27: TcxDBTextEdit [46]
      Left = 487
      Top = 549
      DataBinding.DataField = 'T27'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 52
      Width = 78
    end
    object edtT8: TcxDBTextEdit [47]
      Left = 566
      Top = 505
      DataBinding.DataField = 'T8'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 33
      Width = 78
    end
    object edtT18: TcxDBTextEdit [48]
      Left = 566
      Top = 527
      DataBinding.DataField = 'T18'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 43
      Width = 78
    end
    object edtT28: TcxDBTextEdit [49]
      Left = 566
      Top = 549
      DataBinding.DataField = 'T28'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 53
      Width = 78
    end
    object edtT9: TcxDBTextEdit [50]
      Left = 645
      Top = 505
      DataBinding.DataField = 'T9'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 34
      Width = 78
    end
    object edtT19: TcxDBTextEdit [51]
      Left = 645
      Top = 527
      DataBinding.DataField = 'T19'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 44
      Width = 78
    end
    object edtT29: TcxDBTextEdit [52]
      Left = 645
      Top = 549
      DataBinding.DataField = 'T29'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 54
      Width = 78
    end
    object edtT10: TcxDBTextEdit [53]
      Left = 724
      Top = 505
      DataBinding.DataField = 'T10'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 35
      Width = 78
    end
    object edtT20: TcxDBTextEdit [54]
      Left = 724
      Top = 527
      DataBinding.DataField = 'T20'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 45
      Width = 78
    end
    object edtT30: TcxDBTextEdit [55]
      Left = 724
      Top = 549
      DataBinding.DataField = 'T30'
      DataBinding.DataSource = DS
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 55
      Width = 78
    end
    object Ck01: TcxCheckBox [56]
      Left = 10000
      Top = 10003
      Caption = 'Comprimento'
      Properties.OnChange = Ck01PropertiesChange
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 56
      Visible = False
    end
    object Ck02: TcxCheckBox [57]
      Left = 10000
      Top = 10003
      Caption = 'Largura'
      Properties.OnChange = Ck02PropertiesChange
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 57
      Visible = False
    end
    object Ck03: TcxCheckBox [58]
      Left = 10000
      Top = 10003
      Caption = 'Espessura'
      Properties.OnChange = Ck03PropertiesChange
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 58
      Visible = False
    end
    object edtMedidasT01_01: TcxCurrencyEdit [59]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 59
      Visible = False
      Width = 80
    end
    object edtMedidasT02_01: TcxCurrencyEdit [60]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 60
      Visible = False
      Width = 80
    end
    object edtMedidasT03_01: TcxCurrencyEdit [61]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 61
      Visible = False
      Width = 80
    end
    object edtMedidasT04_01: TcxCurrencyEdit [62]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 62
      Visible = False
      Width = 80
    end
    object edtMedidasT05_01: TcxCurrencyEdit [63]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 63
      Visible = False
      Width = 80
    end
    object edtMedidasT06_01: TcxCurrencyEdit [64]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 64
      Visible = False
      Width = 80
    end
    object edtMedidasT07_01: TcxCurrencyEdit [65]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 65
      Visible = False
      Width = 80
    end
    object edtMedidasT08_01: TcxCurrencyEdit [66]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 66
      Visible = False
      Width = 80
    end
    object edtMedidasT09_01: TcxCurrencyEdit [67]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 67
      Visible = False
      Width = 80
    end
    object edtMedidasT10_01: TcxCurrencyEdit [68]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 68
      Visible = False
      Width = 80
    end
    object edtMedidasT11_01: TcxCurrencyEdit [69]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 69
      Visible = False
      Width = 80
    end
    object edtMedidasT12_01: TcxCurrencyEdit [70]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 70
      Visible = False
      Width = 80
    end
    object edtMedidasT13_01: TcxCurrencyEdit [71]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 71
      Visible = False
      Width = 80
    end
    object edtMedidasT14_01: TcxCurrencyEdit [72]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 72
      Visible = False
      Width = 80
    end
    object edtMedidasT15_01: TcxCurrencyEdit [73]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 73
      Visible = False
      Width = 80
    end
    object edtMedidasT01_02: TcxCurrencyEdit [74]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 74
      Visible = False
      Width = 80
    end
    object edtMedidasT02_02: TcxCurrencyEdit [75]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 75
      Visible = False
      Width = 80
    end
    object edtMedidasT03_02: TcxCurrencyEdit [76]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 76
      Visible = False
      Width = 80
    end
    object edtMedidasT04_02: TcxCurrencyEdit [77]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 77
      Visible = False
      Width = 80
    end
    object edtMedidasT05_02: TcxCurrencyEdit [78]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 78
      Visible = False
      Width = 80
    end
    object edtMedidasT06_02: TcxCurrencyEdit [79]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 79
      Visible = False
      Width = 80
    end
    object edtMedidasT07_02: TcxCurrencyEdit [80]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 80
      Visible = False
      Width = 80
    end
    object edtMedidasT08_02: TcxCurrencyEdit [81]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 81
      Visible = False
      Width = 80
    end
    object edtMedidasT09_02: TcxCurrencyEdit [82]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 82
      Visible = False
      Width = 80
    end
    object edtMedidasT10_02: TcxCurrencyEdit [83]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 83
      Visible = False
      Width = 80
    end
    object edtMedidasT11_02: TcxCurrencyEdit [84]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 84
      Visible = False
      Width = 80
    end
    object edtMedidasT12_02: TcxCurrencyEdit [85]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 85
      Visible = False
      Width = 80
    end
    object edtMedidasT13_02: TcxCurrencyEdit [86]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 86
      Visible = False
      Width = 80
    end
    object edtMedidasT14_02: TcxCurrencyEdit [87]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 87
      Visible = False
      Width = 80
    end
    object edtMedidasT15_02: TcxCurrencyEdit [88]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 88
      Visible = False
      Width = 80
    end
    object edtMedidasT01_03: TcxCurrencyEdit [89]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 89
      Visible = False
      Width = 80
    end
    object edtMedidasT02_03: TcxCurrencyEdit [90]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 90
      Visible = False
      Width = 80
    end
    object edtMedidasT03_03: TcxCurrencyEdit [91]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 91
      Visible = False
      Width = 80
    end
    object edtMedidasT04_03: TcxCurrencyEdit [92]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 92
      Visible = False
      Width = 80
    end
    object edtMedidasT05_03: TcxCurrencyEdit [93]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 93
      Visible = False
      Width = 80
    end
    object edtMedidasT06_03: TcxCurrencyEdit [94]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 94
      Visible = False
      Width = 80
    end
    object edtMedidasT07_03: TcxCurrencyEdit [95]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 95
      Visible = False
      Width = 80
    end
    object edtMedidasT08_03: TcxCurrencyEdit [96]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 96
      Visible = False
      Width = 80
    end
    object edtMedidasT09_03: TcxCurrencyEdit [97]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 97
      Visible = False
      Width = 80
    end
    object edtMedidasT10_03: TcxCurrencyEdit [98]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 98
      Visible = False
      Width = 80
    end
    object edtMedidasT11_03: TcxCurrencyEdit [99]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 99
      Visible = False
      Width = 80
    end
    object edtMedidasT12_03: TcxCurrencyEdit [100]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 100
      Visible = False
      Width = 80
    end
    object edtMedidasT13_03: TcxCurrencyEdit [101]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 101
      Visible = False
      Width = 80
    end
    object edtMedidasT14_03: TcxCurrencyEdit [102]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 102
      Visible = False
      Width = 80
    end
    object edtMedidasT15_03: TcxCurrencyEdit [103]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 103
      Visible = False
      Width = 80
    end
    object EdtMedidasT16_01: TcxCurrencyEdit [104]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 104
      Visible = False
      Width = 80
    end
    object EdtMedidasT17_01: TcxCurrencyEdit [105]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 105
      Visible = False
      Width = 80
    end
    object EdtMedidasT18_01: TcxCurrencyEdit [106]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 106
      Visible = False
      Width = 80
    end
    object EdtMedidasT19_01: TcxCurrencyEdit [107]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 107
      Visible = False
      Width = 80
    end
    object EdtMedidasT20_01: TcxCurrencyEdit [108]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 108
      Visible = False
      Width = 80
    end
    object EdtMedidasT21_01: TcxCurrencyEdit [109]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 109
      Visible = False
      Width = 80
    end
    object EdtMedidasT22_01: TcxCurrencyEdit [110]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 110
      Visible = False
      Width = 80
    end
    object EdtMedidasT23_01: TcxCurrencyEdit [111]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 111
      Visible = False
      Width = 80
    end
    object EdtMedidasT24_01: TcxCurrencyEdit [112]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 112
      Visible = False
      Width = 80
    end
    object EdtMedidasT25_01: TcxCurrencyEdit [113]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 113
      Visible = False
      Width = 80
    end
    object EdtMedidasT26_01: TcxCurrencyEdit [114]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 114
      Visible = False
      Width = 80
    end
    object EdtMedidasT27_01: TcxCurrencyEdit [115]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 115
      Visible = False
      Width = 80
    end
    object EdtMedidasT28_01: TcxCurrencyEdit [116]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 116
      Visible = False
      Width = 80
    end
    object EdtMedidasT29_01: TcxCurrencyEdit [117]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 117
      Visible = False
      Width = 80
    end
    object EdtMedidasT30_01: TcxCurrencyEdit [118]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 118
      Visible = False
      Width = 80
    end
    object EdtMedidasT16_02: TcxCurrencyEdit [119]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 119
      Visible = False
      Width = 80
    end
    object EdtMedidasT17_02: TcxCurrencyEdit [120]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 120
      Visible = False
      Width = 80
    end
    object EdtMedidasT18_02: TcxCurrencyEdit [121]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 121
      Visible = False
      Width = 80
    end
    object EdtMedidasT19_02: TcxCurrencyEdit [122]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 122
      Visible = False
      Width = 80
    end
    object EdtMedidasT20_02: TcxCurrencyEdit [123]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 123
      Visible = False
      Width = 80
    end
    object EdtMedidasT21_02: TcxCurrencyEdit [124]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 124
      Visible = False
      Width = 80
    end
    object EdtMedidasT22_02: TcxCurrencyEdit [125]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 125
      Visible = False
      Width = 80
    end
    object EdtMedidasT23_02: TcxCurrencyEdit [126]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 126
      Visible = False
      Width = 80
    end
    object EdtMedidasT24_02: TcxCurrencyEdit [127]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 127
      Visible = False
      Width = 80
    end
    object EdtMedidasT25_02: TcxCurrencyEdit [128]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 128
      Visible = False
      Width = 80
    end
    object EdtMedidasT26_02: TcxCurrencyEdit [129]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 129
      Visible = False
      Width = 80
    end
    object EdtMedidasT27_02: TcxCurrencyEdit [130]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 130
      Visible = False
      Width = 80
    end
    object EdtMedidasT28_02: TcxCurrencyEdit [131]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 131
      Visible = False
      Width = 80
    end
    object EdtMedidasT29_02: TcxCurrencyEdit [132]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 132
      Visible = False
      Width = 80
    end
    object EdtMedidasT30_02: TcxCurrencyEdit [133]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 133
      Visible = False
      Width = 80
    end
    object EdtMedidasT16_03: TcxCurrencyEdit [134]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 134
      Visible = False
      Width = 80
    end
    object EdtMedidasT17_03: TcxCurrencyEdit [135]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 135
      Visible = False
      Width = 80
    end
    object EdtMedidasT18_03: TcxCurrencyEdit [136]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 136
      Visible = False
      Width = 80
    end
    object EdtMedidasT19_03: TcxCurrencyEdit [137]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 137
      Visible = False
      Width = 80
    end
    object EdtMedidasT20_03: TcxCurrencyEdit [138]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 138
      Visible = False
      Width = 80
    end
    object EdtMedidasT21_03: TcxCurrencyEdit [139]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 139
      Visible = False
      Width = 80
    end
    object EdtMedidasT22_03: TcxCurrencyEdit [140]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 140
      Visible = False
      Width = 80
    end
    object EdtMedidasT23_03: TcxCurrencyEdit [141]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 141
      Visible = False
      Width = 80
    end
    object EdtMedidasT24_03: TcxCurrencyEdit [142]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 142
      Visible = False
      Width = 80
    end
    object EdtMedidasT25_03: TcxCurrencyEdit [143]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 143
      Visible = False
      Width = 80
    end
    object EdtMedidasT26_03: TcxCurrencyEdit [144]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 144
      Visible = False
      Width = 80
    end
    object EdtMedidasT27_03: TcxCurrencyEdit [145]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 145
      Visible = False
      Width = 80
    end
    object EdtMedidasT28_03: TcxCurrencyEdit [146]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 146
      Visible = False
      Width = 80
    end
    object EdtMedidasT29_03: TcxCurrencyEdit [147]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 147
      Visible = False
      Width = 80
    end
    object EdtMedidasT30_03: TcxCurrencyEdit [148]
      Left = 10000
      Top = 10003
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = '0.00###'
      Style.HotTrack = False
      TabOrder = 148
      Visible = False
      Width = 80
    end
    object GridRecursos: TcxGrid [149]
      Left = 13
      Top = 153
      Width = 852
      Height = 351
      TabOrder = 25
      object GridEtapas: TcxGridDBTableView
        DragMode = dmAutomatic
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSProdutoGradeModeloItem
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object GridEtapasDESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 671
        end
        object GridEtapasDT_ALTERACAO: TcxGridDBColumn
          Caption = 'Dt. Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 179
        end
      end
      object GridRecursosLevel1: TcxGridLevel
        GridView = GridEtapas
      end
    end
    object edtDescricaoItem: TcxTextEdit [150]
      Left = 13
      Top = 131
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 22
      Width = 770
    end
    object btnAdicionarItem: TcxButton [151]
      Left = 784
      Top = 117
      Width = 40
      Height = 35
      Hint = 'Adicionar Funcion'#225'rio para a produ'#231#227'o deste item'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D361000000000000036000000280000002000000020000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000010101030202010D03020113030202140202010F0101
        0106000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        01020504031B2D28245168564D9A82665BBC8F6D5FCC8C6759CE765346BF5A3E
        34A22A1D185F0605042302010109000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000504031A5247
        417ABBA092E1D4A996FFBC7A65FFAA5643FFA04432FF9B3F2CFF9D4430FF9F4C
        39FFA25B49FF8A5241EA42261E92080604290101010500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000010101031C19173EB4A195D3E2C0
        ACFFC0795BFF9F3B1BFF962C10FF8E210AFF881905FF861805FF841804FF8317
        04FF811805FF8F3321FFA15C4BFF824D3FE51F100B600202010C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000001010103312C2857D7C4B6EBE3BDA2FFBD70
        47FFAD532BFFA3411CFF9B3616FF932B0FFF8B1E08FF821907FF841804FF8317
        04FF811704FF86230FFF97442FFFAF705BFF9F6C5AF82E160F7F030202100000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000010101011E1B1841DECFC1EDE8C4A3FFCB8858FFBF74
        45FFB25C30FFA94B23FFA13F1CFF973415FFB68376FFE6DBD8FF975345FF8217
        04FF831B06FF8D2F17FF9E4F35FFAE6B52FFBF8B73FFAC7D69FC230F0A6F0201
        0108000000000000000000000000000000000000000000000000000000000000
        000000000000000000000605041FC4B8AED7F2D9BCFFD8A16AFFCF905AFFC47C
        49FFB76635FFAE5428FFA54821FFBC8977FFF8F4F2FFF3EAE8FFE8D9D6FF904B
        3DFF8A260DFF953B1DFFA65B3CFFB57758FFC28F72FFD0A88EFF9B6E5AF21208
        044B000000000000000000000000000000000000000000000000000000000000
        00000000000001010104605A5485FBEDDBFFE5B87CFFDCA86BFFD3985DFFC884
        4DFFBC6E3AFFB35D2EFFB97B5EFFF9F5F4FFF7F1EFFFF2E7E4FFEBDAD7FFD8C2
        BCFF8E4730FF9C4725FFAD6642FFBB815EFFC89978FFD3AD8FFFDCBFA5FF5B35
        28BD040302170000000000000000000000000000000000000000000000000000
        00000000000007060523DED4CAE9F3D8AAFFE7BC77FFE0AF6DFFD79F61FFCD8C
        51FFC1763EFFBC784FFFF5EFECFFFAF6F5FFF6EEEBFFF0E4E0FFE9D7D2FFE3CB
        C5FFC9ACA1FF975534FFB37048FFC28B64FFCEA27DFFD9B694FFE2C7AAFFC09D
        85FE1708045B0000000000000000000000000000000000000000000000000000
        000000000000423C3867FDF3E5FFF0CC82FFEBC278FFE4B66FFFDBA663FFD193
        55FFC37E45FFECDED4FFFCFAF9FFF9F4F2FFF5ECE9FFEFE1DCFFE8D4CFFFE2C9
        C1FFDDC0B3FFB39380FFAE734BFFC89469FFD4AB82FFDEBE99FFE6CEADFFECDA
        C0FF48281EA80202010C00000000000000000000000000000000000000000000
        0000020201098F867FADFBEBC9FFF3D07FFFEEC879FFE7BC71FFDFAC66FFD599
        57FFDEBFA2FFFDFCFBFFFBF8F6FFF8F2EFFFF3E9E5FFEDDED9FFE7D2CBFFE1C6
        BDFFDCBEB0FFDBBBA8FFA6866DFFC9986CFFD9B386FFE3C69DFFEBD5B2FFF1E0
        C4FF916E5CE20503022000000000000000000000000000000000000000000000
        000003030216BDB3AAD0FBE6AFFFF6D57EFFF1CD7AFFEBC173FFE2B067FFDBAF
        7BFFFCFBFAFFFCFBFAFFFBF6F4FFF7F0ECFFF2E7E2FFECDBD5FFE5D0C8FFDFC3
        B9FFDBBBACFFDCBDA9FFDCC1ABFFAA8B6BFFDDB98AFFE8CDA1FFF0DCB6FFF5E7
        C8FFC3A48EFF0B05033900000000000000000000000000000000000000000000
        00000403021DD9CCC1E8FCE6A3FFF9DA7EFFF3D17BFFECC474FFE2B369FFF4EA
        DDFFFDFDFCFFF4EEEAFFCFAB94FFECE1DBFFF1E5DFFFEBD8D2FFE4CCC3FFDEC1
        B5FFA57E69FFBD9E89FFE1C6AFFFCEB8A0FFC5A77EFFEBD2A4FFF4E2B9FFF9ED
        CBFFD4BCA5FF1508035500000000000000000000000000000000000000000000
        00000403021FE8DBD0F3FDE79CFFFADC7EFFF5D37BFFEEC574FFE8C892FFF8F4
        F0FFDDBD9EFFC07D48FFB56734FFE5D7CFFFEFE2DCFFE9D5CEFFE2C9BFFFDCBE
        B0FF975A38FFAA6637FFA67E59FFB69E84FFA89375FFEDD4A6FFF5E5BBFFFBF0
        CDFFDECAB2FF1808045D00000000000000000000000000000000000000000000
        00000403021BD1C6BCE1FCE6A6FFF8D97EFFF3D17AFFECC473FFE3B56EFFD7A0
        5EFFCC8949FFC1783DFFB56733FFE3D4CBFFEEDFD8FFE7D2CAFFE0C5BBFFDBBB
        AEFF975A39FFB26A39FFC38856FFD1A472FFD9B888FFECD3A5FFF4E2BAFFF9ED
        CBFFD0B6A0FF1307034F00000000000000000000000000000000000000000000
        000003020213B6ACA3CBFBE6B3FFF5D57EFFF1CC79FFEAC072FFE1AF66FFD69C
        58FFCA8547FFC0753CFFB36432FFE1D1C8FFECDCD4FFE5CDC5FFDEC0B6FFDABA
        ADFF965938FFAF6636FFC18454FFD1A272FFDEBB8CFFE9CFA3FFF1DEB8FFF6E8
        C9FFBB9A84FC0805032F00000000000000000000000000000000000000000000
        00000101010479726B9AFCEDD1FFF2CF7EFFEDC678FFE7BA70FFDEAA64FFD396
        55FFC78144FFBE7139FFB16130FFDFCDC4FFEBD8D1FFE2C9C1FFDCBEB3FFD9B8
        ACFF945537FFAC6032FFBD8052FFCE9E70FFDBB78AFFE5CAA1FFEDD8B5FFF2E3
        C6FF7D5C4DD00403021A00000000000000000000000000000000000000000000
        0000000000002B27244EFEF5E9FFF0CD88FFEABF76FFE3B36DFFDAA360FFD090
        51FFC37B40FFBA6B36FFAE5C2DFFDDC9C0FFE9D4CDFFE0C5BDFFDABBB2FFD8B6
        ABFF904F32FFA85A30FFBA7C51FFCA996EFFD7B188FFE2C49EFFE9D3B2FFE9D7
        BDFF381C13940101010500000000000000000000000000000000000000000000
        00000000000003030217BEB5ACD0F5DEBBFFE5B974FFDFAC6AFFD69B5CFFCB88
        4DFFBF733BFFB76432FFAB5629FFDAC5BCFFE7D1C9FFDFC3BBFFD9B8B0FFD6B3
        A9FF8C492EFFA4562FFFB7774FFFC6936DFFD3AB86FFDDBE9CFFE6CEB2FFA984
        70F40C06033C0000000000000000000000000000000000000000000000000000
        000000000000010101013934305EFCF0E3FFE6BD87FFDAA467FFD19358FFC67F
        48FFBA6A36FFB25C2DFFA74F25FFD7C1B7FFE5CDC6FFDEC1BAFFD8B5AFFFD5B1
        A8FF88432BFFA1502EFFB3714EFFC28D6BFFCFA584FFD9B99BFFD8BCA3FF3F20
        169B0202010B0000000000000000000000000000000000000000000000000000
        00000000000000000000030202108B817AAAF7E5D0FFD8A16DFFCC8954FFC176
        42FFB56130FFAD5428FFA34720FFD5BCB2FFE4CBC4FFDDBFB9FFD8B6AFFFD4B0
        A9FF853E2AFF9D4A2EFFAE6B4DFFBE876AFFCB9F83FFD7B69DFF754C3CD60805
        032C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000605041EAFA298C9F0D7C0FFCD8C5FFFBC6C
        3CFFAF572AFFA84A22FFA03F1BFFA05943FFAC7669FFAC7B71FFA47267FF965C
        50FF88311FFF98452EFFAA654DFFBA816AFFCBA18BFF8B5C4AEA110805440101
        0102000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B090827988A80B9EDD2BFFFCA89
        67FFAA4C24FFA3401CFF9B3516FF932A0FFF8B1F09FF891F0CFF8B2613FF8D2C
        1AFF903322FF95402FFFAB6654FFBC8876FF7A4C3DDA130A0748010101050000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000403021761554D8CD2B9
        A8EFD7A992FFB96C50FF9C391EFF8E210AFF8B1F0CFF8D2513FF8F2C19FF9235
        24FFA04E3DFFAA6554FFA26959FA532F24AC0B06043101010102000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000001010106100D
        0B316B5B529AAE9082DBD0A594FEC68E7CFFBA7967FFB5725FFFB57562FFB175
        63FF936050E85A382DAD190F0B4C020201100000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010101060403021A1C1613433A2C266D4C3830894D38308D3A2821772117
        1252050402210202010C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 23
      OnClick = btnAdicionarItemClick
    end
    object btnRemoverItem: TcxButton [152]
      AlignWithMargins = True
      Left = 825
      Top = 117
      Width = 40
      Height = 35
      Hint = 'Remover Funcion'#225'rio da produ'#231#227'o deste item'
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 23
      Margins.Bottom = 0
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D361000000000000036000000280000002000000020000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000010101030202010D03020113030202140202010F0101
        0106000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        01020504031B2D28245168564D9A82665BBC8F6D5FCC8C6759CE765346BF5A3E
        34A22A1D185F0605042302010109000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000504031A5247
        417ABBA092E1D4A996FFBC7A65FFAA5643FFA04432FF9B3F2CFF9D4430FF9F4C
        39FFA25B49FF8A5241EA42261E92080604290101010500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000010101031C19173EB4A195D3E2C0
        ACFFC0795BFF9F3B1BFF962C10FF8E210AFF881905FF861805FF841804FF8317
        04FF811805FF8F3321FFA15C4BFF824D3FE51F100B600202010C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000001010103312C2857D7C4B6EBE3BDA2FFBD70
        47FFAD532BFFA3411CFF9B3616FF922A0FFF871D08FF85200EFF801704FF8217
        04FF811704FF86230FFF97442FFFAF705BFF9F6C5AF82E160F7F030202100000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000010101011E1B1841DECFC1EDE8C4A3FFCB8858FFBF74
        45FFB25C30FFA94B23FF9D3D1BFFE1CDC8FFF6F1EFFFF3EAE9FFE6D5D2FFC8A4
        9DFF83220EFF8D2F17FF9E4F35FFAE6B52FFBF8B73FFAC7D69FC230F0A6F0201
        0108000000000000000000000000000000000000000000000000000000000000
        000000000000000000000605041FC4B8AED7F2D9BCFFD8A16AFFCF905AFFC47C
        49FFB76635FFAE5428FF9F441EFFF9F6F5FFF8F4F2FFF3EAE8FFEDDEDCFFE2CD
        C8FF8B331CFF953B1DFFA65B3CFFB57758FFC28F72FFD0A88EFF9B6E5AF21208
        044B000000000000000000000000000000000000000000000000000000000000
        00000000000001010104605A5485FBEDDBFFE5B87CFFDCA86BFFD3985DFFC884
        4DFFBC6E3AFFB35D2EFFA24A23FFF9F5F4FFF7F1EFFFF2E7E4FFEBDAD7FFE0C9
        C4FF903A20FF9C4725FFAD6642FFBB815EFFC89978FFD3AD8FFFDCBFA5FF5B35
        28BD040302170000000000000000000000000000000000000000000000000000
        00000000000007060523DED4CAE9F3D8AAFFE7BC77FFE0AF6DFFD79F61FFCD8C
        51FFC1763EFFB76532FFA65228FFF8F3F1FFF6EEEBFFF0E4E0FFE9D7D2FFDEC6
        BFFF944124FFA2512BFFB37048FFC28B64FFCEA27DFFD9B694FFE2C7AAFFC09D
        85FE1708045B0000000000000000000000000000000000000000000000000000
        000000000000423C3867FDF3E5FFF0CC82FFEBC278FFE4B66FFFDBA663FFD193
        55FFC57D42FFBB6B36FFAA5A2FFFF6F0EDFFF5ECE9FFEFE1DCFFE8D4CFFFDDC3
        BAFF974626FFA85A2FFFB9794EFFC89469FFD4AB82FFDEBE99FFE6CEADFFECDA
        C0FF48281EA80202010C00000000000000000000000000000000000000000000
        0000020201098F867FADFBEBC9FFF3D07FFFEEC879FFE7BC71FFDFAC66FFD599
        58FFC88246FFBE713AFFAD5F32FFF4EDE9FFF3E9E5FFEDDED9FFE7D2CBFFDBBF
        B6FF9A4B28FFAC6134FFBE8052FFCC9B6DFFD9B386FFE3C69DFFEBD5B2FFF1E0
        C4FF916E5CE20503022000000000000000000000000000000000000000000000
        000003030216BDB3AAD0FBE6AFFFF6D57EFFF1CD7AFFEBC173FFE2B067FFD79D
        5AFFCA8748FFC0753CFFAE6032FFF2E9E5FFF2E7E2FFECDBD5FFE5D0C8FFD9BC
        B1FF9B4E29FFB06737FFC18655FFD0A271FFDDB98AFFE8CDA1FFF0DCB6FFF5E7
        C8FFC3A48EFF0B05033900000000000000000000000000000000000000000000
        00000403021DD9CCC1E8FCE6A3FFF9DA7EFFF3D17BFFECC474FFDCAF70FFD09E
        6BFFC98647FFC1783DFFAF6132FFF0E5E1FFF1E5DFFFEBD8D2FFE4CCC3FFD8B9
        ACFF9D4F2AFFB26A39FFC18755FFBC8C64FFC69F79FFEBD2A4FFF4E2B9FFF9ED
        CBFFD4BCA5FF1508035500000000000000000000000000000000000000000000
        00000403021FE8DBD0F3FDE79CFFFADC7EFFF5D37BFFEEC574FFD9B077FFFCFB
        FAFFE5D5CCFFC59373FFA85C30FFEEE2DDFFEFE2DCFFE9D5CEFFE2C9BFFFD6B5
        A8FF9B4E29FFA6643DFFBF957AFFE1C8AFFFC69F7CFFEDD4A6FFF5E5BBFFFBF0
        CDFFDECAB2FF1808045D00000000000000000000000000000000000000000000
        00000403021BD1C6BCE1FCE6A6FFF8D97EFFF3D17AFFECC473FFE2B268FFDDC2
        ABFFFDFBF9FFFBF7F4FFEBDFD9FFF2E7E2FFEEDFD8FFE7D2CAFFE0C5BBFFDAB9
        ACFFBC907EFFD9B9A4FFE2C7B0FFC8A489FFDBB787FFECD3A5FFF4E2BAFFF9ED
        CBFFD0B6A0FF1307034F00000000000000000000000000000000000000000000
        000003020213B6ACA3CBFBE6B3FFF5D57EFFF1CC79FFEAC072FFE1AF66FFD097
        59FFE7D7CEFFFAF6F3FFF7F0EBFFF3E7E1FFECDCD4FFE5CDC5FFDEC0B6FFDABA
        ADFFDAB9A9FFDCBDA9FFD6B6A0FFBE8E66FFDEBB8CFFE9CFA3FFF1DEB8FFF6E8
        C9FFBB9A84FC0805032F00000000000000000000000000000000000000000000
        00000101010479726B9AFCEDD1FFF2CF7EFFEDC678FFE7BA70FFDEAA64FFD396
        55FFC18455FFEFE4DFFFF6EEE9FFF1E5DFFFEBD8D1FFE2C9C1FFDCBEB3FFD9B8
        ACFFD9B8A8FFDAB9A6FFB07C5DFFCE9E70FFDBB78AFFE5CAA1FFEDD8B5FFF2E3
        C6FF7D5C4DD00403021A00000000000000000000000000000000000000000000
        0000000000002B27244EFEF5E9FFF0CD88FFEABF76FFE3B36DFFDAA360FFD090
        51FFC37B40FFBB8263FFF2E7E2FFF0E2DBFFE9D4CDFFE0C5BDFFDABBB2FFD8B6
        ABFFD8B5A7FFB68570FFB6784EFFCA996EFFD7B188FFE2C49EFFE9D3B2FFE9D7
        BDFF381C13940101010500000000000000000000000000000000000000000000
        00000000000003030217BEB5ACD0F5DEBBFFE5B974FFDFAC6AFFD69B5CFFCB88
        4DFFBF733BFFB66331FFB8846EFFECDCD6FFE7D1C9FFDFC3BBFFD9B8B0FFD6B3
        A9FFC09485FF9E5331FFB7774FFFC6936DFFD3AB86FFDDBE9CFFE6CEB2FFA984
        70F40C06033C0000000000000000000000000000000000000000000000000000
        000000000000010101013934305EFCF0E3FFE6BD87FFDAA467FFD19358FFC67F
        48FFBA6A36FFB25C2DFFA84E25FFB58270FFE5CDC5FFDEC1BAFFD8B5AFFFC9A0
        97FF914128FFA1502EFFB3714EFFC28D6BFFCFA584FFD9B99BFFD8BCA3FF3F20
        169B0202010B0000000000000000000000000000000000000000000000000000
        00000000000000000000030202108B817AAAF7E5D0FFD8A16DFFCC8954FFC176
        42FFB56130FFAD5428FFA54821FF9A3A1AFFB17C6FFFDDBFB8FFD0ABA4FF8F3F
        30FF91341CFF9D4A2EFFAE6B4DFFBE876AFFCB9F83FFD7B69DFF754C3CD60805
        032C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000605041EAFA298C9F0D7C0FFCD8C5FFFBC6C
        3CFFAF572AFFA84A22FFA03F1CFF983314FF8D260EFF9B5446FF8E3B2BFF8925
        13FF8E2F1DFF98452EFFAA654DFFBA816AFFCBA18BFF8B5C4AEA110805440101
        0102000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B090827988A80B9EDD2BFFFCA89
        67FFAA4C24FFA3401CFF9B3516FF932A0FFF8B1F09FF891F0CFF8B2613FF8D2C
        1AFF903322FF95402FFFAB6654FFBC8876FF7A4C3DDA130A0748010101050000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000403021761554D8CD2B9
        A8EFD7A992FFB96C50FF9C391EFF8E210AFF8B1F0CFF8D2513FF8F2C19FF9235
        24FFA04E3DFFAA6554FFA26959FA532F24AC0B06043101010102000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000001010106100D
        0B316B5B529AAE9082DBD0A594FEC68E7CFFBA7967FFB5725FFFB57562FFB175
        63FF936050E85A382DAD190F0B4C020201100000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010101060403021A1C1613433A2C266D4C3830894D38308D3A2821772117
        1252050402210202010C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 24
      OnClick = btnRemoverItemClick
    end
    inherited MainLayoutGroup_Root: TdxLayoutGroup
      CaptionOptions.Visible = False
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      ItemIndex = 1
    end
    inherited GrupoCabecalho: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      ItemIndex = 1
    end
    inherited GrupoMenuTop: TdxLayoutGroup
      CaptionOptions.Visible = False
    end
    inherited GrupoMain: TdxLayoutGroup
      CaptionOptions.Visible = False
      ItemIndex = 3
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      Visible = False
      Index = 4
    end
    inherited GrupoMenuInterno: TdxLayoutGroup
      CaptionOptions.Visible = False
      ItemIndex = 6
    end
    inherited SplitterLogAtividades: TdxLayoutSplitterItem
      Parent = GrupoLogAlteracoes
      Index = 1
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      ItemIndex = 1
    end
    object GrupoTabs: TdxLayoutGroup
      Parent = GrupoMain
      CaptionOptions.Visible = False
      LayoutDirection = ldTabbed
      ShowBorder = False
      UseIndent = False
      Index = 3
    end
    object licbxTipo: TdxLayoutItem
      Parent = GrupoCabecalho
      CaptionOptions.Text = 'Tipo da Grade'
      CaptionOptions.Layout = clTop
      Control = cbxTipo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object GrupoTamanho: TdxLayoutGroup
      Parent = GrupoTabs
      CaptionOptions.Text = 'Tabela Tamanho'
      ItemIndex = 4
      ScrollOptions.Vertical = smAuto
      Index = 0
    end
    object liedtT1: TdxLayoutItem
      Parent = LiLinha1
      CaptionOptions.Visible = False
      Control = edtT1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtT11: TdxLayoutItem
      Parent = LiLinha2
      Control = edtT11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtT21: TdxLayoutItem
      Parent = LiLinha3
      Control = edtT21
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liedtT2: TdxLayoutItem
      Parent = LiLinha1
      Control = edtT2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtT12: TdxLayoutItem
      Parent = LiLinha2
      Control = edtT12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtT22: TdxLayoutItem
      Parent = LiLinha3
      Control = edtT22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtT3: TdxLayoutItem
      Parent = LiLinha1
      Control = edtT3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtT13: TdxLayoutItem
      Parent = LiLinha2
      Control = edtT13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtT23: TdxLayoutItem
      Parent = LiLinha3
      Control = edtT23
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liedtT4: TdxLayoutItem
      Parent = LiLinha1
      Control = edtT4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtT14: TdxLayoutItem
      Parent = LiLinha2
      Control = edtT14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtT24: TdxLayoutItem
      Parent = LiLinha3
      Control = edtT24
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtT5: TdxLayoutItem
      Parent = LiLinha1
      Control = edtT5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtT15: TdxLayoutItem
      Parent = LiLinha2
      Control = edtT15
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtT25: TdxLayoutItem
      Parent = LiLinha3
      Control = edtT25
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtT6: TdxLayoutItem
      Parent = LiLinha1
      Control = edtT6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtT16: TdxLayoutItem
      Parent = LiLinha2
      Control = edtT16
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtT26: TdxLayoutItem
      Parent = LiLinha3
      Control = edtT26
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtT7: TdxLayoutItem
      Parent = LiLinha1
      Control = edtT7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liedtT17: TdxLayoutItem
      Parent = LiLinha2
      Control = edtT17
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liedtT27: TdxLayoutItem
      Parent = LiLinha3
      Control = edtT27
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liedtT8: TdxLayoutItem
      Parent = LiLinha1
      Control = edtT8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liedtT18: TdxLayoutItem
      Parent = LiLinha2
      Control = edtT18
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liedtT28: TdxLayoutItem
      Parent = LiLinha3
      Control = edtT28
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liedtT9: TdxLayoutItem
      Parent = LiLinha1
      Control = edtT9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liedtT19: TdxLayoutItem
      Parent = LiLinha2
      Control = edtT19
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liedtT29: TdxLayoutItem
      Parent = LiLinha3
      Control = edtT29
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liedtT10: TdxLayoutItem
      Parent = LiLinha1
      Control = edtT10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object liedtT20: TdxLayoutItem
      Parent = LiLinha2
      Control = edtT20
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object liedtT30: TdxLayoutItem
      Parent = LiLinha3
      Control = edtT30
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object GrupoMedidas: TdxLayoutGroup
      Parent = GrupoTabs
      CaptionOptions.Text = 'Medidas'
      ScrollOptions.Vertical = smAuto
      Index = 1
    end
    object MainLayoutGroup45: TdxLayoutGroup
      Parent = GrupoMedidas
      AlignHorz = ahCenter
      AlignVert = avTop
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object MainLayoutItem105: TdxLayoutItem
      Parent = MainLayoutGroup45
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = Ck01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object MainLayoutItem106: TdxLayoutItem
      Parent = MainLayoutGroup45
      CaptionOptions.Text = 'cxCheckBox2'
      CaptionOptions.Visible = False
      Control = Ck02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem107: TdxLayoutItem
      Parent = MainLayoutGroup45
      CaptionOptions.Text = 'cxCheckBox3'
      CaptionOptions.Visible = False
      Control = Ck03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutGroup46: TdxLayoutGroup
      Parent = GrupoMedidas
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object MainLayoutGroup47: TdxLayoutGroup
      Parent = MainLayoutGroup46
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Offsets.Right = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoMedidas01L: TdxLayoutGroup
      Parent = MainLayoutGroup47
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 0
    end
    object ItemMedidasL1: TdxLayoutLabeledItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Bottom = 4
      CaptionOptions.Text = 'Comprimento'
      Index = 0
    end
    object liedtMedidasT01_01: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = edtMedidasT01_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liItemMedidas01T02: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = edtMedidasT02_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object ItemMedidas01T03: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = edtMedidasT03_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtMedidasT04_01: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = edtMedidasT04_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtMedidasT05_01: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = edtMedidasT05_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtMedidasT06_01: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = edtMedidasT06_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liedtMedidasT07_01: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = edtMedidasT07_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liedtMedidasT08_01: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = edtMedidasT08_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liedtMedidasT09_01: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = edtMedidasT09_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object liedtMedidasT10_01: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = edtMedidasT10_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object liedtMedidasT11_01: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = edtMedidasT11_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object liedtMedidasT12_01: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = edtMedidasT12_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object liedtMedidasT13_01: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = edtMedidasT13_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object liedtMedidasT14_01: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = edtMedidasT14_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object liedtMedidasT15_01: TdxLayoutItem
      Parent = GrupoMedidas01L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = edtMedidasT15_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object GrupoMedidas02L: TdxLayoutGroup
      Parent = MainLayoutGroup47
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 1
    end
    object ItemMedidasL2: TdxLayoutLabeledItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Bottom = 4
      CaptionOptions.Text = 'Largura'
      Index = 0
    end
    object liedtMedidasT01_02: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'x'
      Control = edtMedidasT01_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liedtMedidasT02_02: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT02_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutItem108: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT03_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtMedidasT04_02: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT04_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtMedidasT05_02: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT05_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtMedidasT06_02: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT06_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liedtMedidasT07_02: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT07_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liedtMedidasT08_02: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT08_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liedtMedidasT09_02: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT09_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object liedtMedidasT10_02: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT10_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object liedtMedidasT11_02: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT11_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object liedtMedidasT12_02: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT12_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object liedtMedidasT13_02: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT13_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object liedtMedidasT14_02: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT14_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object liedtMedidasT15_02: TdxLayoutItem
      Parent = GrupoMedidas02L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT15_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object GrupoMedidas03L: TdxLayoutGroup
      Parent = MainLayoutGroup47
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 2
    end
    object ItemMedidasL3: TdxLayoutLabeledItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Bottom = 4
      CaptionOptions.Text = 'Espessura'
      Index = 0
    end
    object liedtMedidasE01_03: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'x'
      Control = edtMedidasT01_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem112: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT02_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutItem127: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT03_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liedtMedidasT04_03: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT04_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liedtMedidasT05_03: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT05_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liedtMedidasT06_03: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT06_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liedtMedidasT07_03: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT07_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liedtMedidasT08_03: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT08_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liedtMedidasT09_03: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT09_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object liedtMedidasT10_03: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT10_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object liedtMedidasT11_03: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT11_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object liedtMedidasT12_03: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT12_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object liedtMedidasT13_03: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT13_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object liedtMedidasT14_03: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT14_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object liedtMedidasT15_03: TdxLayoutItem
      Parent = GrupoMedidas03L
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = edtMedidasT15_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object MainLayoutGroup48: TdxLayoutGroup
      Parent = MainLayoutGroup46
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Offsets.Left = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object GrupoMedidas01R: TdxLayoutGroup
      Parent = MainLayoutGroup48
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 0
    end
    object ItemMedidasR1: TdxLayoutLabeledItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Bottom = 4
      CaptionOptions.Text = 'Comprimento'
      Index = 0
    end
    object ItemMedidasR1_: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = EdtMedidasT16_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem113: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = EdtMedidasT17_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutItem141: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = EdtMedidasT18_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object MainLayoutItem142: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = EdtMedidasT19_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object MainLayoutItem143: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = EdtMedidasT20_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object MainLayoutItem144: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = EdtMedidasT21_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object MainLayoutItem145: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = EdtMedidasT22_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object MainLayoutItem146: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = EdtMedidasT23_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object MainLayoutItem147: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = EdtMedidasT24_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object MainLayoutItem148: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = EdtMedidasT25_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object MainLayoutItem149: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = EdtMedidasT26_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object MainLayoutItem150: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = EdtMedidasT27_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object MainLayoutItem151: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = EdtMedidasT28_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object MainLayoutItem152: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = EdtMedidasT29_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object MainLayoutItem153: TdxLayoutItem
      Parent = GrupoMedidas01R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Visible = False
      Control = EdtMedidasT30_01
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object GrupoMedidas02R: TdxLayoutGroup
      Parent = MainLayoutGroup48
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 1
    end
    object ItemMedidasR2: TdxLayoutLabeledItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Bottom = 4
      CaptionOptions.Text = 'Largura'
      Index = 0
    end
    object ItemMedidasR2_: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT16_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem114: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT17_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutItem155: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT18_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object MainLayoutItem156: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT19_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object MainLayoutItem157: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT20_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object MainLayoutItem158: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT21_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object MainLayoutItem159: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT22_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object MainLayoutItem160: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT23_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object MainLayoutItem161: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT24_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object MainLayoutItem162: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT25_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object MainLayoutItem163: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT26_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object MainLayoutItem164: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT27_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object MainLayoutItem165: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT28_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object MainLayoutItem166: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT29_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object MainLayoutItem167: TdxLayoutItem
      Parent = GrupoMedidas02R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT30_02
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object GrupoMedidas03R: TdxLayoutGroup
      Parent = MainLayoutGroup48
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 2
    end
    object ItemMedidasR3: TdxLayoutLabeledItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Bottom = 4
      CaptionOptions.Text = 'Espessura'
      Index = 0
    end
    object ItemMedidasR3_: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT16_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object MainLayoutItem115: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT17_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object MainLayoutItem169: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT18_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object MainLayoutItem170: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT19_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object MainLayoutItem171: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT20_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object MainLayoutItem172: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT21_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object MainLayoutItem173: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT22_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object MainLayoutItem174: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT23_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object MainLayoutItem175: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT24_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object MainLayoutItem176: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT25_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object MainLayoutItem177: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT26_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object MainLayoutItem178: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT27_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object MainLayoutItem179: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT28_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object MainLayoutItem180: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT29_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object MainLayoutItem181: TdxLayoutItem
      Parent = GrupoMedidas03R
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Top = 2
      CaptionOptions.Text = 'x'
      Control = EdtMedidasT30_03
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object LiLinha1: TdxLayoutGroup
      Parent = GrupoTamanho
      CaptionOptions.Text = 'New Group'
      Visible = False
      ItemIndex = 9
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LiLinha2: TdxLayoutGroup
      Parent = GrupoTamanho
      CaptionOptions.Text = 'New Group'
      Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object LiLinha3: TdxLayoutGroup
      Parent = GrupoTamanho
      CaptionOptions.Text = 'New Group'
      Visible = False
      ItemIndex = 9
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoTamanho
      Control = GridRecursos
      ControlOptions.OriginalHeight = 351
      ControlOptions.OriginalWidth = 957
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDescricaoItem
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 271
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Visible = False
      Control = btnAdicionarItem
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoTamanho
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnRemoverItem
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 514
    Width = 1025
    ExplicitTop = 514
    ExplicitWidth = 1025
  end
  inherited DS: TDataSource
    Left = 388
    Top = 176
  end
  inherited TimerStatusBar: TTimer
    Left = 416
    Top = 176
  end
  inherited ImgListBotoes24: TImageList
    Left = 443
    Top = 232
  end
  inherited ImgListBotoes16: TImageList
    Left = 415
    Top = 232
  end
  inherited MenuConfig: TPopupMenu
    Left = 416
    Top = 204
  end
  inherited ImgListMenuConfig: TImageList
    Left = 387
    Top = 232
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 332
    Top = 204
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited UCControls1: TUCControls
    GroupName = 'Cadastro Modelo de Grade Produto'
    Left = 444
    Top = 204
  end
  inherited MenuImprimir: TPopupMenu
    Left = 333
    Top = 176
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmProduto_Grade_Modelo'
    FormClassConsulta = 'TConsuProduto_Grade_Modelo'
    Left = 388
    Top = 204
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM PRODUTO_GRADE_MODELO'
      'where Codigo = :Codigo')
    Left = 361
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited TransaFD: TFDTransaction
    Left = 360
    Top = 204
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUTO_GRADE_MODELO'
    Modulo = 'PRODUTO'
    Left = 444
    Top = 176
  end
  inherited Fr3Cadastro: TfrxDBDataset
    Left = 472
    Top = 176
  end
  inherited ImageListNotificacao: TImageList
    Left = 540
  end
  inherited dxUIAdornerManager1: TdxUIAdornerManager
    Top = 208
  end
  inherited Historico_Seguidor: TFDQuery
    Left = 504
  end
  inherited Historico_Adiciona_Seguidor: TFDQuery
    Left = 504
  end
  inherited Historico_SLA: TFDQuery
    Top = 272
  end
  object ProdutoGradeModeloItem: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DS
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = TransaFD
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM PRODUTO_GRADE_MODELO_ITEM'
      'where CODPRODUTO_GRADE_MODELO = :Codigo')
    Left = 332
    Top = 232
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DataSource1: TDataSource
    DataSet = Cadastro
    OnStateChange = DSStateChange
    Left = 387
    Top = 272
  end
  object DSProdutoGradeModeloItem: TDataSource
    DataSet = ProdutoGradeModeloItem
    Left = 304
    Top = 232
  end
end
