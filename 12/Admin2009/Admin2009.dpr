program Admin2009;

uses
  Forms,
  Admin2009_MainForm in 'Admin2009_MainForm.pas' {FormAdmin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormAdmin, FormAdmin);
  Application.Run;
end.
