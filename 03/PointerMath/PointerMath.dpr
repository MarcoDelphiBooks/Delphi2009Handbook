program PointerMath;

uses
  Forms,
  PointerMath_MainForm in 'PointerMath_MainForm.pas' {FormPointerMath};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPointerMath, FormPointerMath);
  Application.Run;
end.
