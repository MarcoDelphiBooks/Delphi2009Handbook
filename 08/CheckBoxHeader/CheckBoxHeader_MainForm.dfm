object FormCheckBoxHeader: TFormCheckBoxHeader
  Left = 0
  Top = 0
  Caption = 'CheckBoxHeader'
  ClientHeight = 179
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object HeaderControl1: THeaderControl
    Left = 0
    Top = 0
    Width = 283
    Height = 25
    Sections = <
      item
        AutoSize = True
        CheckBox = True
        ImageIndex = -1
        Text = 'one'
        Width = 73
      end
      item
        AutoSize = True
        CheckBox = True
        Checked = True
        ImageIndex = -1
        Text = 'two'
        Width = 70
      end
      item
        AutoSize = True
        CheckBox = True
        ImageIndex = -1
        Text = 'three'
        Width = 70
      end
      item
        AutoSize = True
        CheckBox = True
        ImageIndex = -1
        Text = 'four'
        Width = 70
      end>
    OnSectionCheck = HeaderControl1SectionCheck
    CheckBoxes = True
  end
  object Memo1: TMemo
    Left = 0
    Top = 25
    Width = 283
    Height = 154
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
end
