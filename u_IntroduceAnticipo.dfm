object fr_IntroduceAnticipo: Tfr_IntroduceAnticipo
  Left = 394
  Top = 398
  Caption = 'Registro de Anticipo'
  ClientHeight = 121
  ClientWidth = 341
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object bb_ok: TBitBtn
    Left = 56
    Top = 85
    Width = 81
    Height = 30
    Cursor = crHandPoint
    Caption = 'OK'
    Default = True
    DoubleBuffered = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object bb_cancelar: TBitBtn
    Left = 151
    Top = 85
    Width = 81
    Height = 30
    Caption = 'Cancelar'
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 8
    Width = 105
    Height = 64
    Caption = 'Anticipo'
    TabOrder = 2
    object me_Anticipo: TMaskEdit
      Left = 7
      Top = 21
      Width = 92
      Height = 31
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = me_AnticipoKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 120
    Top = 8
    Width = 213
    Height = 64
    Caption = 'Forma de Pago'
    TabOrder = 3
    object dblcb_Forma_Pago: TDBLookupComboBox
      Left = 11
      Top = 24
      Width = 190
      Height = 24
      Hint = 'Selecciona la forma de pago'
      DropDownRows = 5
      KeyField = 'FORMA_PAGO_ID'
      ListField = 'FORMA_PAGO'
      ListSource = DSO_Forma_Pago
      TabOrder = 0
    end
  end
  object DSO_Forma_Pago: TDataSource
    DataSet = DM_ServidorDatos.IBQ_FormaPago
    Left = 249
    Top = 76
  end
end
