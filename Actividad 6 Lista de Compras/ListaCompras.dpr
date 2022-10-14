program ListaCompras;

uses
  Forms,
  Unit_compras in 'Unit_compras.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
