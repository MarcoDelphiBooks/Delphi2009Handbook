object FormUniFontSubst: TFormUniFontSubst
  Left = 0
  Top = 0
  Caption = 'UniFontSubst'
  ClientHeight = 206
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnPaintOnce: TButton
    Left = 16
    Top = 8
    Width = 97
    Height = 25
    Caption = 'btnPaintOnce'
    TabOrder = 0
    OnClick = btnPaintOnceClick
  end
  object btnStartTimer: TButton
    Left = 128
    Top = 8
    Width = 97
    Height = 25
    Caption = 'btnStartTimer'
    TabOrder = 1
    OnClick = btnStartTimerClick
  end
  object btnStopTimer: TButton
    Left = 240
    Top = 8
    Width = 97
    Height = 25
    Caption = 'btnStopTimer'
    TabOrder = 2
    OnClick = btnStopTimerClick
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 368
    Top = 8
  end
end
