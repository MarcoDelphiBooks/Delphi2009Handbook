object FormRawTest: TFormRawTest
  Left = 0
  Top = 0
  Caption = 'RawTest'
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
  object btnRawLat: TButton
    Left = 8
    Top = 88
    Width = 105
    Height = 25
    Caption = 'btnRawLat'
    TabOrder = 0
    OnClick = btnRawLatClick
  end
  object Memo1: TMemo
    Left = 128
    Top = 8
    Width = 417
    Height = 276
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnConvert: TButton
    Left = 8
    Top = 192
    Width = 105
    Height = 25
    Caption = 'btnConvert'
    TabOrder = 2
    OnClick = btnConvertClick
  end
  object btnRawCyr: TButton
    Left = 8
    Top = 119
    Width = 105
    Height = 25
    Caption = 'btnRawCyr'
    TabOrder = 3
    OnClick = btnRawCyrClick
  end
  object btnRawAnsi: TButton
    Left = 8
    Top = 8
    Width = 105
    Height = 25
    Caption = 'btnRawAnsi'
    TabOrder = 4
    OnClick = btnRawAnsiClick
  end
  object btnRawUTF8: TButton
    Left = 8
    Top = 40
    Width = 105
    Height = 25
    Caption = 'btnRawUTF8'
    TabOrder = 5
    OnClick = btnRawUTF8Click
  end
end
