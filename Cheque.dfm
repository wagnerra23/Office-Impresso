object FrmCheque: TFrmCheque
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Cheques'
  ClientHeight = 208
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient
    Left = 0
    Top = 23
    Width = 549
    Height = 185
    Align = alClient
    ColorEnd = 9092490
    Style = gsRadialTR
    ExplicitLeft = 194
    ExplicitTop = 192
    ExplicitWidth = 100
    ExplicitHeight = 100
  end
  object Gradient8: TGradient
    Left = 0
    Top = 0
    Width = 549
    Height = 23
    Align = alTop
    ColorBegin = 12616065
    ColorEnd = 15654365
    Reverse = True
    Style = gsReflectedH
    ExplicitTop = 3
  end
  object Bevel1: TBevel
    Left = 8
    Top = 136
    Width = 537
    Height = 41
  end
  object Label42: TLabel
    Left = 494
    Top = 27
    Width = 50
    Height = 13
    Caption = 'R$ Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label43: TLabel
    Left = 255
    Top = 63
    Width = 97
    Height = 13
    Caption = 'Nome do cheque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label45: TLabel
    Left = 130
    Top = 99
    Width = 81
    Height = 13
    Caption = 'Data Repasse'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label46: TLabel
    Left = 255
    Top = 99
    Width = 124
    Height = 13
    Caption = 'Onde est'#225' o Cheque?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label52: TLabel
    Left = 194
    Top = 137
    Width = 39
    Height = 13
    Caption = 'Compe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label54: TLabel
    Left = 8
    Top = 63
    Width = 98
    Height = 13
    Caption = 'C'#243'digo do Banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label55: TLabel
    Left = 236
    Top = 137
    Width = 47
    Height = 13
    Caption = 'Ag'#234'ncia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label56: TLabel
    Left = 289
    Top = 137
    Width = 16
    Height = 13
    Caption = 'C1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label57: TLabel
    Left = 312
    Top = 137
    Width = 34
    Height = 13
    Caption = 'Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label58: TLabel
    Left = 494
    Top = 137
    Width = 16
    Height = 13
    Caption = 'C2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label59: TLabel
    Left = 255
    Top = 27
    Width = 62
    Height = 13
    Caption = 'Cheque N'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label44: TLabel
    Left = 520
    Top = 137
    Width = 16
    Height = 13
    Caption = 'C3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label60: TLabel
    Left = 7
    Top = 27
    Width = 69
    Height = 13
    Caption = 'Conta Local'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label62: TLabel
    Left = 350
    Top = 28
    Width = 81
    Height = 13
    Caption = 'Data Previs'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label64: TLabel
    Left = 56
    Top = 138
    Width = 133
    Height = 13
    Caption = 'CPF / CNPJ do cheque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label65: TLabel
    Left = 13
    Top = 139
    Width = 26
    Height = 13
    Caption = 'Tipo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label66: TLabel
    Left = 8
    Top = 98
    Width = 51
    Height = 13
    Caption = 'Cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBEdit5: TDBEdit
    Left = 448
    Top = 40
    Width = 99
    Height = 19
    CharCase = ecUpperCase
    Color = clMoneyGreen
    Ctl3D = False
    DataField = 'Total'
    DataSource = DSFinanceiro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit7: TDBEdit
    Left = 255
    Top = 76
    Width = 289
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'NOME'
    DataSource = DSCheque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit11: TDBEdit
    Left = 255
    Top = 112
    Width = 289
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'REPASSADO'
    DataSource = DSCheque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit18: TDBEdit
    Left = 194
    Top = 151
    Width = 39
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'COMPE'
    DataSource = DSCheque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 11
  end
  object DBEdit20: TDBEdit
    Left = 236
    Top = 151
    Width = 45
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'AGENCIA'
    DataSource = DSCheque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 12
  end
  object DBEdit21: TDBEdit
    Left = 285
    Top = 151
    Width = 23
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'C1'
    DataSource = DSCheque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 13
  end
  object DBEdit22: TDBEdit
    Left = 312
    Top = 151
    Width = 172
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'CONTA'
    DataSource = DSCheque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 14
  end
  object DBEdit23: TDBEdit
    Left = 490
    Top = 151
    Width = 23
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'C2'
    DataSource = DSCheque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 15
  end
  object DBEdit24: TDBEdit
    Left = 517
    Top = 151
    Width = 23
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'C3'
    DataSource = DSCheque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 16
  end
  object DBEdit25: TDBEdit
    Left = 55
    Top = 151
    Width = 136
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'CNPJCPF'
    DataSource = DSCheque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 10
  end
  object DBComboBox2: TDBComboBox
    Left = 13
    Top = 151
    Width = 40
    Height = 21
    Style = csDropDownList
    CharCase = ecUpperCase
    Color = 10930928
    Ctl3D = False
    DataField = 'TIPO'
    DataSource = DSCheque
    DropDownCount = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      'J'
      'F'
      'O')
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 9
  end
  object DBDateEdit8: TcxDBDateEdit
    Left = 130
    Top = 111
    Margins.Left = 2
    Margins.Top = 2
    DataBinding.DataField = 'DT_REPASSADO'
    DataBinding.DataSource = DSCheque
    ParentFont = False
    TabOrder = 7
    Width = 122
  end
  object DBDateEdit4: TcxDBDateEdit
    Left = 7
    Top = 111
    Margins.Left = 2
    Margins.Top = 2
    DataBinding.DataField = 'DT_CADASTRO'
    DataBinding.DataSource = DSCheque
    ParentFont = False
    TabOrder = 6
    Width = 121
  end
  object EdtBancoÎBancos: TcxDBButtonEdit
    Left = 7
    Top = 75
    Hint = 'F2 - Consulta / F3 - Cadastro'
    Margins.Left = 2
    Margins.Top = 2
    AutoSize = False
    DataBinding.DataField = 'CODBANCO'
    DataBinding.DataSource = DSCheque
    ParentFont = False
    ParentShowHint = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 113
    ShowHint = True
    Style.Color = clInfoBk
    TabOrder = 3
    Height = 21
    Width = 57
  end
  object cxLabel2: TcxLabel
    Left = 5
    Top = -2
    Caption = 'CADASTRO DE CHEQUES'
    ParentColor = False
    ParentFont = False
    Style.BorderColor = clWindowText
    Style.Color = clBlack
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clYellow
    Style.Font.Height = -16
    Style.Font.Name = 'Arial Black'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Properties.LabelStyle = cxlsLowered
    Properties.ShadowedColor = clBlack
    Transparent = True
  end
  object BtnConfirmar: TBitBtn
    Left = 469
    Top = 180
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    NumGlyphs = 2
    TabOrder = 17
    OnClick = BtnConfirmarClick
  end
  object BtnCancelar: TBitBtn
    Left = 391
    Top = 180
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 18
  end
  object cxDBLabel1: TcxDBLabel
    Left = 7
    Top = 39
    DataBinding.DataField = 'Conta'
    DataBinding.DataSource = DSFinanceiro
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.Kind = lfStandard
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.Kind = lfStandard
    Transparent = True
    Height = 21
    Width = 245
  end
  object cxNumero: TcxTextEdit
    Left = 255
    Top = 40
    Style.BorderColor = clNone
    Style.BorderStyle = ebsOffice11
    TabOrder = 0
    Width = 93
  end
  object EdtDtPrevisao: TcxDateEdit
    Left = 350
    Top = 40
    Margins.Left = 2
    Margins.Top = 2
    ParentFont = False
    TabOrder = 1
    Width = 92
  end
  object EdtBancoÎBancosÎDESCRICAO: TcxDBTextEdit
    Left = 65
    Top = 76
    DataBinding.DataField = 'BANCO'
    DataBinding.DataSource = DSCheque
    ParentFont = False
    Properties.ReadOnly = False
    Style.Color = 16776176
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 185
  end
  object Cheque: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    AfterInsert = ChequeAfterInsert
    AfterOpen = ChequeAfterOpen
    BeforeOpen = ChequeBeforeOpen
    BeforePost = ChequeBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FINANCEIRO_CHEQUE'
      'where'
      '  CODEMPRESA = :OLD_CODEMPRESA and'
      '  CODIGO = :OLD_CODIGO and'
      '  CODPEDIDO = :OLD_CODPEDIDO')
    InsertSQL.Strings = (
      'insert into FINANCEIRO_CHEQUE'
      
        '  (AGENCIA, BANCO, C1, C2, C3, CNPJCPF, CODBANCO, CODEMPRESA, CO' +
        'DIGO, CODPEDIDO, '
      
        '   COMPE, CONTA, DEVOLVIDO, DT_ALTERACAO, DT_CADASTRO, DT_REPASS' +
        'ADO, MOTIVO, '
      '   NOME, REPASSADO, STATUS, TIPO)'
      'values'
      
        '  (:AGENCIA, :BANCO, :C1, :C2, :C3, :CNPJCPF, :CODBANCO, :CODEMP' +
        'RESA, :CODIGO, '
      
        '   :CODPEDIDO, :COMPE, :CONTA, :DEVOLVIDO, :DT_ALTERACAO, :DT_CA' +
        'DASTRO, '
      '   :DT_REPASSADO, :MOTIVO, :NOME, :REPASSADO, :STATUS, :TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  CODPEDIDO,'
      '  CODEMPRESA,'
      '  CODBANCO,'
      '  BANCO,'
      '  NOME,'
      '  REPASSADO,'
      '  CNPJCPF,'
      '  STATUS,'
      '  COMPE,'
      '  AGENCIA,'
      '  C1,'
      '  CONTA,'
      '  C2,'
      '  C3,'
      '  DT_CADASTRO,'
      '  DT_REPASSADO,'
      '  TIPO,'
      '  DEVOLVIDO,'
      '  MOTIVO,'
      '  DT_ALTERACAO'
      'from FINANCEIRO_CHEQUE '
      'where'
      '  CODEMPRESA = :CODEMPRESA and'
      '  CODIGO = :CODIGO and'
      '  CODPEDIDO = :CODPEDIDO')
    SelectSQL.Strings = (
      'select *'
      'from FINANCEIRO_CHEQUE'
      'where (CODIGO = :Codigo)'
      '           and (CODPEDIDO = :CodPedido)'
      '           and (CODEMPRESA = :CodEmpresa)')
    ModifySQL.Strings = (
      'update FINANCEIRO_CHEQUE'
      'set'
      '  AGENCIA = :AGENCIA,'
      '  BANCO = :BANCO,'
      '  C1 = :C1,'
      '  C2 = :C2,'
      '  C3 = :C3,'
      '  CNPJCPF = :CNPJCPF,'
      '  CODBANCO = :CODBANCO,'
      '  CODEMPRESA = :CODEMPRESA,'
      '  CODIGO = :CODIGO,'
      '  CODPEDIDO = :CODPEDIDO,'
      '  COMPE = :COMPE,'
      '  CONTA = :CONTA,'
      '  DEVOLVIDO = :DEVOLVIDO,'
      '  DT_ALTERACAO = :DT_ALTERACAO,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  DT_REPASSADO = :DT_REPASSADO,'
      '  MOTIVO = :MOTIVO,'
      '  NOME = :NOME,'
      '  REPASSADO = :REPASSADO,'
      '  STATUS = :STATUS,'
      '  TIPO = :TIPO'
      'where'
      '  CODEMPRESA = :OLD_CODEMPRESA and'
      '  CODIGO = :OLD_CODIGO and'
      '  CODPEDIDO = :OLD_CODPEDIDO')
    ParamCheck = True
    UniDirectional = False
    Left = 144
    Top = 40
    object ChequeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FINANCEIRO_CHEQUE"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ChequeCODPEDIDO: TIBStringField
      FieldName = 'CODPEDIDO'
      Origin = '"FINANCEIRO_CHEQUE"."CODPEDIDO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object ChequeCODEMPRESA: TIBStringField
      FieldName = 'CODEMPRESA'
      Origin = '"FINANCEIRO_CHEQUE"."CODEMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object ChequeCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
      Origin = '"FINANCEIRO_CHEQUE"."CODBANCO"'
    end
    object ChequeBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"FINANCEIRO_CHEQUE"."BANCO"'
      Size = 50
    end
    object ChequeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FINANCEIRO_CHEQUE"."NOME"'
      Size = 50
    end
    object ChequeREPASSADO: TIBStringField
      FieldName = 'REPASSADO'
      Origin = '"FINANCEIRO_CHEQUE"."REPASSADO"'
      Size = 50
    end
    object ChequeCNPJCPF: TIBStringField
      FieldName = 'CNPJCPF'
      Origin = '"FINANCEIRO_CHEQUE"."CNPJCPF"'
      Size = 18
    end
    object ChequeSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"FINANCEIRO_CHEQUE"."STATUS"'
      Size = 10
    end
    object ChequeCOMPE: TIntegerField
      FieldName = 'COMPE'
      Origin = '"FINANCEIRO_CHEQUE"."COMPE"'
    end
    object ChequeAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
      Origin = '"FINANCEIRO_CHEQUE"."AGENCIA"'
    end
    object ChequeC1: TIBStringField
      FieldName = 'C1'
      Origin = '"FINANCEIRO_CHEQUE"."C1"'
      Size = 1
    end
    object ChequeCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"FINANCEIRO_CHEQUE"."CONTA"'
      Size = 15
    end
    object ChequeC2: TIBStringField
      FieldName = 'C2'
      Origin = '"FINANCEIRO_CHEQUE"."C2"'
      Size = 1
    end
    object ChequeC3: TIBStringField
      FieldName = 'C3'
      Origin = '"FINANCEIRO_CHEQUE"."C3"'
      Size = 1
    end
    object ChequeDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"FINANCEIRO_CHEQUE"."DT_CADASTRO"'
    end
    object ChequeDT_REPASSADO: TDateTimeField
      FieldName = 'DT_REPASSADO'
      Origin = '"FINANCEIRO_CHEQUE"."DT_REPASSADO"'
    end
    object ChequeTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"FINANCEIRO_CHEQUE"."TIPO"'
      Size = 1
    end
    object ChequeDEVOLVIDO: TIBStringField
      FieldName = 'DEVOLVIDO'
      Origin = '"FINANCEIRO_CHEQUE"."DEVOLVIDO"'
      FixedChar = True
      Size = 1
    end
    object ChequeMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = '"FINANCEIRO_CHEQUE"."MOTIVO"'
      Size = 50
    end
    object ChequeDT_ALTERACAO: TDateTimeField
      FieldName = 'DT_ALTERACAO'
      Origin = '"FINANCEIRO_CHEQUE"."DT_ALTERACAO"'
    end
  end
  object DSCheque: TDataSource
    DataSet = Cheque
    Left = 172
    Top = 40
  end
  object ChequeFinanceiro: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = ChequeFinanceiroBeforeOpen
    OnCalcFields = ChequeFinanceiroCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DSCheque
    ParamCheck = True
    SQL.Strings = (
      
        'select VALOR, JUROS, DESCONTO, CODCONTA, CHEQUE_NUMERO, PREVISAO' +
        ', DT_PREVISAO'
      'from FINANCEIRO'
      'where (CODIGO = :CODIGO)'
      '      and (CODPEDIDO = :CODPEDIDO)'
      '      and (CODEMPRESA = :CODEMPRESA)')
    Left = 144
    Top = 68
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftWideString
        Name = 'CODPEDIDO'
        ParamType = ptUnknown
        Size = 22
      end
      item
        DataType = ftWideString
        Name = 'CODEMPRESA'
        ParamType = ptUnknown
        Size = 22
      end>
    object ChequeFinanceiroVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FINANCEIRO"."VALOR"'
    end
    object ChequeFinanceiroConta: TStringField
      FieldKind = fkCalculated
      FieldName = 'Conta'
      Size = 50
      Calculated = True
    end
    object ChequeFinanceiroCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
      Origin = '"FINANCEIRO"."CODCONTA"'
    end
    object ChequeFinanceiroJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"FINANCEIRO"."JUROS"'
    end
    object ChequeFinanceiroDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"FINANCEIRO"."DESCONTO"'
    end
    object ChequeFinanceiroCHEQUE_NUMERO: TIBStringField
      FieldName = 'CHEQUE_NUMERO'
      Origin = '"FINANCEIRO"."CHEQUE_NUMERO"'
    end
    object ChequeFinanceiroTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object ChequeFinanceiroPREVISAO: TFloatField
      FieldName = 'PREVISAO'
      Origin = '"FINANCEIRO"."PREVISAO"'
    end
    object ChequeFinanceiroDT_PREVISAO: TDateTimeField
      FieldName = 'DT_PREVISAO'
      Origin = '"FINANCEIRO"."DT_PREVISAO"'
    end
  end
  object DSFinanceiro: TDataSource
    DataSet = ChequeFinanceiro
    Left = 172
    Top = 68
  end
end
