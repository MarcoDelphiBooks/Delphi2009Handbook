unit MinorLang_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormMinorLang = class(TForm)
    btnVersion: TButton;
    btnFindExit: TButton;
    btnExitValue: TButton;
    btnDepracated: TButton;
    procedure btnVersionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnFindExitClick(Sender: TObject);
    procedure btnExitValueClick(Sender: TObject);
    procedure btnDepracatedClick(Sender: TObject);
  private
    sl: TStringList;
  public
    { Public declarations }
  end;

var
  FormMinorLang: TFormMinorLang;

implementation

{$R *.dfm}

function FindExit (sl: TStringList; n: Integer): string;
var
  I: Integer;
begin
  for I := 0 to sl.Count - 1 do
    if Pos (IntToStr (n), sl[I]) > 0 then
    begin
      Result := sl[I];
      Exit;
    end;
end;

function FindExitValue (sl: TStringList; n: Integer): string;
var
  I: Integer;
begin
  for I := 0 to sl.Count - 1do
    if Pos (IntToStr (n), sl[I]) > 0 then
      Exit (sl[I]);
end;

procedure DoNothing; deprecated 'use DoSomething instead';
begin
  // empty on purpose
end;

procedure TFormMinorLang.btnDepracatedClick(Sender: TObject);
begin
  DoNothing;
end;

procedure TFormMinorLang.btnExitValueClick(Sender: TObject);
begin
  ShowMessage (FindExitValue (sl, 33));
end;

procedure TFormMinorLang.btnFindExitClick(Sender: TObject);
begin
  ShowMessage (FindExit (sl, 22));
end;

procedure TFormMinorLang.btnVersionClick(Sender: TObject);
begin
  {$IFDEF VER200}
    ShowMessage ('Delphi 2009');
  {$ENDIF}

  {$IF RTLVersion >= 20}
    ShowMessage ('Delphi 2009 or newer');
  {$IFEND}

  ShowMessage ('RTLVersion: ' + FloatToStr (RTLVersion));
  ShowMessage ('CompilerVersion: ' + FloatToStr (CompilerVersion));
end;

procedure TFormMinorLang.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  sl := TStringList.Create;
  for I := 0 to 100 do
    sl.Add ('string ' + IntToStr (I));
end;

procedure TFormMinorLang.FormDestroy(Sender: TObject);
begin
  sl.Free;
end;

end.
