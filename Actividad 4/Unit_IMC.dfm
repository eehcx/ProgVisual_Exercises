object Form1: TForm1
  Left = 216
  Top = 114
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
    Left = 24
    Top = 16
    Width = 311
    Height = 20
    Caption = 'Bienvenido al sistema en L'#237'nea de IMC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 134
    Height = 16
    Caption = 'Escriba su nombre:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 304
    Top = 232
    Width = 328
    Height = 16
    Caption = 'Copyright 2022 - Hern'#225'ndez Cruz Enoc Emanuel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 104
    Width = 297
    Height = 65
    Caption = 'Escribe tu peso en kg (redondeado)'
    TabOrder = 0
    object peso: TEdit
      Left = 16
      Top = 24
      Width = 265
      Height = 21
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 336
    Top = 104
    Width = 297
    Height = 65
    Caption = 'Escribe tu Altura (cm)'
    TabOrder = 1
    object altura: TEdit
      Left = 16
      Top = 24
      Width = 265
      Height = 21
      TabOrder = 0
    end
  end
  object imc_cal: TButton
    Left = 24
    Top = 184
    Width = 609
    Height = 25
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = imc_calClick
  end
  object nombre: TEdit
    Left = 160
    Top = 56
    Width = 329
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 504
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Enviar..'
    TabOrder = 4
    OnClick = Button1Click
  end
end
