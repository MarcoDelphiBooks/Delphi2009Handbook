object FormDbEditPlus: TFormDbEditPlus
  Left = 0
  Top = 0
  Caption = 'DbEditPlus'
  ClientHeight = 547
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 16
    Width = 35
    Height = 13
    Caption = 'CustNo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 88
    Top = 56
    Width = 45
    Height = 13
    Caption = 'Company'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 88
    Top = 96
    Width = 29
    Height = 13
    Caption = 'Addr1'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 88
    Top = 136
    Width = 29
    Height = 13
    Caption = 'Addr2'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 88
    Top = 176
    Width = 19
    Height = 13
    Caption = 'City'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 88
    Top = 216
    Width = 26
    Height = 13
    Caption = 'State'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 88
    Top = 256
    Width = 14
    Height = 13
    Caption = 'Zip'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 88
    Top = 296
    Width = 39
    Height = 13
    Caption = 'Country'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 88
    Top = 336
    Width = 30
    Height = 13
    Caption = 'Phone'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 88
    Top = 376
    Width = 19
    Height = 13
    Caption = 'FAX'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 88
    Top = 416
    Width = 41
    Height = 13
    Caption = 'TaxRate'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 88
    Top = 456
    Width = 38
    Height = 13
    Caption = 'Contact'
    FocusControl = DBEdit12
  end
  object Label13: TLabel
    Left = 88
    Top = 496
    Width = 78
    Height = 13
    Caption = 'LastInvoiceDate'
    FocusControl = DBEdit13
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 32
    Width = 134
    Height = 21
    DataField = 'CustNo'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 72
    Width = 394
    Height = 21
    DataField = 'Company'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 88
    Top = 112
    Width = 394
    Height = 21
    DataField = 'Addr1'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 88
    Top = 152
    Width = 394
    Height = 21
    DataField = 'Addr2'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 88
    Top = 192
    Width = 199
    Height = 21
    DataField = 'City'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 88
    Top = 232
    Width = 264
    Height = 21
    DataField = 'State'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 88
    Top = 272
    Width = 134
    Height = 21
    DataField = 'Zip'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 88
    Top = 312
    Width = 264
    Height = 21
    DataField = 'Country'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 88
    Top = 352
    Width = 199
    Height = 21
    DataField = 'Phone'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 88
    Top = 392
    Width = 199
    Height = 21
    DataField = 'FAX'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 88
    Top = 432
    Width = 134
    Height = 21
    DataField = 'TaxRate'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 88
    Top = 472
    Width = 264
    Height = 21
    DataField = 'Contact'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit13: TDBEdit
    Left = 88
    Top = 512
    Width = 238
    Height = 21
    DataField = 'LastInvoiceDate'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBNavigator1: TDBNavigator
    Left = 242
    Top = 29
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 13
  end
  object btnTextHint: TButton
    Left = 488
    Top = 152
    Width = 85
    Height = 21
    Caption = 'btnTextHint'
    TabOrder = 14
    OnClick = btnTextHintClick
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FileName = 'C:\Program Files\Common Files\CodeGear Shared\Data\customer.cds'
    Params = <>
    Left = 32
    Top = 16
    object ClientDataSet1CustNo: TFloatField
      FieldName = 'CustNo'
    end
    object ClientDataSet1Company: TStringField
      FieldName = 'Company'
      Size = 30
    end
    object ClientDataSet1Addr1: TStringField
      FieldName = 'Addr1'
      Size = 30
    end
    object ClientDataSet1Addr2: TStringField
      FieldName = 'Addr2'
      Size = 30
    end
    object ClientDataSet1City: TStringField
      FieldName = 'City'
      Size = 15
    end
    object ClientDataSet1State: TStringField
      FieldName = 'State'
    end
    object ClientDataSet1Zip: TStringField
      FieldName = 'Zip'
      Size = 10
    end
    object ClientDataSet1Country: TStringField
      FieldName = 'Country'
    end
    object ClientDataSet1Phone: TStringField
      FieldName = 'Phone'
      Size = 15
    end
    object ClientDataSet1FAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object ClientDataSet1TaxRate: TFloatField
      FieldName = 'TaxRate'
    end
    object ClientDataSet1Contact: TStringField
      FieldName = 'Contact'
    end
    object ClientDataSet1LastInvoiceDate: TDateTimeField
      FieldName = 'LastInvoiceDate'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 32
    Top = 72
  end
end
