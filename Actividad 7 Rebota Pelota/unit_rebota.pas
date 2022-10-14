unit unit_rebota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Pelota: TShape;
    TimerArriba: TTimer;
    TimerAbajo: TTimer;
    TimerIzquierda: TTimer;
    TimerDerecha: TTimer;
    Boton_Seguir: TButton;
    Boton_Parar: TButton;
    TimerHora: TTimer;
    L_Hora: TLabel;
    Label1: TLabel;
    procedure TimerArribaTimer(Sender: TObject);
    procedure TimerAbajoTimer(Sender: TObject);
    procedure TimerDerechaTimer(Sender: TObject);
    procedure TimerIzquierdaTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Boton_SeguirClick(Sender: TObject);
    procedure Boton_PararClick(Sender: TObject);
    procedure TimerHoraTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x: integer;

implementation

{$R *.dfm}

// Timer Arriba - Inicio
procedure TForm1.TimerArribaTimer(Sender: TObject);
begin
    if Pelota.Top<=0 then begin
        TimerArriba.Enabled:=False;
        TimerAbajo.Enabled:=True;
        Pelota.Brush.Color:=RGB(Random(255),Random(255),Random(255));
    end
    else begin
        Pelota.Top:= Pelota.Top-8;
    end;
end;
// Timer Arriba - Final

// Timer Abajo - Inicio
procedure TForm1.TimerAbajoTimer(Sender: TObject);
begin
    If Pelota.Top>=Form1.Height - Pelota.Height - 38 then begin
        TimerAbajo.Enabled:=False;
        TimerArriba.Enabled:=True;
        Pelota.Brush.Color:=RGB(Random(255),Random(255),Random(255));
    end
    else begin
        Pelota.Top:= Pelota.Top+8; 
    end;
end;
// Timer Abajo - Final

procedure TForm1.TimerDerechaTimer(Sender: TObject);
begin
    If Pelota.Left+Pelota.Width>=Form1.Width-38 then begin
        TimerDerecha.Enabled:=False;
        TimerIzquierda.Enabled:=True;
        Pelota.Brush.Color:=RGB(Random(255),Random(255),Random(255));
    end
    else begin
        Pelota.Left:=Pelota.Left+8;
    end;
end;

procedure TForm1.TimerIzquierdaTimer(Sender: TObject);
begin
    If Pelota.Left<=0 then begin
        TimerIzquierda.Enabled:=False;
        TimerDerecha.Enabled:=True;
        Pelota.Brush.Color:=RGB(Random(255),Random(255),Random(255));
    end
    else begin
        Pelota.Left:=Pelota.Left-8;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Randomize;
end;
procedure TForm1.Boton_SeguirClick(Sender: TObject);
begin
    TimerArriba.Enabled:=False;
    TimerAbajo.Enabled:=True;
    TimerDerecha.Enabled:=False;
    TimerIzquierda.Enabled:=False;
end;

procedure TForm1.Boton_PararClick(Sender: TObject);
begin
    TimerDerecha.Enabled:=True;
    TimerArriba.Enabled:=True;
end;

procedure TForm1.TimerHoraTimer(Sender: TObject);
begin
    L_Hora.Caption:=TimeToStr(now());
end;
end.
