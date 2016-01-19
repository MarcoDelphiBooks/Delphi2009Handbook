program CategoryPanels;

uses
  Forms,
  CategoryPanels_MainForm in 'CategoryPanels_MainForm.pas' {FormCategoryPanels};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormCategoryPanels, FormCategoryPanels);
  Application.Run;
end.
