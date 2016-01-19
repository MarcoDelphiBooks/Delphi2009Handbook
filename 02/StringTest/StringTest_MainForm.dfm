object FormStringTest: TFormStringTest
  Left = 0
  Top = 0
  Caption = 'StringTest'
  ClientHeight = 330
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 14
    Width = 131
    Height = 25
    Caption = 'btnSizeAndLength'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 160
    Top = 16
    Width = 361
    Height = 289
    TabOrder = 1
  end
  object btnSurrogate: TButton
    Left = 8
    Top = 64
    Width = 131
    Height = 25
    Caption = 'btnSurrogate'
    TabOrder = 2
    OnClick = btnSurrogateClick
  end
  object btnSurrogateLoop: TButton
    Left = 8
    Top = 112
    Width = 131
    Height = 25
    Caption = 'btnSurrogateLoop'
    TabOrder = 3
    OnClick = btnSurrogateLoopClick
  end
  object Button2: TButton
    Left = 8
    Top = 200
    Width = 131
    Height = 25
    Caption = 'chatobytelen ***'
    TabOrder = 4
    OnClick = Button2Click
  end
end
