unit Unit_Marquesina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    L_Texto: TLabel;
    L_Texto2: TLabel;
    Boton_Iniciar: TButton;
    Boton_Parar: TButton;
    P_TextoEscribe1: TPanel;
    L_Estatic1: TLabel;
    Edit_Text1: TEdit;
    GroupBox_Mov1: TGroupBox;
    Radio_Arriba: TRadioButton;
    Radio_Abajo: TRadioButton;
    Radio_Izquierda: TRadioButton;
    Radio_Derecha: TRadioButton;
    P_TextoEscribe2: TPanel;
    L_Estatic2: TLabel;
    Edit_Text2: TEdit;
    GroupBox_Mov2: TGroupBox;
    Radio_Arriba1: TRadioButton;
    Radio_Abajo1: TRadioButton;
    Radio_Izquierda1: TRadioButton;
    Radio_Derecha1: TRadioButton;
    TimerArriba: TTimer;
    TimerAbajo: TTimer;
    TimerDerecha: TTimer;
    TimerArriba1: TTimer;
    TimerIzquierda1: TTimer;
    TimerDerecha1: TTimer;
    TimerAbajo1: TTimer;
    TimerIzquierda: TTimer;
    TimerColor: TTimer;
    Label1: TLabel;
    procedure Boton_IniciarClick(Sender: TObject);
    procedure TimerArribaTimer(Sender: TObject);
    procedure TimerAbajoTimer(Sender: TObject);
    procedure TimerIzquierdaTimer(Sender: TObject);
    procedure TimerDerechaTimer(Sender: TObject);
    procedure TimerArriba1Timer(Sender: TObject);
    procedure TimerAbajo1Timer(Sender: TObject);
    procedure TimerIzquierda1Timer(Sender: TObject);
    procedure TimerDerecha1Timer(Sender: TObject);
    procedure TimerColorTimer(Sender: TObject);
    procedure TimerEnviarDerecha1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Boton_PararClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{Boton : Iniciar Juego - Inicio}

