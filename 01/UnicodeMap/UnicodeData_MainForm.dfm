object Form30: TForm30
  Left = 0
  Top = 0
  Caption = 'UnicodeMap'
  ClientHeight = 600
  ClientWidth = 859
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter
    AlignWithMargins = True
    Left = 311
    Top = 3
    Height = 575
    ExplicitLeft = 440
    ExplicitTop = 272
    ExplicitHeight = 100
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 581
    Width = 859
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Panel2: TPanel
    Left = 317
    Top = 0
    Width = 542
    Height = 581
    Align = alClient
    TabOrder = 1
    ExplicitTop = 23
    ExplicitHeight = 558
    object StringGrid1: TStringGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 534
      Height = 573
      Align = alClient
      ColCount = 17
      DefaultColWidth = 24
      RowCount = 17
      TabOrder = 0
      OnDblClick = StringGrid1DblClick
      OnMouseMove = StringGrid1MouseMove
      ExplicitHeight = 550
    end
  end
  object TreeView1: TTreeView
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 302
    Height = 575
    Align = alLeft
    Indent = 19
    TabOrder = 2
    OnClick = TreeView1Click
    ExplicitTop = 26
    ExplicitHeight = 552
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 432
    Top = 472
  end
end
