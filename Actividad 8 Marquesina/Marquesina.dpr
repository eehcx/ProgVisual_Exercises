program Marquesina;

uses
  Forms,
  Unit_Marquesina in 'Unit_Marquesina.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
