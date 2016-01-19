program CheckBoxHeader;

uses
  Forms,
  CheckBoxHeader_MainForm in 'CheckBoxHeader_MainForm.pas' {FormCheckBoxHeader};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormCheckBoxHeader, FormCheckBoxHeader);
  Application.Run;
end.
