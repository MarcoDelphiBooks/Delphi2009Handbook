unit HintsDemo_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, ExtCtrls;

type
  TForm30 = class(TForm)
    btnCustomHint: TButton;
    BalloonHint1: TBalloonHint;
    btnShowHint: TButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    Button3: TButton;
    Label1: TLabel;
    procedure btnShowHintMouseEnter(Sender: TObject);
    procedure btnShowHintMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form30: TForm30;

implementation

{$R *.dfm}

procedure TForm30.btnShowHintMouseEnter(Sender: TObject);
begin
  BalloonHint1.Title := 'Hint Title';
  BalloonHint1.ImageIndex := 1;
  BalloonHint1.Description := 'This is a hint suggesting what a user would do';
  BalloonHint1.HideAfter := 5000;
  BalloonHint1.ShowHint;
end;

procedure TForm30.btnShowHintMouseLeave(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

end.
