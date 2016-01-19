program DbEditPlus;

uses
  Forms,
  DbEditPlus_MainForm in 'DbEditPlus_MainForm.pas' {FormDbEditPlus};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormDbEditPlus, FormDbEditPlus);
  Application.Run;
end.
