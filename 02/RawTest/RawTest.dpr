program RawTest;

uses
  Forms,
  RawTest_MainForm in 'RawTest_MainForm.pas' {FormRawTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormRawTest, FormRawTest);
  Application.Run;
end.
