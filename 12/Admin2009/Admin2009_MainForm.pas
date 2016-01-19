unit Admin2009_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, DbxDatasnap, FMTBcd, StdCtrls, DB, SqlExpr, Grids,
  DBGrids, Provider, DBClient;

type
  TFormAdmin = class(TForm)
    SQLConnection1: TSQLConnection;
    smGetPlatformName: TSqlServerMethod;
    smGetServerClasses: TSqlServerMethod;
    smGetMethods: TSqlServerMethod;
    btnGetPlatformName: TButton;
    btnGetClasses: TButton;
    btnGetMethods: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    procedure btnGetPlatformNameClick(Sender: TObject);
    procedure btnGetClassesClick(Sender: TObject);
    procedure btnGetMethodsClick(Sender: TObject);
  private
    { Private declarations }
  end;

var
  FormAdmin: TFormAdmin;

implementation

{$R *.dfm}

procedure TFormAdmin.btnGetPlatformNameClick(Sender: TObject);
begin
  smGetPlatformName.ExecuteMethod;
  ShowMessage (smGetPlatformName.ServerMethodName + ': ' +
    smGetPlatformName.ParamByName('ReturnParameter').AsString)
end;

procedure TFormAdmin.btnGetClassesClick(Sender: TObject);
var
  I: Integer;
begin
  ClientDataSet1.Close;
  smGetServerClasses.Open;
  DataSetProvider1.DataSet := smGetServerClasses;
  ClientDataSet1.Open;
  for I := 0 to DbGrid1.Columns.Count - 1 do
    DbGrid1.Columns[I].Width := 150;
end;

procedure TFormAdmin.btnGetMethodsClick(Sender: TObject);
var
  // strLog: string;
  I: Integer;
begin
  ClientDataSet1.Close;
  smGetMethods.Open;
  DataSetProvider1.DataSet := smGetMethods;
  ClientDataSet1.Open;
  for I := 1 to DbGrid1.Columns.Count - 1 do
    DbGrid1.Columns[I].Width := 150;
  DbGrid1.Columns[0].Width := 250;

//  smGetMethods.Open;
//  while not smGetMethods.EOF do
//  begin
//    strLog := '';
//    for I := 0 to smGetMethods.FieldCount - 1 do
//      strLog := strLog + smGetMethods.Fields[I].AsString + ' | ';
//    ShowMessage (strLog);
//    smGetMethods.Next;
//  end;
end;

end.
