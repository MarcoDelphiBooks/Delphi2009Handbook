program PlainTips;

uses
  Forms,
  PlainTips_MainForm in 'PlainTips_MainForm.pas' {FormPlainTips};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPlainTips, FormPlainTips);
  Application.Run;
end.
