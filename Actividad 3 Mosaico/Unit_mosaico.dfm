object Form1: TForm1
  Left = 192
  Top = 117
  Width = 813
  Height = 526
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 512
    Top = 8
    Width = 185
    Height = 32
    Caption = '004672 - Hern'#225'ndez Cruz Enoc Emanuel'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object Boton_Crear: TButton
    Left = 16
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Pincha aqu'#237
    TabOrder = 0
    Visible = False
    OnClick = Boton_CrearClick
  end
  object Modelo: TPanel
    Left = 8
    Top = 8
    Width = 41
    Height = 41
    Caption = 'Modelo'
    TabOrder = 1
    Visible = False
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 512
    Top = 48
  end
end
