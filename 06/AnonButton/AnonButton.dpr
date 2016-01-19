program AnonButton;

uses
  Forms,
  AnonButton_MainForm in 'AnonButton_MainForm.pas' {FormAnonButton};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormAnonButton, FormAnonButton);
  Application.Run;
end.
