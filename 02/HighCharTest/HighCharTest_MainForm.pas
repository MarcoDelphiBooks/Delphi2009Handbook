unit HighCharTest_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormHighCharTest = class(TForm)
    btnEuro: TButton;
    Memo1: TMemo;
    btnJpn: TButton;
    btnStringLit: TButton;
    procedure btnEuroClick(Sender: TObject);
    procedure btnJpnClick(Sender: TObject);
    procedure btnStringLitClick(Sender: TObject);
  private
    procedure Log (const strMsg: string);
  public
    { Public declarations }
  end;

var
  FormHighCharTest: TFormHighCharTest;

implementation

{$R *.dfm}

procedure TFormHighCharTest.btnEuroClick(Sender: TObject);
var
  str1: string;
begin
  // default behavior
  str1 := #$80;
  Log (str1 + ' - ' + IntToStr (Ord (str1[1])));

  {$HIGHCHARUNICODE OFF}
  str1 := #$80;
  Log (str1 + ' - ' + IntToStr (Ord (str1[1])));

  {$HIGHCHARUNICODE ON}
  str1 := #$80;
  Log (str1 + ' - ' + IntToStr (Ord (str1[1])));

  {$HIGHCHARUNICODE OFF} // regardless
  str1 := #$0080;
  Log (str1 + ' - ' + IntToStr (Ord (str1[1])));
  {$HIGHCHARUNICODE ON} // regardless
  str1 := #$0080;
  Log (str1 + ' - ' + IntToStr (Ord (str1[1])));
end;


procedure TFormHighCharTest.btnJpnClick(Sender: TObject);
var
  str1: string;
begin
  str1 := #$3042#$3044;
  Log (str1 + ' - ' + IntToStr (Ord (str1[1])) + ' - ' + IntToStr (Ord (str1[2])));
end;

procedure TFormHighCharTest.btnStringLitClick(Sender: TObject);
var
  strU: string;
  strA: AnsiString;
begin
  strU := 'one€';
  strA := 'one€';

  Log (strU + ' - ' + IntToStr (Ord (strU[4])));
  Log (strA + ' - ' + IntToStr (Ord (strA[4])));
end;

procedure TFormHighCharTest.Log(const strMsg: string);
begin
  Memo1.Lines.Add (strMsg);
end;

end.
