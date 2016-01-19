program LatinTest;

uses
  Forms,
  LatinTest_MainForm in 'LatinTest_MainForm.pas' {FormLatinTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLatinTest, FormLatinTest);
  Application.Run;
end.
