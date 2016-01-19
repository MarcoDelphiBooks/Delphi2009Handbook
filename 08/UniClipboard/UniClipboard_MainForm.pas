unit UniClipboard_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, StdCtrls;

type
  TFormUniClipboard = class(TForm)
    btnCopy: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    btnJapanese: TButton;
    btnPaste: TButton;
    btnWinVersion: TButton;
    procedure btnCopyClick(Sender: TObject);
    procedure btnJapaneseClick(Sender: TObject);
    procedure btnPasteClick(Sender: TObject);
    procedure btnWinVersionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUniClipboard: TFormUniClipboard;

implementation

uses
  ClipBrd;

{$R *.dfm}

procedure TFormUniClipboard.btnCopyClick(Sender: TObject);
begin
  Clipboard.Open;
  Clipboard.AsText := Edit1.Text;
  Clipboard.Close;
end;

procedure TFormUniClipboard.btnJapaneseClick(Sender: TObject);
begin
  Edit1.Text := #$3042#$3044;
end;

procedure TFormUniClipboard.btnPasteClick(Sender: TObject);
begin
  Clipboard.Open;
  if Clipboard.HasFormat(CF_TEXT) then
    Memo1.Lines.Add('CF_TEXT');
  if Clipboard.HasFormat(CF_UNICODETEXT) then
    Memo1.Lines.Add('CF_UNICODETEXT');
  Memo1.Lines.Add(Clipboard.AsText);
  Clipboard.Close;
end;

procedure TFormUniClipboard.btnWinVersionClick(Sender: TObject);
begin
  // code snippet not related with the Clipboard demo
  if CheckWin32Version(6) then
    ShowMessage ('Running on Windows Vista or later');
  if CheckWin32Version(5) then
    ShowMessage ('Running on Windows 2000 or later');
end;

end.
