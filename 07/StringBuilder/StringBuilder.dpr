program StringBuilder;

uses
  Forms,
  StringBuilder_MainForm in 'StringBuilder_MainForm.pas' {FormSBuilder};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormSBuilder, FormSBuilder);
  Application.Run;
end.
