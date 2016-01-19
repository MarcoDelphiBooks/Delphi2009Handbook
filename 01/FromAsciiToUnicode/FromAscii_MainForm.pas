unit FromAscii_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ComCtrls, ExtCtrls;

type
  TForm30 = class(TForm)
    StringGrid1: TStringGrid;
    btnAscii7: TButton;
    StatusBar1: TStatusBar;
    btnUnicode: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    btnEuro: TButton;
    btnAscii8: TButton;
    btnGrapheme: TButton;
    procedure btnAscii7Click(Sender: TObject);
    procedure StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnUnicodeClick(Sender: TObject);
    procedure btnEuroClick(Sender: TObject);
    procedure btnAscii8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGraphemeClick(Sender: TObject);
  private
    procedure ClearGrid;
    { Private declarations }
  public

  end;

var
  Form30: TForm30;

implementation

{$R *.dfm}

function GetCharDescr (nChar: Integer): string;
begin
  Result := 'Char #' + IntToStr (nChar) + ' [' + Char (nChar) + ']';
end;

procedure TForm30.btnAscii7Click(Sender: TObject);
var
  I: Integer;
begin
  ClearGrid;
  for I := 32 to 127 do
    StringGrid1.Cells [I mod 16 + 1, I div 16 + 1]
      := AnsiChar (I);
end;

procedure TForm30.btnAscii8Click(Sender: TObject);
var
  I: Integer;
begin
  ClearGrid;
  for I := 32 to 255 do
  begin
    StringGrid1.Cells [I mod 16 + 1, I div 16 + 1] := AnsiChar (I);
  end;
end;

procedure TForm30.ClearGrid;
var
  I: Integer;
begin
  // clean content
  for I := 0 to 255 do
    StringGrid1.Cells[I mod 16 + 1, I div 16 + 1] := '';
end;

procedure TForm30.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  // refresh border
  for I := 0 to 16 do
  begin
    StringGrid1.Cells[I + 1, 0] := IntToStr (I);
    StringGrid1.Cells[0, I + 1] := IntToStr (I*16);
  end;
end;

procedure TForm30.btnUnicodeClick(Sender: TObject);
var
  I: Integer;
begin
  ClearGrid;
  for I := 32 to 255 do
  begin
    StringGrid1.Cells [I mod 16 + 1, I div 16 + 1] := Char (I);
  end;
end;

procedure TForm30.btnEuroClick(Sender: TObject);
var
  aChar: AnsiChar;
  uChar: Char;
begin
  aChar := '€';
  uChar := '€';
  ShowMessage ('€ for AnsiChar is ' + IntToStr (Ord (aChar)));
  ShowMessage ('€ for UnicodeChar is ' + IntToStr (Ord (uChar)));
end;

procedure TForm30.btnGraphemeClick(Sender: TObject);
var
  str: string;
begin
  str := #$0061 + #$0300;
  ShowMessage (str);
end;

procedure TForm30.StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  gc: TGridCoord;
  nChar: Integer;
begin
  gc := StringGrid1.MouseCoord(X, Y);
  nChar := (gc.Y - 1) * 16 + (gc.X - 1);
  StatusBar1.SimpleText := GetCharDescr (nChar);
end;

end.
