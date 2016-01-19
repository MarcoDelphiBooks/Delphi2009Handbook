unit GraphicsTest_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ImgList, ExtCtrls, ExtDlgs;

type
  TFormGraphicsTest = class(TForm)
    Image1: TImage;
    ImageList1: TImageList;
    btnLoadImage: TButton;
    btnCreateAndSave: TButton;
    btnImageFromList: TButton;
    Image2: TImage;
    procedure btnLoadImageClick(Sender: TObject);
    procedure btnCreateAndSaveClick(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1Click(Sender: TObject);
    procedure btnImageFromListClick(Sender: TObject);
  private
    fPainting: Boolean;
    fImgNo: Integer;
  public
    { Public declarations }
  end;

var
  FormGraphicsTest: TFormGraphicsTest;

implementation

{$R *.dfm}

uses
  jpeg, pngimage, GIFImg;

procedure TFormGraphicsTest.btnCreateAndSaveClick(Sender: TObject);
var
  bmp: TBitmap;
begin
  if Assigned (Image1.Picture) and
    Assigned (Image1.Picture.Graphic) then
  begin
    Image1.Picture.Graphic.Empty;
  end;
  bmp := TBitmap.Create;
  bmp.Width := Image1.Width;
  bmp.Height := Image1.Height;
  Image1.Picture.Bitmap := bmp;

  fPainting := True;
end;

procedure TFormGraphicsTest.btnImageFromListClick(Sender: TObject);
begin
  ImageList1.Draw(Image2.Canvas, 10, 10, 0);
  ImageList1.Draw(Image2.Canvas, 10, 30, 1);
  ImageList1.Draw(Image2.Canvas, 10, 50, 2);
  ImageList1.Draw(Image2.Canvas, 10, 70, 3);

  ImageList1.Draw(Image2.Canvas, 30, 10, 4, dsSelected, itImage);
  ImageList1.Draw(Image2.Canvas, 30, 30, 4, dsTransparent, itImage);
  ImageList1.Draw(Image2.Canvas, 30, 50, 4, dsFocus, itImage);
  ImageList1.Draw(Image2.Canvas, 30, 70, 4, TDrawingStyle.dsNormal, itImage);
end;

procedure TFormGraphicsTest.btnLoadImageClick(Sender: TObject);
var
  strFilename: string;
begin
  case fImgNo of
    0: strFilename := 'adog.jpg';
    1: strFilename := 'Athene.png';
    2: strFilename := 'CodeGear.gif';
  end;
  Image1.Picture.LoadFromFile(strFileName);
  fImgNo := (fImgNo + 1) mod 3
end;

procedure SaveWithClass (graph: TGraphic; graphClass: TGraphicClass;
  const strFilename: string);
var
  grapImg: TGraphic;
begin
  grapImg := graphClass.Create;
  try
    grapImg.Assign(graph);
    grapImg.SaveToFile(strFilename);
  finally
    grapImg.Free;
  end;
end;

procedure TFormGraphicsTest.Image1Click(Sender: TObject);
var
  jpgImg: TJPEGImage;
begin
  if fPainting then
  begin
    jpgImg := TJPEGImage.Create;
    try
      jpgImg.Assign(Image1.Picture.Graphic);
      jpgImg.SaveToFile('test.jpg');
    finally
      jpgImg.Free;
    end;

    SaveWithClass (Image1.Picture.Graphic,
      TPngImage, 'test.png');
    SaveWithClass (Image1.Picture.Graphic,
      TGIFImage, 'test.gif');
    // done with painting
    fPainting := False;
  end;
end;

procedure TFormGraphicsTest.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  aCanvas: TCanvas;
begin
  if fPainting then
  begin
    aCanvas := Image1.Picture.Bitmap.Canvas;
    aCanvas.Pixels [X, Y] := clBlue;
    aCanvas.Pixels [X+1, Y] := clBlue;
    aCanvas.Pixels [X, Y+1] := clBlue;
    aCanvas.Pixels [X+1, Y+1] := clRed;
  end;

end;

end.
