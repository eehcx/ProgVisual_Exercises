unit unit_leucitos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    leuco: TEdit;
    enviar: TButton;
    Label1: TLabel;
    procedure enviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.enviarClick(Sender: TObject);
var leucocitos, idealBajo,idealAlto,ideal: integer;
    linea,diagnostico,suma:String;
begin
    // LEUCOCITOS IDEALES
    idealBajo:= 4500;
    idealAlto:= 10000;

    // VARIABLES
    leucocitos := StrToInt(leuco.Text);
    linea:= 'Haz ingresado: ' + IntToStr(leucocitos)+ ' Leucocitos';


    // CONDICIONALES PADECIMEINTOS
    if leucocitos <= 4500 then begin
        ideal:= idealBajo - leucocitos;
        diagnostico:= IntToStr(ideal);
        suma:= linea + '| Te faltan: '+diagnostico+' Para llegar a tu ideal';
        // MENSAJE
        Application.MessageBox(Pchar(suma),'Sufres: Leucopenia', Mb_IconWarning + Mb_Ok);
    end;
    if (leucocitos>4500) and (leucocitos<10000)then begin
        // MENSAJE
        Application.MessageBox(Pchar(suma),'Sin padecimiento(Normal)', Mb_IconWarning + Mb_Ok);
    end;
     if (leucocitos>10000) and (leucocitos<25000)then begin
        ideal:= leucocitos - idealAlto;
        diagnostico:= IntToStr(ideal);
        suma:= linea + '| Necesitas: '+diagnostico+' Menos para llegar a tu ideal';
        // MENSAJE
        Application.MessageBox(Pchar(suma),'Sufres: Leucocitosis', Mb_IconWarning + Mb_Ok);
     end;
     if (leucocitos>25000) and (leucocitos<50000)then begin
        ideal:= leucocitos - idealAlto;
        diagnostico:= IntToStr(ideal);
        suma:= linea + '| Necesitas: '+diagnostico+' Menos para llegar a tu ideal';
        // MENSAJE
        Application.MessageBox(Pchar(suma),'Sufres: Hiperleucosis', Mb_IconWarning + Mb_Ok);
     end;
     if (leucocitos>50000) and (leucocitos<=100000)then begin
        ideal:= leucocitos - idealAlto;
        diagnostico:= IntToStr(ideal);
        suma:= linea + '| Necesitas: '+diagnostico+' Menos para llegar a tu ideal';
        // MENSAJE
        Application.MessageBox(Pchar(suma),'Sufres: Reacción Leucemioide', Mb_IconWarning + Mb_Ok);
     end;
     if leucocitos > 100000 then begin
        ideal:= leucocitos - idealAlto;
        diagnostico:= IntToStr(ideal);
        suma:= linea + '| Necesitas: '+diagnostico+' Menos para llegar a tu ideal';
        // MENSAJE
        Application.MessageBox(Pchar(suma),'Sufres: Hiperleococitosis', Mb_IconWarning + Mb_Ok);
     end;
end;

end.
