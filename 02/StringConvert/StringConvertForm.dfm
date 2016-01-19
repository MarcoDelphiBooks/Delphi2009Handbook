object FormStringConvert: TFormStringConvert
  Left = 0
  Top = 0
  Caption = 'StringConvert'
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
  object btnLatin1: TButton
    Left = 8
    Top = 8
    Width = 97
    Height = 25
    Caption = 'btnLatin1'
    TabOrder = 0
    OnClick = btnLatin1Click
  end
  object Memo1: TMemo
    Left = 120
    Top = 8
    Width = 425
    Height = 276
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object btnConcat: TButton
    Left = 8
    Top = 39
    Width = 97
    Height = 25
    Caption = 'btnConcat'
    TabOrder = 2
    OnClick = btnConcatClick
  end
  object btnWarning: TButton
    Left = 8
    Top = 101
    Width = 97
    Height = 25
    Caption = 'btnWarning'
    TabOrder = 3
    OnClick = btnWarningClick
  end
  object btnToFile: TButton
    Left = 8
    Top = 208
    Width = 97
    Height = 25
    Caption = 'btnToFile'
    TabOrder = 4
    OnClick = btnToFileClick
  end
  object btnFromFile: TButton
    Left = 8
    Top = 239
    Width = 97
    Height = 25
    Caption = 'btnFromFile'
    TabOrder = 5
    OnClick = btnFromFileClick
  end
  object Button1: TButton
    Left = 8
    Top = 70
    Width = 97
    Height = 25
    Caption = 'btnAnsiUpper'
    TabOrder = 6
    OnClick = Button1Click
  end
  object btnEnsure: TButton
    Left = 8
    Top = 152
    Width = 97
    Height = 25
    Caption = 'btnEnsure'
    TabOrder = 7
    OnClick = btnEnsureClick
  end
end
