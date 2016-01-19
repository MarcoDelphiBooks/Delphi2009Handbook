program RibbonOne;

uses
  Forms,
  RibbonOne_MainForm in 'RibbonOne_MainForm.pas' {FormRibbonOne};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormRibbonOne, FormRibbonOne);
  Application.Run;
end.
