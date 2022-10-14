program Universidad;

uses
  Forms,
  unit_universidad in 'unit_universidad.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
