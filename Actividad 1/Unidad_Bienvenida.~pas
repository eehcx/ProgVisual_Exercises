unit Unidad_Bienvenida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tforma_bienvenida = class(TForm)
    Label1: TLabel;
    T_Nombre: TEdit;
    Boton_Continuar: TButton;
    Label2: TLabel;
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Boton_ContinuarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  forma_bienvenida: Tforma_bienvenida;

  x : integer;

implementation

{$R *.dfm}

procedure Tforma_bienvenida.FormClick(Sender: TObject);
begin
  // inc(x) equivale al nombrevariable++ que se usa en java
  inc(x);
  if x=1 then begin
    forma_bienvenida.Caption:='Usted ha un click en el formulario';
  end
  else begin
    forma_bienvenida.Caption:='Usted ha hecho ' + IntToStr(x) + ' Click en el formulario';

  end;
  
end;

procedure Tforma_bienvenida.FormCreate(Sender: TObject);
begin
  x:=0;
end;

procedure Tforma_bienvenida.Boton_ContinuarClick(Sender: TObject);
var linea: String;
begin
  linea:=T_Nombre.Text + ' ¡bienvenido al curso de programación!';
  
  Application.MessageBox(Pchar(linea),'Bienvenida', Mb_IconWarning + Mb_Ok);
end;

end.
