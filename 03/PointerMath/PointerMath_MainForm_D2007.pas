unit PointerMath_MainForm_D2007;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables;

type
  TFormPointerMath = class(TForm)
    Memo1: TMemo;
    btnPChar: TButton;
    btnPByte: TButton;
    btnPInteger: TButton;
    Table1: TTable;
    procedure btnPCharClick(Sender: TObject);
    procedure btnPByteClick(Sender: TObject);
    procedure btnPIntegerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPointerMath: TFormPointerMath;

implementation

{$R *.dfm}

procedure TFormPointerMath.btnPByteClick(Sender: TObject);
var
  TenIntegers: array [1..10] of Integer;
  pOneInteger: PByte;
  I: Integer;
begin
  // write
  for I := 1 to 10 do
    TenIntegers [I] := I;
  // now read using a pointer
  pOneInteger := @TenIntegers;
  for I := 1 to 10 do
  begin
    Memo1.Lines.Add('Address: ' + IntToHex (Integer(pOneInteger), 8) +
      ' - Value: ' + IntToStr (PInteger(pOneInteger)^));
    // pOneInteger := pOneInteger + 4; // not in Delphi 2007!
    Inc (pOneInteger, 4);
  end;
end;

procedure TFormPointerMath.btnPCharClick(Sender: TObject);
var
  TenIntegers: array [1..10] of Integer;
  pOneInteger: PChar;
  I: Integer;
begin
  // write
  for I := 1 to 10 do
    TenIntegers [I] := I;
  // now read using a pointer
  pOneInteger := @TenIntegers;
  for I := 1 to 10 do
  begin
    Memo1.Lines.Add('Address: ' + IntToHex (Integer(pOneInteger), 8) +
      ' - Value: ' + IntToStr (PInteger(pOneInteger)^));
    Inc (pOneInteger, 4);
  end;
end;

procedure TFormPointerMath.btnPIntegerClick(Sender: TObject);
var
  TenIntegers: array [1..10] of Integer;
  pOneInteger: PInteger;
  I: Integer;
begin
  // write
  for I := 1 to 10 do
    TenIntegers [I] := I;
  // now read using a pointer
  pOneInteger := @TenIntegers;
  for I := 1 to 10 do
  begin
    Memo1.Lines.Add('Address: ' + IntToHex (Integer(pOneInteger), 8) +
      ' - Value: ' + IntToStr (pOneInteger^));
    // pOneInteger := POneInteger + 1;
    Inc (pOneInteger);
  end;
end;

procedure TFormPointerMath.FormCreate(Sender: TObject);
begin
  table1.Bookmark
end;

end.
