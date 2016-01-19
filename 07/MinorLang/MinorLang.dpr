program MinorLang;

uses
  Forms,
  MinorLang_MainForm in 'MinorLang_MainForm.pas' {FormMinorLang};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMinorLang, FormMinorLang);
  Application.Run;
end.
