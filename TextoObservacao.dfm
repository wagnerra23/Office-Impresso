object FrmObservacao: TFrmObservacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Observa'#231#227'o'
  ClientHeight = 239
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 512
    Height = 239
    Align = alClient
    TabOrder = 0
    object MemoObservacao: TcxMemo
      Left = 10
      Top = 28
      Properties.OnChange = MemoObservacaoPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Height = 158
      Width = 492
    end
    object BtnCancelar: TcxButton
      Left = 296
      Top = 204
      Width = 100
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = FrmPrincipal.ImgListBotoes16
      TabOrder = 1
    end
    object BtnConfirmar: TcxButton
      Left = 402
      Top = 204
      Width = 100
      Height = 25
      Caption = 'Confirmar'
      ModalResult = 1
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = FrmPrincipal.ImgListBotoes16
      TabOrder = 2
    end
    object LbCaracteres: TcxLabel
      Left = 10
      Top = 204
      Caption = 'LbCaracteres'
      Style.HotTrack = False
      Transparent = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object LiMemoObservacao: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Informe uma Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = MemoObservacao
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Visible = False
      Control = BtnCancelar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = BtnConfirmar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object LiLbCaracteres: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = LbCaracteres
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 68
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
end
