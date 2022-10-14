object Form1: TForm1
  Left = 192
  Top = 117
  AutoScroll = False
  Caption = 'Marquesina.py'
  ClientHeight = 525
  ClientWidth = 960
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object L_Texto: TLabel
    Left = 336
    Top = 304
    Width = 206
    Height = 29
    Caption = 'Texto de ejemplo'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object L_Texto2: TLabel
    Left = 600
    Top = 232
    Width = 220
    Height = 29
    Caption = 'Texto de ejemplo2'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 274
    Height = 16
    Caption = '004672 - Enoc Emanuel Hern'#225'ndez Cruz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Boton_Iniciar: TButton
    Left = 16
    Top = 456
    Width = 273
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = Boton_IniciarClick
  end
  object Boton_Parar: TButton
    Left = 16
    Top = 488
    Width = 273
    Height = 25
    Caption = 'Parar'
    Enabled = False
    TabOrder = 1
    OnClick = Boton_PararClick
  end
  object P_TextoEscribe1: TPanel
    Left = 16
    Top = 32
    Width = 273
    Height = 201
    Color = clInactiveBorder
    TabOrder = 2
    object L_Estatic1: TLabel
      Left = 8
      Top = 16
      Width = 161
      Height = 13
      Caption = 'Escribe algo(Click a Iniciar):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit_Text1: TEdit
      Left = 8
      Top = 32
      Width = 257
      Height = 21
      TabOrder = 0
    end
    object GroupBox_Mov1: TGroupBox
      Left = 8
      Top = 64
      Width = 257
      Height = 121
      Caption = 'Escoja un movimeinto:'
      TabOrder = 1
      object Radio_Arriba: TRadioButton
        Left = 8
        Top = 16
        Width = 113
        Height = 17
        Caption = 'Arriba'
        TabOrder = 0
      end
      object Radio_Abajo: TRadioButton
        Left = 8
        Top = 40
        Width = 113
        Height = 17
        Caption = 'Abajo'
        TabOrder = 1
      end
      object Radio_Izquierda: TRadioButton
        Left = 8
        Top = 88
        Width = 113
        Height = 17
        Caption = 'Izquierda'
        TabOrder = 2
      end
      object Radio_Derecha: TRadioButton
        Left = 8
        Top = 64
        Width = 113
        Height = 17
        Caption = 'Derecha'
        TabOrder = 3
      end
    end
  end
  object P_TextoEscribe2: TPanel
    Left = 16
    Top = 248
    Width = 273
    Height = 201
    Color = clInactiveBorder
    TabOrder = 3
    object L_Estatic2: TLabel
      Left = 8
      Top = 16
      Width = 161
      Height = 13
      Caption = 'Escribe algo(Click a Iniciar):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit_Text2: TEdit
      Left = 8
      Top = 32
      Width = 257
      Height = 21
      TabOrder = 0
    end
    object GroupBox_Mov2: TGroupBox
      Left = 8
      Top = 64
      Width = 257
      Height = 121
      Caption = 'Escoja un movimeinto:'
      TabOrder = 1
      object Radio_Arriba1: TRadioButton
        Left = 8
        Top = 16
        Width = 113
        Height = 17
        Caption = 'Arriba'
        TabOrder = 0
      end
      object Radio_Abajo1: TRadioButton
        Left = 8
        Top = 40
        Width = 113
        Height = 17
        Caption = 'Abajo'
        TabOrder = 1
      end
      object Radio_Izquierda1: TRadioButton
        Left = 8
        Top = 88
        Width = 113
        Height = 17
        Caption = 'Izquierda'
        TabOrder = 2
      end
      object Radio_Derecha1: TRadioButton
        Left = 8
        Top = 64
        Width = 113
        Height = 17
        Caption = 'Derecha'
        TabOrder = 3
      end
    end
  end
  object TimerArriba: TTimer
    Enabled = False
    Interval = 20
    OnTimer = TimerArribaTimer
    Left = 1272
    Top = 600
  end
  object TimerAbajo: TTimer
    Enabled = False
    Interval = 20
    OnTimer = TimerAbajoTimer
    Left = 1272
    Top = 632
  end
  object TimerDerecha: TTimer
    Enabled = False
    Interval = 20
    OnTimer = TimerDerechaTimer
    Left = 1304
    Top = 616
  end
  object TimerArriba1: TTimer
    Enabled = False
    Interval = 20
    OnTimer = TimerArriba1Timer
    Left = 1272
    Top = 496
  end
  object TimerIzquierda1: TTimer
    Enabled = False
    Interval = 20
    OnTimer = TimerIzquierda1Timer
    Left = 1240
    Top = 528
  end
  object TimerDerecha1: TTimer
    Enabled = False
    Interval = 20
    OnTimer = TimerDerecha1Timer
    Left = 1304
    Top = 528
  end
  object TimerAbajo1: TTimer
    Enabled = False
    Interval = 20
    OnTimer = TimerAbajo1Timer
    Left = 1272
    Top = 560
  end
  object TimerIzquierda: TTimer
    Enabled = False
    Interval = 20
    OnTimer = TimerIzquierdaTimer
    Left = 1240
    Top = 616
  end
  object TimerColor: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = TimerColorTimer
    Left = 1272
    Top = 528
  end
end
