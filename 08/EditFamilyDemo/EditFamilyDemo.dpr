program EditFamilyDemo;

uses
  Forms,
  EditFamily_MainForm in 'EditFamily_MainForm.pas' {FormEditFamily};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormEditFamily, FormEditFamily);
  Application.Run;
end.
