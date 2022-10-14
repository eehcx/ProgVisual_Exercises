unit Unit_compras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    T_Producto: TLabeledEdit;
    Boton_Agregar: TButton;
    Boton_Vaciar: TButton;
    Lista_Comprados: TListBox;
    Lista_Compra: TListBox;
    Boton_Pasar: TButton;
    Boton_Pasar_Todos: TButton;
    Label1: TLabel;
    procedure Boton_AgregarClick(Sender: TObject);
    procedure T_ProductoKeyPress(Sender: TObject; var Key: Char);
    procedure Boton_PasarClick(Sender: TObject);
    procedure Boton_Pasar_TodosClick(Sender: TObject);
    procedure Boton_VaciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Boton_AgregarClick(Sender: TObject);
begin
    T_Producto.Text:=Trim(T_Producto.Text);
    If Length (T_Producto.Text)=0 Then Begin
        Application.MessageBox('Escriba el nombre de un producto','Lista de compras',Mb_IconWarning + Mb_Ok);
        Exit;
    End;

    Lista_Compra.Items.Add(T_Producto.Text);

    T_Producto.Clear;
    T_Producto.SetFocus;


end;

procedure TForm1.T_ProductoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key=chr(13) Then begin
        Boton_AgregarClick(sender);
    end;
end;

procedure TForm1.Boton_PasarClick(Sender: TObject);
begin
    If Lista_Compra.Items.Count=0 Then Begin
        Application.MessageBox('La lista de compra no tiene elementos','Lista de compras',Mb_IconWarning + Mb_Ok);
        Exit;
    End;

    If Lista_Compra.ItemIndex=1 Then Begin
        Application.MessageBox('Debe selecciona un elemento','Lista de compras',Mb_IconWarning + Mb_Ok);
        Exit;
    End;

    Boton_Pasar.Enabled:=True;
    Boton_Pasar_Todos.Enabled:=True;
    
    Lista_Comprados.Items.add(Lista_Compra.Items[Lista_Compra.ItemIndex]);
    Lista_Compra.DeleteSelected;

end;

procedure TForm1.Boton_Pasar_TodosClick(Sender: TObject);
var x:Integer;
begin
    If Lista_Compra.Items.Count=0 Then Begin
        Application.MessageBox('La lista de compra no tiene elementos','Lista de compras',Mb_IconWarning + Mb_Ok);
        Exit;
    End;

    for x:=0 To Lista_Compra.Items.Count-1 Do Begin
        Lista_Compra.ItemIndex:=0;
        Lista_Comprados.Items.Add(Lista_Compra.Items[0]);
        Lista_Compra.DeleteSelected;
    End;

    Boton_Pasar.Enabled:=False;
    Boton_Pasar_Todos.Enabled:=False;
    Boton_Vaciar.Enabled:=True;
end;

procedure TForm1.Boton_VaciarClick(Sender: TObject);
begin
    Lista_Comprados.Clear;
    Boton_Vaciar.Enabled:=False;
end;

end.
