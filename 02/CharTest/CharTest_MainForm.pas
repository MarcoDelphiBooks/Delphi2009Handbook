unit CharTest_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormCharTest = class(TForm)
    btnInc: TButton;
    Memo1: TMemo;
    btnFor: TButton;
    btnSet: TButton;
    btnUpcase: TButton;
    btnUTF16: TButton;
    procedure btnIncClick(Sender: TObject);
    procedure btnForClick(Sender: TObject);
    procedure btnSetClick(Sender: TObject);
    procedure btnUpcaseClick(Sender: TObject);
    procedure btnUTF16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCharTest: TFormCharTest;

implementation

uses
  Character;

{$R *.dfm}

procedure TFormCharTest.btnForClick(Sender: TObject);
var
  ch: Char;
  str: string;
begin
  str := '';
  for ch := #32 to High(Char) do
    str := str + ch;
  Memo1.Lines.Text := str;
end;

procedure TFormCharTest.btnIncClick(Sender: TObject);
var
  ch: Char;
begin
  ch := 'a';
  Inc (ch, 100);
  Memo1.Lines.Add ('ch: ' + ch);
  Inc (ch, 1000);
  Memo1.Lines.Add ('ch: ' + ch);
  Inc (ch, 20000);
  Memo1.Lines.Add ('ch: ' + ch);
end;

// large set (won't compile)
//type
//  intpart = 1..1000;
//  ipset = set of intpart;

procedure TFormCharTest.btnSetClick(Sender: TObject);
var
//  charSet: set of Char;
  charSet: set of AnsiChar; // suppress warning
begin
  charSet := ['a', 'b', 'c'];
//  if 'a' in charSet then
  if AnsiChar('a') in charSet then // suppress warning
    Memo1.Lines.Add ('OK');
end;

procedure TFormCharTest.btnUTF16Click(Sender: TObject);
var
  str1: string;
begin
  str1 := '1.' + #9 + ConvertFromUtf32 (128) + ConvertFromUtf32($1D11E);
  Memo1.Lines.Add (str1);

  Memo1.Lines.Add (BoolToStr (
    TCharacter.IsNumber(str1, 1), True));
  Memo1.Lines.Add (BoolToStr (
    TCharacter.IsPunctuation (str1, 2), True));
  Memo1.Lines.Add (BoolToStr (
    TCharacter.IsWhiteSpace (str1, 3), True));
  Memo1.Lines.Add (BoolToStr (
    TCharacter.IsControl(str1, 4), True));
  Memo1.Lines.Add (BoolToStr (
    TCharacter.IsSurrogate(str1, 5), True));
end;

procedure TFormCharTest.btnUpcaseClick(Sender: TObject);
var
  ch1: Char;
  ch2: AnsiChar;
begin
  ch1 := 'ù';
  Memo1.Lines.Add ('WideChar');
  Memo1.Lines.Add ('UpCase ù: ' + UpCase(ch1));
  Memo1.Lines.Add ('ToUpper ù: ' + ToUpper (ch1));

  ch2 := 'ù';
  Memo1.Lines.Add ('AnsiChar');
  Memo1.Lines.Add ('UpCase ù: ' + UpCase(ch2));
  Memo1.Lines.Add ('ToUpper ù: ' + ToUpper (ch2));
end;

end.
