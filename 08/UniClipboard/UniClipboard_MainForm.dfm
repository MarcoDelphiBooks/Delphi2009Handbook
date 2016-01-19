object FormUniClipboard: TFormUniClipboard
  Left = 0
  Top = 0
  Caption = 'UniClipboard'
  ClientHeight = 322
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnCopy: TButton
    Left = 80
    Top = 72
    Width = 91
    Height = 25
    Caption = 'btnCopy'
    TabOrder = 0
    OnClick = btnCopyClick
  end
  object Edit1: TEdit
    Left = 192
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 192
    Top = 104
    Width = 185
    Height = 145
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object btnJapanese: TButton
    Left = 80
    Top = 104
    Width = 91
    Height = 25
    Caption = 'btnJapanese'
    TabOrder = 3
    OnClick = btnJapaneseClick
  end
  object btnPaste: TButton
    Left = 80
    Top = 135
    Width = 91
    Height = 25
    Caption = 'btnPaste'
    TabOrder = 4
    OnClick = btnPasteClick
  end
  object btnWinVersion: TButton
    Left = 80
    Top = 224
    Width = 91
    Height = 25
    Caption = 'btnWinVersion'
    TabOrder = 5
    OnClick = btnWinVersionClick
  end
end
