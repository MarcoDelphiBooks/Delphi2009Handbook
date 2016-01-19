object FormResourceTest: TFormResourceTest
  Left = 0
  Top = 0
  Caption = 'ResourceTest'
  ClientHeight = 289
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    440
    289)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 40
    Top = 56
    Width = 359
    Height = 198
    Anchors = [akLeft, akTop, akRight, akBottom]
    ExplicitWidth = 473
    ExplicitHeight = 201
  end
  object btnIcon: TButton
    Left = 40
    Top = 16
    Width = 75
    Height = 25
    Caption = 'btnIcon'
    TabOrder = 0
    OnClick = btnIconClick
  end
  object btnGif: TButton
    Left = 128
    Top = 16
    Width = 75
    Height = 25
    Caption = 'btnBmp'
    TabOrder = 1
    OnClick = btnGifClick
  end
  object btnResString: TButton
    Left = 216
    Top = 16
    Width = 89
    Height = 25
    Caption = 'btnResString'
    TabOrder = 2
    OnClick = btnResStringClick
  end
end
