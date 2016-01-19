program ListMonitor;

uses
  Forms,
  ListMonitor_MainForm in 'ListMonitor_MainForm.pas' {FormListMonitor},
  ListMonitor_Threads in 'ListMonitor_Threads.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormListMonitor, FormListMonitor);
  Application.Run;
end.
