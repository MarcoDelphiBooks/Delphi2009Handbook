program MoveStrings;

uses
  Forms,
  MoveStrings_MainForm in 'MoveStrings_MainForm.pas' {FormMoveStrings};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMoveStrings, FormMoveStrings);
  Application.Run;
end.
