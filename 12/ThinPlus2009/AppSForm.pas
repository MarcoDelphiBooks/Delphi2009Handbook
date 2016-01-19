unit AppSForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DSCommonServer, DSTCPServerTransport, DSServer;

type
  TServerForm = class(TForm)
    lbLog: TListBox;
    DSServer1: TDSServer;
    DSServerClass1: TDSServerClass;
    DSTCPServerTransport1: TDSTCPServerTransport;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
  private
    { Private declarations }
  public
    procedure Add (strLog: string);
  end;

var
  ServerForm: TServerForm;

implementation

{$R *.DFM}

uses
  AppSRDM;

{ TServerForm }

procedure TServerForm.Add(strLog: string);
begin
  // add item and move to it
  lbLog.ItemIndex := lbLog.Items.Add (strLog);
end;

procedure TServerForm.DSServerClass1GetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass := TAppServerPlus;
end;

end.
