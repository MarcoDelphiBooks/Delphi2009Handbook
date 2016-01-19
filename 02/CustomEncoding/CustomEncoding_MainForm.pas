unit CustomEncoding_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormCustomEncoding = class(TForm)
    Memo1: TMemo;
    btnTestEncoding1: TButton;
    btnTestEncoding2: TButton;
    btnMismatch: TButton;
    procedure btnTestEncoding1Click(Sender: TObject);
    procedure btnTestEncoding2Click(Sender: TObject);
    procedure btnMismatchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCustomEncoding: TFormCustomEncoding;

implementation

{$R *.dfm}

type
  TUTF32Encoding = class (TEncoding)
  class var
    UTF32Encoding: TUTF32Encoding;
  strict protected
    function GetByteCount(Chars: PChar; CharCount: Integer): Integer; override;
    function GetBytes(Chars: PChar; CharCount: Integer; Bytes: PByte; ByteCount: Integer): Integer; override;
    function GetCharCount(Bytes: PByte; ByteCount: Integer): Integer; override;
    function GetChars(Bytes: PByte; ByteCount: Integer; Chars: PChar; CharCount: Integer): Integer; override;
  public
    function GetPreamble: TBytes; override;
    class function Encoding: TEncoding;
    function GetMaxByteCount(CharCount: Integer): Integer; override;
    function GetMaxCharCount(ByteCount: Integer): Integer; override;
  end;


procedure TFormCustomEncoding.btnTestEncoding1Click(Sender: TObject);
begin
  Memo1.Lines.LoadFromFile (ChangeFileExt(Application.ExeName, '.dpr'));
  Memo1.Lines.SaveToFile ('project32.txt', TUTF32Encoding.Encoding);
  Memo1.Lines.LoadFromFile ('project32.txt', TUTF32Encoding.Encoding);
end;

{ TMyEncoding }

class function TUTF32Encoding.Encoding: TEncoding;
begin
  if not Assigned (UTF32Encoding) then
    UTF32Encoding := TUTF32Encoding.Create; // global, singleton
  Result := UTF32Encoding;
end;

function TUTF32Encoding.GetByteCount(Chars: PChar; CharCount: Integer): Integer;
begin
  Result := CharCount * SizeOf(UCS4Char);
end;

function TUTF32Encoding.GetBytes(Chars: PChar; CharCount: Integer; Bytes: PByte;
  ByteCount: Integer): Integer;
var
  u4String: UCS4String;
begin
  Result := CharCount * SizeOf(UCS4Char);
  u4String := UnicodeStringToUCS4String (UnicodeString (Chars));
  Move(u4String[0], Bytes^, Result);
end;

function TUTF32Encoding.GetCharCount(Bytes: PByte; ByteCount: Integer): Integer;
begin
  Result := ByteCount div SizeOf(UCS4Char);
end;

function TUTF32Encoding.GetChars(Bytes: PByte; ByteCount: Integer; Chars: PChar;
  CharCount: Integer): Integer;
var
  u4String: UCS4String;
  uString: UnicodeString;
begin
  Result := CharCount;
  SetLength (u4String, Result);
  Move(Bytes^, u4String[0], CharCount * SizeOf(UCS4Char));
  uString := UCS4StringToUnicodeString (u4String);
  Move(uString[1], Chars^, CharCount * SizeOf(Char));
end;

function TUTF32Encoding.GetMaxByteCount(CharCount: Integer): Integer;
begin
  Result := (CharCount + 1) * 4;
end;

function TUTF32Encoding.GetMaxCharCount(ByteCount: Integer): Integer;
begin
  Result := (ByteCount div 4) + (ByteCount and 1) + 1;
end;

function TUTF32Encoding.GetPreamble: TBytes;
begin
  // UTF-32, little-endian
  SetLength(Result, 4);
  Result[0] := $FF;
  Result[1] := $FE;
  Result[2] := $00;
  Result[3] := $00;
end;

procedure TFormCustomEncoding.btnTestEncoding2Click(Sender: TObject);
begin
  Memo1.Lines.LoadFromFile ('Utf8Text.txt');
  Memo1.Lines.SaveToFile ('Utf32.txt', TUTF32Encoding.Encoding);
  Memo1.Lines.LoadFromFile ('Utf32.txt', TUTF32Encoding.Encoding);
end;

procedure TFormCustomEncoding.btnMismatchClick(Sender: TObject);
begin
  Memo1.Lines.LoadFromFile ('Utf8Text.txt');
  Memo1.Lines.SaveToFile ('Utf32.txt', TUTF32Encoding.Encoding);
  Memo1.Lines.LoadFromFile ('Utf32.txt'); // uses the default, doens't pick up the preamble
end;

end.
