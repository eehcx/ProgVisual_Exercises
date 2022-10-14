program FormulariosDialogos;

uses
  Forms,
  UnitFormulariosDialogos in 'UnitFormulariosDialogos.pas' {Form_Principal},
  Unit_Regiones in 'Unit_Regiones.pas' {Form_Regiones},
  Unit_Estados in 'Unit_Estados.pas' {Form_Estados},
  Unit_Ranchos in 'Unit_Ranchos.pas' {Form_Ranchos},
  Unit_Secciones in 'Unit_Secciones.pas' {Form_Secciones},
  Unit_Colores in 'Unit_Colores.pas' {Form_Colores},
  Unit_Clima in 'Unit_Clima.pas' {Form_Clima},
  Unit_Vacunas in 'Unit_Vacunas.pas' {Form_Vacunas},
  Unit_Razas in 'Unit_Razas.pas' {Form_razas},
  Unit_Ejemplares in 'Unit_Ejemplares.pas' {Form_Ejemplares},
  Unit_Ciudades in 'Unit_Ciudades.pas' {Form_Ciudades};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_Principal, Form_Principal);
  Application.CreateForm(TForm_Regiones, Form_Regiones);
  Application.CreateForm(TForm_Estados, Form_Estados);
  Application.CreateForm(TForm_Ranchos, Form_Ranchos);
  Application.CreateForm(TForm_Secciones, Form_Secciones);
  Application.CreateForm(TForm_Colores, Form_Colores);
  Application.CreateForm(TForm_Clima, Form_Clima);
  Application.CreateForm(TForm_Vacunas, Form_Vacunas);
  Application.CreateForm(TForm_razas, Form_razas);
  Application.CreateForm(TForm_Ejemplares, Form_Ejemplares);
  Application.CreateForm(TForm_Ciudades, Form_Ciudades);
  Application.Run;
end.
