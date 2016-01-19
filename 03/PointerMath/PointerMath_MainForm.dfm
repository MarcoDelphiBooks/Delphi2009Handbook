object FormPointerMath: TFormPointerMath
  Left = 0
  Top = 0
  Caption = 'PointerMath'
  ClientHeight = 354
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 176
    Top = 16
    Width = 433
    Height = 321
    TabOrder = 0
  end
  object btnPChar: TButton
    Left = 16
    Top = 16
    Width = 137
    Height = 25
    Caption = 'btnPChar'
    TabOrder = 1
    OnClick = btnPCharClick
  end
  object btnPByte: TButton
    Left = 16
    Top = 48
    Width = 137
    Height = 25
    Caption = 'btnPByte'
    TabOrder = 2
    OnClick = btnPByteClick
  end
  object btnPInteger: TButton
    Left = 16
    Top = 80
    Width = 137
    Height = 25
    Caption = 'btnPInteger'
    TabOrder = 3
    OnClick = btnPIntegerClick
  end
  object Table1: TTable
    Left = 312
    Top = 184
  end
end
