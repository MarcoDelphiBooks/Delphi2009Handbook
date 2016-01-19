program GraphicsTest;

uses
  Forms,
  GraphicsTest_MainForm in 'GraphicsTest_MainForm.pas' {FormGraphicsTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormGraphicsTest, FormGraphicsTest);
  Application.Run;
end.
