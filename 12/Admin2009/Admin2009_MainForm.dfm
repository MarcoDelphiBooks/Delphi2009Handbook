object FormAdmin: TFormAdmin
  Left = 0
  Top = 0
  Caption = 'Admin2009'
  ClientHeight = 345
  ClientWidth = 844
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnGetPlatformName: TButton
    Left = 24
    Top = 22
    Width = 146
    Height = 25
    Caption = 'btnGetPlatformName'
    TabOrder = 0
    OnClick = btnGetPlatformNameClick
  end
  object btnGetClasses: TButton
    Left = 24
    Top = 72
    Width = 146
    Height = 25
    Caption = 'btnGetClasses'
    TabOrder = 1
    OnClick = btnGetClassesClick
  end
  object btnGetMethods: TButton
    Left = 24
    Top = 128
    Width = 146
    Height = 25
    Caption = 'btnGetMethods'
    TabOrder = 2
    OnClick = btnGetMethodsClick
  end
  object DBGrid1: TDBGrid
    Left = 200
    Top = 25
    Width = 617
    Height = 296
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'Datasnap'
    LoginPrompt = False
    Connected = True
    Left = 688
    Top = 64
  end
  object smGetPlatformName: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 2000
      end>
    SQLConnection = SQLConnection1
    ServerMethodName = 'DSAdmin.GetPlatformName'
    Left = 320
    Top = 64
  end
  object smGetServerClasses: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftDataSet
        ParamType = ptResult
        Value = 'TDataSet'
      end>
    SQLConnection = SQLConnection1
    ServerMethodName = 'DSAdmin.GetServerClasses'
    Left = 432
    Top = 64
  end
  object smGetMethods: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftDataSet
        ParamType = ptResult
        Value = 'TDataSet'
      end>
    SQLConnection = SQLConnection1
    ServerMethodName = 'DSAdmin.GetServerMethods'
    Left = 544
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 240
    Top = 224
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 240
    Top = 176
  end
  object DataSetProvider1: TDataSetProvider
    Left = 240
    Top = 120
  end
end
