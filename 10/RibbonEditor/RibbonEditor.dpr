program RibbonEditor;

uses
  Forms,
  RibbonEditor_MainForm in 'RibbonEditor_MainForm.pas' {RibbonEditorForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TRibbonEditorForm, RibbonEditorForm);
  Application.Run;
end.
