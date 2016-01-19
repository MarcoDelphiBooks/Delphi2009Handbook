program CustomEncoding;

uses
  Forms,
  CustomEncoding_MainForm in 'CustomEncoding_MainForm.pas' {FormCustomEncoding};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormCustomEncoding, FormCustomEncoding);
  Application.Run;
end.
