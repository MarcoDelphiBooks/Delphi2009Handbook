program DataRibbon;

uses
  Forms,
  DataRibbon_MainForm in 'DataRibbon_MainForm.pas' {FormDataRibbon};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormDataRibbon, FormDataRibbon);
  Application.Run;
end.
