program MyTrayIconClick;

uses
  Forms,
  MyTrayIconClick_MainForm in 'MyTrayIconClick_MainForm.pas' {FormMyTrayIconClick};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskBar := True;
  Application.ShowMainForm := False;
  Application.CreateForm(TFormMyTrayIconClick, FormMyTrayIconClick);
  Application.Run;
end.
