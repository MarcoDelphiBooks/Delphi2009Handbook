unit CategoryPanels_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ExtCtrls, StdCtrls;

type
  TFormCategoryPanels = class(TForm)
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    CategoryPanel3: TCategoryPanel;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GridPanel1: TGridPanel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ImageList1: TImageList;
    btnAddCategory: TButton;
    btnListPanels: TButton;
    ListBox1: TListBox;
    procedure btnAddCategoryClick(Sender: TObject);
    procedure btnListPanelsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCategoryPanels: TFormCategoryPanels;

implementation

{$R *.dfm}

procedure TFormCategoryPanels.btnListPanelsClick(Sender: TObject);
var
  I: Integer;
begin
  ListBox1.Clear;
  for I := 0 to CategoryPanelGroup1.ControlCount - 1 do
    ListBox1.Items.Add (
      (CategoryPanelGroup1.Controls[I] as TCategoryPanel).Caption);

  for I := 0 to CategoryPanelGroup1.Panels.Count - 1 do
    ListBox1.Items.Add (
      TCategoryPanel(CategoryPanelGroup1.Panels[I]).Caption);
end;

procedure TFormCategoryPanels.btnAddCategoryClick(Sender: TObject);
var
  newPanel: TCategoryPanel;
begin
  newPanel := CategoryPanelGroup1.CreatePanel(self)
    as TCategoryPanel;
  NewPanel.Caption := 'Dynamic Panel';

  with TButton.Create(self) do
  begin
    Caption := 'New button';
    Parent := NewPanel;
    SetBounds (10, 10, Width, Height);
  end;
end;

end.
