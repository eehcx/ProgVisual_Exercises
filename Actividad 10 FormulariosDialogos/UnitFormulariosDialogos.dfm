object Form_Principal: TForm_Principal
  Left = 229
  Top = 147
  Width = 928
  Height = 486
  Caption = 'Form_Principal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PopupMenu = Menu_Form
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 921
    Height = 41
    Caption = 'MEN'#218' PRINCIPAL'
    Color = clInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = Menu_1
    TabOrder = 0
  end
  object Boton_Cerrar: TButton
    Left = 16
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 1
    OnClick = Boton_CerrarClick
  end
  object MainMenu1: TMainMenu
    Left = 304
    Top = 72
    object Catlogo1: TMenuItem
      Caption = '&Cat'#225'logos'
      object Regiones1: TMenuItem
        Caption = '&Regiones'
        OnClick = Regiones1Click
      end
      object Estados1: TMenuItem
        Caption = '&Estados'
        Enabled = False
        OnClick = Estados1Click
      end
      object Ciudades1: TMenuItem
        Caption = 'C&iudades'
        OnClick = Ciudades1Click
      end
      object Ranchos1: TMenuItem
        Caption = '&Ranchos'
        OnClick = Ranchos1Click
      end
      object Secciones1: TMenuItem
        Caption = 'Seccio&nes'
        ShortCut = 16467
        OnClick = Secciones1Click
      end
      object Colores1: TMenuItem
        Caption = 'Co&lores'
        ShortCut = 49219
        OnClick = Colores1Click
      end
      object iposdeClima1: TMenuItem
        Caption = '&Tipos de Clima'
        OnClick = iposdeClima1Click
      end
      object Vacunas1: TMenuItem
        Caption = '&Vacunas'
        OnClick = Vacunas1Click
      end
      object Razas1: TMenuItem
        Caption = 'Ra&zas'
        OnClick = Razas1Click
      end
      object Ejemplares1: TMenuItem
        Caption = 'E&jemplares'
        OnClick = Ejemplares1Click
      end
    end
    object Procesoss1: TMenuItem
      Caption = '&Procesos'
      object ControlLechero1: TMenuItem
        Caption = 'Control Lechero'
        ShortCut = 49228
      end
      object ControldeVacunas1: TMenuItem
        Caption = 'Control de Vacunas'
        ShortCut = 16470
      end
    end
    object Herramientas1: TMenuItem
      Caption = '&Herramientas'
      object RespaldodeBasedeDatos1: TMenuItem
        Caption = 'Respaldo de Base de Datos'
      end
      object Grficas1: TMenuItem
        Caption = 'Gr'#225'ficas'
      end
    end
    object Seguridad1: TMenuItem
      Caption = '&Seguridad'
      object Modulos1: TMenuItem
        Caption = 'Modulos'
      end
      object Rolesdeusuarios1: TMenuItem
        Caption = 'Roles de Usuarios'
      end
      object Usuarios1: TMenuItem
        Caption = 'Usuarios'
        object Administradores1: TMenuItem
          Caption = 'Administradores'
        end
        object Deres1: TMenuItem
          Caption = 'De Respaldo'
        end
        object SuperUsuarios1: TMenuItem
          Caption = 'Super Usuarios'
        end
      end
      object Backup1: TMenuItem
        Caption = 'Backup'
      end
      object Permisos1: TMenuItem
        Caption = 'Permisos'
      end
      object Cambiodecontrasea1: TMenuItem
        Caption = 'Cambio de contrase'#241'a'
      end
    end
    object Ayuda1: TMenuItem
      Caption = '&Ayuda'
      object Acercade1: TMenuItem
        Caption = 'Acerca de'
      end
      object Salir1: TMenuItem
        Caption = 'Salir'
        ShortCut = 116
        OnClick = Salir1Click
      end
    end
  end
  object Menu_1: TPopupMenu
    Left = 344
    Top = 72
    object Fuente1: TMenuItem
      Caption = 'Fuente'
      object ColordeFuente1: TMenuItem
        Caption = 'Color de Fuente'
        OnClick = ColordeFuente1Click
      end
      object FuentesFont1: TMenuItem
        Caption = 'Fuentes(Font)'
        OnClick = FuentesFont1Click
      end
    end
    object Fondo1: TMenuItem
      Caption = 'Fondo'
      object CambiarColordeFondo1: TMenuItem
        Caption = 'Color de Fondo'
        OnClick = CambiarColordeFondo1Click
      end
    end
  end
  object DialogoColor: TColorDialog
    Left = 376
    Top = 72
  end
  object DialogoFuente: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 408
    Top = 72
  end
  object Menu_Form: TPopupMenu
    Left = 320
    Top = 152
    object ColordeFormulario1: TMenuItem
      Caption = 'Color de Formulario'
      OnClick = ColordeFormulario1Click
    end
    object CerrarelFormulario1: TMenuItem
      Caption = 'Cerrar el Formulario'
    end
  end
end
