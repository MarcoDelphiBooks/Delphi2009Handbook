program CharTroubles;

uses
  Forms,
  CharTroubles_MainForm in 'CharTroubles_MainForm.pas' {FormCharTroubles};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormCharTroubles, FormCharTroubles);
  Application.Run;
end.
