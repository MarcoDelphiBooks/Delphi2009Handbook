program Utf8Test;

uses
  Forms,
  Utf8Test_MainForm in 'Utf8Test_MainForm.pas' {Form30};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm30, Form30);
  Application.Run;
end.
