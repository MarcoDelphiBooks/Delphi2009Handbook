program UniClipboard;

uses
  Forms,
  UniClipboard_MainForm in 'UniClipboard_MainForm.pas' {FormUniClipboard};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormUniClipboard, FormUniClipboard);
  Application.Run;
end.
