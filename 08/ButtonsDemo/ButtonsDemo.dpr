program ButtonsDemo;

uses
  Forms,
  ButtonsDemo_MainForm in 'ButtonsDemo_MainForm.pas' {FormButtonsDemo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormButtonsDemo, FormButtonsDemo);
  Application.Run;
end.
