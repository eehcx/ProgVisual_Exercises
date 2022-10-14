unit UnitFormulariosDialogos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls;

type
  TForm_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Catlogo1: TMenuItem;
    Procesoss1: TMenuItem;
    Herramientas1: TMenuItem;
    Seguridad1: TMenuItem;
    Ayuda1: TMenuItem;
    Regiones1: TMenuItem;
    Estados1: TMenuItem;
    Ciudades1: TMenuItem;
    Ranchos1: TMenuItem;
    Secciones1: TMenuItem;
    Colores1: TMenuItem;
    iposdeClima1: TMenuItem;
    Vacunas1: TMenuItem;
    Razas1: TMenuItem;
    Ejemplares1: TMenuItem;
    ControlLechero1: TMenuItem;
    ControldeVacunas1: TMenuItem;
    RespaldodeBasedeDatos1: TMenuItem;
    Grficas1: TMenuItem;
    Modulos1: TMenuItem;
    Rolesdeusuarios1: TMenuItem;
    Usuarios1: TMenuItem;
    Permisos1: TMenuItem;
    Cambiodecontrasea1: TMenuItem;
    Acercade1: TMenuItem;
    Salir1: TMenuItem;
    Panel1: TPanel;
    Boton_Cerrar: TButton;
    Administradores1: TMenuItem;
    Deres1: TMenuItem;
    SuperUsuarios1: TMenuItem;
    Backup1: TMenuItem;
    Menu_1: TPopupMenu;
    Fuente1: TMenuItem;
    ColordeFuente1: TMenuItem;
    DialogoColor: TColorDialog;
    DialogoFuente: TFontDialog;
    Fondo1: TMenuItem;
    CambiarColordeFondo1: TMenuItem;
    Menu_Form: TPopupMenu;
    ColordeFormulario1: TMenuItem;
    CerrarelFormulario1: TMenuItem;
    FuentesFont1: TMenuItem;
    procedure Regiones1Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure Colores1Click(Sender: TObject);
    procedure Ciudades1Click(Sender: TObject);
    procedure Ranchos1Click(Sender: TObject);
    procedure Secciones1Click(Sender: TObject);
    procedure iposdeClima1Click(Sender: TObject);
    procedure Vacunas1Click(Sender: TObject);
    procedure Razas1Click(Sender: TObject);
    procedure Ejemplares1Click(Sender: TObject);
    procedure Boton_CerrarClick(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure CambiarColordeFondo1Click(Sender: TObject);
    procedure ColordeFuente1Click(Sender: TObject);
    procedure ColordeFormulario1Click(Sender: TObject);
    procedure FuentesFont1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Principal: TForm_Principal;

implementation

uses Unit_Regiones, Unit_Estados, Unit_Colores, Unit_Clima,
  Unit_Ejemplares, Unit_Ranchos, Unit_Razas, Unit_Secciones, Unit_Vacunas,
  Unit_Ciudades;

{$R *.dfm}

procedure TForm_Principal.Regiones1Click(Sender: TObject);
begin
    Form_Regiones.Show;
end;

procedure TForm_Principal.Estados1Click(Sender: TObject);
begin
    Form_Estados.ShowModal;
end;

procedure TForm_Principal.Colores1Click(Sender: TObject);
begin
    Form_Colores.ShowModal;
end;

procedure TForm_Principal.Ciudades1Click(Sender: TObject);
begin
    Form_Ciudades.ShowModal;
end;

procedure TForm_Principal.Ranchos1Click(Sender: TObject);
begin
    Form_Ranchos.ShowModal;
end;

procedure TForm_Principal.Secciones1Click(Sender: TObject);
begin
    Form_Secciones.ShowModal;
end;

procedure TForm_Principal.iposdeClima1Click(Sender: TObject);
begin
    Form_Clima.ShowModal;
end;

procedure TForm_Principal.Vacunas1Click(Sender: TObject);
begin
    Form_Vacunas.ShowModal;
end;

procedure TForm_Principal.Razas1Click(Sender: TObject);
begin
    Form_Razas.ShowModal;
end;

procedure TForm_Principal.Ejemplares1Click(Sender: TObject);
begin
    Form_Ejemplares.ShowModal;
end;

procedure TForm_Principal.Boton_CerrarClick(Sender: TObject);
begin
    Close;
end;

procedure TForm_Principal.Salir1Click(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TForm_Principal.CambiarColordeFondo1Click(Sender: TObject);
begin
    if DialogoColor.Execute then begin
        Panel1.Color:=DialogoColor.Color;
    end;
end;

procedure TForm_Principal.ColordeFuente1Click(Sender: TObject);
begin
    if DialogoColor.Execute then begin
        Panel1.Font.Color:=DialogoColor.Color;
    end;
end;

procedure TForm_Principal.ColordeFormulario1Click(Sender: TObject);
begin
    if DialogoColor.Execute then begin
        Form_Principal.Color:=DialogoColor.Color;
    end;
end;

procedure TForm_Principal.FuentesFont1Click(Sender: TObject);
begin
    if DialogoFuente.Execute then begin
        Panel1.Font:=DialogoFuente.Font;
    end;
end;

end.
