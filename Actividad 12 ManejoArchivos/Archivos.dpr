program Archivos;

uses
  Forms,
  UnidadArchivos in 'UnidadArchivos.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
