object FormRadioGroupDemo: TFormRadioGroupDemo
  Left = 0
  Top = 0
  Caption = 'RadioGroupDemo'
  ClientHeight = 275
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 8
    Width = 329
    Height = 105
    Caption = 'RadioGroup1'
    Items.Strings = (
      'an option with a long text'
      'one with an even longer one, that wraps'
      'short option'
      'another very long option that better wraps to a new line')
    TabOrder = 0
  end
  object RadioGroup2: TRadioGroup
    Left = 8
    Top = 128
    Width = 185
    Height = 129
    Caption = 'RadioGroup2'
    Items.Strings = (
      'an option with a long text'
      'one with an even longer one, that wraps'
      'short option'
      'another very long option that better wraps to a new line')
    TabOrder = 1
    WordWrap = True
  end
  object RadioGroup3: TRadioGroup
    Left = 208
    Top = 128
    Width = 129
    Height = 129
    Caption = 'RadioGroup3'
    Items.Strings = (
      'an option with a long text'
      'one with an even longer one, that wraps'
      'short option'
      'another very long option that better wraps to a new line')
    TabOrder = 2
    WordWrap = True
  end
end
