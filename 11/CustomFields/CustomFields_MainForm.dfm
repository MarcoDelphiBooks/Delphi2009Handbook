object FormCustomFields: TFormCustomFields
  Left = 0
  Top = 0
  Caption = 'CustomFields'
  ClientHeight = 386
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 21
    Width = 631
    Height = 276
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 631
    Height = 21
    AutoSize = True
    ButtonHeight = 21
    ButtonWidth = 97
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 1
    object btnOpen: TToolButton
      AlignWithMargins = True
      Left = 0
      Top = 0
      Caption = 'Open'
      ImageIndex = 0
      OnClick = btnOpenClick
    end
    object btnFieldDef: TToolButton
      Left = 97
      Top = 0
      Caption = 'Get Field Definition'
      ImageIndex = 1
      OnClick = btnFieldDefClick
    end
    object btnField: TToolButton
      Left = 194
      Top = 0
      Caption = 'Get Field Class'
      ImageIndex = 2
      OnClick = btnFieldClick
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 297
    Width = 631
    Height = 89
    Align = alBottom
    TabOrder = 2
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 208
    Top = 208
  end
end
