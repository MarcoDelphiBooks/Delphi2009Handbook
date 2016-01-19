program VariantOver_D2007;

uses
  Forms,
  VariantOver_MainForm in 'VariantOver_MainForm.pas' {FormVariantOver};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormVariantOver, FormVariantOver);
  Application.Run;
end.
