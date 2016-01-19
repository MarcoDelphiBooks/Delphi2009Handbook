program ButtonEdits;

uses
  Forms,
  ButtonEdits_MainForm in 'ButtonEdits_MainForm.pas' {FormButtonEdits};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormButtonEdits, FormButtonEdits);
  Application.Run;
end.
