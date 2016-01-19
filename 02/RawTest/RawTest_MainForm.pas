unit RawTest_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormRawTest = class(TForm)
    btnRawLat: TButton;
    Memo1: TMemo;
    btnConvert: TButton;
    btnRawCyr: TButton;
    btnRawAnsi: TButton;
    btnRawUTF8: TButton;
    procedure btnRawLatClick(Sender: TObject);
    procedure btnConvertClick(Sender: TObject);
    procedure btnRawCyrClick(Sender: TObject);
    procedure btnRawAnsiClick(Sender: TObject);
    procedure btnRawUTF8Click(Sender: TObject);
  private
    procedure Log (const strMsg: string);
    procedure DisplayStringData (str: AnsiString);
    procedure DisplayRawData (str: RawByteString);
  public
    { Public declarations }
  end;

var
  FormRawTest: TFormRawTest;

implementation

uses
  Character;

{$R *.dfm}

type
  Latin1String = type AnsiString(28591);
  CyrillicString = type Ansistring(1251);

procedure TFormRawTest.btnRawAnsiClick(Sender: TObject);
var
  strAnsi: AnsiString;
begin
  Log ('Ansi string');
  strAnsi := 'Some text ';
  strAnsi := strAnsi + AnsiChar (210) + AnsiChar (128);

  Log ('String: ' + strAnsi);
  Log ('CodePage: ' + IntToStr (StringCodePage (strAnsi)));
  Log ('Address: ' + IntToStr (Integer (Pointer (strAnsi))));

  DisplayStringData (strAnsi);
  DisplayRawData (strAnsi);
  Log ('');
end;

procedure TFormRawTest.btnRawCyrClick(Sender: TObject);
var
  strCyr: CyrillicString;
  nChar: Integer;
begin
  Log ('Cyrillic string');
  strCyr := 'Some text ';
  nChar := 210;
  strCyr := strCyr + CyrillicString (AnsiChar (nChar));
  Inc (nChar, 2);
  strCyr := strCyr + CyrillicString (AnsiChar (nChar));

  Log ('String: ' + strCyr);
  Log ('CodePage: ' + IntToStr (StringCodePage (strCyr)));
  Log ('Address: ' + IntToStr (Integer (Pointer (strCyr))));

  DisplayStringData (strCyr);
  DisplayRawData (strCyr);
  Log ('');
end;

procedure TFormRawTest.btnRawLatClick(Sender: TObject);
var
  strLat: Latin1String;
  nChar: Integer;
begin
  Log ('Latin string');
  strLat := 'Some text ';
  nChar := 210;
  strLat := strLat + Latin1String (AnsiChar (nChar));
  nChar := 128;
  strLat := strLat + Latin1String (AnsiChar (nChar));

  Log ('String: ' + strLat);
  Log ('CodePage: ' + IntToStr (StringCodePage (strLat)));
  Log ('Address: ' + IntToStr (Integer (Pointer (strLat))));

  DisplayStringData (strLat);
  DisplayRawData (strLat);
  Log ('');
end;

procedure TFormRawTest.btnRawUTF8Click(Sender: TObject);
var
  strUtf8: UTF8String;
  nChar: Integer;
begin
  Log ('UTF-8 string');
  strUtf8 := 'Some text ';
  nChar := 210;
  strUtf8 := strUtf8 + UTF8String (AnsiChar (nChar));
  nChar := 128;
  strUtf8 := strUtf8 + UTF8String (AnsiChar (nChar));

  Log ('String: ' + strUtf8);
  Log ('CodePage: ' + IntToStr (StringCodePage (strUtf8)));
  Log ('Address: ' + IntToStr (Integer (Pointer (strUtf8))));

  DisplayStringData (strUtf8);
  DisplayRawData (strUtf8);
  Log ('');
end;

procedure TFormRawTest.btnConvertClick(Sender: TObject);
var
  str1: AnsiString;
  pRaw: PAnsiChar;
  strU: string;
begin
  str1 := 'Cantù';
  Log('String: ' + str1); // a potential problem...
  pRaw := @str1[1];
  Inc (pRaw, 4);
  Log('pAnsiChar: ' + pRaw^); // a potential problem...

  Log('');
  strU := Character.ConvertFromUtf32(999);
  Log('UString: ' + strU);
  Log('UString[1]: ' + IntToStr (Ord(strU[1])));
  str1 := strU; // a real lossy "conversion"
  Log('String: ' + str1);
  Log('String[1]: ' + IntToStr (Ord(str1[1])));
  // Log('Length: ' + IntToStr (Length (str1)));
end;

procedure TFormRawTest.DisplayRawData(str: RawByteString);
begin
  Log ('');
  Log ('DisplayRawData(str: RawByteString)');
  Log ('String: ' + UnicodeString(str));
  Log ('CodePage: ' + IntToStr (StringCodePage (str)));
  Log ('Address: ' + IntToStr (Integer (Pointer (str))));
end;

procedure TFormRawTest.DisplayStringData(str: AnsiString);
begin
  Log ('');
  Log ('DisplayStringData(str: AnsiString)');
  Log ('String: ' + str);
  Log ('CodePage: ' + IntToStr (StringCodePage (str)));
  Log ('Address: ' + IntToStr (Integer (Pointer (str))));
end;

procedure TFormRawTest.Log(const strMsg: string);
begin
  Memo1.Lines.Add(strMsg);
end;

end.
