program CustomFields;

uses
  Forms,
  CustomFields_MainForm in 'CustomFields_MainForm.pas' {FormCustomFields};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormCustomFields, FormCustomFields);
  Application.Run;
end.
