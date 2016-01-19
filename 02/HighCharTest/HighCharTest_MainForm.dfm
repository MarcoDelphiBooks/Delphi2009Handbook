object FormHighCharTest: TFormHighCharTest
  Left = 0
  Top = 0
  Caption = 'HighCharTest'
  ClientHeight = 292
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
  object btnEuro: TButton
    Left = 8
    Top = 8
    Width = 113
    Height = 25
    Caption = 'btnEuro'
    TabOrder = 0
    OnClick = btnEuroClick
  end
  object Memo1: TMemo
    Left = 136
    Top = 8
    Width = 410
    Height = 276
    TabOrder = 1
  end
  object btnJpn: TButton
    Left = 8
    Top = 40
    Width = 113
    Height = 25
    Caption = 'btnJpn'
    TabOrder = 2
    OnClick = btnJpnClick
  end
  object btnStringLit: TButton
    Left = 16
    Top = 184
    Width = 105
    Height = 25
    Caption = 'btnStringLit'
    TabOrder = 3
    OnClick = btnStringLitClick
  end
end
