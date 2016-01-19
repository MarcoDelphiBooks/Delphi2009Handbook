object FormCustomEncoding: TFormCustomEncoding
  Left = 0
  Top = 0
  Caption = 'CustomEncoding'
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
  object Memo1: TMemo
    Left = 184
    Top = 8
    Width = 353
    Height = 265
    TabOrder = 0
  end
  object btnTestEncoding1: TButton
    Left = 16
    Top = 8
    Width = 129
    Height = 25
    Caption = 'btnTestEncoding1'
    TabOrder = 1
    OnClick = btnTestEncoding1Click
  end
  object btnTestEncoding2: TButton
    Left = 16
    Top = 39
    Width = 129
    Height = 25
    Caption = 'btnTestEncoding2'
    TabOrder = 2
    OnClick = btnTestEncoding2Click
  end
  object btnMismatch: TButton
    Left = 16
    Top = 70
    Width = 129
    Height = 25
    Caption = 'btnMismatch'
    TabOrder = 3
    OnClick = btnMismatchClick
  end
end
