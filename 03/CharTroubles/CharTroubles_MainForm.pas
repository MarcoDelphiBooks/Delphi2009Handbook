unit CharTroubles_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormCharTroubles = class(TForm)
    btnCharSet: TButton;
    Memo1: TMemo;
    btnFillChar: TButton;
    procedure btnCharSetClick(Sender: TObject);
    procedure btnFillCharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCharTroubles: TFormCharTroubles;

implementation

{$R *.dfm}

procedure TFormCharTroubles.btnCharSetClick(Sender: TObject);
var
  charSet: set of AnsiChar;
  charSet2: string;
  ch1: Char;
begin
  charSet := ['a', 'b', 'c'];
  if AnsiChar('a') in charSet then // suppress warning
    Memo1.Lines.Add ('OK');

  charSet2 := 'abc';
  if Pos ('a', charSet2) > 0 then
    Memo1.Lines.Add ('OK');

  ch1 := '3';
  if {AnsiChar}(ch1) in ['0'..'9'] then  // uncomment to suppress warning
    Memo1.Lines.Add ('Number');

  if (ch1 >= '0') and (ch1 <= '9') then
    Memo1.Lines.Add ('Number');

  if CharInSet ('a', ['a', 'b', 'c']) then // new CharInSet function!
  // or:  if CharInSet ('a', charSet) then
    Memo1.Lines.Add ('OK');
end;

procedure TFormCharTroubles.btnFillCharClick(Sender: TObject);
var
  rc: TRect;
  str1, str2: string;
begin
  FillChar (rc, SizeOf (rc), 0);
  Memo1.Lines.Add ('Top should be zero: ' + IntToStr (rc.Top));

  str1 := 'here comes a string';
  str2 := 'here comes a string';

  FillChar (str1[1], Length (str1), 0);
  Memo1.Lines.Add ('15 char is: ' + str1[15]);

  FillChar (str2[1], Length (str2) * StringElementSize (str2), 0);
  Memo1.Lines.Add ('15 char is: ' + str2[15]);

  FillChar (str2[1], Length (str2) * StringElementSize (str2), 'A');
  Memo1.Lines.Add ('15 char is: ' + str2[15]);
  Memo1.Lines.Add ('15 char is: ' + IntToHex (Ord (str2[15]), 4));
  Memo1.Lines.Add ('A char is: ' + IntToHex (Ord ('A'), 4));

  str2 := StringOfChar ('A', 15);
  Memo1.Lines.Add (str2);
end;

end.
