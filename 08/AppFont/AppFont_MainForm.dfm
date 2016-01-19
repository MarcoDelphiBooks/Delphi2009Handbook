object FormAppFont: TFormAppFont
  Left = 0
  Top = 0
  Caption = 'AppFont'
  ClientHeight = 292
  ClientWidth = 554
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 240
    Top = 40
    Width = 249
    Height = 201
    TabOrder = 0
  end
  object btnScreenFont: TButton
    Left = 56
    Top = 128
    Width = 121
    Height = 25
    Caption = 'btnScreenFont'
    TabOrder = 1
    OnClick = btnScreenFontClick
  end
  object btnGetMyFont: TButton
    Left = 56
    Top = 38
    Width = 121
    Height = 25
    Caption = 'btnGetMyFont'
    TabOrder = 2
    OnClick = btnGetMyFontClick
  end
  object cbUseLatestCommonDialogs: TCheckBox
    Left = 56
    Top = 160
    Width = 145
    Height = 17
    Caption = 'LatestCommonDialogs'
    TabOrder = 3
  end
  object btnChangeFont: TButton
    Left = 56
    Top = 72
    Width = 121
    Height = 25
    Caption = 'btnChangeFont'
    TabOrder = 4
    OnClick = btnChangeFontClick
  end
end
