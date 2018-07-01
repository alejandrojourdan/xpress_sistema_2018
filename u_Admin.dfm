object fr_Admin: Tfr_Admin
  Left = 350
  Top = 286
  Caption = 'Administraci'#243'n'
  ClientHeight = 446
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 511
    Height = 385
    ActivePage = ts_Respaldo
    TabOrder = 0
    object ts_Servicios: TTabSheet
      Caption = 'Servicios'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label8: TLabel
        Left = 7
        Top = 6
        Width = 184
        Height = 13
        Caption = 'Capture o Modifique las prendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBNavigator2: TDBNavigator
        Left = 16
        Top = 320
        Width = 225
        Height = 25
        DataSource = dso_Prendas
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert]
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 81
        Width = 486
        Height = 224
        DataSource = dso_Prendas
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRENDA'
            Title.Alignment = taCenter
            Title.Caption = 'Prendas'
            Width = 264
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIEZAS'
            Title.Alignment = taCenter
            Title.Caption = 'Piezas'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECIO'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 137
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 24
        Width = 270
        Height = 51
        Caption = 'Buscar Servicio por Nombre'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object ED_BUSCA_SERVICIO: TMaskEdit
          Left = 3
          Top = 18
          Width = 259
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = ED_BUSCA_SERVICIOChange
        end
      end
      object btn_GuardarServicios: TBitBtn
        Left = 319
        Top = 319
        Width = 130
        Height = 30
        Caption = 'Guardar Cambios'
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
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = btn_GuardarServiciosClick
      end
    end
    object ts_Respaldo: TTabSheet
      Caption = 'Clientes'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label9: TLabel
        Left = 9
        Top = 5
        Width = 163
        Height = 13
        Caption = 'Capture o modifique Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid2: TDBGrid
        Left = 8
        Top = 88
        Width = 473
        Height = 225
        DataSource = dso_Clientes
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TELEFONO'
            Title.Caption = 'Tel'#233'fono'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Title.Caption = 'Cliente'
            Width = 316
            Visible = True
          end>
      end
      object DBNavigator3: TDBNavigator
        Left = 61
        Top = 324
        Width = 225
        Height = 25
        DataSource = dso_Clientes
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert]
        TabOrder = 1
      end
      object gb_BuscarporNombre: TGroupBox
        Left = 170
        Top = 24
        Width = 184
        Height = 51
        Caption = 'Buscar por Nombre'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object ED_BUSCA_NOMBRE: TMaskEdit
          Left = 9
          Top = 18
          Width = 168
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = ED_BUSCA_NOMBREChange
          OnKeyDown = ED_BUSCA_NOMBREKeyDown
        end
      end
      object GroupBox2: TGroupBox
        Left = 9
        Top = 24
        Width = 155
        Height = 51
        Caption = 'Buscar por Tel'#233'fono'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object ED_BUSCA_TELEFONO: TMaskEdit
          Left = 9
          Top = 18
          Width = 136
          Height = 24
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = ED_BUSCA_TELEFONOChange
          OnKeyPress = ED_BUSCA_TELEFONOKeyPress
        end
      end
      object btn_GuardarCliente: TBitBtn
        Left = 319
        Top = 319
        Width = 130
        Height = 30
        Caption = 'Guardar Cambios'
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
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 4
        OnClick = btn_GuardarClienteClick
      end
    end
  end
  object BitBtn3: TBitBtn
    Left = 311
    Top = 408
    Width = 73
    Height = 30
    Caption = 'Cerrar'
    DoubleBuffered = True
    Glyph.Data = {
      76060000424D7606000000000000360400002800000018000000180000000100
      08000000000040020000130F0000130F00000001000000010000B55A0000C65A
      0000CE5A0000CE630000CE6B0000D66B0000D6730000DE730000DE7B0000E77B
      0000EF7B0000F77B0000F7840000FF840000A552080042424200316B4A003173
      4A005A6B5200317B5200397B5200637B520029735A00297B5A00317B5A004A7B
      5A0029845A0039845A008C636300AD6B6300427B63002184630029846300298C
      630042846B00218C6B00298C6B00398C6B0021946B0094946B00FFBD6B001894
      730021947300189C7300219C7300B59C7300189C7B0010A57B0018A57B008484
      840010AD8400F7B58400F7C6A500FFD6A500EFCEBD00F7CEBD00FFE7C600F7D6
      CE00FFDECE00FFE7DE00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003C3C3C3C3C3C
      3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
      3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C1C0F0F3C3C3C3C3C3C3C3C3C3C3C
      3C3C3C3C3C3C3C1C0F0F00000F1C1C1C1C1C1C1C1C1C3C3C3C3C3C3C3C1C0F00
      000E00010F32323232323232321C3C3C3C3C3C3C1C000000010101010F323232
      32323030301C3C3C3C3C3C3C1C010101010103030F323030302E2B2A251C3C3C
      3C3C3C3C1C010303030303030F202A2A2A262324221C3C3C3C3C3C3C1C030303
      040404030F16232421242020241C3C3C3C3C3C3C1C030404040404060F24201A
      1813181B1E1C3C3C3C3C3C3C1C040404060628060F10141411141912121C3C3C
      3C3C3C3C1C060606063538280F1212111515272D331C3C3C3C3C3C3C1C060606
      060635060F33333333333333331C3C3C3C3C3C3C1C060608080808080F333333
      33333333331C3C3C3C3C3C3C1C080808080808080F33333B3B3B3A33331C3C3C
      3C3C3C3C1C08090908080A0A0F363B3B3A39363B331C3C3C3C3C3C3C1C0D0A0A
      0A0A0A0A0F3334373B393734331C3C3C3C3C3C3C1C060D0D0C0B0A0A0F333333
      36363633331C3C3C3C3C3C3C3C1D1D060D0A0C0D0F33333333333333331C3C3C
      3C3C3C3C3C3C3C1D1D060D0D0F3131313131313131313C3C3C3C3C3C3C3C3C3C
      3C1D1D1D1D3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
      3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
      3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C}
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn3Click
  end
  object dso_Empleados: TDataSource
    DataSet = DM_ServidorDatos.IBDS_Empleados
    Left = 96
    Top = 400
  end
  object dso_Prendas: TDataSource
    DataSet = DM_ServidorDatos.IBDS_Prendas
    Left = 33
    Top = 400
  end
  object dso_Niveles: TDataSource
    DataSet = DM_ServidorDatos.IBQ_Niveles
    Left = 152
    Top = 400
  end
  object dso_Clientes: TDataSource
    DataSet = DM_ServidorDatos.IBDS_Clientes
    Left = 216
    Top = 400
  end
end
