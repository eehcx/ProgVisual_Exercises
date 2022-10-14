program leucocitos;

uses
  Forms,
  unit_leucitos in 'unit_leucitos.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
