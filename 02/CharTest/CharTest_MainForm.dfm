object FormCharTest: TFormCharTest
  Left = 0
  Top = 0
  Caption = 'CharTest'
  ClientHeight = 375
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnInc: TButton
    Left = 8
    Top = 25
    Width = 97
    Height = 25
    Caption = 'btnInc'
    TabOrder = 0
    OnClick = btnIncClick
  end
  object Memo1: TMemo
    Left = 111
    Top = 25
    Width = 435
    Height = 336
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnFor: TButton
    Left = 8
    Top = 56
    Width = 97
    Height = 25
    Caption = 'btnFor'
    TabOrder = 2
    OnClick = btnForClick
  end
  object btnSet: TButton
    Left = 8
    Top = 95
    Width = 97
    Height = 25
    Caption = 'btnSet'
    TabOrder = 3
    OnClick = btnSetClick
  end
  object btnUpcase: TButton
    Left = 8
    Top = 160
    Width = 97
    Height = 25
    Caption = 'btnUpcase'
    TabOrder = 4
    OnClick = btnUpcaseClick
  end
  object btnUTF16: TButton
    Left = 8
    Top = 200
    Width = 97
    Height = 25
    Caption = 'btnUTF16'
    TabOrder = 5
    OnClick = btnUTF16Click
  end
end
