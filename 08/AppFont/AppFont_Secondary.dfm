object FormSecondary: TFormSecondary
  Left = 0
  Top = 0
  Caption = 'Secondary'
  ClientHeight = 292
  ClientWidth = 554
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 40
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 80
    Top = 64
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Edit1: TEdit
    Left = 136
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object btnGetMyFont: TButton
    Left = 136
    Top = 96
    Width = 121
    Height = 25
    Caption = 'btnGetMyFont'
    TabOrder = 1
    OnClick = btnGetMyFontClick
  end
end
