object ImpriAgenda: TImpriAgenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Agendamentos'
  ClientHeight = 308
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 268
    Width = 341
    Height = 8
    Shape = bsTopLine
  end
  object LbUCResponsavel: TLabel
    Left = 49
    Top = 282
    Width = 86
    Height = 13
    Caption = 'LbUCResponsavel'
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 341
    Height = 51
    Caption = 'Per'#237'odo'
    TabOrder = 0
    object Label1: TLabel
      Left = 154
      Top = 20
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object EdtDtInicio: TcxDateEdit
      Left = 9
      Top = 17
      Properties.ShowTime = False
      TabOrder = 0
      Width = 133
    end
    object EdtDtFim: TcxDateEdit
      Left = 173
      Top = 17
      Properties.ShowTime = False
      TabOrder = 1
      Width = 133
    end
    object cxDateProfileButton1: TcxDateProfileButton
      Left = 312
      Top = 17
      Width = 21
      Height = 21
      Hint = 'Clique para selecionar um per'#237'odo'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000030303280909
        0A890505058C09080A8B0C0C0D8B0F0F108B1111128B1110118B0D0D0D8B0D0D
        0D8A0F0E0F8A0808098A0808098E080808540000000000000000040404587C7A
        7BFF979698FF919092FF999799FF9C9A9BFF9A999AFFA5A3A5FFABAAACFFA2A1
        A3FFA09E9FFFB9B6B8FFC6C4C5FF3C3A3CAF000000000000000000000059A2A1
        A2FFE5E5E5FFDADAD9FFCFCFCFFFD0D0D0FFD5D5D4FFCDCDCDFFE0E0E0FFEFEF
        EFFFE1E1E1FFCFCDCEFFF3EFEFFF494749A70000000000000000000000599F9F
        9FFFE3E3E3FFE0E0E0FF6E6E6EFF767676FFE1E1E1FF505050FF292929FF5D5D
        5DFFB2B2B2FFE0E0E1FFC9C7C8FF454547A7000000000000000000000059A4A3
        A4FFEAEAEAFFE9E9E9FF5B5B5BFF636363FFF3F3F3FF949494FF0E0E0EFF8282
        82FFD0D0D0FFEAEAEAFFC3C2C3FF3A373AA8000000000000000000000059A8A7
        A8FFF2F2F2FFFAFAFAFF656565FF696969FFF0F0F0FFF4F4F4FF909090FF2B2B
        2BFFBDBDBDFFF4F4F4FFCFCFCFFF302F30AB000000000000000000000059B2B1
        B2FFE3E3E3FFA6A6A6FF5A5A5AFF6F6F6FFFF6F6F6FFE5E5E5FFFFFFFFFF8585
        85FF3C3C3CFFEFEFEFFFE1E0E1FF353435AE000000000000000000000059B7B7
        B7FFF1F1F1FF626262FF0A0A0AFF737373FFFFFFFFFF646464FF838383FF9B9B
        9BFF272727FFE7E7E7FFEDEDEDFF3D3D3DB0000000000000000000000059B9BB
        C0FFFFFFFFFFFFFFFFFF71747BFF8B8F97FFFFFFFFFFBCC0C8FF474B53FF4246
        4EFFA4A7AFFFFFFFFFFFF2F5FCFF404142B1000000000000000001030559B0A4
        8BFFF2E1B9FFF0DEB6FFEEDCB4FFE4D0A4FFEDDBB1FFF5E3BAFFEAD7ADFFE5D2
        A8FFF7E5BCFFF0DDB1FFE2D2ACFF413E3AB10000000000000000050810599770
        16FFDBA939FFD7AE57FFD3A33CFFD19F2BFFC18300FFCC971CFFD09D26FFC78B
        00FFCA9311FFD19D22FFC08B0EFF3E3728B10000000000000000050811599A76
        1FFFDFB043FFCFA852FFC89F44FFDAB45CFFC68C00FFCF9D26FFD4A639FFBA85
        02FFC49117FFD9AB3BFFC59420FF413929B10000000000000000080B145CA883
        28FFDF9C00FF9A7419FF9A7B34FFD59500FFD19500FFD69D15FFD49809FF896D
        2BFFB28D35FFDC9E0DFFD09916FF4B4336B900000000000000000506092C5345
        26B3654D16BE736649DF736B5EE4614B15BB624C18BD614A17BC654E1AC07B72
        60E86C5F46D7624915BB644F21C126241F6A0000000000000000000000000000
        000000000000636469895D5D6096000000000000000000000000000000008080
        83BA3B3C415F0000000000000000000000000000000000000000000000000000
        0000000000003E3E3F4E4747474E000000000000000000000000000000005858
        586C2C2B2B2D00000000000000000000000000000000}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      DateEditInicio = EdtDtInicio
      DateEditFim = EdtDtFim
    end
  end
  object BtnImprimir: TcxButton
    Left = 275
    Top = 278
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    DropDownMenu = MenuImpressao
    Kind = cxbkDropDownButton
    TabOrder = 1
    OnClick = BtnImprimirClick
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 71
    Width = 169
    Height = 191
    Caption = 'Cor'
    TabOrder = 6
    object LstCores: TcxCheckListBox
      Left = 2
      Top = 15
      Width = 165
      Height = 174
      Align = alClient
      Items = <>
      TabOrder = 0
      OnDrawItem = LstCoresDrawItem
    end
  end
  object BtnPCMarcarTodos: TBitBtn
    Left = 134
    Top = 66
    Width = 20
    Height = 20
    Hint = 'Marcar todos'
    Glyph.Data = {
      3E020000424D3E0200000000000036000000280000000D0000000D0000000100
      1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00A0A0A0E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3
      E3E3E3E3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFF
      FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A0696969
      FFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFF
      FF00A0A0A0696969FFFFFF000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFF000000000000FFFFFF00000000
      0000000000FFFFFFFFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFF000000FFFF
      FFFFFFFFFFFFFF000000000000000000FFFFFFE3E3E3FFFFFF00A0A0A0696969
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFE3E3E3FFFF
      FF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A06969696969696969696969
      69696969696969696969696969696969696969E3E3E3FFFFFF00A0A0A0A0A0A0
      A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0FFFF
      FF00}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BtnPCMarcarTodosClick
  end
  object BtnPCDesmarcarTodos: TBitBtn
    Left = 154
    Top = 66
    Width = 20
    Height = 20
    Hint = 'Desmarcar todos'
    Glyph.Data = {
      3E020000424D3E0200000000000036000000280000000D0000000D0000000100
      1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00A0A0A0E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3
      E3E3E3E3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A0696969
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFF
      FF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A0696969
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFF
      FF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A06969696969696969696969
      69696969696969696969696969696969696969E3E3E3FFFFFF00A0A0A0A0A0A0
      A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0FFFF
      FF00}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BtnPCDesmarcarTodosClick
  end
  object GroupBox3: TGroupBox
    Left = 183
    Top = 71
    Width = 169
    Height = 191
    Caption = 'Respons'#225'vel'
    TabOrder = 7
    object LstResponsaveis: TcxCheckListBox
      Left = 2
      Top = 15
      Width = 165
      Height = 174
      Align = alClient
      Items = <>
      TabOrder = 0
    end
  end
  object BtnRespAll: TBitBtn
    Left = 309
    Top = 66
    Width = 20
    Height = 20
    Hint = 'Marcar todos'
    Glyph.Data = {
      3E020000424D3E0200000000000036000000280000000D0000000D0000000100
      1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00A0A0A0E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3
      E3E3E3E3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFF
      FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A0696969
      FFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFF
      FF00A0A0A0696969FFFFFF000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFF000000000000FFFFFF00000000
      0000000000FFFFFFFFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFF000000FFFF
      FFFFFFFFFFFFFF000000000000000000FFFFFFE3E3E3FFFFFF00A0A0A0696969
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFE3E3E3FFFF
      FF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A06969696969696969696969
      69696969696969696969696969696969696969E3E3E3FFFFFF00A0A0A0A0A0A0
      A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0FFFF
      FF00}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = BtnRespAllClick
  end
  object BtnRespNone: TBitBtn
    Left = 329
    Top = 66
    Width = 20
    Height = 20
    Hint = 'Desmarcar todos'
    Glyph.Data = {
      3E020000424D3E0200000000000036000000280000000D0000000D0000000100
      1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00A0A0A0E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3
      E3E3E3E3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A0696969
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFF
      FF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A0696969
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFF
      FF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFE3E3E3FFFFFF00A0A0A0696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE3E3E3FFFFFF00A0A0A06969696969696969696969
      69696969696969696969696969696969696969E3E3E3FFFFFF00A0A0A0A0A0A0
      A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0FFFF
      FF00}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BtnRespNoneClick
  end
  object BtnFechar: TcxButton
    Left = 196
    Top = 278
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 8
    OnClick = BtnFecharClick
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'Agenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PROTOCOLO=PROTOCOLO'
      'SEQUENCIA=SEQUENCIA'
      'CODAGENDA_TITULO=CODAGENDA_TITULO'
      'CAPTION=CAPTION'
      'DT_INICIO=DT_INICIO'
      'DT_FIM=DT_FIM'
      'IMAGEMINDEX=IMAGEMINDEX'
      'COLOR=COLOR'
      'IMAGE=IMAGE'
      'TAREFA_COMPLETA=TAREFA_COMPLETA'
      'TAREFA_INDEX=TAREFA_INDEX'
      'STATUS=STATUS'
      'EVENTO_TIPO=EVENTO_TIPO'
      'RECURRENCE_INDEX=RECURRENCE_INDEX'
      'REMINDER_DATE=REMINDER_DATE'
      'OPTIONS=OPTIONS'
      'LOCATION=LOCATION'
      'RECURRENCE_INFO=RECURRENCE_INFO'
      'TELEFONE=TELEFONE'
      'TAREFA_STATUS=TAREFA_STATUS'
      'TAREFA_LINK=TAREFA_LINK'
      'CODFINANCEIRO=CODFINANCEIRO'
      'CODEMPRESA=CODEMPRESA'
      'DT_FATURAMENTO=DT_FATURAMENTO'
      'BLOQUEIO=BLOQUEIO'
      'FUNCIONARIO=FUNCIONARIO'
      'CODEQUIPAMENTO=CODEQUIPAMENTO'
      'EQUIPAMENTO=EQUIPAMENTO'
      'SOLICITANTE=SOLICITANTE'
      'CODVENDA=CODVENDA'
      'OCORRENCIA=OCORRENCIA'
      'VALOR=VALOR'
      'DT_EMISSAO=DT_EMISSAO'
      'PRIORIDADE=PRIORIDADE'
      'DT_ALTERACAO=DT_ALTERACAO'
      'CODVENDA_PRODUTO=CODVENDA_PRODUTO'
      'CODPRODUTO_GRUPO_WORKFLOW=CODPRODUTO_GRUPO_WORKFLOW'
      'OBS_FINALIZACAO=OBS_FINALIZACAO'
      'ATIVO=ATIVO'
      'CODSETOR=CODSETOR'
      'LIDO=LIDO'
      'CODUSUARIO_RESPONSAVEL=CODUSUARIO_RESPONSAVEL'
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'CODUSUARIO_CRIADOR=CODUSUARIO_CRIADOR'
      'CODUSUARIO_ALTERADO=CODUSUARIO_ALTERADO'
      'PARENT_ID=PARENT_ID'
      'REMINDER_MINUTES=REMINDER_MINUTES'
      'GROUP_ID=GROUP_ID'
      'REMINDER_RESOURCES_DATA=REMINDER_RESOURCES_DATA'
      'CODAGENDA_COMPOSICAO=CODAGENDA_COMPOSICAO'
      'QUANT=QUANT'
      'LARG=LARG'
      'COMP=COMP'
      'ESPESSURA=ESPESSURA'
      'QTDADEPECA=QTDADEPECA'
      'CODCOMPOSICAO=CODCOMPOSICAO'
      'COMPOSICAO=COMPOSICAO'
      'PATH=PATH'
      'CODSTATUS=CODSTATUS'
      'LOCAL=LOCAL'
      'MENSALIDADE=MENSALIDADE'
      'CODCONDICAOPAGTO=CODCONDICAOPAGTO'
      'TIPO_AGENDAMENTO=TIPO_AGENDAMENTO'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'FANTASIA=FANTASIA'
      'TIPO=TIPO'
      'FONE1=FONE1'
      'EMAIL=EMAIL'
      'CONDICAOPAGTO=CONDICAOPAGTO'
      'NomeCor=NomeCor'
      'PESSOA_CLIENTE_CODIGO=PESSOA_CLIENTE_CODIGO'
      'PESSOA_CLIENTE_TIPO=PESSOA_CLIENTE_TIPO'
      'PESSOA_CLIENTE_SEQUENCIA=PESSOA_CLIENTE_SEQUENCIA'
      'PESSOA_FUNCIONARIO_CODIGO=PESSOA_FUNCIONARIO_CODIGO'
      'PESSOA_FUNCIONARIO_TIPO=PESSOA_FUNCIONARIO_TIPO'
      'PESSOA_FUNCIONARIO_SEQUENCIA=PESSOA_FUNCIONARIO_SEQUENCIA'
      'ACTUAL_START=ACTUAL_START'
      'ACTUAL_FINISH=ACTUAL_FINISH'
      'GANTT_DT_INICIO=GANTT_DT_INICIO'
      'GANTT_DT_FIM=GANTT_DT_FIM'
      'GANTT_ACTUAL_START=GANTT_ACTUAL_START'
      'GANTT_ACTUAL_FINISH=GANTT_ACTUAL_FINISH')
    DataSet = QuerAgenda
    BCDToCurrency = False
    Left = 241
    Top = 160
  end
  object QuerAgenda: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    AfterOpen = QuerAgendaAfterOpen
    BeforeOpen = QuerAgendaBeforeOpen
    OnCalcFields = QuerAgendaCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select A.*, C.RAZAOSOCIAL, C.FANTASIA, C.TIPO, C.FONE1, C.EMAIL,'
      '       CP.DESCRICAO as CONDICAOPAGTO'
      'from AGENDA A'
      'left join PESSOAS C on (C.CODIGO = A.PESSOA_CLIENTE_CODIGO)'
      'left join CONDICAOPAGTO CP on (CP.CODIGO = A.CODCONDICAOPAGTO)'
      'where (A.TIPO_AGENDAMENTO = :TipoAgendamento)'
      
        '      and (A.DT_INICIO between :DTINICIO and :DTFIM) and  (A.ATI' +
        'VO = '#39'S'#39')'
      '      '
      ''
      ''
      ''
      'order by A.COLOR, A.CAPTION --A.DT_EMISSAO')
    Left = 269
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TipoAgendamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtInicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtFim'
        ParamType = ptUnknown
      end>
    object QuerAgendaCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"AGENDA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object QuerAgendaPROTOCOLO: TIBStringField
      FieldName = 'PROTOCOLO'
      Origin = '"AGENDA"."PROTOCOLO"'
      Required = True
      Size = 50
    end
    object QuerAgendaSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"AGENDA"."SEQUENCIA"'
    end
    object QuerAgendaCODAGENDA_TITULO: TIntegerField
      FieldName = 'CODAGENDA_TITULO'
      Origin = '"AGENDA"."CODAGENDA_TITULO"'
    end
    object QuerAgendaCAPTION: TIBStringField
      FieldName = 'CAPTION'
      Origin = '"AGENDA"."CAPTION"'
      Size = 255
    end
    object QuerAgendaDT_INICIO: TDateTimeField
      FieldName = 'DT_INICIO'
      Origin = '"AGENDA"."DT_INICIO"'
    end
    object QuerAgendaDT_FIM: TDateTimeField
      FieldName = 'DT_FIM'
      Origin = '"AGENDA"."DT_FIM"'
    end
    object QuerAgendaIMAGEMINDEX: TIntegerField
      FieldName = 'IMAGEMINDEX'
      Origin = '"AGENDA"."IMAGEMINDEX"'
    end
    object QuerAgendaCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = '"AGENDA"."COLOR"'
    end
    object QuerAgendaIMAGE: TIntegerField
      FieldName = 'IMAGE'
      Origin = '"AGENDA"."IMAGE"'
    end
    object QuerAgendaTAREFA_COMPLETA: TIntegerField
      FieldName = 'TAREFA_COMPLETA'
      Origin = '"AGENDA"."TAREFA_COMPLETA"'
    end
    object QuerAgendaTAREFA_INDEX: TIntegerField
      FieldName = 'TAREFA_INDEX'
      Origin = '"AGENDA"."TAREFA_INDEX"'
    end
    object QuerAgendaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = '"AGENDA"."STATUS"'
    end
    object QuerAgendaEVENTO_TIPO: TIntegerField
      FieldName = 'EVENTO_TIPO'
      Origin = '"AGENDA"."EVENTO_TIPO"'
    end
    object QuerAgendaRECURRENCE_INDEX: TIntegerField
      FieldName = 'RECURRENCE_INDEX'
      Origin = '"AGENDA"."RECURRENCE_INDEX"'
    end
    object QuerAgendaREMINDER_DATE: TDateTimeField
      FieldName = 'REMINDER_DATE'
      Origin = '"AGENDA"."REMINDER_DATE"'
    end
    object QuerAgendaOPTIONS: TIntegerField
      FieldName = 'OPTIONS'
      Origin = '"AGENDA"."OPTIONS"'
    end
    object QuerAgendaLOCATION: TIBStringField
      FieldName = 'LOCATION'
      Origin = '"AGENDA"."LOCATION"'
      Size = 255
    end
    object QuerAgendaRECURRENCE_INFO: TBlobField
      FieldName = 'RECURRENCE_INFO'
      Origin = '"AGENDA"."RECURRENCE_INFO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QuerAgendaTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"AGENDA"."TELEFONE"'
      Size = 12
    end
    object QuerAgendaTAREFA_STATUS: TIntegerField
      FieldName = 'TAREFA_STATUS'
      Origin = '"AGENDA"."TAREFA_STATUS"'
    end
    object QuerAgendaTAREFA_LINK: TBlobField
      FieldName = 'TAREFA_LINK'
      Origin = '"AGENDA"."TAREFA_LINK"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QuerAgendaCODFINANCEIRO: TIBStringField
      FieldName = 'CODFINANCEIRO'
      Origin = '"AGENDA"."CODFINANCEIRO"'
      Size = 10
    end
    object QuerAgendaCODEMPRESA: TIBStringField
      FieldName = 'CODEMPRESA'
      Origin = '"AGENDA"."CODEMPRESA"'
      Size = 10
    end
    object QuerAgendaDT_FATURAMENTO: TDateTimeField
      FieldName = 'DT_FATURAMENTO'
      Origin = '"AGENDA"."DT_FATURAMENTO"'
    end
    object QuerAgendaBLOQUEIO: TIBStringField
      FieldName = 'BLOQUEIO'
      Origin = '"AGENDA"."BLOQUEIO"'
      Size = 1
    end
    object QuerAgendaFUNCIONARIO: TIBStringField
      FieldName = 'FUNCIONARIO'
      Origin = '"AGENDA"."FUNCIONARIO"'
      Size = 50
    end
    object QuerAgendaCODEQUIPAMENTO: TIBStringField
      FieldName = 'CODEQUIPAMENTO'
      Origin = '"AGENDA"."CODEQUIPAMENTO"'
      Size = 15
    end
    object QuerAgendaEQUIPAMENTO: TIBStringField
      FieldName = 'EQUIPAMENTO'
      Origin = '"AGENDA"."EQUIPAMENTO"'
      Size = 150
    end
    object QuerAgendaSOLICITANTE: TIBStringField
      FieldName = 'SOLICITANTE'
      Origin = '"AGENDA"."SOLICITANTE"'
      Size = 150
    end
    object QuerAgendaCODVENDA: TIBStringField
      FieldName = 'CODVENDA'
      Origin = '"AGENDA"."CODVENDA"'
      Size = 15
    end
    object QuerAgendaOCORRENCIA: TIBStringField
      FieldName = 'OCORRENCIA'
      Origin = '"AGENDA"."OCORRENCIA"'
      Size = 100
    end
    object QuerAgendaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"AGENDA"."VALOR"'
    end
    object QuerAgendaDT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
      Origin = '"AGENDA"."DT_EMISSAO"'
    end
    object QuerAgendaPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
      Origin = '"AGENDA"."PRIORIDADE"'
    end
    object QuerAgendaDT_ALTERACAO: TDateTimeField
      FieldName = 'DT_ALTERACAO'
      Origin = '"AGENDA"."DT_ALTERACAO"'
    end
    object QuerAgendaCODVENDA_PRODUTO: TIntegerField
      FieldName = 'CODVENDA_PRODUTO'
      Origin = '"AGENDA"."CODVENDA_PRODUTO"'
    end
    object QuerAgendaCODPRODUTO_GRUPO_WORKFLOW: TIntegerField
      FieldName = 'CODPRODUTO_GRUPO_WORKFLOW'
      Origin = '"AGENDA"."CODPRODUTO_GRUPO_WORKFLOW"'
    end
    object QuerAgendaOBS_FINALIZACAO: TIBStringField
      FieldName = 'OBS_FINALIZACAO'
      Origin = '"AGENDA"."OBS_FINALIZACAO"'
      Size = 50
    end
    object QuerAgendaATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"AGENDA"."ATIVO"'
      Size = 1
    end
    object QuerAgendaCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Origin = '"AGENDA"."CODSETOR"'
    end
    object QuerAgendaLIDO: TSmallintField
      FieldName = 'LIDO'
      Origin = '"AGENDA"."LIDO"'
    end
    object QuerAgendaCODUSUARIO_RESPONSAVEL: TIntegerField
      FieldName = 'CODUSUARIO_RESPONSAVEL'
      Origin = '"AGENDA"."CODUSUARIO_RESPONSAVEL"'
      Required = True
    end
    object QuerAgendaCODPRODUTO: TIBStringField
      FieldName = 'CODPRODUTO'
      Origin = '"AGENDA"."CODPRODUTO"'
      Size = 15
    end
    object QuerAgendaPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"AGENDA"."PRODUTO"'
      Size = 300
    end
    object QuerAgendaCODUSUARIO_CRIADOR: TIntegerField
      FieldName = 'CODUSUARIO_CRIADOR'
      Origin = '"AGENDA"."CODUSUARIO_CRIADOR"'
    end
    object QuerAgendaCODUSUARIO_ALTERADO: TIntegerField
      FieldName = 'CODUSUARIO_ALTERADO'
      Origin = '"AGENDA"."CODUSUARIO_ALTERADO"'
    end
    object QuerAgendaPARENT_ID: TIBStringField
      FieldName = 'PARENT_ID'
      Origin = '"AGENDA"."PARENT_ID"'
      Size = 40
    end
    object QuerAgendaREMINDER_MINUTES: TIntegerField
      FieldName = 'REMINDER_MINUTES'
      Origin = '"AGENDA"."REMINDER_MINUTES"'
    end
    object QuerAgendaGROUP_ID: TIBStringField
      FieldName = 'GROUP_ID'
      Origin = '"AGENDA"."GROUP_ID"'
      Size = 40
    end
    object QuerAgendaREMINDER_RESOURCES_DATA: TBlobField
      FieldName = 'REMINDER_RESOURCES_DATA'
      Origin = '"AGENDA"."REMINDER_RESOURCES_DATA"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QuerAgendaCODAGENDA_COMPOSICAO: TIBStringField
      FieldName = 'CODAGENDA_COMPOSICAO'
      Origin = '"AGENDA"."CODAGENDA_COMPOSICAO"'
      Size = 40
    end
    object QuerAgendaQUANT: TFloatField
      FieldName = 'QUANT'
      Origin = '"AGENDA"."QUANT"'
    end
    object QuerAgendaLARG: TFloatField
      FieldName = 'LARG'
      Origin = '"AGENDA"."LARG"'
    end
    object QuerAgendaCOMP: TFloatField
      FieldName = 'COMP'
      Origin = '"AGENDA"."COMP"'
    end
    object QuerAgendaESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
      Origin = '"AGENDA"."ESPESSURA"'
    end
    object QuerAgendaQTDADEPECA: TFloatField
      FieldName = 'QTDADEPECA'
      Origin = '"AGENDA"."QTDADEPECA"'
    end
    object QuerAgendaCODCOMPOSICAO: TIntegerField
      FieldName = 'CODCOMPOSICAO'
      Origin = '"AGENDA"."CODCOMPOSICAO"'
    end
    object QuerAgendaCOMPOSICAO: TIBStringField
      FieldName = 'COMPOSICAO'
      Origin = '"AGENDA"."COMPOSICAO"'
      Size = 150
    end
    object QuerAgendaPATH: TIBStringField
      FieldName = 'PATH'
      Origin = '"AGENDA"."PATH"'
      Size = 255
    end
    object QuerAgendaCODSTATUS: TIntegerField
      FieldName = 'CODSTATUS'
      Origin = '"AGENDA"."CODSTATUS"'
    end
    object QuerAgendaLOCAL: TIBStringField
      FieldName = 'LOCAL'
      Origin = '"AGENDA"."LOCAL"'
      Size = 150
    end
    object QuerAgendaMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      Origin = '"AGENDA"."MENSALIDADE"'
    end
    object QuerAgendaCODCONDICAOPAGTO: TIntegerField
      FieldName = 'CODCONDICAOPAGTO'
      Origin = '"AGENDA"."CODCONDICAOPAGTO"'
    end
    object QuerAgendaTIPO_AGENDAMENTO: TSmallintField
      FieldName = 'TIPO_AGENDAMENTO'
      Origin = '"AGENDA"."TIPO_AGENDAMENTO"'
    end
    object QuerAgendaRAZAOSOCIAL: TIBStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = '"PESSOAS"."RAZAOSOCIAL"'
      Size = 50
    end
    object QuerAgendaFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"PESSOAS"."FANTASIA"'
      Size = 50
    end
    object QuerAgendaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PESSOAS"."TIPO"'
      Size = 1
    end
    object QuerAgendaFONE1: TIBStringField
      FieldName = 'FONE1'
      Origin = '"PESSOAS"."FONE1"'
      Size = 30
    end
    object QuerAgendaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"PESSOAS"."EMAIL"'
      Size = 100
    end
    object QuerAgendaCONDICAOPAGTO: TIBStringField
      FieldName = 'CONDICAOPAGTO'
      Origin = '"CONDICAOPAGTO"."DESCRICAO"'
      Size = 30
    end
    object QuerAgendaNomeCor: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeCor'
      Size = 200
      Calculated = True
    end
    object QuerAgendaPESSOA_CLIENTE_CODIGO: TIBStringField
      FieldName = 'PESSOA_CLIENTE_CODIGO'
      Origin = '"AGENDA"."PESSOA_CLIENTE_CODIGO"'
      Size = 10
    end
    object QuerAgendaPESSOA_CLIENTE_TIPO: TIBStringField
      FieldName = 'PESSOA_CLIENTE_TIPO'
      Origin = '"AGENDA"."PESSOA_CLIENTE_TIPO"'
      Size = 3
    end
    object QuerAgendaPESSOA_CLIENTE_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_CLIENTE_SEQUENCIA'
      Origin = '"AGENDA"."PESSOA_CLIENTE_SEQUENCIA"'
    end
    object QuerAgendaPESSOA_FUNCIONARIO_CODIGO: TIBStringField
      FieldName = 'PESSOA_FUNCIONARIO_CODIGO'
      Origin = '"AGENDA"."PESSOA_FUNCIONARIO_CODIGO"'
      Size = 10
    end
    object QuerAgendaPESSOA_FUNCIONARIO_TIPO: TIBStringField
      FieldName = 'PESSOA_FUNCIONARIO_TIPO'
      Origin = '"AGENDA"."PESSOA_FUNCIONARIO_TIPO"'
      Size = 3
    end
    object QuerAgendaPESSOA_FUNCIONARIO_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_FUNCIONARIO_SEQUENCIA'
      Origin = '"AGENDA"."PESSOA_FUNCIONARIO_SEQUENCIA"'
    end
    object QuerAgendaACTUAL_START: TIntegerField
      FieldName = 'ACTUAL_START'
      Origin = '"AGENDA"."ACTUAL_START"'
    end
    object QuerAgendaACTUAL_FINISH: TIntegerField
      FieldName = 'ACTUAL_FINISH'
      Origin = '"AGENDA"."ACTUAL_FINISH"'
    end
    object QuerAgendaGANTT_DT_INICIO: TDateTimeField
      FieldName = 'GANTT_DT_INICIO'
      Origin = '"AGENDA"."GANTT_DT_INICIO"'
    end
    object QuerAgendaGANTT_DT_FIM: TDateTimeField
      FieldName = 'GANTT_DT_FIM'
      Origin = '"AGENDA"."GANTT_DT_FIM"'
    end
    object QuerAgendaGANTT_ACTUAL_START: TIntegerField
      FieldName = 'GANTT_ACTUAL_START'
      Origin = '"AGENDA"."GANTT_ACTUAL_START"'
    end
    object QuerAgendaGANTT_ACTUAL_FINISH: TIntegerField
      FieldName = 'GANTT_ACTUAL_FINISH'
      Origin = '"AGENDA"."GANTT_ACTUAL_FINISH"'
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'AgendaGrafico'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SUM=SUM'
      'COLOR=COLOR'
      'CODUSUARIO_RESPONSAVEL=CODUSUARIO_RESPONSAVEL'
      'NomeCor=NomeCor')
    DataSet = QuerGrafico
    BCDToCurrency = False
    Left = 241
    Top = 188
  end
  object QuerGrafico: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = QuerGraficoBeforeOpen
    OnCalcFields = QuerGraficoCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select sum(VALOR), COLOR, CODUSUARIO_RESPONSAVEL'
      'from AGENDA A'
      'where (A.TIPO_AGENDAMENTO = :TipoAgendamento)'
      '      and (A.DT_INICIO between :DtInicio and :DtFim)'
      '      and (A.COLOR in (null))'
      '      and (CODUSUARIO_RESPONSAVEL = 0)'
      'group by COLOR, CODUSUARIO_RESPONSAVEL  ')
    Left = 269
    Top = 188
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TipoAgendamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtInicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtFim'
        ParamType = ptUnknown
      end>
    object QuerGraficoSUM: TFloatField
      FieldName = 'SUM'
      ProviderFlags = []
    end
    object QuerGraficoCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = '"AGENDA"."COLOR"'
    end
    object QuerGraficoCODUSUARIO_RESPONSAVEL: TIntegerField
      FieldName = 'CODUSUARIO_RESPONSAVEL'
      Origin = '"AGENDA"."CODUSUARIO_RESPONSAVEL"'
      Required = True
    end
    object QuerGraficoNomeCor: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeCor'
      Size = 200
      Calculated = True
    end
  end
  object QuerGrafico2: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = QuerGrafico2BeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select sum(A.VALOR) as VALOR, U.USUARIO'
      'from AGENDA A'
      'left join USUARIO U on (A.CODUSUARIO_RESPONSAVEL = U.CODIGO)'
      'where (A.TIPO_AGENDAMENTO = :TipoAgendamento)'
      '      and (A.DT_INICIO between :DtInicio and :DtFim)'
      '      and (A.COLOR in (null))'
      '      and (A.CODUSUARIO_RESPONSAVEL in (0))'
      'group by U.USUARIO')
    Left = 269
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TipoAgendamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtInicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtFim'
        ParamType = ptUnknown
      end>
    object QuerGrafico2USUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"USUARIO"."USUARIO"'
      Size = 30
    end
    object QuerGrafico2VALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = []
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'AgendaGrafico2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'USUARIO=USUARIO'
      'VALOR=VALOR')
    DataSet = QuerGrafico2
    BCDToCurrency = False
    Left = 241
    Top = 216
  end
  object UCControls1: TUCControls
    GroupName = 'Relat'#243'rio de Agendamentos'
    UserControl = FrmPrincipal.UserControl
    Components = ''
    MostraMessagemErroValidacao = False
    Left = 213
    Top = 188
  end
  object MenuImpressao: TPopupMenu
    Left = 213
    Top = 216
    object Simplificado1: TMenuItem
      Caption = '&Simplificado'
      Default = True
      OnClick = Simplificado1Click
    end
    object Completo1: TMenuItem
      Caption = '&Completo'
      OnClick = Completo1Click
    end
  end
  object MTCores: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TOTAL'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 269
    Top = 132
    object MTCoresCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object MTCoresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object MTCoresTOTAL: TIntegerField
      FieldName = 'TOTAL'
    end
  end
  object frxDBCores: TfrxDBDataset
    UserName = 'Cores'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'TOTAL=TOTAL')
    DataSet = MTCores
    BCDToCurrency = False
    Left = 242
    Top = 132
  end
  object WREventosCadastro1: TWREventosCadastro
    OnPreencheVariaveisImpressaoPersonalizada = WREventosCadastro1PreencheVariaveisImpressaoPersonalizada
    Versao_Configuracao = 0
    Empresa = 0
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    Left = 213
    Top = 159
  end
end
