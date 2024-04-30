object FrmGeraEmailsBoletos: TFrmGeraEmailsBoletos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Enviar Boletos por Email'
  ClientHeight = 316
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 418
    Height = 316
    Align = alClient
    TabOrder = 0
    object CbMes: TcxComboBox
      Left = 10
      Top = 73
      AutoSize = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownRows = 12
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Height = 21
      Width = 121
    end
    object CbAno: TcxComboBox
      Left = 137
      Top = 73
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 56
    end
    object EdtNumeroRateio: TcxTextEdit
      Left = 199
      Top = 73
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object RgAgruparPor: TcxRadioGroup
      Left = 10
      Top = 100
      Caption = 'Agrupar Emails Por'
      Properties.Items = <
        item
          Caption = 'Respons'#225'vel'
        end
        item
          Caption = 'Email Destinat'#225'rio'
        end
        item
          Caption = 'N'#227'o Agrupar'
        end>
      ItemIndex = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 4
      Height = 82
      Width = 167
    end
    object BtnGerarEmails: TcxButton
      Left = 91
      Top = 281
      Width = 214
      Height = 25
      Caption = 'Gerar Emails'
      TabOrder = 8
      OnClick = BtnGerarEmailsClick
    end
    object BtnCancelar: TcxButton
      Left = 10
      Top = 281
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 7
    end
    object EdtEmailModelo: TcxButtonEdit
      Left = 10
      Top = 206
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = EdtEmailModeloPropertiesButtonClick
      Properties.OnChange = EdtEmailModeloPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      OnKeyDown = EdtEmailModeloKeyDown
      Width = 95
    end
    object LblEmailModelo: TcxLabel
      Left = 111
      Top = 206
      AutoSize = False
      Style.HotTrack = False
      Height = 21
      Width = 297
    end
    object CbReferencia: TcxComboBox
      Left = 10
      Top = 28
      TabStop = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Emiss'#227'o'
        'Vencimento'
        'Pagamento'
        'Compet'#234'ncia'
        'Boletos Selecionados')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Text = 'Vencimento'
      Width = 398
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'M'#234's de Refer'#234'ncia'
      CaptionOptions.Layout = clTop
      Control = CbMes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Ano'
      CaptionOptions.Layout = clTop
      Control = CbAno
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'N'#250'mero do Rateio'
      CaptionOptions.Layout = clTop
      Control = EdtNumeroRateio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      Control = RgAgruparPor
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 82
      ControlOptions.OriginalWidth = 167
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = BtnGerarEmails
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 214
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = BtnCancelar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      CaptionOptions.Text = 'Separator'
      Index = 4
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'Modelo dos Emails'
      CaptionOptions.Layout = clTop
      Control = EdtEmailModelo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = LblEmailModelo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Data de Refer'#234'ncia por'
      CaptionOptions.Layout = clTop
      Control = CbReferencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  object PnlAnexos: TPanel
    Left = 220
    Top = 100
    Width = 166
    Height = 82
    Caption = 'Anexos Oculto'
    TabOrder = 1
    Visible = False
  end
  object Anexos: TFDQuery
    Connection = DMBanco.Banco
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select P.CODIGO, P.RAZAOSOCIAL'
      'from PESSOAS P'
      'where (coalesce(P.ATIVO, '#39#39') <> '#39'N'#39')'
      '      and (P.ENVIA_RATEIO_EMAIL = '#39'S'#39')')
    Left = 224
    Top = 136
    object AnexosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object AnexosRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 150
    end
  end
  object DSAnexos: TDataSource
    AutoEdit = False
    DataSet = Anexos
    Left = 252
    Top = 136
  end
  object UCHist_Cadastro: TUCHist_DataSet
    DataSet = Anexos
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK2 = 'CODIGO'
    Left = 280
    Top = 136
  end
end
