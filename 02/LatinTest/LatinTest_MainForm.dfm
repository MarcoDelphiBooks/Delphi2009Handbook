object FormLatinTest: TFormLatinTest
  Left = 0
  Top = 0
  Caption = 'LatinTest'
  ClientHeight = 292
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnNewType: TButton
    Left = 16
    Top = 8
    Width = 122
    Height = 25
    Caption = 'btnNewType'
    TabOrder = 0
    OnClick = btnNewTypeClick
  end
  object Memo1: TMemo
    Left = 144
    Top = 8
    Width = 449
    Height = 273
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Lucida Console'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnCompareCharSet: TButton
    Left = 16
    Top = 71
    Width = 122
    Height = 25
    Caption = 'btnCompareCharSet'
    TabOrder = 2
    OnClick = btnCompareCharSetClick
  end
  object btnCyrillic: TButton
    Left = 16
    Top = 40
    Width = 122
    Height = 25
    Caption = 'btnCyrillic'
    TabOrder = 3
    OnClick = btnCyrillicClick
  end
end
