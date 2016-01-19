program ThinPlus2009Server;

uses
  Forms,
  AppSForm in 'AppSForm.pas' {ServerForm},
  AppSRDM in 'AppSRDM.pas' {AppServerPlus: TRemoteDataModule} {AppServerPlus: CoClass};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TServerForm, ServerForm);
  Application.Run;
end.
