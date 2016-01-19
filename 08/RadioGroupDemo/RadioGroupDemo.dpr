program RadioGroupDemo;

uses
  Forms,
  RadioGroupDemo_MainForm in 'RadioGroupDemo_MainForm.pas' {FormRadioGroupDemo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormRadioGroupDemo, FormRadioGroupDemo);
  Application.Run;
end.
