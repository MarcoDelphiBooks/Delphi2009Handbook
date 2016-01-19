unit StringBuilder_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormSBuilder = class(TForm)
    btnSample: TButton;
    btnPlusString: TButton;
    Memo1: TMemo;
    btnSbString: TButton;
    btnCharPos: TButton;
    btnPlusInt: TButton;
    btnSbInt: TButton;
    btnInsert: TButton;
    btnSbInsert: TButton;
    btnCapacity: TButton;
    btnPlusChar: TButton;
    btnSbChar: TButton;
    procedure btnSampleClick(Sender: TObject);
    procedure btnPlusStringClick(Sender: TObject);
    procedure btnSbStringClick(Sender: TObject);
    procedure btnCharPosClick(Sender: TObject);
    procedure btnPlusIntClick(Sender: TObject);
    procedure btnSbIntClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnSbInsertClick(Sender: TObject);
    procedure btnCapacityClick(Sender: TObject);
    procedure btnPlusCharClick(Sender: TObject);
    procedure btnSbCharClick(Sender: TObject);
  private
    procedure Log (const strMsg: string);
  public
    { Public declarations }
  end;

var
  FormSBuilder: TFormSBuilder;

implementation

{$R *.dfm}

procedure TFormSBuilder.btnCapacityClick(Sender: TObject);
var
  sBuilder: TStringBuilder;
  I: Integer;
  J: Integer;
begin
  sBuilder := TStringBuilder.Create ('');
  try
    for J := 1 to 10 do
    begin
      for I := 1 to 200 do
        sBuilder.Append (I);
      Log ('Len/Cap: ' + IntToStr (sBuilder.Length) +
        ':' + IntToStr (sBuilder.Capacity));
    end;
  finally
    sBuilder.Free;
  end;
end;

procedure TFormSBuilder.btnCharPosClick(Sender: TObject);
var
  str1: string;
  sBuilder: TStringBuilder;
begin
  str1 := '1234567890';
  Log ('str1[4]: ' + str1[4]);
  sBuilder := TStringBuilder.Create (str1);
  try
    Log ('sBuilder.Chars[4]: ' + sBuilder.Chars[4]);
  finally
    sBuilder.Free;
  end;
end;

procedure TFormSBuilder.btnSampleClick(Sender: TObject);
var
  sBuilder: TStringBuilder;
  str1: string;
begin
  sBuilder := TStringBuilder.Create;
  try
    str1 := sBuilder
      .Append(12)
      .Append('hello')
      .ToString;
    Log (str1);
  finally
    sBuilder.Free;
  end;
end;

 const MaxLoop = 1000000; // one million
// const MaxLoop = 10000000; // ten millions

procedure TFormSBuilder.btnPlusStringClick(Sender: TObject);
var
  str1, str2: string;
  I: Integer;
  t1: Cardinal;
begin
  t1 := GetTickCount;
  str1 := 'Marco ';
  str2 := 'Cantù ';
  for I := 1 to MaxLoop do
    str1 := str1 + str2;
  t1 := GetTickCount - t1;
  Memo1.Lines.Add ('1a. Concatenation: ' + IntToStr (t1));
end;

procedure TFormSBuilder.btnSbStringClick(Sender: TObject);
var
  str1, str2: string;
  I: Integer;
  t1: Cardinal;
  sBuilder: TStringBuilder;
begin
  t1 := GetTickCount;
  str1 := 'Marco ';
  str2 := 'Cantù ';
  sBuilder := TStringBuilder.Create (str1);
  try
    for I := 1 to MaxLoop do
      sBuilder.Append(str2);
  finally
    sBuilder.Free;
  end;
  t1 := GetTickCount - t1;
  Memo1.Lines.Add ('1b. TStringBuilder: ' + IntToStr (t1));
end;

procedure TFormSBuilder.btnInsertClick(Sender: TObject);
var
  str1: string;
  I: Integer;
  t1: Cardinal;
begin
  t1 := GetTickCount;
  str1 := 'Marco  ';
  for I := 1 to MaxLoop div 100 do
    Insert('hello', str1, 7);
  t1 := GetTickCount - t1;
  Memo1.Lines.Add ('3a. Concatenation: ' + IntToStr (t1));
end;

procedure TFormSBuilder.btnPlusCharClick(Sender: TObject);
var
  str1: string;
  ch: Char;
  I: Integer;
  t1: Cardinal;
begin
  t1 := GetTickCount;
  str1 := 'Marco ';
  ch := 'C';
  for I := 1 to MaxLoop do
    str1 := str1 + ch;
  t1 := GetTickCount - t1;
  Memo1.Lines.Add ('4a. Char Concat: ' + IntToStr (t1));
end;

procedure TFormSBuilder.btnPlusIntClick(Sender: TObject);
var
  str1: string;
  I: Integer;                                  
  t1: Cardinal;
begin
  t1 := GetTickCount;
  str1 := 'Marco ';
  for I := 1 to MaxLoop do
    str1 := str1 + IntToStr (I);
  t1 := GetTickCount - t1;
  Memo1.Lines.Add ('2a. Concatenation: ' + IntToStr (t1));
end;

procedure TFormSBuilder.btnSbCharClick(Sender: TObject);
var
  str1: string;
  ch: Char;
  I: Integer;
  t1: Cardinal;
  sBuilder: TStringBuilder;
begin
  t1 := GetTickCount;
  str1 := 'Marco ';
  ch := 'C';
  sBuilder := TStringBuilder.Create (str1);
  try
    for I := 1 to MaxLoop do
      sBuilder.Append(ch);
  finally
    sBuilder.Free;
  end;
  t1 := GetTickCount - t1;
  Memo1.Lines.Add ('4b. TStringBuilder: ' + IntToStr (t1));end;

procedure TFormSBuilder.btnSbInsertClick(Sender: TObject);
var
  str3: string;
  I: Integer;
  t1: Cardinal;
  sBuilder: TStringBuilder;
begin
  t1 := GetTickCount;
  str3 := 'Marco  ';
  sBuilder := TStringBuilder.Create (str3);
  try
    for I := 1 to MaxLoop div 100 do
      sBuilder.Insert (6, 'hello');
  finally
    sBuilder.Free;
  end;
  t1 := GetTickCount - t1;
  Memo1.Lines.Add ('3b. TStringBuilder: ' + IntToStr (t1));
end;

procedure TFormSBuilder.btnSbIntClick(Sender: TObject);
var
  str3: string;
  I: Integer;
  t1: Cardinal;
  sBuilder: TStringBuilder;
begin
  t1 := GetTickCount;
  str3 := 'Marco ';
  sBuilder := TStringBuilder.Create (str3);
  try
    for I := 1 to MaxLoop do
      sBuilder.Append(I);
  finally
    sBuilder.Free;
  end;
  t1 := GetTickCount - t1;
  Memo1.Lines.Add ('2b. TStringBuilder: ' + IntToStr (t1));
end;

procedure TFormSBuilder.Log(const strMsg: string);
begin
  Memo1.Lines.Add (strMsg);
end;

end.
