unit AnonTiming_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormAnonTiming = class(TForm)
    btnClassic: TButton;
    Memo1: TMemo;
    btnAnon: TButton;
    btnTicks: TButton;
    procedure btnClassicClick(Sender: TObject);
    procedure btnAnonClick(Sender: TObject);
    procedure btnTicksClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAnonTiming: TFormAnonTiming;

implementation

{$R *.dfm}

const
  MaxLoop2 = 1000000;

function TimeCode (nLoops: Integer; proc: TProc): string;
var
  t1: TDateTime;
  I: Integer;
begin
  t1 := Now;
  for I := 1 to nLoops do
    proc;
  t1 := now - t1;
  Result := FormatDateTime('nn:ss.zzz', t1);
end;

function TickCode (nLoops: Integer; proc: TProc): string;
var
  nTicks: Integer;
  I: Integer;
begin
  nTicks := GetTickCount;
  for I := 1 to nLoops do
    proc;
  nTicks := GetTickCount - nTicks;
  Result := Format ('%d', [nTicks]);
end;


procedure TFormAnonTiming.btnAnonClick(Sender: TObject);
var
  str1: string;
  str2: AnsiString;
begin
  Memo1.Lines.Add ('Anonymous');

  str1 := 'Marco Cantù';
  Memo1.Lines.Add ('AnsiUpperCase (string): ' +
    TimeCode (MaxLoop2,
      procedure ()
      begin
        str1 := AnsiUpperCase (str1);
      end));

  str2 := 'Marco Cantù';
  Memo1.Lines.Add ('AnsiUpperCase (AnsiString): ' +
    TimeCode (MaxLoop2,
      procedure ()
      begin
        str2 := AnsiUpperCase (str2);
      end));
end;

procedure TFormAnonTiming.btnClassicClick(Sender: TObject);
var
  str1: string;
  str2: AnsiString;
  I: Integer;
  t1: TDateTime;
begin
  Memo1.Lines.Add ('Classic');

  str1 := 'Marco Cantù';
  t1 := Now;
  for I := 1 to MaxLoop2 do
    str1 := AnsiUpperCase (str1);
  t1 := now - t1;
  Memo1.Lines.Add ('AnsiUpperCase (string): ' + FormatDateTime('nn:ss.zzz', t1));

  str2 := 'Marco Cantù';
  t1 := Now;
  for I := 1 to MaxLoop2 do
    str2 := AnsiUpperCase (str2);
  t1 := now - t1;
  Memo1.Lines.Add ('AnsiUpperCase (AnsiString): ' + FormatDateTime('nn:ss.zzz', t1));
end;

procedure TFormAnonTiming.btnTicksClick(Sender: TObject);
var
  str1: string;
  str2: AnsiString;
begin
  Memo1.Lines.Add ('Anonymous Ticks');

  str1 := 'Marco Cantù';
  Memo1.Lines.Add ('AnsiUpperCase (string): ' +
    TickCode (MaxLoop2,
      procedure ()
      begin
        str1 := AnsiUpperCase (str1);
      end));

  str2 := 'Marco Cantù';
  Memo1.Lines.Add ('AnsiUpperCase (AnsiString): ' +
    TickCode (MaxLoop2,
      procedure ()
      begin
        str2 := AnsiUpperCase (str2);
      end));
end;

end.
