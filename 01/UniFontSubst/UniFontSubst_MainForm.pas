unit UniFontSubst_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormUniFontSubst = class(TForm)
    btnPaintOnce: TButton;
    btnStartTimer: TButton;
    btnStopTimer: TButton;
    Timer1: TTimer;
    procedure btnPaintOnceClick(Sender: TObject);
    procedure btnStartTimerClick(Sender: TObject);
    procedure btnStopTimerClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    procedure PaintFonts;
  end;

var
  FormUniFontSubst: TFormUniFontSubst;

implementation

{$R *.dfm}

uses
  Character;

procedure TFormUniFontSubst.btnPaintOnceClick(Sender: TObject);
begin
  PaintFonts;
end;

const
  numberOfChars = 16;

procedure TFormUniFontSubst.btnStartTimerClick(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TFormUniFontSubst.btnStopTimerClick(Sender: TObject);
begin
  Timer1.Enabled := False;
end;

procedure TFormUniFontSubst.PaintFonts;
var
  str1: string;
  nPoint: Word;
  I: Integer;
  aRect: TRect;
begin
  nPoint := 32 + random (1024*64 - 32 - numberOfChars);
  if (nPoint >= $D800 - numberOfChars) and (nPoint <= $DFFF) then
  begin
    // retry and skip
    PaintFonts;
    Exit;
  end;

  str1 := ConvertFromUtf32(UCS4Char (nPoint));
  for I := 1 to numberOfChars do
    str1 := str1 + ConvertFromUtf32(UCS4Char (nPoint + I));
  // now paint
  Canvas.Font.Name := 'Times New Roman';
  aRect := Rect(10, 60, 250, 100);
  DrawText(Canvas.Handle, PChar (str1), Length (str1), aRect, DT_LEFT or DT_SINGLELINE or DT_EXPANDTABS or DT_NOPREFIX);
  TextOut (Canvas.Handle, 260, 60, PChar (str1), Length (str1));
  aRect := Rect(510, 60, 750, 100);
  ExtTextOut (Canvas.Handle, 510, 60, 0, aRect, PChar (str1), Length (str1), nil);

  Canvas.Font.Name := 'Tahoma';
  aRect := Rect(10, 110, 300, 150);
  DrawText(Canvas.Handle, PChar (str1), Length (str1), aRect, DT_LEFT or DT_SINGLELINE or DT_EXPANDTABS or DT_NOPREFIX);
  TextOut (Canvas.Handle, 260, 110, PChar (str1), Length (str1));
  aRect := Rect(510, 110, 900, 150);
  ExtTextOut (Canvas.Handle, 510, 110, 0, aRect, PChar (str1), Length (str1), nil);

  Canvas.Font.Name := 'Arial';
  aRect := Rect(10, 160, 300, 200);
  DrawText(Canvas.Handle, PChar (str1), Length (str1), aRect, DT_LEFT or DT_SINGLELINE or DT_EXPANDTABS or DT_NOPREFIX);
  TextOut (Canvas.Handle, 260, 160, PChar (str1), Length (str1));
  aRect := Rect(510, 160, 750, 200);
  ExtTextOut (Canvas.Handle, 510, 160, 0, aRect, PChar (str1), Length (str1), nil);
end;

procedure TFormUniFontSubst.Timer1Timer(Sender: TObject);
begin
  PaintFonts;
end;

initialization
  Randomize;

end.
