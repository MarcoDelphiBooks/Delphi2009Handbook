unit ListMonitor_Threads;

interface

uses
  Classes, StdCtrls, Forms, SysUtils, Windows;

type
  TAddToListThread = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

procedure TAddToListThread.Execute;
var
  aList: TListBox;
  I: Integer;
begin
  while not Terminated do
  begin
    aList := Application.MainForm.FindComponent (
      'ListBox' + IntToStr (GetTickCount mod 3 + 1)) as TListBox;
    System.TMonitor.Enter (aList);
    try
      aList.Items.Add(IntToStr (GetCurrentThreadID) + ' starting: ' + TimeToStr (Now));
      for I := 1 to 30 do
        if not Terminated then
          Sleep (100)
        else
          Exit;
      aList.Items.Add(IntToStr (GetCurrentThreadID) + ' stopping: ' + TimeToStr (Now));
    finally
      System.TMonitor.Exit (aList);
    end;
  end;
end;

end.
