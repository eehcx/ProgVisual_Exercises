program CambiaColores;

uses
  Forms,
  Unit_CambiaColores in 'Unit_CambiaColores.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
