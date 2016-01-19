program StreamTroubles;

uses
  Forms,
  StreamTroubles_MainForm in 'StreamTroubles_MainForm.pas' {FormStreamTroubles};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormStreamTroubles, FormStreamTroubles);
  Application.Run;
end.
