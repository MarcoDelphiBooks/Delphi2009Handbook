program LabelsDemo;

uses
  Forms,
  LabelsDemo_MainForm in 'LabelsDemo_MainForm.pas' {FormLabelsDemo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLabelsDemo, FormLabelsDemo);
  Application.Run;
end.
