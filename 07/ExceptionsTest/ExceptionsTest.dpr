program ExceptionsTest;

uses
  Forms,
  ExceptionsTest_MainForm in 'ExceptionsTest_MainForm.pas' {FormExceptions};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormExceptions, FormExceptions);
  Application.Run;
end.
