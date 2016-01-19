object FormListMonitor: TFormListMonitor
  Left = 0
  Top = 0
  Caption = 'ListMonitor'
  ClientHeight = 313
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 24
    Top = 72
    Width = 169
    Height = 201
    ItemHeight = 13
    TabOrder = 0
  end
  object ListBox2: TListBox
    Left = 224
    Top = 72
    Width = 169
    Height = 201
    ItemHeight = 13
    TabOrder = 1
  end
  object ListBox3: TListBox
    Left = 424
    Top = 72
    Width = 169
    Height = 201
    ItemHeight = 13
    TabOrder = 2
  end
  object btnStartThreads: TButton
    Left = 24
    Top = 24
    Width = 169
    Height = 25
    Caption = 'btnStartThreads'
    TabOrder = 3
    OnClick = btnStartThreadsClick
  end
  object btnStatus: TButton
    Left = 224
    Top = 24
    Width = 169
    Height = 25
    Caption = 'btnStatus'
    TabOrder = 4
    OnClick = btnStatusClick
  end
end
