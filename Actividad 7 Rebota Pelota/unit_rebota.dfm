object Form1: TForm1
  Left = 192
  Top = 131
  AutoScroll = False
  Caption = 'Form1'
  ClientHeight = 435
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Pelota: TShape
    Left = 304
    Top = 176
    Width = 49
    Height = 49
    Shape = stCircle
  end
  object L_Hora: TLabel
    Left = 808
    Top = 152
    Width = 51
    Height = 16
    Caption = 'L_Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 165
    Height = 32
    Caption = '004672 - Enoc Emanuel Hern'#225'ndez Cruz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Boton_Seguir: TButton
    Left = 816
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Seguir'
    TabOrder = 0
    OnClick = Boton_SeguirClick
  end
  object Boton_Parar: TButton
    Left = 816
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Parar'
    TabOrder = 1
    OnClick = Boton_PararClick
  end
  object TimerArriba: TTimer
    Interval = 10
    OnTimer = TimerArribaTimer
    Left = 840
    Top = 16
  end
  object TimerAbajo: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TimerAbajoTimer
    Left = 840
    Top = 48
  end
  object TimerIzquierda: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TimerIzquierdaTimer
    Left = 808
    Top = 32
  end
  object TimerDerecha: TTimer
    Interval = 10
    OnTimer = TimerDerechaTimer
    Left = 872
    Top = 32
  end
  object TimerHora: TTimer
    OnTimer = TimerHoraTimer
    Left = 872
    Top = 152
  end
end
