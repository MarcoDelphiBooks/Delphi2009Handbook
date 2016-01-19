program CharTest;

uses
  Forms,
  CharTest_MainForm in 'CharTest_MainForm.pas' {FormCharTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormCharTest, FormCharTest);
  Application.Run;
end.
