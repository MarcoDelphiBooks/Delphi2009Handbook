program PointerMathD2007;

uses
  Forms,
  PointerMath_MainForm_D2007 in 'PointerMath_MainForm_D2007.pas' {FormPointerMath};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPointerMath, FormPointerMath);
  Application.Run;
end.
