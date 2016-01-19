object FormMetaCreateTable: TFormMetaCreateTable
  Left = 0
  Top = 0
  Caption = 'MetaCreateTable'
  ClientHeight = 292
  ClientWidth = 554
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
  object btnCreate: TButton
    Left = 24
    Top = 24
    Width = 115
    Height = 25
    Caption = 'btnCreate'
    TabOrder = 0
    OnClick = btnCreateClick
  end
  object edTableName: TEdit
    Left = 152
    Top = 26
    Width = 185
    Height = 21
    TabOrder = 1
    Text = 'NewTableName'
  end
  object btnTableListOld: TButton
    Left = 24
    Top = 62
    Width = 115
    Height = 25
    Caption = 'btnTableListOld'
    TabOrder = 2
    OnClick = btnTableListOldClick
  end
  object btnTableListMeta: TButton
    Left = 24
    Top = 104
    Width = 115
    Height = 25
    Caption = 'btnTableListMeta'
    TabOrder = 3
    OnClick = btnTableListMetaClick
  end
  object MemoLog: TMemo
    Left = 152
    Top = 64
    Width = 394
    Height = 220
    TabOrder = 4
  end
  object btnColumnsList: TButton
    Left = 24
    Top = 144
    Width = 115
    Height = 25
    Caption = 'btnColumnsList'
    TabOrder = 5
    OnClick = btnColumnsListClick
  end
  object SqlConnection1: TSQLConnection
    ConnectionName = 'IBCONNECTION'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=C:\Program Files\Common Files\CodeGear Shared\Data\Empl' +
        'oyee.GDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited')
    VendorLib = 'gds32.dll'
    Left = 18
    Top = 18
  end
end
