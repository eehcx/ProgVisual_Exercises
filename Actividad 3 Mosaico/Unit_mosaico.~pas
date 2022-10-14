unit Unit_mosaico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Boton_Crear: TButton;
    Modelo: TPanel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure Boton_CrearClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Panel: TPanel;
  c,x,y,sep:integer;
  filas, columnas: integer;

implementation

{$R *.dfm}

procedure TForm1.Boton_CrearClick(Sender: TObject);
begin
    filas:=10;
    columnas:=10;
    sep:=8;
    for x:=1 to filas do begin
	      for y:=1 to columnas do begin
			    Panel:=Tpanel.create(self);
			    Panel.Parent:=self;
			    Panel.Width:=Modelo.Width;
			    Panel.Height:=Modelo.Height;
			    Panel.Left:=modelo.Left+(modelo.Width*(x-1))+(sep*(x-1));
			    Panel.Top:=modelo.Top+(modelo.Height*(y-1))+(sep*(y-1));
			    Panel.Name:='Cuadro' + '_' + IntToStr(x) + '_' + IntToStr(y);
          Panel.Caption:=Panel.Name;
        end;
    end;
    Timer1.Enabled:=True;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
    Boton_CrearClick(Sender);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var cadena: String;
    posicion:integer;
begin
    cadena:='ABCDEFGHIJKLMNÑOPQRSTUVWXYZ0123456789';
    x:=Random(filas)+1;
    y:=Random(columnas)+1;
    Panel:=Tpanel(FindComponent('Cuadro' + '_' + IntToStr(x) + '_' + IntToStr(y)));
    Panel.Color:=RGB(Random(256),Random(256),Random(256));
    posicion:=Random(Length(cadena))+1;
    Panel.Caption:=copy(cadena,posicion,1);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Randomize;
end;

end.
