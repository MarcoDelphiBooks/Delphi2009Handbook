program HighCharTest;

uses
  Forms,
  HighCharTest_MainForm in 'HighCharTest_MainForm.pas' {FormHighCharTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormHighCharTest, FormHighCharTest);
  Application.Run;
end.
