unit AppFont_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormAppFont = class(TForm)
    Memo1: TMemo;
    btnScreenFont: TButton;
    btnGetMyFont: TButton;
    cbUseLatestCommonDialogs: TCheckBox;
    btnChangeFont: TButton;
    procedure btnGetMyFontClick(Sender: TObject);
    procedure btnScreenFontClick(Sender: TObject);
    procedure btnChangeFontClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAppFont: TFormAppFont;

implementation

{$R *.dfm}

procedure TFormAppFont.btnChangeFontClick(Sender: TObject);
begin
  Application.DefaultFont.Name := 'Times New Roman';
  Application.DefaultFont.Size := 10;
end;

procedure TFormAppFont.btnGetMyFontClick(Sender: TObject);
begin
  Memo1.Lines.Add (btnGetMyFont.Font.Name);
end;

procedure TFormAppFont.btnScreenFontClick(Sender: TObject);
begin
  Screen.MessageFont.Name := 'Segoe UI';
  Screen.MessageFont.Size := Screen.MessageFont.Size + 2;
  UseLatestCommonDialogs := cbUseLatestCommonDialogs.Checked;
  ShowMessage ('Hello');
  MessageDlg ('Hello', mtINformation, [mbOK], 0);
end;

end.
