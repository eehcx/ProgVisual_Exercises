program Mosaico;

uses
  Forms,
  Unit_mosaico in 'Unit_mosaico.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
