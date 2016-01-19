program DsnapMethodsClient;

uses
  Forms,
  DsnapMethodsClient_ClientForm in 'DsnapMethodsClient_ClientForm.pas' {FormDsmcClient},
  DsnapMethodsClient_Proxy in 'DsnapMethodsClient_Proxy.pas',
  DsnapMethodsClient_MainForm in 'DsnapMethodsClient_MainForm.pas' {FormDsmcMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormDsmcMain, FormDsmcMain);
  Application.Run;
end.
