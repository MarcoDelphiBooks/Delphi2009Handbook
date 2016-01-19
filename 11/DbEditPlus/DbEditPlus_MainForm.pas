unit DbEditPlus_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, DBClient, ExtCtrls;

type
  TDbEdit = class (DBCtrls.TDBEdit)
  public
    property NumbersOnly;
    property TextHint;
  end;

  TFormDbEditPlus = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1CustNo: TFloatField;
    ClientDataSet1Company: TStringField;
    ClientDataSet1Addr1: TStringField;
    ClientDataSet1Addr2: TStringField;
    ClientDataSet1City: TStringField;
    ClientDataSet1State: TStringField;
    ClientDataSet1Zip: TStringField;
    ClientDataSet1Country: TStringField;
    ClientDataSet1Phone: TStringField;
    ClientDataSet1FAX: TStringField;
    ClientDataSet1TaxRate: TFloatField;
    ClientDataSet1Contact: TStringField;
    ClientDataSet1LastInvoiceDate: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBNavigator1: TDBNavigator;
    btnTextHint: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnTextHintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDbEditPlus: TFormDbEditPlus;

implementation

{$R *.dfm}

procedure TFormDbEditPlus.btnTextHintClick(Sender: TObject);
var
  aControl: TWinControl;
begin
  aControl := ActiveControl;
  DbEdit4.TextHint := 'Enter second address line';
  DbEdit4.SetFocus;
  aControl.SetFocus;
end;

procedure TFormDbEditPlus.FormCreate(Sender: TObject);
begin
  ClientDataSet1.Open;
  DbEdit1.NumbersOnly := True;
end;

end.
