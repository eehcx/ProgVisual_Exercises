program RebotaPelota;

uses
  Forms,
  unit_rebota in 'unit_rebota.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
