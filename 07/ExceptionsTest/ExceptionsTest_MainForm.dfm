object FormExceptions: TFormExceptions
  Left = 0
  Top = 0
  Caption = 'ExceptionsTest'
  ClientHeight = 285
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnCallNested: TButton
    Left = 24
    Top = 55
    Width = 95
    Height = 24
    Caption = 'btnCallNested'
    TabOrder = 0
    OnClick = btnCallNestedClick
  end
  object Memo1: TMemo
    Left = 136
    Top = 16
    Width = 393
    Height = 249
    TabOrder = 1
  end
  object btnTwoNested: TButton
    Left = 24
    Top = 96
    Width = 95
    Height = 25
    Caption = 'btnTwoNested'
    TabOrder = 2
    OnClick = btnTwoNestedClick
  end
  object btnRaising: TButton
    Left = 24
    Top = 144
    Width = 95
    Height = 25
    Caption = 'btnRaising'
    TabOrder = 3
    OnClick = btnRaisingClick
  end
  object btnNotFound: TButton
    Left = 24
    Top = 192
    Width = 95
    Height = 25
    Caption = 'btnNotFound'
    TabOrder = 4
    OnClick = btnNotFoundClick
  end
  object btnTraditional: TButton
    Left = 24
    Top = 24
    Width = 95
    Height = 25
    Caption = 'btnTraditional'
    TabOrder = 5
    OnClick = btnTraditionalClick
  end
end
