program GroupingList;

uses
  Forms,
  GroupingList_MainForm in 'GroupingList_MainForm.pas' {FormGroupingList};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormGroupingList, FormGroupingList);
  Application.Run;
end.
