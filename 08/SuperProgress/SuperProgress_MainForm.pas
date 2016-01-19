unit SuperProgress_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TFormSuperProgress = class(TForm)
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    ProgressBar3: TProgressBar;
    btnLoop: TButton;
    btnJump: TButton;
    btnJumpBack: TButton;
    RadioGroup1: TRadioGroup;
    procedure btnLoopClick(Sender: TObject);
    procedure btnJumpClick(Sender: TObject);
    procedure btnJumpBackClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSuperProgress: TFormSuperProgress;

implementation

{$R *.dfm}

procedure TFormSuperProgress.btnJumpBackClick(Sender: TObject);
begin
  ProgressBar2.Position := (ProgressBar2.Position - 40) mod 100;
  ProgressBar3.Position := (ProgressBar3.Position - 40) mod 100;
end;

procedure TFormSuperProgress.btnJumpClick(Sender: TObject);
begin
  ProgressBar2.Position := (ProgressBar2.Position + 20) mod 100;
  ProgressBar3.Position := (ProgressBar3.Position + 20) mod 100;
end;

procedure TFormSuperProgress.btnLoopClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to 99 do
  begin
    ProgressBar2.Position := I*2 mod 100;
    ProgressBar3.Position := I*2 mod 100;
    Application.ProcessMessages;
    Sleep (100);
    Caption := 'SuperProgress ' + IntToStr (I);
  end;
end;

procedure TFormSuperProgress.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0: ProgressBar2.State := pbsNormal;
    1: ProgressBar2.State := pbsError;
    2: ProgressBar2.State := pbsPaused;
  end;
end;

end.
