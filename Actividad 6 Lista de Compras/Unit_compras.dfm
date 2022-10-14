object Form1: TForm1
  Left = 192
  Top = 117
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 400
    Width = 274
    Height = 16
    Caption = '004672 - Enoc Emanuel Hern'#225'ndez Cruz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object T_Producto: TLabeledEdit
    Left = 24
    Top = 40
    Width = 193
    Height = 21
    EditLabel.Width = 159
    EditLabel.Height = 13
    EditLabel.Caption = 'Escribe el nombre de un producto'
    TabOrder = 0
    OnKeyPress = T_ProductoKeyPress
  end
  object Boton_Agregar: TButton
    Left = 24
    Top = 352
    Width = 193
    Height = 25
    Caption = 'Agregar'
    TabOrder = 1
    OnClick = Boton_AgregarClick
  end
  object Boton_Vaciar: TButton
    Left = 352
    Top = 352
    Width = 193
    Height = 25
    Caption = 'Vaciar Lista'
    TabOrder = 2
    OnClick = Boton_VaciarClick
  end
  object Lista_Compra: TListBox
    Left = 24
    Top = 88
    Width = 193
    Height = 249
    ItemHeight = 13
    TabOrder = 3
  end
  object Lista_Comprados: TListBox
    Left = 352
    Top = 88
    Width = 193
    Height = 249
    ItemHeight = 13
    TabOrder = 4
  end
  object Boton_Pasar: TButton
    Left = 240
    Top = 184
    Width = 89
    Height = 25
    Caption = 'Pasar -->'
    TabOrder = 5
    OnClick = Boton_PasarClick
  end
  object Boton_Pasar_Todos: TButton
    Left = 240
    Top = 224
    Width = 89
    Height = 25
    Caption = 'Pasar Todos -->'
    TabOrder = 6
    OnClick = Boton_Pasar_TodosClick
  end
end
