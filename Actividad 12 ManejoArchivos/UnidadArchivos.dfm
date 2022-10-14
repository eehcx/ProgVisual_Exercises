object Form1: TForm1
  Left = 192
  Top = 117
  Width = 928
  Height = 501
  Caption = 'Editor de Texto'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 760
    Top = 0
    Width = 160
    Height = 470
    Align = alRight
    Alignment = taLeftJustify
    TabOrder = 0
    OnClick = Panel2Click
    object lblFecha: TLabel
      Left = 16
      Top = 280
      Width = 40
      Height = 13
      Caption = 'lblFecha'
      Visible = False
    end
    object Label2: TLabel
      Left = 16
      Top = 304
      Width = 33
      Height = 13
      Caption = 'lblHora'
      Visible = False
    end
    object Label1: TLabel
      Left = 8
      Top = 432
      Width = 136
      Height = 33
      AutoSize = False
      Caption = '004672 - Enoc Emanuel Hern'#225'ndez Cruz'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object btn1: TPanel
      Left = 32
      Top = 16
      Width = 97
      Height = 41
      Cursor = crHandPoint
      Caption = 'Cargar Archivo'
      TabOrder = 0
      OnClick = btn1Click
      OnMouseMove = btn1MouseMove
    end
    object btn2: TPanel
      Left = 32
      Top = 64
      Width = 97
      Height = 41
      Cursor = crHandPoint
      Caption = 'Guardar Archivo'
      TabOrder = 1
      OnClick = btn2Click
      OnMouseMove = btn1MouseMove
    end
    object btn3: TPanel
      Left = 32
      Top = 112
      Width = 97
      Height = 41
      Cursor = crHandPoint
      Caption = 'Nuevo Archivo'
      TabOrder = 2
      OnClick = btn3Click
      OnMouseMove = btn1MouseMove
    end
    object btn4: TPanel
      Left = 32
      Top = 160
      Width = 97
      Height = 41
      Cursor = crHandPoint
      Caption = 'Cambiar Fuente'
      TabOrder = 3
      OnClick = btn4Click
      OnMouseMove = btn1MouseMove
    end
    object btn5: TPanel
      Left = 32
      Top = 208
      Width = 97
      Height = 41
      Cursor = crHandPoint
      Caption = 'Salir'
      TabOrder = 4
      OnClick = btn5Click
      OnMouseMove = btn1MouseMove
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 760
    Height = 470
    Align = alClient
    TabOrder = 1
  end
  object OpenDialog1: TOpenDialog
    Left = 888
    Top = 336
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 888
    Top = 432
  end
  object SaveDialog1: TSaveDialog
    Left = 888
    Top = 368
  end
  object Timer1: TTimer
    Left = 888
    Top = 400
  end
end
