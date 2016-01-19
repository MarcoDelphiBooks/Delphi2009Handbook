program StringTest;

uses
  Forms,
  StringTest_MainForm in 'StringTest_MainForm.pas' {FormStringTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormStringTest, FormStringTest);
  Application.Run;
end.
