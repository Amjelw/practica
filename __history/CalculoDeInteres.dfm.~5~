object FormImpuestos: TFormImpuestos
  Left = 0
  Top = 0
  Caption = 'calculo de interes  compuesto'
  ClientHeight = 487
  ClientWidth = 1075
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
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
    Width = 1075
    Height = 487
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 797
    ExplicitHeight = 495
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1073
      Height = 485
      Align = alClient
      BevelOuter = bvNone
      Color = clActiveCaption
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 2
      object GroupBox3: TGroupBox
        Left = 131
        Top = 17
        Width = 779
        Height = 120
        Caption = 'INFORMACION DE LA FACTURACION'
        TabOrder = 0
        object Label9: TLabel
          Left = 502
          Top = 24
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
          Top = 49
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
          Left = 247
          Top = 78
          Width = 51
          Height = 13
          Caption = 'IMPUESTO'
        end
        object Label2: TLabel
          Left = 22
          Top = 24
          Width = 33
          Height = 13
          Caption = 'FECHA'
        end
        object Label3: TLabel
          Left = 502
          Top = 49
          Width = 52
          Height = 13
          Caption = 'CANTIDAD'
        end
        object Label11: TLabel
          Left = 22
          Top = 78
          Width = 69
          Height = 13
          Caption = 'DESCRIPCION'
        end
        object EditPrecio: TcxCalcEdit
          Left = 588
          Top = 21
          EditValue = 0.000000000000000000
          TabOrder = 0
          Width = 121
        end
        object BttnGuardar: TButton
          Left = 562
          Top = 75
          Width = 145
          Height = 26
          Caption = 'GUARDAD'
          TabOrder = 1
          OnClick = BttnGuardarClick
        end
        object EditNumeroFactura: TEdit
          Left = 339
          Top = 21
          Width = 145
          Height = 21
          TabOrder = 2
        end
        object EditTimbrado: TEdit
          Left = 339
          Top = 48
          Width = 145
          Height = 21
          TabOrder = 3
        end
        object EditRUC: TEdit
          Left = 97
          Top = 48
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object ComboBoxImpuestos: TComboBox
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
        object EditDate: TcxDateEdit
          Left = 97
          Top = 21
          TabOrder = 6
          Width = 121
        end
        object EditCantidad: TcxCalcEdit
          Left = 588
          Top = 48
          EditValue = 0.000000000000000000
          TabOrder = 7
          Width = 121
        end
        object EditDescripcion: TEdit
          Left = 97
          Top = 75
          Width = 144
          Height = 21
          TabOrder = 8
        end
      end
    end
  end
  object ComboBoxImpuesto: TGroupBox
    Left = 82
    Top = 144
    Width = 863
    Height = 335
    Caption = 'FACTURACION'
    Color = clActiveCaption
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object Label12: TLabel
      Left = 15
      Top = 296
      Width = 109
      Height = 13
      Caption = 'LIQUIDACION DEL 5%'
    end
    object Label13: TLabel
      Left = 257
      Top = 296
      Width = 126
      Height = 13
      Caption = 'TOTAL PRECIO UNITARIO'
    end
    object Label14: TLabel
      Left = 515
      Top = 296
      Width = 70
      Height = 13
      Caption = 'TOTAL   I.V.A.'
    end
    object cxCalcEdit6: TcxCalcEdit
      Left = 130
      Top = 291
      EditValue = 0.000000000000000000
      TabOrder = 0
      Width = 121
    end
    object cxCalcEdit7: TcxCalcEdit
      Left = 388
      Top = 291
      EditValue = 0.000000000000000000
      TabOrder = 1
      Width = 121
    end
    object EditTotalIva: TcxCalcEdit
      Left = 591
      Top = 291
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = '###,###,###'
      TabOrder = 2
      Width = 121
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 15
      Width = 859
      Height = 250
      Align = alTop
      TabOrder = 3
      ExplicitWidth = 735
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
        object cxGrid1DBTableView1Fecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 140
        end
        object cxGrid1DBTableView1Cantidad: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
          Width = 60
        end
        object cxGrid1DBTableView1Precio: TcxGridDBColumn
          Caption = 'Precio Unitario'
          DataBinding.FieldName = 'Precio'
          Width = 90
        end
        object cxGrid1DBTableView1RUC: TcxGridDBColumn
          DataBinding.FieldName = 'R.U.C'
        end
        object cxGrid1DBTableView1NDeFactura: TcxGridDBColumn
          DataBinding.FieldName = 'N'#176' De Factura'
        end
        object cxGrid1DBTableView1NDeTimbrado: TcxGridDBColumn
          DataBinding.FieldName = 'N'#176' De Timbrado'
          Width = 90
        end
        object IVADIEZ: TcxGridDBColumn
          DataBinding.FieldName = 'I.V.A 10%'
        end
        object cxGrid1DBTableView1IVA5: TcxGridDBColumn
          DataBinding.FieldName = 'I.V.A 5%'
        end
        object cxGrid1DBTableView1EXENTA: TcxGridDBColumn
          DataBinding.FieldName = 'EXENTA'
          Width = 78
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object BitBttnSumaTotal: TBitBtn
      Left = 752
      Top = 288
      Width = 75
      Height = 25
      Caption = 'BitBttnSumaTotal'
      TabOrder = 4
      OnClick = BitBttnSumaTotalClick
    end
  end
  object MemTabla: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 968
    Top = 168
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
    object MemTablaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object MemTablaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object MemTablaIVADIEZ: TCurrencyField
      FieldName = 'I.V.A 10%'
    end
    object MemTablaIVACINCO: TCurrencyField
      FieldName = 'I.V.A 5%'
    end
    object MemTablaEXENTA: TStringField
      FieldName = 'EXENTA'
      Size = 6
    end
  end
  object DataSource1: TDataSource
    DataSet = MemTabla
    Left = 1000
    Top = 256
  end
end
