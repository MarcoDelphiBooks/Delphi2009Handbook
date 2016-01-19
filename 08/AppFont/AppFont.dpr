program AppFont;

uses
  Forms, SysUtils,
  AppFont_MainForm in 'AppFont_MainForm.pas' {FormAppFont},
  AppFont_Secondary in 'AppFont_Secondary.pas' {FormSecondary};

{$R *.res}

begin
  Application.Initialize;

  if CheckWin32Version(6) then
  begin
    Application.DefaultFont.Name := 'Segoe UI';
    Application.DefaultFont.Size := 9;
  end;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormAppFont, FormAppFont);
  Application.CreateForm(TFormSecondary, FormSecondary);
  Application.Run;
end.
