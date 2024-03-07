object FormImpuestos: TFormImpuestos
  Left = 0
  Top = 0
  Caption = 'calculo de interes  compuesto'
  ClientHeight = 666
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 334
    Top = 90
    Width = 78
    Height = 13
    Caption = 'N'#176' DE FACTURA'
  end
  object Label8: TLabel
    Left = 368
    Top = 344
    Width = 31
    Height = 13
    Caption = 'Label8'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 666
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 733
      Height = 664
      Align = alClient
      BevelOuter = bvNone
      Color = clActiveCaption
      ParentBackground = False
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 7
        Top = 16
        Width = 714
        Height = 137
        Caption = 'INFORMACION DEL CLIENTE'
        TabOrder = 0
        object Label1: TLabel
          Left = 39
          Top = 17
          Width = 90
          Height = 13
          Caption = 'TIPO DE FACTURA'
        end
        object Label2: TLabel
          Left = 168
          Top = 17
          Width = 33
          Height = 13
          Caption = 'FECHA'
        end
        object Label3: TLabel
          Left = 307
          Top = 17
          Width = 41
          Height = 13
          Caption = 'CLIENTE'
        end
        object Label4: TLabel
          Left = 453
          Top = 17
          Width = 78
          Height = 13
          Caption = 'N'#176' DE FACTURA'
        end
        object Label5: TLabel
          Left = 169
          Top = 73
          Width = 60
          Height = 13
          Caption = 'N'#176' DE R.U.C'
        end
        object Label7: TLabel
          Left = 307
          Top = 73
          Width = 84
          Height = 13
          Caption = 'N'#176' DE TIMBRADO'
        end
        object RadioButton1: TRadioButton
          Left = 16
          Top = 36
          Width = 113
          Height = 17
          Caption = 'Debito'
          TabOrder = 0
        end
        object RadioButton2: TRadioButton
          Left = 97
          Top = 36
          Width = 113
          Height = 17
          Caption = 'Credito'
          TabOrder = 1
        end
        object cxDateEdit1: TcxDateEdit
          Left = 169
          Top = 36
          TabOrder = 2
          Width = 121
        end
        object Edit1: TEdit
          Left = 304
          Top = 36
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object cxCalcEdit1: TcxCalcEdit
          Left = 453
          Top = 36
          EditValue = 0.000000000000000000
          Properties.DisplayFormat = '###-###-########'
          TabOrder = 4
          Width = 121
        end
        object cxCalcEdit2: TcxCalcEdit
          Left = 168
          Top = 92
          EditValue = 0.000000000000000000
          Properties.DisplayFormat = '#######-#'
          TabOrder = 5
          Width = 121
        end
      end
      object GroupBox3: TGroupBox
        Left = 7
        Top = 159
        Width = 714
        Height = 123
        Caption = 'INFORMACION DE LA FACTURACION'
        TabOrder = 1
        object Label9: TLabel
          Left = 164
          Top = 24
          Width = 29
          Height = 13
          Caption = 'Precio'
        end
        object Label10: TLabel
          Left = 16
          Top = 24
          Width = 43
          Height = 13
          Caption = 'Cantidad'
        end
        object Label11: TLabel
          Left = 307
          Top = 24
          Width = 54
          Height = 13
          Caption = 'Descripcion'
        end
        object Label15: TLabel
          Left = 520
          Top = 24
          Width = 81
          Height = 13
          Caption = 'Tipo de impuesto'
        end
        object EditDescripcion: TEdit
          Left = 307
          Top = 43
          Width = 187
          Height = 21
          TabOrder = 0
        end
        object EditPrecio: TcxCalcEdit
          Left = 160
          Top = 43
          EditValue = 0.000000000000000000
          TabOrder = 1
          Width = 121
        end
        object EditCantidad: TcxCalcEdit
          Left = 16
          Top = 43
          EditValue = 0.000000000000000000
          TabOrder = 2
          Width = 121
        end
        object Button1: TButton
          Left = 519
          Top = 88
          Width = 145
          Height = 25
          Caption = 'GUARDAD'
          TabOrder = 3
          OnClick = Button1Click
        end
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 289
    Width = 714
    Height = 369
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
    object cxGrid1: TcxGrid
      Left = 2
      Top = 15
      Width = 710
      Height = 249
      Align = alTop
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DATASFACTURACION
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1RecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'CANTIDAD'
          Width = 66
        end
        object cxGrid1DBTableView1PRECIOUNITARIO: TcxGridDBColumn
          DataBinding.FieldName = 'PRECIO UNITARIO'
          Width = 128
        end
        object cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRIPCION'
          Width = 182
        end
        object cxGrid1DBTableView1EXTENTAS: TcxGridDBColumn
          DataBinding.FieldName = 'EXTENTAS'
        end
        object cxGrid1DBTableView1IVA10: TcxGridDBColumn
          DataBinding.FieldName = 'IVA 10%'
        end
        object cxGrid1DBTableView1IVA5: TcxGridDBColumn
          DataBinding.FieldName = 'IVA 5%'
          Width = 68
        end
        object cxgrdbclmnteste: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxCalcEdit6: TcxCalcEdit
      Left = 138
      Top = 291
      EditValue = 0.000000000000000000
      TabOrder = 1
      Width = 121
    end
    object cxCalcEdit7: TcxCalcEdit
      Left = 323
      Top = 291
      EditValue = 0.000000000000000000
      TabOrder = 2
      Width = 121
    end
    object cxCalcEdit8: TcxCalcEdit
      Left = 543
      Top = 291
      EditValue = 0.000000000000000000
      TabOrder = 3
      Width = 121
    end
  end
  object cxCalcEdit3: TcxCalcEdit
    Left = 334
    Top = 109
    EditValue = 0.000000000000000000
    Properties.ClearKey = 16449
    Properties.DisplayFormat = '#########'
    TabOrder = 2
    Width = 121
  end
  object ComboBoxImpuesto: TComboBox
    Left = 527
    Top = 203
    Width = 145
    Height = 21
    TabOrder = 3
    Items.Strings = (
      'I.V.A 10%'
      'I.V.A 5%'
      'EXENTA')
  end
  object TBFactura: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 608
    Top = 32
    object TBFacturaCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
    end
    object TBFacturaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 150
    end
    object TBFacturaPRECIOUNITARIO: TCurrencyField
      FieldName = 'PRECIO UNITARIO'
    end
    object TBFacturaEXTENTAS: TCurrencyField
      FieldName = 'EXTENTAS'
    end
    object TBFacturaIVA: TStringField
      FieldName = 'IVA 10%'
    end
    object TBFacturaIVACINCO: TStringField
      FieldName = 'IVA 5%'
    end
  end
  object DATASFACTURACION: TDataSource
    DataSet = TBFactura
    Left = 656
    Top = 32
  end
end
