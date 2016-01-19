library SimpleServer;

uses
  ComServ,
  SimpleServer_TLB in 'SimpleServer_TLB.pas',
  NumImpl in 'NumImpl.pas';

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
end.
