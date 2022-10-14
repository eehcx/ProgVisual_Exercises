unit Unit_IMC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    peso: TEdit;
    GroupBox2: TGroupBox;
    altura: TEdit;
    imc_cal: TButton;
    Label1: TLabel;
    nombre: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    procedure imc_calClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  peso:TEdit;
  altura:TEdit;

implementation

{$R *.dfm}

procedure TForm1.imc_calClick(Sender: TObject);
var IMC,alto,masa, estatura: Double;
    linea: String;
begin
    masa := StrToInt(peso.Text);
    alto := StrToInt(altura.Text);
    estatura := alto /100;
    IMC:= masa /(estatura*estatura);
    linea:='Tu IMC es: ' + FloatToStr(IMC);
    if IMC<=18.5then
        Application.MessageBox(Pchar(linea),'Sufres: Bajo Peso', Mb_IconWarning + Mb_Ok);
    if (IMC>18.5) and (IMC<24.9)then
        Application.MessageBox(Pchar(linea),'Tienes un Peso Normal', Mb_IconWarning + Mb_Ok);
    if (IMC>24.9) and (IMC<29.9)then
        Application.MessageBox(Pchar(linea),'Sufres: Sobre Peso', Mb_IconWarning + Mb_Ok);
    if (IMC>30) and (IMC<34.9)then
        Application.MessageBox(Pchar(linea),'Sufres: Obesidad Tipo I', Mb_IconWarning + Mb_Ok);
    if (IMC>35) and (IMC<39.9)then
        Application.MessageBox(Pchar(linea),'Sufres: Obesidad Tipo II', Mb_IconWarning + Mb_Ok);
    if (IMC>40) and (IMC<49.9)then
        Application.MessageBox(Pchar(linea),'Sufres: Obesidad Tipo III', Mb_IconWarning + Mb_Ok);
    if IMC>50then
        Application.MessageBox(Pchar(linea),'Sufres: Obesidad Tipo IV', Mb_IconWarning + Mb_Ok);
    
end;

procedure TForm1.Button1Click(Sender: TObject);
var line: String;
begin
    line:= '¡Hola ' + nombre.Text + '! Ingresa los datos acontinuación';
    Application.MessageBox(Pchar(line),'Bienvenida', Mb_IconWarning + Mb_Ok);
end;

end.
