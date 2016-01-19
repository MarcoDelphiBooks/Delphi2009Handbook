unit MetaCreateTableForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBXDataExpressMetaDataProvider,
  DBXInterbase, WideStrings, SqlExpr;

type
  TFormMetaCreateTable = class(TForm)
    btnCreate: TButton;
    SqlConnection1: TSQLConnection;
    edTableName: TEdit;
    btnTableListOld: TButton;
    btnTableListMeta: TButton;
    MemoLog: TMemo;
    btnColumnsList: TButton;
    procedure btnCreateClick(Sender: TObject);
    procedure btnTableListOldClick(Sender: TObject);
    procedure btnTableListMetaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnColumnsListClick(Sender: TObject);
  private
    metaProv: TDBXDataExpressMetaDataProvider;
  public
    procedure InitMetaProvider;
    procedure Log (const strMsg: string);
    { Public declarations }
  end;

var
  FormMetaCreateTable: TFormMetaCreateTable;

implementation

uses
  DBXCommon, DBXMetaDataProvider, DBXCommonTable, DBXTypedTableStorage;

{$R *.dfm}

procedure TFormMetaCreateTable.btnColumnsListClick(Sender: TObject);
var
  dbxTable: TDBXColumnsTableStorage;
begin
  InitMetaProvider;

  dbxTable := metaProv.GetCollection (
    TDBXMetaDataCommands.GetColumns + ' ' + edTableName.Text)
    as TDBXColumnsTableStorage;
  while dbxTable.Next do
    Log (dbxTable.ColumnName +
      ' [' + dbxTable.TypeName + ']');
end;

procedure TFormMetaCreateTable.btnCreateClick(Sender: TObject);
var
  MetaDataTable: TDBXMetaDataTable;
begin
  InitMetaProvider;

  MetaDataTable := TDBXMetaDataTable.Create;
  MetaDataTable.TableName := edTableName.Text;
  MetaDataTable.AddColumn(TDBXInt32Column.Create('id'));
  MetaDataTable.AddColumn(TDBXDecimalColumn.Create('amount', 10, 2));
  MetaDataTable.AddColumn(TDBXUnicodeCharColumn.Create('city', 32));

  metaProv.QuoteIdentifierIfNeeded('');
  metaProv.CreateTable(MetaDataTable);
  Log ('Table ' + MetaDataTable.TableName + ' created');
end;

procedure TFormMetaCreateTable.btnTableListMetaClick(Sender: TObject);
var
  dbxTable: TDBXTablesTableStorage;
begin
  InitMetaProvider;

  dbxTable := metaProv.GetCollection (
    TDBXMetaDataCommands.GetTables) as TDBXTablesTableStorage;
  while dbxTable.Next do
    if not (dbxTable.TableType = 'SYSTEM TABLE') then
      Log (dbxTable.TableName);
end;

procedure TFormMetaCreateTable.btnTableListOldClick(Sender: TObject);
var
  sl: TStringList;
  str: string;
begin
  sl := TStringList.Create;
  try
    SqlConnection1.GetTableNames(sl);
    for str in sl do
    begin
      Log (str);
    end;
  finally
    sl.Free;
  end;
end;

procedure TFormMetaCreateTable.FormCreate(Sender: TObject);
begin
  SqlConnection1.Open;
end;

procedure TFormMetaCreateTable.InitMetaProvider;
begin
  if not Assigned (metaProv) then
  begin
    metaProv := TDBXDataExpressMetaDataProvider.Create;
    metaProv.Connection := SqlConnection1.DBXConnection;
    metaProv.Open;
  end;
end;

procedure TFormMetaCreateTable.Log(const strMsg: string);
begin
  MemoLog.Lines.Add (strMsg);
end;

end.