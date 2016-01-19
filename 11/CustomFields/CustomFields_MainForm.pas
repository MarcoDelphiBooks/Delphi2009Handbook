unit CustomFields_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, Grids, DBGrids, DB, DBClient, StdCtrls;

type
  TFormCustomFields = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    btnOpen: TToolButton;
    btnFieldDef: TToolButton;
    btnField: TToolButton;
    Memo1: TMemo;
    procedure btnOpenClick(Sender: TObject);
    procedure btnFieldDefClick(Sender: TObject);
    procedure btnFieldClick(Sender: TObject);
    procedure Log (const strMsg: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCustomFields: TFormCustomFields;

implementation

{$R *.dfm}

type
  TMyFieldDef = class (TFieldDef)
  private
    FExtraDescription: string;
    procedure SetExtraDescription(const Value: string);
  public
    function ToString: string; override;
    property ExtraDescription: string read FExtraDescription write SetExtraDescription;
  end;

  TMyStringField = class (TStringField)
  protected
    function GetAsString: string; override;
  end;

procedure TFormCustomFields.btnOpenClick(Sender: TObject);
begin
  ClientDataSet1.Filename :=
    'C:\Program Files\Common Files\CodeGear Shared\Data\customer.cds';
  ClientDataSet1.Open;
end;

procedure TFormCustomFields.Log(const strMsg: string);
begin
  Memo1.Lines.Add (strMsg);
end;

{ TMyFieldDefClass }

procedure TMyFieldDef.SetExtraDescription(const Value: string);
begin
  FExtraDescription := Value;
end;

procedure TFormCustomFields.btnFieldDefClick(Sender: TObject);
begin
  (ClientDataSet1.FieldDefs[0] as TMyFieldDef).
    ExtraDescription := 'This is the first column';
  Log ('ClientDataSet1.FieldDefs[0].ToString: '  +
    ClientDataSet1.FieldDefs[0].ToString);
end;

procedure TFormCustomFields.btnFieldClick(Sender: TObject);
begin
  Log ('ClientDataSet1.Fields[1].ToString: '  +
    ClientDataSet1.Fields[1].ToString);
end;

function TMyFieldDef.ToString: string;
begin
  Result := Name + ' - ' + ExtraDescription + ' [' + ClassName + ']';
end;

{ TMyWideStringField }

function TMyStringField.GetAsString: string;
begin
  Result := inherited GetAsString;
  if Result = '' then
    Result := '<empty>';
end;

initialization
  DefaultFieldDefClass := TMyFieldDef;
  DefaultFieldClasses [ftString] := TMyStringField;

end.
