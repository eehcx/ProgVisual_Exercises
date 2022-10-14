unit UnidadArchivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    FontDialog1: TFontDialog;
    SaveDialog1: TSaveDialog;
    Panel2: TPanel;
    Memo1: TMemo;
    btn1: TPanel;
    btn2: TPanel;
    btn3: TPanel;
    btn4: TPanel;
    btn5: TPanel;
    Timer1: TTimer;
    lblFecha: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    procedure btn5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x: Integer;

implementation

{$R *.dfm}

procedure TForm1.btn5Click(Sender: TObject);
begin
    close;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
    if OpenDialog1.Execute then
        Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
    
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
    Memo1.Lines.Clear;
    Form1.Caption:= 'Archivo nuevo...';
    Memo1.SetFocus;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
    If savedialog1.Execute then begin
        Memo1.Lines.SaveToFile(saveDialog1.FileName);
        Form1.Caption:=saveDialog1.FileName;
    end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  If fontDialog1.Execute then begin
      Memo1.font:=FontDialog1.Font;
  end;
end;

procedure TForm1.btn1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    for x:=1 to 5 do begin
        TPanel(FindComponent('btn'+IntToStr(x))).Color:=clBtnFace;
        TPanel(FindComponent('btn'+IntToStr(x))).Font.Color:=clWindowText;
    end;

    TPanel(sender).Color:=clTeal;
    TPanel(sender).Font.Color:=clWhite;
end;

procedure TForm1.Panel2Click(Sender: TObject);
begin
    for x:=1 to 5 do begin
        TPanel(FindComponent('btn'+IntToStr(x))).Color:=clBtnFace;
        TPanel(FindComponent('btn'+IntToStr(x))).Font.Color:=clWindowText;
    end;

end;

end.
