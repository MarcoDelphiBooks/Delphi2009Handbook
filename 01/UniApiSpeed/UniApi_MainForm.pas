unit UniApi_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm30 = class(TForm)
    btnSetWindowText: TButton;
    btnUserName: TButton;
    Memo1: TMemo;
    procedure btnSetWindowTextClick(Sender: TObject);
    procedure btnUserNameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form30: TForm30;

implementation

{$R *.dfm}

procedure TForm30.btnUserNameClick(Sender: TObject);
var
  I:Integer;
  nSize: DWORD;
  t1: TDateTime;
  str: string;
  pch: PChar;
begin
  nSize := 100;
  SetLength (str, nSize);
  pch := PChar (str);
  t1 := Now;
  for I := 1 to 10000 do
  begin
    GetUserName (pch, nSize);
  end;
  t1 := Now - t1;
  Memo1.Lines.Add ((Sender as TButton).Caption + ' ' +
    FormatDateTime ('ss.zzz', t1));
end;

procedure TForm30.btnSetWindowTextClick(Sender: TObject);
var
  I: Integer;
  t1: TDateTime;
  str: string;
  pch: PChar;
begin
  str := 'Hello';
  pch := PChar (str);
  t1 := Now;
  for I := 1 to 10000 do
  begin
    SetWindowText (handle, pch);
  end;
  t1 := Now - t1;
  Memo1.Lines.Add ((Sender as TButton).Caption + ' ' +
    FormatDateTime ('ss.zzz', t1));
end;

end.
