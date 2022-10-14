unit Unit_Regiones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm_Regiones = class(TForm)
    Panel1: TPanel;
    Boton_Cerrar: TButton;
    procedure Boton_CerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Regiones: TForm_Regiones;

implementation

{$R *.dfm}

procedure TForm_Regiones.Boton_CerrarClick(Sender: TObject);
begin
    Close;
end;

end.
