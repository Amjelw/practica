object FormImpuestos: TFormImpuestos
  Left = 0
  Top = 0
  Caption = 'calculo de interes  compuesto'
  ClientHeight = 495
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 368
    Top = 344
    Width = 31
    Height = 13
    Caption = 'Label8'
  end
  object Label1: TLabel
    Left = 532
    Top = 65
    Width = 69
    Height = 13
    Caption = 'DESCRIPCION'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 495
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 735
    ExplicitHeight = 666
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 795
      Height = 493
      Align = alClient
      BevelOuter = bvNone
      Color = clActiveCaption
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 784
      object GroupBox3: TGroupBox
        Left = 7
        Top = 15
        Width = 776
        Height = 120
        Caption = 'INFORMACION DE LA FACTURACION'
        TabOrder = 0
        object Label9: TLabel
          Left = 22
          Top = 51
          Width = 38
          Height = 13
          Caption = 'PRECIO'
        end
        object Label4: TLabel
          Left = 237
          Top = 24
          Width = 78
          Height = 13
          Caption = 'N'#176' DE FACTURA'
        end
        object Label5: TLabel
          Left = 22
          Top = 78
          Width = 60
          Height = 13
          Caption = 'N'#176' DE R.U.C'
        end
        object Label7: TLabel
          Left = 237
          Top = 51
          Width = 84
          Height = 13
          Caption = 'N'#176' DE TIMBRADO'
        end
        object Label6: TLabel
          Left = 237
          Top = 78
          Width = 94
          Height = 13
          Caption = 'TIPO DE IMPUESTO'
        end
        object Label11: TLabel
          Left = 497
          Top = 24
          Width = 69
          Height = 13
          Caption = 'DESCRIPCION'
        end
        object Label2: TLabel
          Left = 22
          Top = 24
          Width = 33
          Height = 13
          Caption = 'FECHA'
        end
        object EditPrecio: TcxCalcEdit
          Left = 108
          Top = 48
          EditValue = 0.000000000000000000
          TabOrder = 0
          Width = 121
        end
        object Button1: TButton
          Left = 593
          Top = 73
          Width = 145
          Height = 26
          Caption = 'GUARDAD'
          TabOrder = 1
        end
        object Edit3: TEdit
          Left = 339
          Top = 21
          Width = 145
          Height = 21
          TabOrder = 2
        end
        object Edit4: TEdit
          Left = 339
          Top = 48
          Width = 145
          Height = 21
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 108
          Top = 75
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object ComboBox2: TComboBox
          Left = 339
          Top = 75
          Width = 145
          Height = 21
          TabOrder = 5
          Items.Strings = (
            'I.V.A 10%'
            'I.V.A 5%'
            'EXENTA')
        end
        object Edit6: TEdit
          Left = 572
          Top = 21
          Width = 197
          Height = 19
          TabOrder = 6
        end
        object cxDateEdit1: TcxDateEdit
          Left = 108
          Top = 21
          TabOrder = 7
          Width = 121
        end
      end
    end
  end
  object ComboBoxImpuesto: TGroupBox
    Left = 30
    Top = 142
    Width = 738
    Height = 335
    Caption = 'FACTURACION'
    Color = clActiveCaption
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object Label12: TLabel
      Left = 50
      Top = 296
      Width = 79
      Height = 13
      Caption = 'TOTAL A PAGAR'
    end
    object Label13: TLabel
      Left = 284
      Top = 296
      Width = 28
      Height = 13
      Caption = 'I.V.A '
    end
    object Label14: TLabel
      Left = 468
      Top = 296
      Width = 70
      Height = 13
      Caption = 'TOTAL   I.V.A.'
    end
    object cxCalcEdit6: TcxCalcEdit
      Left = 138
      Top = 291
      EditValue = 0.000000000000000000
      TabOrder = 0
      Width = 121
    end
    object cxCalcEdit7: TcxCalcEdit
      Left = 323
      Top = 291
      EditValue = 0.000000000000000000
      TabOrder = 1
      Width = 121
    end
    object cxCalcEdit8: TcxCalcEdit
      Left = 543
      Top = 291
      EditValue = 0.000000000000000000
      TabOrder = 2
      Width = 121
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 15
      Width = 734
      Height = 250
      Align = alTop
      TabOrder = 3
      ExplicitWidth = 919
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1RecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object cxGrid1DBTableView1Cantidad: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
          VisibleForEditForm = bTrue
          Width = 80
        end
        object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 200
        end
        object cxGrid1DBTableView1Precio: TcxGridDBColumn
          DataBinding.FieldName = 'Precio'
          Width = 80
        end
        object cxGrid1DBTableView1RUC: TcxGridDBColumn
          DataBinding.FieldName = 'R.U.C'
          Width = 80
        end
        object cxGrid1DBTableView1NDeFactura: TcxGridDBColumn
          DataBinding.FieldName = 'N'#176' De Factura'
          Width = 94
        end
        object cxGrid1DBTableView1NDeTimbrado: TcxGridDBColumn
          DataBinding.FieldName = 'N'#176' De Timbrado'
          Width = 94
        end
        object cxGrid1DBTableView1Impuesto: TcxGridDBColumn
          DataBinding.FieldName = 'Impuesto'
          Width = 94
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object BitBtn1: TBitBtn
      Left = 679
      Top = 279
      Width = 33
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13743257
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000070000
        000E00000014000000130000000C000000050000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000008000000130E1C
        38751F4486EB1E407CDE081122510000000B0000000300000001000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000002000000030000000900000014112341842967
        B0FF4791D0FF64ADE0FF1E407DDE000000110000000400000001000000000000
        000000000000000000000000000077554AB7A57666FFA57565FFA57465FFA574
        64FFA37463FFA47363FFA37362FFA27262FFA17162FFA17161FFA07060FFA070
        60FFA06F5FFF9F6F5FFF9E6E5EFFAC8376FFBB9B90FF73768EFF2B6EB5FF4A98
        D6FF70BFEEFFB8E1F4FF224788EB000000110000000400000001000000000000
        0000000000000000000000000000A77868FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7
        F4FFFBF7F4FFF9F6F3FFF9F5F2FFF7F3EFFFF5F0EDFFF3EFEBFFF3EEEAFFF3EE
        EAFFF4EFEBFFF3EDE9FFF1EDE9FFEAE7E6FFA79694FF2767B3FF4A98D6FF70BE
        EEFFC7F0FEFF447DBAFF0F203B760000000C0000000300000001000000000000
        0000000000000000000000000001AA796AFFFDFCFBFFF6ECE6FFF6ECE6FFF6EC
        E6FFF5EBE4FFF1E8E2FFEDE5DFFFE8DFD8FFE2D9D3FFDDD5CFFFDBD2CCFFDBD3
        CDFFDED5CEFFE2DAD6FFE3DFDBFFA7908AFF7F5043FF6F5451FF5BAFE9FFC7F0
        FEFF4885C0FF1226448900000013000000060000000100000000000000000000
        0000000000000000000000000001AA7C6CFFFDFCFBFFF7EDE8FFF7EDE8FFF5EB
        E5FFF0E9E2FFE9E2DCFFDFD7D1FFB0988FFF8C6A5EFF74483BFF74473BFF7448
        3BFF89665BFFA5908AFF99837DFF7C4E44FFB9988EFFCCB6AEFFC9C3BDFF4181
        C0FF797D94FF000000260000000C000000020000000000000000000000000000
        0000000000000000000000000001AC7D6FFFFEFDFCFFF7EFE9FFF7EDE8FFF4EA
        E6FFEBE3DEFFD0C2BAFF8B6357FF99736BFFD4C3BDFFEBDDD3FFEEDDD3FFE9D8
        CDFFC8B0A5FF8F695DFF744B3EFF9D7E74FFC8B6AEFFE1D6D1FF97746AFFAD9D
        9AFFC1A195FF0000001E00000009000000010000000000000000000000000000
        0000000000000000000000000000AD7F70FFFEFDFCFFF7F0EAFFF5EDE7FFEEE7
        E1FFD6C9C3FF92695DFFC8B4AEFFF5EDE7FFCBA586FFBC8E65FFB38053FFBF91
        6CFFCCA88BFFE7D3C6FFB5988CFF7E5548FFBCACA6FF937068FFAE9690FFEEEB
        E9FFB1887BFF0000001B00000006000000010000000000000000000000000000
        0000000000000000000000000000AE8172FFFEFDFCFFF6EFE9FFF2EBE5FFE7E0
        D9FFA68073FFD9C9C4FFE8D8CBFFB28052FFCA9D6CFFDCB484FFD1A67FFFDAC0
        ADFF87A076FFB58C65FFDFC7B5FFC4AB9FFF7A5145FFA08C84FFE7E4E1FFF4F0
        EDFFA47565FF0000001800000006000000010000000000000000000000000000
        0000000000000000000000000000AF8475FFFEFDFDFFF5EEE8FFEAE4DEFFC6B2
        AAFFBE9F95FFF8F3EEFFB38154FFD9B283FFE2BB89FFE0B681FFCB9B73FFDEC8
        B8FF63BE95FF75C292FFB28D68FFE9D8CDFF9B786CFFB09D97FFE6DFDAFFF5F1
        EDFFA57667FF0000001700000006000000010000000000000000000000000000
        0000000000000000000000000000B18676FFFEFDFDFFF1EAE6FF6E6FD0FF8B70
        8BFFE6DAD6FFD5B598FFCA9E72FFE4BF8FFFE3BC8AFFE3BB8AFFCFA37CFFDFC7
        B8FF60BE93FF6DD6A4FF90AF81FFC8A689FFD0BAB1FF917064FFE5DCD6FFF6F1
        EEFFA77969FF0000001600000006000000010000000000000000000000000000
        0000000000000000000000000000B48878FFFEFDFDFFEEE7E3FF484FD3FF7162
        A1FFF6F5F7FFC19368FFE4C9A4FFF6E9D2FFF5E7CEFFEED7B6FFD7B18EFFE2CD
        BFFF6AC399FF72D7A6FF89D2A8FFB2825DFFEADDD6FF875F53FFE5DBD7FFF6F1
        EFFFA97A6AFF0000001500000005000000010000000000000000000000000000
        0000000000000000000000000000B58979FFFEFEFDFFEFE9E6FF4E56D4FF7F71
        ACFFFEFEFDFFBB895AFFFAF4E4FFFCF8E9FFFAF2E0FFF7EBD5FFEBD7C0FFE6D5
        C9FF7ACBA6FF7ADBACFF93E2BDFFA9764BFFF4EBE5FF8B6255FFE5DBD7FFF6F2
        EFFFA97D6DFF0000001500000005000000010000000000000000000000000000
        0000000000000000000000000000B78C7DFFFEFEFEFFEFEAE6FF535ED9FF7D73
        B2FFF6F5F9FFC1946AFFF3EBDCFFFEFCF0FFFDF9EBFFFBF4E3FFF4E8D6FFF0E5
        DAFF8AD3B2FF8BE1B7FFA2D9B6FFAF7D55FFEFE6E0FF977063FFE7DFD9FFF7F4
        F1FFAC7F6FFF0000001400000005000000010000000000000000000000000000
        0000000000000000000000000000B78E7FFFFEFEFEFFF0EBE8FF5865DFFF7773
        BEFFD9D5E6FFD5B598FFCFB192FFFFFEF3FFFEFCF1FFFDFAECFFF9F3E4FFF7F1
        E7FF9BDCBEFFA2E8C7FFAAAD88FFC5A185FFE1D5D0FFA9897EFFEAE3DEFFF9F5
        F3FFAD8071FF0000001300000005000000000000000000000000000000000000
        0000000000000000000000000000B98F80FFFFFEFEFFF2ECE9FF5E6BE1FF6A6F
        CFFFA59CC5FFF9F4EFFFAC784FFFE9DAC6FFFFFEF3FFFFFDF1FFFDF9EDFFFAF5
        EBFFAFE4CCFFB3CFB0FFAB7A50FFF6F0ECFFC0A299FFCBB7B0FFEFE8E4FFFAF7
        F4FFAE8373FF0000001200000004000000000000000000000000000000000000
        0000000000000000000000000000BB9182FFFFFEFEFFF3EFECFF6271E4FF606D
        E2FF7C75B8FFE7DBD6FFE6D6C9FFAB774DFFCDAC8EFFEDE1CEFFFCF7EBFFE6D4
        C6FFB4A786FFAA774DFFE6D6C9FFE3D5D1FFB6968AFFEAE4DFFFF4EDE8FFFBF9
        F7FFB08374FF0000001100000004000000000000000000000000000000000000
        0000000000000000000000000000BC9384FFFFFEFEFFF4F1EDFF6776E7FF6574
        E4FF6572DBFFB59797FFE1CDC0FFF5EFEAFFC7A488FFAB774DFFA56D40FFAA76
        4BFFC8A68AFFF4EFEAFFBECCC0FFAF9788FFDED3CFFFF2ECE7FFF6F0EBFFFCFA
        F8FFB38576FF0000001000000004000000000000000000000000000000000000
        0000000000000000000000000000BD9685FFFFFFFEFFF5F2EEFF6979E8FF6879
        E7FF6776E5FF5A61C4FFC6A38CFFDFC6B0FFF1E6DCFFFCFAF9FFFFFFFFFFF9FB
        F9FFDFEBE3FF9DC5ADFF709B7FFF3C9368FFECE6E3FFF6F1EDFFF8F1EEFFFDFA
        F9FFB38978FF0000000F00000004000000000000000000000000000000000000
        0000000000000000000000000000BF9787FFFFFFFFFFF7F4F2FF8D98E8FF6B7B
        E9FF6A7BE8FF7981D6FFECE9E5FFCCA270FFCDA579FFBF9472FFBE9C8EFF93B0
        9BFF74B796FF52AF85FF39AD7CFF2B9C6AFFF0EAE7FFF9F3F0FFF9F3F0FFFDFB
        FAFFB5897AFF0000000E00000004000000000000000000000000000000000000
        0000000000000000000000000000C09989FFFFFFFFFFFAF7F6FFF7F4F2FFF6F3
        F1FFF6F3F1FFF6F4F0FFF3EFECFFCB9E60FFCB9D5FFFC99C5EFFB9864FFFE9E5
        E3FF3AB282FF3AB382FF3BB37FFF2FA16FFFF3EEEBFFF9F4F1FFF9F4F0FFFDFB
        FAFFB78C7DFF0000000D00000003000000000000000000000000000000000000
        0000000000000000000000000000C19A8BFFFFFFFFFFFBF9F7FFFBF9F7FFFBF9
        F6FFFDF9F6FFFBF8F6FFF5F3F1FFCEA163FFCCA061FFCC9F60FFBF8E55FFEEEB
        E8FF3CB582FF3CB582FF3CB683FF30A673FFF3EEECFFFAF4F1FFF9F4F1FFFDFC
        FAFFB88F7EFF0000000A00000003000000000000000000000000000000000000
        0000000000000000000000000000C19B8CFFFFFFFFFFFBF9F8FFFBF9F8FFFDF9
        F7FFFBFAF7FFFBF9F7FFF6F4F2FFD0A464FFCFA364FFCFA263FFC59459FFF2EF
        EDFF6AC6A0FF3CB985FF3CB885FF63BB94FFF6F3EEFFFAF6F2FFFCF9F7FFFDFC
        FBFFB99081FF0000000600000002000000000000000000000000000000000000
        0000000000000000000000000000C39D8DFFFFFFFFFFFDFAF8FFFDFAF9FFFDF9
        F8FFFDFAF8FFFDF9F7FFF8F4F3FFD1A765FFD1A664FFD0A564FFC8995DFFF5F2
        F0FFF8F5F3FFF6F3EFFFF6F2EFFFF7F5F1FFF9F6F3FFFCF9F8FFFEFDFCFFFEFD
        FCFFBC9182FF0000000300000001000000000000000000000000000000000000
        0000000000000000000000000000C39D8FFFFFFFFFFFFEFAF9FFFDFAFAFFFDFB
        F9FFFDFAF9FFFDFAF8FFF9F6F5FFD2A866FFD1A766FFD2A766FFCC9F60FFF7F5
        F3FFFBF9F6FFFBF9F6FFFAF8F6FFFBF8F4FFFDFAF8FFFEFDFDFFFEFDFCFFFEFD
        FCFFBC9384FF0000000100000000000000000000000000000000000000000000
        0000000000000000000000000000C49E90FFFFFFFFFFFDFBFAFFFDFBFAFFFDFB
        F9FFFDFBF9FFFEFAF9FFFAF7F6FFDBBC8AFFD3AA67FFD3A867FFD8B787FFFAF6
        F5FFFBF9F7FFFBF9F7FFFBF9F7FFFEFBFAFFFEFEFDFFFEFEFDFFFEFDFDFFFEFD
        FCFFBD9485FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C5A190FFFFFFFFFFFEFDFBFFFDFBFBFFFDFD
        FBFFFEFBFAFFFEFBFAFFFCFAF8FFFBF9F7FFF9F6F5FFF9F7F5FFFAF7F5FFFCF9
        F7FFFDFAF8FFFDFAF8FFFDFCFBFFFFFEFEFFFEFEFEFFFEFEFDFFFEFEFDFFFEFD
        FDFFBF9788FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFEFEFFFEFEFEFFFFFEFEFFFEFEFDFFFFFE
        FDFFC09989FF0000000000000000000000000000000000000000000000000000
        000000000000000000000000000093776CBDC6A291FFC6A192FFC6A191FFC59F
        91FFC69F92FFC59F91FFC59F90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E
        8EFFC39D8EFFC39D8EFFC39C8EFFC39C8EFFC39B8DFFC39B8CFFC39B8CFFC19A
        8CFF8F7267BD0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000020000
        0003000000030000000300000003000000030000000300000004000000040000
        0004000000040000000400000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentFont = False
      TabOrder = 4
    end
  end
  object MemTabla: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 544
    Top = 72
    object MemTablaCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object MemTablaPrecio: TCurrencyField
      FieldName = 'Precio'
    end
    object MemTablaRuc: TStringField
      FieldName = 'R.U.C'
      Size = 9
    end
    object MemTablaNDeFactura: TStringField
      FieldName = 'N'#176' De Factura'
      Size = 15
    end
    object MemTablaNDeTimbrado: TStringField
      FieldName = 'N'#176' De Timbrado'
      Size = 8
    end
    object MemTablaImpuesto: TCurrencyField
      FieldName = 'Impuesto'
    end
    object MemTablaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = MemTabla
    Left = 504
    Top = 72
  end
end
