object fr_Retirar: Tfr_Retirar
  Left = 248
  Top = 218
  Caption = 'Retirar Orden de Lavado'
  ClientHeight = 528
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 8
    Top = 9
    Width = 618
    Height = 93
    Caption = 'Buscar por...'
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 15
      Width = 57
      Height = 13
      Caption = '# de Orden:'
    end
    object Label2: TLabel
      Left = 487
      Top = 14
      Width = 40
      Height = 13
      Caption = 'Nombre:'
    end
    object sb_Buscar_OrdenID: TSpeedButton
      Left = 90
      Top = 33
      Width = 69
      Height = 27
      Cursor = crHandPoint
      Caption = '&Buscar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000320B0000320B00000001000000010000CE630000EFA5
        4A00C6846B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00B584
        8400B58C8400CE9C8400B5948C00C6A59400EFCE9400C6A59C00EFCE9C00F7D6
        9C00C6ADA500F7D6A500CEB5AD00D6B5AD00C6BDAD00F7D6AD00D6BDB500DEBD
        B500DEC6B500E7C6B500EFCEB500F7D6B500F7DEB500EFCEBD00F7DEBD00E7DE
        C600F7DEC600F7E7C600E7CECE00E7D6CE00F7E7CE00F7E7D600FFEFD600FFEF
        E700FFF7E700FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002E2E09090909
        0909090909090909092E2E2E0F2823201E1713100E0E0E11092E2E2E0F282622
        201D1310100E0E10092E2E2E1229272622201D1710100E10092E2E2E122A2700
        2322001D1710100E092E2E2E142D1000271000101D171010092E2E2E152F0000
        0000000000171313092E2E2E182F2C100027100010201D17092E2E2E182F2F10
        0010270010201E1E092E2E2E192F2F00000000000000221D092E2E2E1A2F2F2F
        1000291000102116092E2E2E1B2F2F2F2F002B2B000D0C0A092E2E2E1B2F2F2F
        2F002F2D00030501022E2E2E1F2F2F2F2F2F2F2F250806042E2E2E2E1B2C2B2B
        2B2B2B2B24080B2E2E2E2E2E1B1C1C1C1C1B1B1C18072E2E2E2E}
      ParentFont = False
      OnClick = sb_Buscar_OrdenIDClick
    end
    object Label4: TLabel
      Left = 225
      Top = 15
      Width = 63
      Height = 13
      Caption = '# Telef'#243'nico:'
    end
    object sb_Buscar_Telefono: TSpeedButton
      Left = 294
      Top = 30
      Width = 72
      Height = 27
      Cursor = crHandPoint
      Caption = '&Buscar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00000030303030303030303030303030303030
        3030000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000585858
        585858585858808080808080303030303030303030303030000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000058585830303030303058585880808030303000
        0000585858303030303030000000FFFFFFFFFFFFFFFFFFFFFFFF000000808080
        3030303030303030305858585858580000005858583030303030303030300000
        00FFFFFFFFFFFFFFFFFF00000080808030303030303030303030303080808000
        0000585858585858303030303030303030000000FFFFFFFFFFFFFFFFFF000000
        A0A0A08080808080800000000000008080808080805858583030303030303030
        30303030000000FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFF00
        0000808080808080585858303030303030303030000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000008080800000000000000000
        00000000303030000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000808080585858585858303030303030000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000003030305858585858
        58808080303030000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000808080303030303030585858808080303030000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000008080803030303030305858
        58585858303030000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000A0A0A0303030303030303030303030303030000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000008080808080805858
        58585858000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFF}
      ParentFont = False
      OnClick = sb_Buscar_TelefonoClick
    end
    object lb_NombreCliente: TLabel
      Left = 13
      Top = 66
      Width = 234
      Height = 20
      Alignment = taCenter
      Caption = 'Aqui va el nombre del Cliente'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object sb_BuscaporNombre: TSpeedButton
      Left = 519
      Top = 32
      Width = 85
      Height = 27
      Cursor = crHandPoint
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000D30E0000D30E00000001000000010000080808000810
        1800181818008C311800C642180021212100C6422100CE4A2100946321005A7B
        210021842100292929008C4A2900C64A2900CE4A2900D64A2900102131003131
        3100C65A3100C6633100B56B3100319C31000010390039393900E75A39003184
        39007B8C39001829420031314200424242008C524200EF5A4200A5634200D66B
        4200DE6B420042AD420042CE420008214A004A4A4A00A5524A00EF634A00F763
        4A00D66B4A00DE7B4A004AA54A0052525200B5735200527B5200E77B52005A9C
        520052B5520010215A0042215A0063525A005A5A5A005A735A0063735A00EF7B
        5A00DE8C5A00E78C5A005AA55A005AAD5A0063AD5A005AB55A005AD65A006363
        6300FF7B6300D68463007BAD630063BD63006B6B6B0084736B00FF8C6B004231
        73005A73730084BD730073D673008CDE7300426B7B00187B7B007B7B7B007BA5
        7B004A5A84005A638400DE9C8400EFB5840010318C00526B8C00737B8C00DEA5
        8C00FFBD8C009CDE8C00292994001031940010399400738494008CBD9400EFC6
        940010399C00106B9C0010739C009C9C9C00FFD69C00184AA5002173A5002973
        A5006394A500A5A5A500A5CEA500FFD6A500B5E7A5001842AD00104AAD00FFDE
        AD00187BB500318CB500428CB5004A8CB50094ADB500C6DEB5001852BD00185A
        BD002184BD002984BD00318CBD001863C600216BC6003994C600529CC600D6E7
        C6002163CE00216BCE00298CCE003194CE00429CCE004A9CCE00529CCE002184
        D60052A5D6005AA5D60073B5D60084B5D6008CBDD600297BDE00218CDE003194
        DE00429CDE0042A5DE0052ADDE006BB5DE0094C6DE009CC6DE00F7EFDE00297B
        E7002984E700298CE70042A5E7004AA5E7007BBDE7008CC6E70094C6E700EFF7
        E700FFF7E700428CEF002994EF00ADD6EF00298CF7003194F7004AADF7004AB5
        F700FF00FF00399CFF00429CFF0039A5FF0042A5FF0052A5FF0042ADFF004AAD
        FF005AADFF0052B5FF006BBDFF006BC6FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AAAAAAAAAAAA
        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
        AAAAAA2E0D0406070E0D0D0D1E47AAAAAAAAAAAAAAAAAAAAAAAAAA0D0F292942
        422813181F0D0C382F0A0A151515444437AAAA07292942424821612148290F09
        230A155B5B4040243CAAAA07294242482255712B4848181A324B3E6E5B4D4040
        3CAAAA43284248303A666D3A484818403277812C6E5B4D403CAAAAAA2A393921
        54595A3B3948144C3DA1B66C3F6E5B5B3CAAAAAAAA2003345C5C492712084C4C
        3CA2A298445B5B3CAAAAAAAA261100165D5D5D5C35512C45317675746A193CAA
        AAAAAA501100255E6F6F6F625CAAAA604F89909089644AAAAAAAAA2602016778
        797979785658AAAA9BA7A7A7A7A468AAAAAAAA1105107983838383827053AA88
        ABAFAFADABABA44EAAAAAA0B11057E8F999A998F7D52AA92AEB0B0B0AEAEAD69
        AAAAAA11170B79A6B2B2ACA68357AA9CB1B4B4B4B4B1AE80AAAAAA111D261B79
        8FA3ACA77E5FAA9DB4B5B5B5B5B3B191AAAAAA262626362D1C335C5C26AAAA94
        B49393A9B4B4A87AAAAAAAAA173646656B65261126AAAA80727F878685847B63
        AAAAAAAA501D505065653617AAAAAAAA7C8B95A0A58C7380AAAAAAAAAAAA4126
        1D2650AAAAAAAAAA8E8B9FA09E8A80AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
        AA978E968D8EAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
      ParentFont = False
      OnClick = sb_BuscaporNombreClick
    end
    object ED_BUSCA_NOMBRE: TMaskEdit
      Left = 388
      Top = 33
      Width = 125
      Height = 24
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyDown = ED_BUSCA_NOMBREKeyDown
    end
    object ED_BUSCA_TELEFONO: TMaskEdit
      Left = 178
      Top = 33
      Width = 110
      Height = 24
      EditMask = '!9999999999999;0;'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 13
      ParentFont = False
      TabOrder = 1
      OnKeyDown = ED_BUSCA_TELEFONOKeyDown
    end
    object ED_NUMERO_ORDEN: TEdit
      Left = 32
      Top = 36
      Width = 55
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = ED_NUMERO_ORDENKeyDown
      OnKeyPress = ED_NUMERO_ORDENKeyPress
    end
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 103
    Width = 619
    Height = 114
    Caption = 'Deuda'
    TabOrder = 1
    object DBG_Retirar: TDBGrid
      Left = 8
      Top = 16
      Width = 449
      Height = 81
      DataSource = sdo_IBQ_Retirar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'ORDEN_ID'
          Title.Caption = 'Orden'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_OUT'
          Title.Caption = 'Prometida'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUBTOTAL'
          Title.Caption = 'Sub Total'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'A_CUENTA'
          Title.Caption = 'a Cuenta'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Saldo'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALPRENDAS'
          Title.Caption = 'Prendas'
          Width = 45
          Visible = True
        end>
    end
  end
  object BitBtn3: TBitBtn
    Left = 553
    Top = 473
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
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 290
    Width = 615
    Height = 165
    Caption = 'Corte del d'#237'a'
    TabOrder = 3
    object lbl_Ordenes_Retiradas: TLabel
      Left = 12
      Top = 17
      Width = 192
      Height = 13
      Caption = 'Ordenes Retiradas (incluye anticipos) el: '
    end
    object DBGrid2: TDBGrid
      Left = 13
      Top = 36
      Width = 449
      Height = 124
      DataSource = sdo_IBQ_Pagar
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ORDEN_ID'
          Title.Caption = 'Orden'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_PAGO'
          Title.Caption = 'Fecha Pago'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Caption = 'Importe'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRENDAS_OUT'
          Title.Caption = 'Prendas'
          Width = 45
          Visible = True
        end>
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 223
    Width = 527
    Height = 54
    TabOrder = 4
    object sb_Retira_Orden: TSpeedButton
      Left = 334
      Top = 7
      Width = 177
      Height = 37
      Caption = '&Retira Orden de Lavado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000430B0000430B000000010000000100008C2900009431
        31009C424200AD4A4A00B5525200FFD6A500FFE7C600FFEFD600FFF7E700FF00
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00090909090909
        0909090909090909090909090909090909090909090909040400000000000000
        0000000000000909090909090909090404040404040404040404040404000909
        0909090909090904040404040404040404040404040009090909090909090904
        0404040404040404040404040400090909090909090909040404040404040604
        040404040400090909090909090909040303030303060A060303030303000909
        090909090909090403030303060A0A0A06030303030009090909090909090904
        030303060A0A0A0A0A0603030300090909090909090909040202060707060A07
        070706020200090909090909090909040202020202060A070202020202000909
        09090909090909040202020202060A0702020202020009090909090909090904
        0101010101060A07010101010100090909090909090909040101010101060A07
        010101010100090909090909090909040101010101060A070101010101000909
        0909090909090904000000000007070700000000000009090909090909090904
        0000000000000000000000000000090909090909090909040000000000000000
        0000000000000909090909090909090404040404040404040404040404000909
        0909090909090904080808080707070707060505050009090909090909090904
        0A0A0A0808080808070706060500090909090909090909040A0A0A0A0A0A0808
        080707060500090909090909090909040A0A0A0A0A0A0A0A0808070706000909
        0909090909090904040404040404040404040404000009090909}
      ParentFont = False
      OnClick = sb_Retira_OrdenClick
    end
    object Label7: TLabel
      Left = 9
      Top = 3
      Width = 112
      Height = 13
      Caption = 'Fecha  en que se retira:'
    end
    object Label3: TLabel
      Left = 130
      Top = 3
      Width = 75
      Height = 13
      Caption = 'Forma de Pago:'
    end
    object dblcb_Forma_Pago: TDBLookupComboBox
      Left = 129
      Top = 21
      Width = 190
      Height = 21
      Hint = 'Selecciona la forma de pago'
      DropDownRows = 5
      KeyField = 'FORMA_PAGO_ID'
      ListField = 'FORMA_PAGO'
      ListSource = DSO_Forma_Pago
      TabOrder = 0
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 509
    Width = 634
    Height = 19
    Panels = <>
  end
  object dtp_fechaderetiro: TDateTimePicker
    Left = 19
    Top = 246
    Width = 106
    Height = 21
    Date = 42023.507425115740000000
    Time = 42023.507425115740000000
    TabOrder = 6
  end
  object sdo_IBQ_Retirar: TDataSource
    DataSet = DM_ServidorDatos.IBQ_Retirar
    Left = 568
    Top = 117
  end
  object sdo_IBQ_Pagar: TDataSource
    DataSet = DM_ServidorDatos.IBQ_Pagado
    Left = 496
    Top = 117
  end
  object DSO_Forma_Pago: TDataSource
    DataSet = DM_ServidorDatos.IBQ_FormaPago
    Left = 497
    Top = 172
  end
end