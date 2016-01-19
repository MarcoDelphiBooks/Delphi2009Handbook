unit MyTrayIconClick_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus;

type
  TFormMyTrayIconClick = class(TForm)
    TrayIcon1: TTrayIcon;
    PopupMenu1: TPopupMenu;
    one1: TMenuItem;
    two1: TMenuItem;
    three1: TMenuItem;
    four1: TMenuItem;
    N1: TMenuItem;
    Close1: TMenuItem;
    procedure one1Click(Sender: TObject);
    procedure TrayIcon1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TrayIcon1BalloonClick(Sender: TObject);
    procedure Close1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMyTrayIconClick: TFormMyTrayIconClick;

implementation

{$R *.dfm}

procedure TFormMyTrayIconClick.Close1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMyTrayIconClick.one1Click(Sender: TObject);
begin
  Show;
end;

procedure TFormMyTrayIconClick.TrayIcon1BalloonClick(Sender: TObject);
begin
  ShowMessage ('Balloon Hint Clicked');
end;

procedure TFormMyTrayIconClick.TrayIcon1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TrayIcon1.ShowBalloonHint;
end;

end.
