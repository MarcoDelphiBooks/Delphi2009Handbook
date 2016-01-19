object FormAnonTiming: TFormAnonTiming
  Left = 0
  Top = 0
  Caption = 'AnonTiming'
  ClientHeight = 332
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnClassic: TButton
    Left = 48
    Top = 32
    Width = 75
    Height = 25
    Caption = 'btnClassic'
    TabOrder = 0
    OnClick = btnClassicClick
  end
  object Memo1: TMemo
    Left = 184
    Top = 32
    Width = 417
    Height = 273
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object btnAnon: TButton
    Left = 48
    Top = 72
    Width = 75
    Height = 25
    Caption = 'btnAnon'
    TabOrder = 2
    OnClick = btnAnonClick
  end
  object btnTicks: TButton
    Left = 48
    Top = 112
    Width = 75
    Height = 25
    Caption = 'btnTicks'
    TabOrder = 3
    OnClick = btnTicksClick
  end
end
