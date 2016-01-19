program AnonTiming;

uses
  Forms,
  AnonTiming_MainForm in 'AnonTiming_MainForm.pas' {FormAnonTiming};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormAnonTiming, FormAnonTiming);
  Application.Run;
end.
