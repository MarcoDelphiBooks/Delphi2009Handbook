object FormSimpleClient: TFormSimpleClient
  Left = 0
  Top = 0
  Caption = 'SimpleClient'
  ClientHeight = 244
  ClientWidth = 287
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
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Num1'
  end
  object Label2: TLabel
    Left = 168
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Num2'
  end
  object SpinEdit1: TSpinEdit
    Left = 40
    Top = 48
    Width = 73
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 22
  end
  object Button1: TButton
    Left = 40
    Top = 88
    Width = 75
    Height = 25
    Caption = '&Change'
    Enabled = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Next'
    Enabled = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object SpinEdit2: TSpinEdit
    Left = 168
    Top = 48
    Width = 73
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 22
  end
  object Button3: TButton
    Left = 168
    Top = 88
    Width = 75
    Height = 25
    Caption = 'C&hange'
    Enabled = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 168
    Top = 128
    Width = 75
    Height = 25
    Caption = 'N&ext'
    Enabled = False
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 88
    Top = 176
    Width = 105
    Height = 25
    Caption = 'Compute (Num3)'
    TabOrder = 6
    OnClick = Button5Click
  end
end
