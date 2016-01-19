unit ThinForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBClient, MConnect, SConnect, provider, Db, Grids, DBGrids, StdCtrls, ObjBrkr, MidasLib,
  WideStrings, DbxDatasnap, DSConnect, SqlExpr, FMTBcd;

type
  TClientForm = class(TForm)
    cds: TClientDataSet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnFetch: TButton;
    btnApply: TButton;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    Edit3: TEdit;
    cdsDet: TClientDataSet;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    btnQuery: TButton;
    btnRecCount: TButton;
    cdsDEPT_NO: TStringField;
    cdsDEPARTMENT: TStringField;
    cdsHEAD_DEPT: TStringField;
    cdsMNGR_NO: TSmallintField;
    cdsBUDGET: TFMTBCDField;
    cdsLOCATION: TStringField;
    cdsPHONE_NO: TStringField;
    cdsSQLEmployees: TDataSetField;
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    SqlServerMethod1: TSqlServerMethod;
    procedure btnFetchClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure btnRecCountClick(Sender: TObject);
    procedure SQLConnection1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientForm: TClientForm;

implementation

uses QueForm;

{$R *.DFM}

procedure TClientForm.btnFetchClick(Sender: TObject);
begin
  btnFetch.Caption := IntToStr (cds.GetNextPacket);
end;

procedure TClientForm.btnApplyClick(Sender: TObject);
begin
  cds.ApplyUpdates(-1);
end;

procedure TClientForm.CheckBox1Click(Sender: TObject);
begin
  SQlConnection1.Connected := Checkbox1.Checked;
  cds.Active := Checkbox1.Checked;
end;

procedure TClientForm.btnQueryClick(Sender: TObject);
begin
  FormQuery.Show;
end;

procedure TClientForm.btnRecCountClick(Sender: TObject);
begin
  showMessage (IntToStr (cds.RecordCount));
end;

procedure TClientForm.SQLConnection1AfterConnect(Sender: TObject);
begin
  // was: ConnectionBroker1.AppServer.Login (Edit2.Text, Edit3.Text);
  SqlServerMethod1.ParamByName('Name').AsString := Edit2.Text;
  SqlServerMethod1.ParamByName('Password').AsString := Edit3.Text;
  SqlServerMethod1.ExecuteMethod;
end;

end.
