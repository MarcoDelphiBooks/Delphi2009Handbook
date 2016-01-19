program First3Tier2009_Client;

uses
  Forms,
  First3Tier2009_ClientMainForm in 'First3Tier2009_ClientMainForm.pas' {FormFirst3Tier2009Client},
  First3Tier2009_ClientClasses in 'First3Tier2009_ClientClasses.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormFirst3Tier2009Client, FormFirst3Tier2009Client);
  Application.Run;
end.
