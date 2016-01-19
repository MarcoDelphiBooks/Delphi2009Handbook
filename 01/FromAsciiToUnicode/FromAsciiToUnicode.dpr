program FromAsciiToUnicode;

uses
  Forms,
  FromAscii_MainForm in 'FromAscii_MainForm.pas' {Form30};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm30, Form30);
  Application.Run;
end.
