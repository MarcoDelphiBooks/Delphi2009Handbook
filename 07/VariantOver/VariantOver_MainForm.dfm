object FormVariantOver: TFormVariantOver
  Left = 0
  Top = 0
  Caption = 'VariantOver'
  ClientHeight = 259
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnAmbigousVariant: TButton
    Left = 16
    Top = 16
    Width = 129
    Height = 25
    Caption = 'btnAmbigousVariant'
    TabOrder = 0
    OnClick = btnAmbigousVariantClick
  end
  object btnInterface: TButton
    Left = 16
    Top = 56
    Width = 129
    Height = 25
    Caption = 'btnInterface'
    TabOrder = 1
    OnClick = btnInterfaceClick
  end
  object btnRecordFromVariant: TButton
    Left = 16
    Top = 96
    Width = 129
    Height = 25
    Caption = 'btnRecordFromVariant'
    TabOrder = 2
    OnClick = btnRecordFromVariantClick
  end
  object Memo1: TMemo
    Left = 160
    Top = 16
    Width = 433
    Height = 225
    TabOrder = 3
  end
end
