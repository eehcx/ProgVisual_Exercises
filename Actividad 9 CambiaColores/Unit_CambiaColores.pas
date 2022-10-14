unit Unit_CambiaColores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, ExtCtrls;

type
  TForm1 = class(TForm)
    Combo_Colores: TComboBox;
    Label1: TLabel;
    ListBox1: TListBox;
    RadioGroup1: TRadioGroup;
    CheckListBox1: TCheckListBox;
    Label2: TLabel;
    procedure Combo_ColoresChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Combo_ColoresChange(Sender: TObject);
begin
    if Combo_Colores.ItemIndex=0 then Form1.Color:=clRed;
    if Combo_Colores.ItemIndex=1 then Form1.Color:=clGreen;
    if Combo_Colores.ItemIndex=2 then Form1.Color:=clBlue;
    if Combo_Colores.ItemIndex=3 then Form1.Color:=clYellow;
    if Combo_Colores.ItemIndex=4 then Form1.Color:=clBlack;
    if Combo_Colores.ItemIndex=5 then Form1.Color:=clGray;
end;

end.
