program RibbonEditorTips;

uses
  Forms,
  RibbonEditorTips_MainForm in 'RibbonEditorTips_MainForm.pas' {RibbonEditorForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TRibbonEditorForm, RibbonEditorForm);
  Application.Run;
end.
