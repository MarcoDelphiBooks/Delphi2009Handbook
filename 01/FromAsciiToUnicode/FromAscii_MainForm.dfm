object Form30: TForm30
  Left = 0
  Top = 0
  Caption = 'FromAsciiToUnicode'
  ClientHeight = 522
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Lucida Sans Unicode'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object StatusBar1: TStatusBar
    Left = 0
    Top = 503
    Width = 648
    Height = 19
    Panels = <>
    SimplePanel = True
    ExplicitTop = 433
    ExplicitWidth = 577
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 145
    Height = 503
    Align = alLeft
    TabOrder = 1
    ExplicitHeight = 433
    DesignSize = (
      145
      503)
    object btnAscii7: TButton
      Left = 16
      Top = 16
      Width = 105
      Height = 25
      Caption = 'Ascii-7'
      TabOrder = 0
      OnClick = btnAscii7Click
    end
    object btnUnicode: TButton
      Tag = 1
      Left = 16
      Top = 98
      Width = 105
      Height = 25
      Caption = 'Unicode 32-256'
      TabOrder = 1
      OnClick = btnUnicodeClick
    end
    object btnEuro: TButton
      Left = 16
      Top = 464
      Width = 105
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Euro'
      TabOrder = 2
      OnClick = btnEuroClick
      ExplicitTop = 394
    end
    object btnAscii8: TButton
      Left = 16
      Top = 56
      Width = 105
      Height = 25
      Caption = 'Ascii-8'
      TabOrder = 3
      OnClick = btnAscii8Click
    end
    object btnGrapheme: TButton
      Left = 16
      Top = 360
      Width = 105
      Height = 25
      Caption = 'btnGrapheme'
      TabOrder = 4
      OnClick = btnGraphemeClick
    end
  end
  object Panel2: TPanel
    Left = 145
    Top = 0
    Width = 503
    Height = 503
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 432
    ExplicitHeight = 433
    object StringGrid1: TStringGrid
      Left = 1
      Top = 1
      Width = 501
      Height = 501
      Align = alClient
      ColCount = 17
      DefaultColWidth = 28
      DefaultRowHeight = 28
      RowCount = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnMouseMove = StringGrid1MouseMove
      ExplicitWidth = 430
      ExplicitHeight = 431
    end
  end
end
