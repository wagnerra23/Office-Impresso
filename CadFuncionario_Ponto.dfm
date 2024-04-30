object FrmFuncionario_Ponto: TFrmFuncionario_Ponto
  Left = 0
  Top = 0
  ActiveControl = EdtCodPonto
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ficha Ponto'
  ClientHeight = 329
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 177
    Width = 322
    Height = 152
    Align = alClient
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 320
      Height = 203
      Align = alTop
      Caption = #218'ltimo Ponto Marcado'
      TabOrder = 0
      object Label3: TLabel
        Left = 6
        Top = 20
        Width = 54
        Height = 13
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 6
        Top = 36
        Width = 41
        Height = 13
        Caption = 'N'#250'mero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 6
        Top = 53
        Width = 31
        Height = 13
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LbDataHora: TLabel
        Left = 66
        Top = 20
        Width = 54
        Height = 13
        Caption = '                  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbNumero: TLabel
        Left = 66
        Top = 36
        Width = 69
        Height = 13
        Caption = '                       '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbNome: TLabel
        Left = 66
        Top = 53
        Width = 63
        Height = 13
        Caption = '                     '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object MemoObservacao: TMemo
      Left = 7
      Top = 73
      Width = 312
      Height = 67
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 322
    Height = 53
    Align = alTop
    BiDiMode = bdLeftToRight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      322
      53)
    object Label1: TLabel
      Left = 1
      Top = 6
      Width = 321
      Height = 42
      Alignment = taCenter
      AutoSize = False
      Caption = '18:45:10'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnMenuConfig: TcxButton
      Left = 297
      Top = 1
      Width = 23
      Height = 25
      Hint = 'Defini'#231#245'es de Skin'
      Anchors = [akTop, akRight]
      ModalResult = 2
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = FrmPrincipal.ImgListMenuConfig
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      OnClick = btnMenuConfigClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 53
    Width = 322
    Height = 124
    Align = alTop
    Caption = 'Marca'#231#227'o do Ponto'
    TabOrder = 1
    object Label2: TLabel
      Left = 7
      Top = 49
      Width = 84
      Height = 13
      Caption = 'Passe o Cart'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtCodPonto: TEdit
      Left = 7
      Top = 71
      Width = 307
      Height = 41
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = Edit2KeyDown
    end
    object cbxSelecao: TcxComboBox
      Left = 3
      Top = 17
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '<Autom'#225'tico>'
        'Entrada1'
        'Sa'#237'da1'
        'Entrada2'
        'Sa'#237'da2')
      Properties.OnChange = cbxSelecaoPropertiesChange
      TabOrder = 1
      Text = '<Autom'#225'tico>'
      Width = 95
    end
    object cbxDataReferencia: TcxDateEdit
      Left = 202
      Top = 44
      TabOrder = 2
      Visible = False
      Width = 109
    end
    object lblDataReferencia: TcxLabel
      Left = 202
      Top = 26
      AutoSize = False
      Caption = 'Data de Refer'#234'ncia'
      Visible = False
      Height = 17
      Width = 107
    end
  end
  object Funcionario_Ponto: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FUNCIONARIO_PONTO'
      'where'
      '  CODFUNCIONARIO = :OLD_CODFUNCIONARIO and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FUNCIONARIO_PONTO'
      
        '  (CODFUNCIONARIO, CODIGO, DIA_REFERENCIA, DT_ALTERACAO, ENTRADA' +
        '1, ENTRADA2, '
      '   OBSERVACAO, SAIDA1, SAIDA2)'
      'values'
      
        '  (:CODFUNCIONARIO, :CODIGO, :DIA_REFERENCIA, :DT_ALTERACAO, :EN' +
        'TRADA1, '
      '   :ENTRADA2, :OBSERVACAO, :SAIDA1, :SAIDA2)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  CODFUNCIONARIO,'
      '  ENTRADA1,'
      '  SAIDA1,'
      '  ENTRADA2,'
      '  SAIDA2,'
      '  OBSERVACAO,'
      '  DT_ALTERACAO,'
      '  DIA_REFERENCIA'
      'from FUNCIONARIO_PONTO '
      'where'
      '  CODFUNCIONARIO = :CODFUNCIONARIO and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * '
      'from FUNCIONARIO_PONTO'
      'where (CODFUNCIONARIO = :Codigo)'
      'order by CODIGO desc')
    ModifySQL.Strings = (
      'update FUNCIONARIO_PONTO'
      'set'
      '  CODFUNCIONARIO = :CODFUNCIONARIO,'
      '  CODIGO = :CODIGO,'
      '  DIA_REFERENCIA = :DIA_REFERENCIA,'
      '  DT_ALTERACAO = :DT_ALTERACAO,'
      '  ENTRADA1 = :ENTRADA1,'
      '  ENTRADA2 = :ENTRADA2,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  SAIDA1 = :SAIDA1,'
      '  SAIDA2 = :SAIDA2'
      'where'
      '  CODFUNCIONARIO = :OLD_CODFUNCIONARIO and'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 183
    Top = 218
  end
  object Transa: TIBTransaction
    DefaultDatabase = FrmPrincipal.CONECTAR
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 212
    Top = 218
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 240
    Top = 218
  end
  object Funcionario_Ponto_Arquivo: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FUNCIONARIO_PONTO_ARQUIVO'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  IDENTIFICADOR = :OLD_IDENTIFICADOR')
    InsertSQL.Strings = (
      'insert into FUNCIONARIO_PONTO_ARQUIVO'
      
        '  (CEI_EMPREGADOR, CNPJ_CPF_EMPREGADOR, CODIGO, CODPESSOA_FUNCIO' +
        'NARIO, '
      
        '   DATA_FINAL, DATA_GERACAO_ARQUIVO, DATA_HORARIO_MARCACAO, DATA' +
        '_INICIAL, '
      
        '   IDENTIFICADOR, LOCAL_PRESTACAO_SERVICO, NOME_FUNCIONARIO, NSR' +
        ', OCORRENCIA, '
      
        '   PIS, QTD_REGISTRO_2, QTD_REGISTRO_3, QTD_REGISTRO_4, QTD_REGI' +
        'STRO_5, '
      
        '   RAZAOSOCIAL_EMPREGADOR, SERIAL_REP, TIPO_IDENTICADOR_EMPREGAD' +
        'OR, TIPO_OPERACAO, '
      '   TIPO_REGISTRO)'
      'values'
      
        '  (:CEI_EMPREGADOR, :CNPJ_CPF_EMPREGADOR, :CODIGO, :CODPESSOA_FU' +
        'NCIONARIO, '
      
        '   :DATA_FINAL, :DATA_GERACAO_ARQUIVO, :DATA_HORARIO_MARCACAO, :' +
        'DATA_INICIAL, '
      
        '   :IDENTIFICADOR, :LOCAL_PRESTACAO_SERVICO, :NOME_FUNCIONARIO, ' +
        ':NSR, :OCORRENCIA, '
      
        '   :PIS, :QTD_REGISTRO_2, :QTD_REGISTRO_3, :QTD_REGISTRO_4, :QTD' +
        '_REGISTRO_5, '
      
        '   :RAZAOSOCIAL_EMPREGADOR, :SERIAL_REP, :TIPO_IDENTICADOR_EMPRE' +
        'GADOR, '
      '   :TIPO_OPERACAO, :TIPO_REGISTRO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  IDENTIFICADOR,'
      '  CODPESSOA_FUNCIONARIO,'
      '  NSR,'
      '  TIPO_REGISTRO,'
      '  TIPO_IDENTICADOR_EMPREGADOR,'
      '  CNPJ_CPF_EMPREGADOR,'
      '  CEI_EMPREGADOR,'
      '  SERIAL_REP,'
      '  DATA_INICIAL,'
      '  DATA_FINAL,'
      '  DATA_GERACAO_ARQUIVO,'
      '  DATA_HORARIO_MARCACAO,'
      '  RAZAOSOCIAL_EMPREGADOR,'
      '  LOCAL_PRESTACAO_SERVICO,'
      '  PIS,'
      '  TIPO_OPERACAO,'
      '  QTD_REGISTRO_2,'
      '  QTD_REGISTRO_3,'
      '  QTD_REGISTRO_4,'
      '  QTD_REGISTRO_5,'
      '  NOME_FUNCIONARIO,'
      '  PONTO_GERADO,'
      '  MOTIVO,'
      '  OCORRENCIA'
      'from FUNCIONARIO_PONTO_ARQUIVO '
      'where'
      '  CODIGO = :CODIGO and'
      '  IDENTIFICADOR = :IDENTIFICADOR')
    SelectSQL.Strings = (
      'select *'
      'from FUNCIONARIO_PONTO_ARQUIVO'
      'where 1 = 2')
    ModifySQL.Strings = (
      'update FUNCIONARIO_PONTO_ARQUIVO'
      'set'
      '  CEI_EMPREGADOR = :CEI_EMPREGADOR,'
      '  CNPJ_CPF_EMPREGADOR = :CNPJ_CPF_EMPREGADOR,'
      '  CODIGO = :CODIGO,'
      '  CODPESSOA_FUNCIONARIO = :CODPESSOA_FUNCIONARIO,'
      '  DATA_FINAL = :DATA_FINAL,'
      '  DATA_GERACAO_ARQUIVO = :DATA_GERACAO_ARQUIVO,'
      '  DATA_HORARIO_MARCACAO = :DATA_HORARIO_MARCACAO,'
      '  DATA_INICIAL = :DATA_INICIAL,'
      '  IDENTIFICADOR = :IDENTIFICADOR,'
      '  LOCAL_PRESTACAO_SERVICO = :LOCAL_PRESTACAO_SERVICO,'
      '  NOME_FUNCIONARIO = :NOME_FUNCIONARIO,'
      '  NSR = :NSR,'
      '  OCORRENCIA = :OCORRENCIA,'
      '  PIS = :PIS,'
      '  QTD_REGISTRO_2 = :QTD_REGISTRO_2,'
      '  QTD_REGISTRO_3 = :QTD_REGISTRO_3,'
      '  QTD_REGISTRO_4 = :QTD_REGISTRO_4,'
      '  QTD_REGISTRO_5 = :QTD_REGISTRO_5,'
      '  RAZAOSOCIAL_EMPREGADOR = :RAZAOSOCIAL_EMPREGADOR,'
      '  SERIAL_REP = :SERIAL_REP,'
      '  TIPO_IDENTICADOR_EMPREGADOR = :TIPO_IDENTICADOR_EMPREGADOR,'
      '  TIPO_OPERACAO = :TIPO_OPERACAO,'
      '  TIPO_REGISTRO = :TIPO_REGISTRO'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  IDENTIFICADOR = :OLD_IDENTIFICADOR')
    ParamCheck = True
    UniDirectional = False
    Left = 139
    Top = 218
    object Funcionario_Ponto_ArquivoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Funcionario_Ponto_ArquivoIDENTIFICADOR: TIBStringField
      FieldName = 'IDENTIFICADOR'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."IDENTIFICADOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object Funcionario_Ponto_ArquivoCODPESSOA_FUNCIONARIO: TIBStringField
      FieldName = 'CODPESSOA_FUNCIONARIO'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."CODPESSOA_FUNCIONARIO"'
      Size = 10
    end
    object Funcionario_Ponto_ArquivoNSR: TIBStringField
      FieldName = 'NSR'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."NSR"'
      Size = 9
    end
    object Funcionario_Ponto_ArquivoTIPO_REGISTRO: TIntegerField
      FieldName = 'TIPO_REGISTRO'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."TIPO_REGISTRO"'
    end
    object Funcionario_Ponto_ArquivoTIPO_IDENTICADOR_EMPREGADOR: TIntegerField
      FieldName = 'TIPO_IDENTICADOR_EMPREGADOR'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."TIPO_IDENTICADOR_EMPREGADOR"'
    end
    object Funcionario_Ponto_ArquivoCNPJ_CPF_EMPREGADOR: TIBStringField
      FieldName = 'CNPJ_CPF_EMPREGADOR'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."CNPJ_CPF_EMPREGADOR"'
      Size = 14
    end
    object Funcionario_Ponto_ArquivoCEI_EMPREGADOR: TIBStringField
      FieldName = 'CEI_EMPREGADOR'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."CEI_EMPREGADOR"'
      Size = 12
    end
    object Funcionario_Ponto_ArquivoSERIAL_REP: TIBStringField
      FieldName = 'SERIAL_REP'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."SERIAL_REP"'
      Size = 30
    end
    object Funcionario_Ponto_ArquivoDATA_INICIAL: TDateTimeField
      FieldName = 'DATA_INICIAL'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."DATA_INICIAL"'
    end
    object Funcionario_Ponto_ArquivoDATA_FINAL: TDateTimeField
      FieldName = 'DATA_FINAL'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."DATA_FINAL"'
    end
    object Funcionario_Ponto_ArquivoDATA_GERACAO_ARQUIVO: TDateTimeField
      FieldName = 'DATA_GERACAO_ARQUIVO'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."DATA_GERACAO_ARQUIVO"'
    end
    object Funcionario_Ponto_ArquivoDATA_HORARIO_MARCACAO: TDateTimeField
      FieldName = 'DATA_HORARIO_MARCACAO'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."DATA_HORARIO_MARCACAO"'
    end
    object Funcionario_Ponto_ArquivoRAZAOSOCIAL_EMPREGADOR: TIBStringField
      FieldName = 'RAZAOSOCIAL_EMPREGADOR'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."RAZAOSOCIAL_EMPREGADOR"'
      Size = 100
    end
    object Funcionario_Ponto_ArquivoLOCAL_PRESTACAO_SERVICO: TIBStringField
      FieldName = 'LOCAL_PRESTACAO_SERVICO'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."LOCAL_PRESTACAO_SERVICO"'
      Size = 100
    end
    object Funcionario_Ponto_ArquivoPIS: TIBStringField
      FieldName = 'PIS'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."PIS"'
      Size = 12
    end
    object Funcionario_Ponto_ArquivoTIPO_OPERACAO: TIBStringField
      FieldName = 'TIPO_OPERACAO'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."TIPO_OPERACAO"'
      Size = 1
    end
    object Funcionario_Ponto_ArquivoQTD_REGISTRO_2: TIntegerField
      FieldName = 'QTD_REGISTRO_2'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."QTD_REGISTRO_2"'
    end
    object Funcionario_Ponto_ArquivoQTD_REGISTRO_3: TIntegerField
      FieldName = 'QTD_REGISTRO_3'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."QTD_REGISTRO_3"'
    end
    object Funcionario_Ponto_ArquivoQTD_REGISTRO_4: TIntegerField
      FieldName = 'QTD_REGISTRO_4'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."QTD_REGISTRO_4"'
    end
    object Funcionario_Ponto_ArquivoQTD_REGISTRO_5: TIntegerField
      FieldName = 'QTD_REGISTRO_5'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."QTD_REGISTRO_5"'
    end
    object Funcionario_Ponto_ArquivoNOME_FUNCIONARIO: TIBStringField
      FieldName = 'NOME_FUNCIONARIO'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."NOME_FUNCIONARIO"'
      Size = 52
    end
    object Funcionario_Ponto_ArquivoOCORRENCIA: TIBStringField
      FieldName = 'OCORRENCIA'
      Origin = '"FUNCIONARIO_PONTO_ARQUIVO"."OCORRENCIA"'
      Size = 5
    end
  end
end
