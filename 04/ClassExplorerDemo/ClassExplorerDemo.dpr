program ClassExplorerDemo;

uses
  Forms,
  ClassExplorerDemo_MainForm in 'ClassExplorerDemo_MainForm.pas' {FormClassExplorerDemo},
  ClassExplorerDemo_Classes in 'ClassExplorerDemo_Classes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormClassExplorerDemo, FormClassExplorerDemo);
  Application.Run;
end.
