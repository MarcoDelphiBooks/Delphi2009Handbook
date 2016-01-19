program UniFontSubst;

uses
  Forms,
  UniFontSubst_MainForm in 'UniFontSubst_MainForm.pas' {FormUniFontSubst};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormUniFontSubst, FormUniFontSubst);
  Application.Run;
end.
