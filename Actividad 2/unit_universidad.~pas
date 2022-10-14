unit unit_universidad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GraphicEx;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel_nombre: TPanel;
    Label1: TLabel;
    T_Nombre: TEdit;
    Boton_Continuar: TButton;
    Grupo_carreras: TGroupBox;
    radio_software: TRadioButton;
    radio_electronica: TRadioButton;
    radio_multi: TRadioButton;
    radio_turismo: TRadioButton;
    radio_gastro: TRadioButton;
    radio_mecanica: TRadioButton;
    radio_petro: TRadioButton;
    radio_biotec: TRadioButton;
    Grupo_turnos: TGroupBox;
    radio_matutino: TRadioButton;
    radio_vespertino: TRadioButton;
    Grupo_Docs: TGroupBox;
    check_acta: TCheckBox;
    check_curp: TCheckBox;
    check_cerEstu: TCheckBox;
    check_fichaPago: TCheckBox;
    check_fotos: TCheckBox;
    check_conducta: TCheckBox;
    Boton_inscribir: TButton;
    check_todos: TCheckBox;
    Image1: TImage;
    procedure Boton_inscribirClick(Sender: TObject);
    procedure check_todosClick(Sender: TObject);
    procedure Boton_ContinuarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
// PROCESO DE ADMISIÓN (APARTADO 2)
procedure TForm1.Boton_inscribirClick(Sender: TObject);
var docs:integer;
    linea:String;
begin
    if radio_software.checked=False then
      if radio_multi.checked=False then
        if radio_turismo.checked=False then
          if radio_gastro.checked=False then
            if radio_mecanica.checked=False then
              if radio_petro.checked=False then
                if radio_biotec.checked=False then begin
                  Application.MessageBox('Debe seleccionar una de las carreras','Inscripción',Mb_IconError + Mb_Ok);
                  exit;
                end;
    if radio_matutino.Checked=false then
      if radio_vespertino.Checked=false then begin
        Application.MessageBox('Debe seleccionar uno de los turnos','Inscripción',Mb_IconError + Mb_Ok);
        exit;
      end;
    docs:=0;
    // if check_acta.Checked then docs:=docs+1;
    if check_acta.Checked then inc(docs);
    if check_curp.Checked then inc(docs);
    if check_cerEstu.Checked then inc(docs);
    if check_fichaPago.Checked then inc(docs);
    if check_fotos.Checked then inc(docs);
    if check_conducta.Checked then inc(docs);



    if docs=6 then begin
        linea:='El aspirante ha entregado todos sus documentos'
    end
    else begin
        linea:='El aspirante ha entregado ' + IntToStr(docs) +' documentos, le faltaría por entregar ' + IntToStr((6-docs));
    end;

    Application.MessageBox(Pchar(linea),'Inscripción',Mb_IconWarning+Mb_Ok)
end;

procedure TForm1.check_todosClick(Sender: TObject);
begin
    check_acta.Checked:=check_todos.Checked;
    check_curp.Checked:=check_todos.Checked;
    check_cerEstu.Checked:=check_todos.Checked;
    check_fichaPago.Checked:=check_todos.Checked;
    check_fotos.Checked:=check_todos.Checked;
    check_conducta.Checked:=check_todos.Checked;
end;
// APARTADO 1
procedure TForm1.Boton_ContinuarClick(Sender: TObject);
var line: String;
begin
  line:=T_Nombre.Text + ' ¡Bienvenido al proceso de Admisión!';

  Application.MessageBox(Pchar(line),'Bienvenida', Mb_IconWarning + Mb_Ok);
end;

end.
