object FormStreamTroubles: TFormStreamTroubles
  Left = 0
  Top = 0
  Caption = 'StreamTroubles'
  ClientHeight = 593
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 121
    Top = 25
    Width = 425
    Height = 249
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 120
    Top = 280
    Width = 425
    Height = 297
    Lines.Strings = (
      'Memo2')
    TabOrder = 1
  end
  object btnTrouble: TButton
    Left = 16
    Top = 22
    Width = 75
    Height = 25
    Caption = 'btnTrouble'
    TabOrder = 2
    OnClick = btnTroubleClick
  end
  object btnFix: TButton
    Left = 16
    Top = 56
    Width = 75
    Height = 25
    Caption = 'btnFix'
    TabOrder = 3
    OnClick = btnFixClick
  end
end
