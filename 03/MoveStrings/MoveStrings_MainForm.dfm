object FormMoveStrings: TFormMoveStrings
  Left = 0
  Top = 0
  Caption = 'MoveStrings'
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
    Left = 120
    Top = 8
    Width = 425
    Height = 273
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object btnMoveFailure: TButton
    Left = 8
    Top = 8
    Width = 97
    Height = 25
    Caption = 'btnMoveFailure'
    TabOrder = 1
    OnClick = btnMoveFailureClick
  end
  object btnRowByte: TButton
    Left = 8
    Top = 40
    Width = 97
    Height = 25
    Caption = 'btnRowByte'
    TabOrder = 2
    OnClick = btnRowByteClick
  end
end
