object Form30: TForm30
  Left = 0
  Top = 0
  Caption = 'UnicodeWinApi'
  ClientHeight = 363
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnMessageA: TButton
    Left = 104
    Top = 64
    Width = 105
    Height = 25
    Caption = 'MessageBox'
    TabOrder = 0
    OnClick = btnMessageAClick
  end
  object btnMessageW: TButton
    Left = 104
    Top = 120
    Width = 105
    Height = 25
    Caption = 'MessageBoxW'
    TabOrder = 1
    OnClick = btnMessageWClick
  end
  object btnTextOut: TButton
    Left = 104
    Top = 184
    Width = 105
    Height = 25
    Caption = 'TextOut'
    TabOrder = 2
    OnClick = btnTextOutClick
  end
end
