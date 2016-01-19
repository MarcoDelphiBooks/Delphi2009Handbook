unit LatinTest_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormLatinTest = class(TForm)
    btnNewType: TButton;
    Memo1: TMemo;
    btnCompareCharSet: TButton;
    btnCyrillic: TButton;
    procedure btnNewTypeClick(Sender: TObject);
    procedure btnCompareCharSetClick(Sender: TObject);
    procedure btnCyrillicClick(Sender: TObject);
  private
    procedure Log (const strMsg: string);
  public
  end;

var
  FormLatinTest: TFormLatinTest;

implementation

{$R *.dfm}

type
  Latin1String = type AnsiString(28591);
  CyrillicString = type Ansistring(1251);

procedure TFormLatinTest.btnCompareCharSetClick(Sender: TObject);
var
  str1: Latin1String;
  str2: AnsiString;
  I: Integer;
begin
  for I := 128 to 255 do
  begin
    str1 := str1 + AnsiChar (I);
    str2 := str2 + AnsiChar (I); // copies the value without converting it
  end;

  for I := 0 to 15 do
  begin
    Log (IntToStr (128 + I*8) + ' - ' + IntToStr (128 + I*8 + 7));
    Log ('Lati: ' + Copy (str1, 1 + i*8, 8));
    Log ('Ansi: ' + Copy (str2, 1 + i*8, 8));
  end;
end;

procedure TFormLatinTest.btnCyrillicClick(Sender: TObject);
var
  str1: CyrillicString;
  I: Integer;
begin
  str1 := 'a string with an accent: Cantù';
  Log ('String: ' + str1);
  Log ('Last char: ' + IntToStr (Ord (str1[Length(str1)])));
  Log('ElemSize: ' + IntToStr (StringElementSize (str1)));
  Log('Length: ' + IntToStr (Length (str1)));
  Log ('CodePage: ' + IntToStr (StringCodePage (str1)));

  str1 := '';
  for I := 150 to 250 do
    str1 := str1 + CyrillicString(AnsiChar (I));
  Log ('High end chars: ' + str1);
end;

procedure TFormLatinTest.btnNewTypeClick(Sender: TObject);
var
  str1: Latin1String;
begin
  str1 := 'a string with an accent: Cantù';
  Log ('String: ' + str1);
  Log ('Last char: ' + IntToStr (Ord (str1[Length(str1)])));
  Log('ElemSize: ' + IntToStr (StringElementSize (str1)));
  Log('Length: ' + IntToStr (Length (str1)));
  Log ('CodePage: ' + IntToStr (StringCodePage (str1)));
end;


procedure TFormLatinTest.Log (const strMsg: string);
begin
  Memo1.Lines.Add (strMsg);
end;

end.
