object FormSuperProgress: TFormSuperProgress
  Left = 0
  Top = 0
  Caption = 'SuperProgress'
  ClientHeight = 279
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressBar1: TProgressBar
    Left = 72
    Top = 56
    Width = 289
    Height = 25
    Style = pbstMarquee
    MarqueeInterval = 20
    TabOrder = 0
  end
  object ProgressBar2: TProgressBar
    Left = 72
    Top = 104
    Width = 289
    Height = 25
    Smooth = True
    SmoothReverse = True
    TabOrder = 1
  end
  object ProgressBar3: TProgressBar
    Left = 72
    Top = 152
    Width = 289
    Height = 25
    TabOrder = 2
  end
  object btnLoop: TButton
    Left = 72
    Top = 192
    Width = 75
    Height = 25
    Caption = 'btnLoop'
    TabOrder = 3
    OnClick = btnLoopClick
  end
  object btnJump: TButton
    Left = 184
    Top = 192
    Width = 75
    Height = 25
    Caption = 'btnJump'
    TabOrder = 4
    OnClick = btnJumpClick
  end
  object btnJumpBack: TButton
    Left = 286
    Top = 192
    Width = 75
    Height = 25
    Caption = 'btnJumpBack'
    TabOrder = 5
    OnClick = btnJumpBackClick
  end
  object RadioGroup1: TRadioGroup
    Left = 405
    Top = 64
    Width = 116
    Height = 97
    Caption = 'ProgressBar2 State'
    ItemIndex = 0
    Items.Strings = (
      'Normal'
      'Error'
      'Paused')
    TabOrder = 6
    OnClick = RadioGroup1Click
  end
end
