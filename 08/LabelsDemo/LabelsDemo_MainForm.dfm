object FormLabelsDemo: TFormLabelsDemo
  Left = 0
  Top = 0
  Caption = 'LabelsDemo'
  ClientHeight = 149
  ClientWidth = 536
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.Enabled = True
  GlassFrame.Top = 40
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 8
    Width = 153
    Height = 27
    Caption = 'A Glowing Label'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    GlowSize = 1
    ParentFont = False
  end
  object Label2: TLabel
    Left = 304
    Top = 8
    Width = 161
    Height = 25
    Caption = 'A Standard Label'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LinkLabel1: TLinkLabel
    Left = 56
    Top = 88
    Width = 163
    Height = 29
    Caption = 'A link to <a href="http://blog.marcocantu.com">my blog</a>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnLinkClick = LinkLabel1LinkClick
  end
  object LinkLabel2: TLinkLabel
    Left = 304
    Top = 88
    Width = 120
    Height = 19
    Caption = 'A new link to <a href="http://blog.marcocantu.com">my blog</a>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseVisualStyle = True
    OnLinkClick = LinkLabel1LinkClick
  end
end
