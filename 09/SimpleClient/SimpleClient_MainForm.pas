unit SimpleClient_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, SimpleServer_TLB;

type
  TFormSimpleClient = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    Button2: TButton;
    SpinEdit2: TSpinEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    Num1, Num2 : INumberProp;
  end;

var
  FormSimpleClient: TFormSimpleClient;

implementation

{$R *.dfm}

procedure TFormSimpleClient.Button1Click(Sender: TObject);
begin
  // change
  Num1.Value := SpinEdit1.Value;
  Label1.Caption := 'Num1: ' + IntToStr (Num1.Value);

end;

procedure TFormSimpleClient.Button2Click(Sender: TObject);
begin
  // increase
  Num1.Increase;
  Label1.Caption := 'Num1: ' + IntToStr (Num1.Value);

end;

procedure TFormSimpleClient.Button3Click(Sender: TObject);
begin
  Num2.Value := SpinEdit2.Value;
  Label2.Caption := 'Num2: ' + IntToStr (Num2.Value);
end;

procedure TFormSimpleClient.Button4Click(Sender: TObject);
begin
  Num2.Increase;
  Label2.Caption := 'Num2: ' + IntToStr (Num2.Value);
end;

procedure TFormSimpleClient.Button5Click(Sender: TObject);
var
  Num3: INumberProp;
begin
  // create a new temporary COM object
  Num3 := CoNumberProp.Create;
  Num3.Value := 100;
  Num3.Increase;
  ShowMessage ('Num3: ' + IntToStr (Num3.Value));
end;

procedure TFormSimpleClient.FormCreate(Sender: TObject);
begin
  // create first object
  Num1 := CoNumberProp.Create;
  Num1.Value := SpinEdit1.Value;
  Label1.Caption := 'Num1: ' + IntToStr (Num1.Value);
  Button1.Enabled := True;
  Button2.Enabled := True;

  // create second object
  Num2 := CoNumberProp.Create;
  Label2.Caption := 'Num2: ' + IntToStr (Num2.Value);
  Button3.Enabled := True;
  Button4.Enabled := True;
end;

end.
