object DSFirst3TierServerModule: TDSFirst3TierServerModule
  OldCreateOrder = False
  Height = 244
  Width = 348
  object IBCONNECTION: TSQLConnection
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
    VendorLib = 'GDS32.DLL'
    Left = 42
    Top = 26
  end
  object EMPLOYEE: TSQLDataSet
    CommandText = 'EMPLOYEE'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = IBCONNECTION
    Left = 93
    Top = 101
    object EMPLOYEEEMP_NO: TSmallintField
      FieldName = 'EMP_NO'
      Required = True
    end
    object EMPLOYEEFIRST_NAME: TStringField
      FieldName = 'FIRST_NAME'
      Required = True
      Size = 15
    end
    object EMPLOYEELAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      Required = True
    end
    object EMPLOYEEPHONE_EXT: TStringField
      FieldName = 'PHONE_EXT'
      Size = 4
    end
    object EMPLOYEEHIRE_DATE: TSQLTimeStampField
      FieldName = 'HIRE_DATE'
      Required = True
    end
    object EMPLOYEEDEPT_NO: TStringField
      FieldName = 'DEPT_NO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object EMPLOYEEJOB_CODE: TStringField
      FieldName = 'JOB_CODE'
      Required = True
      Size = 5
    end
    object EMPLOYEEJOB_GRADE: TSmallintField
      FieldName = 'JOB_GRADE'
      Required = True
    end
    object EMPLOYEEJOB_COUNTRY: TStringField
      FieldName = 'JOB_COUNTRY'
      Required = True
      Size = 15
    end
    object EMPLOYEESALARY: TFMTBCDField
      FieldName = 'SALARY'
      Required = True
      Precision = 15
      Size = 2
    end
    object EMPLOYEEFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 37
    end
  end
  object DataSetProviderEmployee: TDataSetProvider
    DataSet = EMPLOYEE
    Left = 176
    Top = 56
  end
end
