object Form30: TForm30
  Left = 0
  Top = 0
  Caption = 'Utf8Test'
  ClientHeight = 348
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnTrivial: TButton
    Left = 24
    Top = 16
    Width = 75
    Height = 25
    Caption = 'btnTrivial'
    TabOrder = 0
    OnClick = btnTrivialClick
  end
  object Memo1: TMemo
    Left = 152
    Top = 16
    Width = 425
    Height = 321
    TabOrder = 1
  end
  object btnAnsi: TButton
    Left = 24
    Top = 56
    Width = 75
    Height = 25
    Caption = 'btnAnsi'
    TabOrder = 2
    OnClick = btnAnsiClick
  end
end
