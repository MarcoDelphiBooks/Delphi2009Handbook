program HintsDemo;

uses
  Forms,
  HintsDemo_MainForm in 'HintsDemo_MainForm.pas' {Form30};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm30, Form30);
  Application.Run;
end.
