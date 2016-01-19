unit StringTest_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormStringTest = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    btnSurrogate: TButton;
    btnSurrogateLoop: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btnSurrogateClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnSurrogateLoopClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStringTest: TFormStringTest;

implementation

uses
  Character;

{$R *.dfm}

procedure CountChars(const S: UnicodeString; MaxChars: Integer; var CharCount, ByteCount: Integer); overload;
var
  C, L, B: Integer;
begin
  L := Length(S) * SizeOf(Char);
  C := 1;
  B := 1;
  while (B < L) and (C < MaxChars) do
  begin
    Inc(C);
    if IsLeadChar(S[B]) then
      B := NextCharIndex(S, B)
    else
      Inc(B);
  end;
  if (C = MaxChars) and (B < L) and IsLeadChar(S[B]) then
    B := NextCharIndex(S, B) - 1;
  CharCount := C;
  ByteCount := B;
end;

procedure CountChars2(const S: UnicodeString; MaxChars: Integer; var CharCount, ByteCount: Integer); overload;
var
  C, L, B: Integer;
begin
  L := Length(S); // * SizeOf(Char);
  C := 0;
  B := 0;
  while (B < L) and (C < MaxChars) do
  begin
    Inc(C);
    if IsLeadChar(S[B]) then
      B := NextCharIndex(S, B)
    else
      Inc(B);
  end;
  if (C = MaxChars) and (B < L) and IsLeadChar(S[B]) then
    B := NextCharIndex(S, B) - 1;
  CharCount := C; // # of actual WideChar elements in the string
  ByteCount := B; // # of unicode char within the string
end;

procedure TFormStringTest.btnSurrogateClick(Sender: TObject);
var
  str1: string;
  cChar, cByte: Integer;
begin
  str1 := 'Surr. ' + ConvertFromUtf32($1D11E);
  Memo1.Lines.Add ('String: ' + str1);
  Memo1.Lines.Add ('Length (# of WideChar): ' + IntToStr (Length (str1)));
  Memo1.Lines.Add ('Size in bytes: ' + IntToStr (Length (str1) * StringElementSize (str1)));
  Memo1.Lines.Add ('# of Code Units: ' + IntToStr (CharToByteLen (str1, Length (str1))));
  cChar := ElementToCharLen(str1, maxint);
//  CountChars2 (str1, Length (str1), cChar, cByte);
//  Memo1.Lines.Add ('CountChars #chars: ' + IntToStr (cChar));
//  Memo1.Lines.Add ('CountChars #bytes: ' + IntToStr (cByte));
  Memo1.Lines.Add ('# of Code Points: ' + IntToStr (cChar))
end;

procedure TFormStringTest.btnSurrogateLoopClick(Sender: TObject);
var
  I: Integer;
  idx: Integer;
  ch: Char;
  str1: string;
begin
  str1 := 'Surr. ' + ConvertFromUtf32($1D11E);

  // won't work
//  for I := 1 to Length(str1) do
//    Memo1.Lines.Add (IntToStr (I) + ' ' + str1 [I]);

//   won't work
//  idx := 0;
//  for ch in str1 do
//  begin
//    Inc (idx);
//    Memo1.Lines.Add (IntToStr (idx) + ' ' + ch);
//  end;

  for I := 1 to Length(str1) do
  begin
    if not TCharacter.IsSurrogate (str1 [I]) then
      Memo1.Lines.Add (IntToStr (I) + ' ' + str1 [I])
    else
    begin if TCharacter.IsHighSurrogate (str1 [I]) then
      Memo1.Lines.Add (IntToStr (I) + ' ' + str1 [I] + str1 [I+1]);
    end;
  end;

  idx := NextCharIndex (str1, 0);
  repeat
    if TCharacter.IsHighSurrogate (str1 [idx]) then
      Memo1.Lines.Add (IntToStr (idx) + ' ' + str1 [idx] + str1 [idx+1])
    else
      Memo1.Lines.Add (IntToStr (idx) + ' ' + str1 [idx]);
    idx := NextCharIndex (str1, idx);
  until idx > Length (str1);


end;

procedure TFormStringTest.Button1Click(Sender: TObject);
var
  str1, str2: string;
begin
  str1 := 'foo';
  str2 := str1;
  Memo1.Lines.Add ('SizeOf: ' + IntToStr (SizeOf (str1)));
  Memo1.Lines.Add ('Length: ' + IntToStr (Length (str1)));
  Memo1.Lines.Add ('StringElementSize: ' + IntToStr (StringElementSize (str1)));
  Memo1.Lines.Add ('StringRefCount: ' + IntToStr (StringRefCount (str1)));
  Memo1.Lines.Add ('StringCodePage: ' + IntToStr (StringCodePage (str1)));
  if StringCodePage (str1) = DefaultUnicodeCodePage then // internally, CP_UTF16
    Memo1.Lines.Add ('Is Unicode');

  Memo1.Lines.Add ('Size in bytes: ' + IntToStr (Length (str1) * StringElementSize (str1)));
  Memo1.Lines.Add ('ByteLength: ' + IntToStr (ByteLength (str1)));
  str2[2] := 'g';
  ShowMessage (str2);
end;

procedure TFormStringTest.Button2Click(Sender: TObject);
var
  str1: string;
begin
  str1 := 'one';
  ShowMessage(IntToStr (CharToByteLen (str1, Length (str1))));
  str1 := 'a' + ConvertFromUtf32($1D11E) + ConvertFromUtf32($1D11E);
  ShowMessage(IntToStr (CharToByteLen (str1, Length (str1))));
end;

end.
