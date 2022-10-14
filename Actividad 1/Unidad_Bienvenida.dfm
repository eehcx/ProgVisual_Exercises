object forma_bienvenida: Tforma_bienvenida
  Left = 262
  Top = 170
  BorderStyle = bsDialog
  Caption = 'Proyecto 1'
  ClientHeight = 426
  ClientWidth = 871
  Color = 14270050
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClick = FormClick
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 64
    Width = 105
    Height = 13
    Caption = 'Escribe tu Nombre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 274
    Height = 16
    Caption = '004672 - Hern'#225'ndez Cruz Enoc Emanuel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object T_Nombre: TEdit
    Left = 32
    Top = 88
    Width = 209
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Boton_Continuar: TButton
    Left = 48
    Top = 120
    Width = 177
    Height = 25
    Caption = 'Continuar...'
    TabOrder = 1
    OnClick = Boton_ContinuarClick
  end
end
