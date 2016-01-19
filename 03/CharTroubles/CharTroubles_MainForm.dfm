object FormCharTroubles: TFormCharTroubles
  Left = 0
  Top = 0
  Caption = 'CharTroubles'
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
  object btnCharSet: TButton
    Left = 8
    Top = 8
    Width = 83
    Height = 25
    Caption = 'btnCharSet'
    TabOrder = 0
    OnClick = btnCharSetClick
  end
  object Memo1: TMemo
    Left = 97
    Top = 8
    Width = 449
    Height = 276
    TabOrder = 1
  end
  object btnFillChar: TButton
    Left = 8
    Top = 40
    Width = 83
    Height = 25
    Caption = 'btnFillChar'
    TabOrder = 2
    OnClick = btnFillCharClick
  end
end
