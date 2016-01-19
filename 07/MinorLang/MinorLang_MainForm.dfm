object FormMinorLang: TFormMinorLang
  Left = 0
  Top = 0
  Caption = 'MinorLang'
  ClientHeight = 292
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object btnVersion: TButton
    Left = 24
    Top = 16
    Width = 97
    Height = 25
    Caption = 'btnVersion'
    TabOrder = 0
    OnClick = btnVersionClick
  end
  object btnFindExit: TButton
    Left = 24
    Top = 73
    Width = 97
    Height = 25
    Caption = 'btnFindExit'
    TabOrder = 1
    OnClick = btnFindExitClick
  end
  object btnExitValue: TButton
    Left = 24
    Top = 104
    Width = 97
    Height = 25
    Caption = 'btnExitValue'
    TabOrder = 2
    OnClick = btnExitValueClick
  end
  object btnDepracated: TButton
    Left = 24
    Top = 168
    Width = 97
    Height = 25
    Caption = 'btnDepracated'
    TabOrder = 3
    OnClick = btnDepracatedClick
  end
end
