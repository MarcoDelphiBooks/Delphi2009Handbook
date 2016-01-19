program SimpleClient;

uses
  Forms,
  SimpleClient_MainForm in 'SimpleClient_MainForm.pas' {FormSimpleClient},
  SimpleServer_TLB in 'SimpleServer_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormSimpleClient, FormSimpleClient);
  Application.Run;
end.
