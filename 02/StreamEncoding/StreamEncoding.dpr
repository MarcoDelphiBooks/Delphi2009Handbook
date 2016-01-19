program StreamEncoding;

uses
  Forms,
  StreamEncoding_MainForm in 'StreamEncoding_MainForm.pas' {FormStreamEncoding};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormStreamEncoding, FormStreamEncoding);
  Application.Run;
end.
