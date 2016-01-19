program SuperProgress;

uses
  Forms,
  SuperProgress_MainForm in 'SuperProgress_MainForm.pas' {FormSuperProgress};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormSuperProgress, FormSuperProgress);
  Application.Run;
end.
