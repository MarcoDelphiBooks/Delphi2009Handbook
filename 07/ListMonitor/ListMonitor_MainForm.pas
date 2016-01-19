unit ListMonitor_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Generics.Collections;

type
  TFormListMonitor = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    btnStartThreads: TButton;
    btnStatus: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnStartThreadsClick(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
  private
    fThreads: TObjectList<TThread>; // owns and destroys
    fListBoxes: TList<TListBox>;
  public
    { Public declarations }
  end;

var
  FormListMonitor: TFormListMonitor;

implementation

{$R *.dfm}

uses
  ListMonitor_Threads;

procedure TFormListMonitor.btnStartThreadsClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 1 to 3 do
    fThreads.Add (TAddToListThread.Create (False));
end;

procedure TFormListMonitor.btnStatusClick(Sender: TObject);
var
  aListBox: TListBox;
begin
  for aListBox in fListBoxes do
  begin
    if System.TMonitor.TryEnter(aListBox) then
    try
      aListBox.Items.Add('Available');
    finally
      System.TMonitor.Exit(aListBox);
    end;
  end;
end;

procedure TFormListMonitor.FormCreate(Sender: TObject);
begin
  fThreads := TObjectList<TThread>.Create;
  fListBoxes := TList<TListBox>.Create;
  fListBoxes.Add (ListBox1);
  fListBoxes.Add (ListBox2);
  fListBoxes.Add (ListBox3);
end;

procedure TFormListMonitor.FormDestroy(Sender: TObject);
begin
  // ends all threads in a clean, way...
  // ... but this can take a lot of time
  // fThreads.Free;
end;

end.
