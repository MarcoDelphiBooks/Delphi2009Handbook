program UniCds;

uses
  Forms,
  UniCds_MainForm in 'UniCds_MainForm.pas' {FormUniCds};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormUniCds, FormUniCds);
  Application.Run;
end.