procedure TForm1.Boton_IniciarClick(Sender: TObject);
begin
  //Acciones principales
  L_Texto.Caption:= Edit_Text1.Text;
  L_Texto.Visible:=True;
  L_Texto2.Caption:= Edit_Text2.Text;
  L_Texto2.Visible:=True;

  //Trim's
  Edit_Text1.Text:=Trim(Edit_Text1.Text);
  Edit_Text2.Text:=Trim(Edit_Text2.Text);

  //Condicionales cuando no hay valores en label
  If (Length (Edit_Text1.Text)=0) or (Length (Edit_Text2.Text)=0) Then Begin
      Application.MessageBox('Ingresa una palabra, ¡la que sea de su preferencia!','Marquesina.py',Mb_IconWarning + Mb_Ok);
      Exit;
  End;

  If Length (Edit_Text1.Text)=0 then begin
      Edit_Text1.SetFocus;
  end;

  If Length (Edit_Text2.Text)=0 then begin
      Edit_Text2.SetFocus;
  end;

  if Radio_Abajo.Checked=False then
    if Radio_Derecha.Checked=False then
      if Radio_Izquierda.Checked=False then
        if Radio_Arriba.Checked=False then begin
        Application.MessageBox('Debe seleccionar una de las opciones','Movimiento.py',Mb_IconError + Mb_Ok);
        exit;
        End;
  if Radio_Abajo1.Checked=False then
    if Radio_Derecha1.Checked=False then
      if Radio_Izquierda1.Checked=False then
        if Radio_Arriba1.Checked=False then begin
        Application.MessageBox('Debe seleccionar una de las opciones','Movimiento.py',Mb_IconError + Mb_Ok);
        exit;
        End;

  {Condicionales para activar timer's - Inicio}

  if Radio_Arriba.Checked=True  then begin
      TimerArriba.Enabled:=True;
  end;
  if Radio_Abajo.Checked=True then begin
      TimerAbajo.Enabled:=True;
  end;
  if Radio_Derecha.Checked=True then begin
      TimerDerecha.Enabled:=True;
  end;
  if Radio_Izquierda.Checked=True  then begin
      TimerIzquierda.Enabled:=True;
  end;

  if Radio_Abajo1.Checked=True then begin
      TimerAbajo1.Enabled:=True;
  end;
  if Radio_Arriba1.Checked=True  then begin
      TimerArriba1.Enabled:=True;
  end;
  if Radio_Derecha1.Checked=True then begin
      TimerDerecha1.Enabled:=True;
  end;
  if Radio_Izquierda1.Checked=True  then begin
      TimerIzquierda1.Enabled:=True;
  end;

  if Length (Edit_Text1.Text) or Length (Edit_Text2.Text)>0 Then Begin
      Boton_Parar.Enabled:=True;
      P_TextoEscribe1.Visible:=False;
      P_TextoEscribe2.Visible:=False;
  End;

  {Condicionales para activar timer's - Final}
  
  TimerColor.Enabled:=True;
end;

{Boton : Iniciar Juego - Final}


{Timer's de movimiento - Inicio}

procedure TForm1.TimerArribaTimer(Sender: TObject);
begin
    //L_Texto.Top:= L_Texto.Top-8;

    if L_Texto.Top>=0 then begin
        L_Texto.Top:=L_Texto.Top-2;
        if L_Texto.Top<=0 then begin
           L_Texto.Top:=Form1.Height;
        end
    end;
end;

procedure TForm1.TimerAbajoTimer(Sender: TObject);
begin
    //L_Texto.Top:= L_Texto.Top+8;

    if L_Texto.Top<=Form1.Height then begin
        L_Texto.Top:=L_Texto.Top+2;
        if L_Texto.Top>=Form1.Height then begin
           L_Texto.Top:=0;
        end
    end;
end;

procedure TForm1.TimerIzquierdaTimer(Sender: TObject);
begin
    //L_Texto.Left:=L_Texto.Left-8;

    if L_Texto.Left>=0 then begin
        L_Texto.Left:=L_Texto.Left-2;
        if L_Texto.Left<=0 then begin
            L_Texto.Left:=Form1.Width;
        end
    end;
end;

procedure TForm1.TimerDerechaTimer(Sender: TObject);
begin
    //L_Texto.Left:=L_Texto.Left+8;

    if L_Texto.Left<=Form1.Width then begin
        L_Texto.Left:=L_Texto.Left+2;
        if L_Texto.Left>=Form1.width then begin
            L_Texto.Left:=0;
        end
    end;
end;

{2}

procedure TForm1.TimerArriba1Timer(Sender: TObject);
begin
    //L_Texto2.Top:= L_Texto2.Top-8;
    if L_Texto2.Top>=0 then begin
        L_Texto2.Top:=L_Texto2.Top-2;
        if L_Texto2.Top<=0 then begin
           L_Texto2.Top:=Form1.Height;
        end
    end;
end;

procedure TForm1.TimerAbajo1Timer(Sender: TObject);
begin
    //L_Texto2.Top:= L_Texto2.Top+8;
    if L_Texto2.Top<=Form1.Height then begin
        L_Texto2.Top:=L_Texto2.Top+2;
        if L_Texto2.Top>=Form1.Height then begin
           L_Texto2.Top:=0;
        end
    end;
end;

procedure TForm1.TimerIzquierda1Timer(Sender: TObject);
begin
    //L_Texto2.Left:=L_Texto2.Left-8;
    if L_Texto2.Left>=0 then begin
        L_Texto2.Left:=L_Texto2.Left-2;
        if L_Texto2.Left<=0 then begin
            L_Texto2.Left:=Form1.Width;
        end
    end;
end;

procedure TForm1.TimerDerecha1Timer(Sender: TObject);
begin
    //L_Texto2.Left:=L_Texto2.Left+8;
    if L_Texto2.Left<=Form1.Width then begin
        L_Texto2.Left:=L_Texto2.Left+2;
        if L_Texto2.Left>=Form1.Width then begin
            L_Texto2.Left:=0;
        end
    end;
end;

{Timer's de movimiento - Final}


{Cambiar de color cada 1.5 segundos - Inicio}

procedure TForm1.TimerColorTimer(Sender: TObject);
begin
    L_Texto2.Font.Color:=RGB(Random(255),Random(255),Random(255));
    L_Texto.Font.Color:=RGB(Random(255),Random(255),Random(255));
end;

{Cambiar de color cada 1.5 segundos - Final}


{Enviar a origen - Inicio}

procedure TForm1.TimerEnviarDerecha1Timer(Sender: TObject);
begin
end;

{Enviar a origen - Final}

procedure TForm1.FormCreate(Sender: TObject);
begin
    randomize;
end;

procedure TForm1.Boton_PararClick(Sender: TObject);
begin
      TimerArriba.Enabled:=False;
      TimerAbajo.Enabled:=False;
      TimerDerecha.Enabled:=False;
      TimerIzquierda.Enabled:=False;
      TimerAbajo1.Enabled:=False;
      TimerArriba1.Enabled:=False;
      TimerDerecha1.Enabled:=False;
      TimerIzquierda1.Enabled:=False;

end;

end.
