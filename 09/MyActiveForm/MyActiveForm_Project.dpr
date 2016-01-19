library MyActiveForm_Project;

uses
  ComServ,
  MyActiveForm_TLB in 'MyActiveForm_TLB.pas',
  MyActiveForm_Form in 'MyActiveForm_Form.pas' {MyActiveForm: TActiveForm} {MyActiveForm: CoClass},
  MyActiveForm_About in 'MyActiveForm_About.pas' {MyActiveFormAbout};

{$E ocx}

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
end.
