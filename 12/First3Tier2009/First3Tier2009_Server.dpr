program First3Tier2009_Server;

uses
  Forms,
  First3Tier2009_ServerMainForm in 'First3Tier2009_ServerMainForm.pas' {FormFirst3Tier2009Server},
  First3Tier2009_ServerModule in 'First3Tier2009_ServerModule.pas' {DSFirst3TierServerModule: TDSServerModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormFirst3Tier2009Server, FormFirst3Tier2009Server);
  Application.CreateForm(TDSFirst3TierServerModule, DSFirst3TierServerModule);
  Application.Run;
end.
