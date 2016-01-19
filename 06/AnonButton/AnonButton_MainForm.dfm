object FormAnonButton: TFormAnonButton
  Left = 0
  Top = 0
  Caption = 'AnonButton'
  ClientHeight = 276
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnMouseDown = FormMouseDown
  PixelsPerInch = 96
  TextHeight = 13
  object btnInvoke: TButton
    Left = 168
    Top = 80
    Width = 75
    Height = 25
    Caption = 'btnInvoke'
    TabOrder = 0
  end
  object btnAssign: TButton
    Left = 64
    Top = 64
    Width = 75
    Height = 25
    Caption = 'btnAssign'
    TabOrder = 1
    OnClick = btnAssignClick
  end
  object btnKeepRef: TButton
    Left = 64
    Top = 96
    Width = 75
    Height = 25
    Caption = 'btnKeepRef'
    TabOrder = 2
    OnClick = btnKeepRefClick
  end
  object btnLeftInvokeForm: TButton
    Left = 32
    Top = 168
    Width = 211
    Height = 25
    Caption = 'btnLeftInvokeForm'
    TabOrder = 3
  end
  object btnRightInvokeForm: TButton
    Left = 64
    Top = 199
    Width = 217
    Height = 25
    Caption = 'btnRightInvokeForm'
    TabOrder = 4
  end
end
