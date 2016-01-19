unit GroupingList_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ToolWin, ComCtrls;

type
  TFormGroupingList = class(TForm)
    ListView1: TListView;
    ToolBar1: TToolBar;
    ImgLarge: TImageList;
    ImgGroups: TImageList;
    tbRight: TToolButton;
    tbLeft: TToolButton;
    tbCenter: TToolButton;
    procedure tbRightClick(Sender: TObject);
    procedure tbLeftClick(Sender: TObject);
    procedure tbCenterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGroupingList: TFormGroupingList;

implementation

{$R *.dfm}

procedure TFormGroupingList.tbCenterClick(Sender: TObject);
var
  aGroup: TCollectionItem;
begin
  for aGroup in ListView1.Groups do
  begin
    (aGroup as TListGroup).HeaderAlign := taCenter;
    (aGroup as TListGroup).FooterAlign := taCenter;
  end;
end;

procedure TFormGroupingList.tbLeftClick(Sender: TObject);
var
  aGroup: TCollectionItem;
begin
  for aGroup in ListView1.Groups do
  begin
    (aGroup as TListGroup).HeaderAlign := taLeftJustify;
    (aGroup as TListGroup).FooterAlign := taLeftJustify;
  end;
end;

procedure TFormGroupingList.tbRightClick(Sender: TObject);
var
  aGroup: TCollectionItem;
begin
  for aGroup in ListView1.Groups do
  begin
    (aGroup as TListGroup).HeaderAlign := taRightJustify;
    (aGroup as TListGroup).FooterAlign := taRightJustify;
  end;
end;

end.
