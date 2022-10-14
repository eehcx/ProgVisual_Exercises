program Bienvenida;

uses
  Forms,
  Unidad_Bienvenida in 'Unidad_Bienvenida.pas' {forma_bienvenida};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tforma_bienvenida, forma_bienvenida);
  Application.Run;
end.
