program UniApiSpeedD7;

uses
  Forms,
  UniApi_MainForm in 'UniApi_MainForm.pas' {Form30};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm30, Form30);
  Application.Run;
end.
