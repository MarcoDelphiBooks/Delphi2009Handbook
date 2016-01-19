unit Utf8Test_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm30 = class(TForm)
    btnTrivial: TButton;
    Memo1: TMemo;
    btnAnsi: TButton;
    procedure btnTrivialClick(Sender: TObject);
    procedure btnAnsiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form30: TForm30;

implementation

{$R *.dfm}

procedure TForm30.btnAnsiClick(Sender: TObject);
var
  str8: Utf8String;
  strAnsi: AnsiString;
begin
  str8 := 'Cantù';
  Memo1.Lines.Add ('UTF-8');
  Memo1.Lines.Add('Length: ' + IntToStr (Length (str8)));
  Memo1.Lines.Add('5: ' + IntToStr (Ord (str8[5])));
  Memo1.Lines.Add('6: ' + IntToStr (Ord (str8[6])));

  strAnsi := str8;
  Memo1.Lines.Add ('ANSI');
  Memo1.Lines.Add('Length: ' + IntToStr (Length (strAnsi)));
  Memo1.Lines.Add('5: ' + IntToStr (Ord (strAnsi[5])));
end;

procedure TForm30.btnTrivialClick(Sender: TObject);
var
  str8: Utf8String;
  str16: string;
begin
  str8 := 'Cantù';
  Memo1.Lines.Add ('UTF-8');
  Memo1.Lines.Add('Length: ' + IntToStr (Length (str8)));
  Memo1.Lines.Add('5: ' + IntToStr (Ord (str8[5])));
  Memo1.Lines.Add('6: ' + IntToStr (Ord (str8[6])));

  str16 := str8;
  Memo1.Lines.Add ('UTF-16');
  Memo1.Lines.Add('Length: ' + IntToStr (Length (str16)));
  Memo1.Lines.Add('5: ' + IntToStr (Ord (str16[5])));
end;

end.
