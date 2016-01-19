object FormEditFamily: TFormEditFamily
  Left = 0
  Top = 0
  Caption = 'EditFamilyDemo'
  ClientHeight = 292
  ClientWidth = 383
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 27
    Top = 216
    Width = 76
    Height = 13
    Caption = 'Password Char:'
  end
  object Label2: TLabel
    Left = 24
    Top = 160
    Width = 71
    Height = 13
    Caption = 'Numbers Only:'
  end
  object Label3: TLabel
    Left = 24
    Top = 101
    Width = 48
    Height = 13
    Caption = 'Text Hint:'
  end
  object Label4: TLabel
    Left = 24
    Top = 16
    Width = 79
    Height = 13
    Caption = 'Right Alignment:'
  end
  object edRightAlign: TEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    Alignment = taRightJustify
    TabOrder = 0
    Text = 'Text on the right'
  end
  object edNumber: TEdit
    Left = 24
    Top = 176
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    Text = '3'
  end
  object memoLowercase: TMemo
    Left = 184
    Top = 120
    Width = 169
    Height = 133
    CharCase = ecLowerCase
    Lines.Strings = (
      'this is some text')
    TabOrder = 2
  end
  object cbTextHint: TComboBox
    Left = 184
    Top = 16
    Width = 169
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    TextHint = 'Pick a City'
    Items.Strings = (
      'Rome'
      'Paris'
      'Amsterdam'
      'London'
      'Washington'
      'Maxico City'
      'Brasilia'
      'Buenos Aires'
      'Bejing'
      'Tokio'
      'Camberra'
      'Kuala Lumpur')
  end
  object btnUpcase: TButton
    Left = 232
    Top = 83
    Width = 75
    Height = 25
    Caption = 'btnUpcase'
    TabOrder = 4
    OnClick = btnUpcaseClick
  end
  object btnAlign: TButton
    Left = 48
    Top = 59
    Width = 75
    Height = 25
    Caption = 'btnAlign'
    TabOrder = 5
    OnClick = btnAlignClick
  end
  object edTextHint: TEdit
    Left = 24
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 6
    TextHint = 'Your name'
  end
  object edPassword: TEdit
    Left = 27
    Top = 232
    Width = 121
    Height = 21
    PasswordChar = #9632
    TabOrder = 7
    Text = 'password'
  end
end
