object FrmMsgConSpc: TFrmMsgConSpc
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'SPC'
  ClientHeight = 71
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 140
    Top = 3
    Width = 13
    Height = 67
    Shape = bsLeftLine
  end
  object BitBtn1: TBitBtn
    Left = 6
    Top = 34
    Width = 128
    Height = 25
    Caption = 'O Cliente foi &removido'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 6
    Top = 8
    Width = 128
    Height = 25
    Caption = 'O Cliente foi &incluso'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 150
    Top = 8
    Width = 127
    Height = 25
    Caption = 'Apenas &Consulta'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object CkRegistradoSpc: TCheckBox
    Left = 151
    Top = 38
    Width = 127
    Height = 17
    Caption = 'Consta registro no &SPC'
    TabOrder = 3
  end
end
