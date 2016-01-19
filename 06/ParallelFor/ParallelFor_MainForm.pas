unit ParallelFor_MainForm;

interface

uses
  SysUtils, Types, Classes, Variants, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, ComCtrls, Windows;

type
  TFormParallelFor = class(TForm)
    btnPlain: TButton;
    btnParallel1: TButton;
    Memo1: TMemo;
    btnParallel2: TButton;
    btnParallel4: TButton;
    procedure btnPlainClick(Sender: TObject);
    procedure btnParallel1Click(Sender: TObject);
    procedure btnParallel2Click(Sender: TObject);
    procedure btnParallel4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormParallelFor: TFormParallelFor;

implementation

{$R *.dfm}

uses
  SyncObjs;

{function local to the unit}
function IsPrime (N: Integer): Boolean;
var
  Test: Integer;
begin
  IsPrime := True;
  for Test := 2 to N - 1 do
    if (N mod Test) = 0 then
    begin
      IsPrime := False;
      break; {jump out of the for loop}
    end;
end;

// custom thread class

type
  TParallel = class(TThread)
  private
    FProc: TProc<Integer>;
  protected
    procedure Execute; override;
    function GetNextValue: Integer;
  public
    constructor Create;
    destructor Destroy; override;

    property Proc: TProc<Integer>
      read FProc write FProc;
    class var
      CurrPos: Integer;
      MaxPos: Integer;
      cs: TCriticalSection;
      ThCount: Integer;
  end;

procedure ParallelFor (nMin, nMax, nThreads: Integer;
  aProc: TProc<Integer>);
var
  threads: array of TParallel;
  I: Integer;
begin
  // inizialize TParallel class data
  TParallel.CurrPos := nMin;
  TParallel.MaxPos := nMax;
  TParallel.cs := TCriticalSection.Create;
  TParallel.ThCount := 0;

  // create the threads
  SetLength (threads, nThreads);
  for I := 0 to Length (threads) - 1 do
  begin
    threads[I] := TParallel.Create; // suspended
    threads[I].Proc := aProc;
    threads[I].Resume;
  end;

  while TParallel.ThCount > 0 do
  begin
    Application.ProcessMessages;
    Sleep (100);
  end;

// alterantive coding: don't do FreeOnTerminate in
// the thread constructor and use the following (clocking) code
//  for I := 0 to Length (threads) - 1 do
//  begin
//    threads[I].WaitFor;
//  end;
//
//  for I := 0 to Length (threads) - 1 do
//  begin
//    threads[I].Free;
//  end;
end;

const
  Max = 90000;

procedure TFormParallelFor.btnParallel2Click(Sender: TObject);
var
  Tot: Integer;
  Ticks: Cardinal;
begin
  Tot := 0;
  Ticks := GetTickCount;
  ParallelFor (1, Max, 2,
    procedure (I: Integer)
    begin
      if IsPrime (I) then
        InterlockedIncrement (Tot);
    end);
  Ticks := GetTickCount - Ticks;
  Memo1.Lines.Add (Format (
    '2 threads: %d - %d', [Ticks, Tot]));
end;

procedure TFormParallelFor.btnParallel4Click(Sender: TObject);
var
  Tot: Integer;
  Ticks: Cardinal;
begin
  Tot := 0;
  Ticks := GetTickCount;
  ParallelFor (1, Max, 4,
    procedure (I: Integer)
    begin
      if IsPrime (I) then
        InterlockedIncrement (Tot);
    end);
  Ticks := GetTickCount - Ticks;
  Memo1.Lines.Add (Format (
    '4 threads: %d - %d', [Ticks, Tot]));
end;

procedure TFormParallelFor.btnPlainClick(Sender: TObject);
var
  I, Tot: Integer;
  Ticks: Cardinal;
begin
  // counts the prime numbers below a given value
  Tot := 0;
  Ticks := GetTickCount;
  for I := 1 to Max do
  begin
    if IsPrime (I) then
      Inc (Tot);
    Application.ProcessMessages;
  end;
  Ticks := GetTickCount - Ticks;
  Memo1.Lines.Add (Format (
    'No threads: %d - %d', [Ticks, Tot]));
end;


procedure TFormParallelFor.btnParallel1Click(Sender: TObject);
var
  Tot: Integer;
  Ticks: Cardinal;
begin
  Tot := 0;
  Ticks := GetTickCount;
  ParallelFor (1, Max, 1,
    procedure (I: Integer)
    begin
      if IsPrime (I) then
        InterlockedIncrement (Tot);
    end);
  Ticks := GetTickCount - Ticks;
  Memo1.Lines.Add (Format (
   '1 thread: %d - %d', [Ticks, Tot]));
end;

{ TParallel }

constructor TParallel.Create;
begin
  inherited Create (True); // suspended
  InterlockedIncrement(ThCount);
  FreeOnTerminate := True;
end;

destructor TParallel.Destroy;
begin
  InterlockedDecrement(ThCount);
  inherited;
end;

procedure TParallel.Execute;
var
  nCurrent: Integer;
begin
  nCurrent := GetNextValue;
  while nCurrent <= MaxPos do
  begin
    Proc (nCurrent);
    nCurrent := GetNextValue;
  end;
end;

function TParallel.GetNextValue: Integer;
begin
  cs.Acquire;
  try
    Result := CurrPos;
    Inc(CurrPos);
  finally
    cs.Release;
  end;
end;

end.
