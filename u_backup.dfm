object fr_Backup: Tfr_Backup
  Left = 324
  Top = 256
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Rutina de Mantenimiento Preventivo'
  ClientHeight = 432
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 345
    Height = 32
    Caption = 
      'Por favor Espere un momento mientras'#13#10'se realiza un mantenimient' +
      'o preventivo al sistema'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button9: TButton
    Left = 304
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Restaurar'
    TabOrder = 0
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 16
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Respaldar'
    TabOrder = 1
    OnClick = Button10Click
  end
  object mCopia: TMemo
    Left = 8
    Top = 48
    Width = 393
    Height = 113
    Lines.Strings = (
      'MCopia'
      '')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Animate1: TAnimate
    Left = 328
    Top = 192
    Width = 57
    Height = 53
    Active = False
    FileName = 'C:\Archivos de programa\DTnT\1.avi'
    StopFrame = 31
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 168
    Width = 145
    Height = 25
    Caption = 'Copia Bacjup y Restaura'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 296
    Top = 376
    Width = 75
    Height = 25
    Caption = 'BitBtn2'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object IBBackupService1: TIBBackupService
    Active = True
    ServerName = 'localhost'
    Protocol = TCP
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    TraceFlags = []
    Verbose = True
    BlockingFactor = 0
    DatabaseName = 'C:\tintoreria_basedatos\TINTORERIA_LOCAL.GDB'
    Options = []
    Left = 56
    Top = 240
  end
  object IBRestoreService1: TIBRestoreService
    Active = True
    ServerName = 'localhost'
    Protocol = TCP
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    TraceFlags = []
    PageBuffers = 0
    Left = 152
    Top = 240
  end
end
