unit AnonButton_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TAnonNotif = reference to procedure (Sender: TObject);

  // interceptor class
  TButton = class (StdCtrls.TButton)
  private
    FAnonClick: TAnonNotif;
    procedure SetAnonClick(const Value: TAnonNotif);
  public
    procedure Click; override;
  public
    property AnonClick: TAnonNotif read FAnonClick write SetAnonClick;
  end;

  TFormAnonButton = class(TForm)
    btnInvoke: TButton;
    btnAssign: TButton;
    btnKeepRef: TButton;
    btnLeftInvokeForm: TButton;
    btnRightInvokeForm: TButton;
    procedure btnAssignClick(Sender: TObject);
    procedure btnKeepRefClick(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAnonButton: TFormAnonButton;

implementation


{$R *.dfm}

procedure TFormAnonButton.btnAssignClick(Sender: TObject);
begin
  btnInvoke.AnonClick :=
    procedure (Sender: TObject)
    begin
      ShowMessage ((Sender as TButton).Caption);
    end;
end;

{ TAnonButton }

procedure TButton.Click;
begin
  // execute this before standard processing
  // (including running OnClick)
  if Assigned (FAnonClick) then
    FAnonClick (self);
  inherited;
end;

procedure TButton.SetAnonClick(const Value: TAnonNotif);
begin
  FAnonClick := Value;
end;


procedure TFormAnonButton.btnKeepRefClick(Sender: TObject);
var
  aCompRef: TComponent;
begin
  aCompRef := Sender as TComponent;
  btnInvoke.AnonClick :=
    procedure (Sender: TObject)
    begin
      ShowMessage ((Sender as TButton).Caption + ' assigned by ' +
        aCompRef.Name);
    end;
end;

procedure TFormAnonButton.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    btnLeftInvokeForm.AnonClick :=
      procedure (Sender: TObject)
      begin
        (Sender as TButton).Caption :=
          'Last left on [' +
            IntToStr (X) + ',' + IntToStr (Y) + ']';
      end
  else
    btnRightInvokeForm.AnonClick :=
      procedure (Sender: TObject)
      begin
        (Sender as TButton).Caption :=
          'Last right on [' +
            IntToStr (X) + ',' + IntToStr (Y) + ']';
      end;
end;

end.
