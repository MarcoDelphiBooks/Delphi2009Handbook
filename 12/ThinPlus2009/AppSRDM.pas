unit AppSRDM;

interface

uses
  Windows, Messages, SysUtils, Classes, DataBkr, DBClient, DB,
  Provider, DBTables, Variants, SqlExpr, FMTBcd, WideStrings,
  DBXInterbase;

type
  TAppServerPlus = class(TRemoteDataModule)
    DataSourceDept: TDataSource;
    ProviderDepartments: TDataSetProvider;
    ProviderQuery: TDataSetProvider;
    SQLMonitor1: TSQLMonitor;
    SQLConnection1: TSQLConnection;
    SQLWithParams: TSQLDataSet;
    SQLDepartments: TSQLDataSet;
    SQLEmployees: TSQLDataSet;
    procedure RemoteDataModuleCreate(Sender: TObject);
    procedure ProviderQueryGetDataSetProperties(Sender: TObject;
      DataSet: TDataSet; out Properties: OleVariant);
    procedure ProviderDepartmentsUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure ProviderDepartmentsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure ProviderDepartmentsBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure ProviderEmployeeBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure ProviderEmployeeAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure ProviderEmployeeUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
  public
    procedure Login(const Name, Password: WideString);
  end;

implementation

uses AppSForm;

{$R *.DFM}

procedure TAppServerPlus.Login(const Name, Password: WideString);
begin
  if Password <> Name then
    raise Exception.Create ('Wrong name/password combination received');
  ProviderDepartments.Exported := True;
  ServerForm.Add ('Login:' + Name + '/' + Password);
end;

procedure TAppServerPlus.ProviderQueryGetDataSetProperties(Sender: TObject;
  DataSet: TDataSet; out Properties: OleVariant);
begin
  Properties := VarArrayCreate([0,1], varVariant);
  Properties[0] := VarArrayOf(['Time', Now, True]);
  Properties[1] := VarArrayOf(['Param', SQLWithParams.Params[0].AsString, False]);
end;

procedure TAppServerPlus.ProviderDepartmentsUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  ServerForm.Add ('ProviderCustomer.OnUpdateData');
end;

procedure TAppServerPlus.ProviderDepartmentsBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  ServerForm.Add ('ProviderCustomer.UpdateRecord');
end;

procedure TAppServerPlus.ProviderDepartmentsBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  ServerForm.Add ('ProviderCustomer.BeforeGetRecords');
end;


procedure TAppServerPlus.ProviderEmployeeBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  ServerForm.Add ('fix hire date');
  DeltaDS.FieldByName('HIRE_DATE').NewValue := Now;
end;

procedure TAppServerPlus.ProviderEmployeeAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  ServerForm.Add ('after apply...');
end;

procedure TAppServerPlus.ProviderEmployeeUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  ServerForm.Add ('Error: ' + E.Message);
end;

procedure TAppServerPlus.RemoteDataModuleCreate(Sender: TObject);
begin
  ProviderDepartments.Exported := False;
end;

end.
