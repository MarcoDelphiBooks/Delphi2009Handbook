unit UnicodeWinApiForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm30 = class(TForm)
    btnMessageA: TButton;
    btnMessageW: TButton;
    btnTextOut: TButton;
    procedure btnMessageAClick(Sender: TObject);
    procedure btnMessageWClick(Sender: TObject);
    procedure btnTextOutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form30: TForm30;

implementation

{$R *.dfm}

procedure TForm30.btnMessageAClick(Sender: TObject);
begin
  MessageBoxA (Handle, 'ইউনিকোড কী','Caption ',   MB_OK);
end;

procedure TForm30.btnMessageWClick(Sender: TObject);
var
  ইউন: WideString;
begin
  ইউন := 'ইউনিক ক';
  MessageBoxW (Handle, PWChar (ইউন), 'Caption',    MB_OK);
end;

procedure TForm30.btnTextOutClick(Sender: TObject);
var
  ws: WideString;
begin
  ws := 'ইউনিক ক';
  Canvas.Font.Size := 20;
  TextOutW(Canvas.Handle, 104, 224, PWChar(ws), Length (ws));
end;

end.
