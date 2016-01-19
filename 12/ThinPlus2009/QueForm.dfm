object FormQuery: TFormQuery
  Left = 265
  Top = 137
  Caption = 'FormQuery'
  ClientHeight = 252
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 288
    Top = 24
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 48
    Width = 417
    Height = 201
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object btnParam: TButton
    Left = 184
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Apply Param'
    TabOrder = 1
    OnClick = btnParamClick
  end
  object ComboBox1: TComboBox
    Left = 40
    Top = 16
    Width = 121
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'Eng'
      'VP'
      'Mktg'
      'Mngr'
      'Admin'
      'Finan'
      'Sales'
      'CEO'
      'Dir'
      'SRep'
      'Doc'
      'PRel')
  end
  object cdsQuery: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Country'
        ParamType = ptUnknown
        Value = 'US'
      end>
    ProviderName = 'ProviderQuery'
    RemoteServer = ClientForm.DSProviderConnection1
    Left = 320
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = cdsQuery
    Left = 376
    Top = 16
  end
end
