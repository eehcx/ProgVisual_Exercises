object Form1: TForm1
  Left = 266
  Top = 195
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
    Left = 16
    Top = 16
    Width = 234
    Height = 13
    Caption = '004672 - ENOC EMANUEL HERN'#193'NDEZ CRUZ'
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 64
    Width = 241
    Height = 65
    Caption = 'Escriba su n'#250'mero de leucocitos (mm3)'
    TabOrder = 0
    object leuco: TEdit
      Left = 16
      Top = 24
      Width = 201
      Height = 21
      TabOrder = 0
    end
  end
  object enviar: TButton
    Left = 16
    Top = 136
    Width = 243
    Height = 25
    Caption = 'Enviar...'
    TabOrder = 1
    OnClick = enviarClick
  end
end
