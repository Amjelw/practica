object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Calculo Amortizacion'
  ClientHeight = 387
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Roman'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 581
    Height = 387
    Align = alClient
    Caption = 'Panel1'
    Color = clActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = -1
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 47
      Top = 356
      Width = 107
      Height = 13
      Caption = 'Intereses totales : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 295
      Top = 355
      Width = 43
      Height = 14
      Caption = 'Pago : '
    end
    object Label1: TLabel
      Left = 73
      Top = 58
      Width = 52
      Height = 28
      Caption = 'capital : '#13#10
    end
    object Label2: TLabel
      Left = 23
      Top = 106
      Width = 104
      Height = 14
      Caption = 'Tasa de interes : '
    end
    object Label3: TLabel
      Left = 250
      Top = 58
      Width = 49
      Height = 28
      Caption = 'Meses : '#13#10
    end
    object TLabel
      Left = 155
      Top = 0
      Width = 308
      Height = 35
      Caption = 'Sistema de pagamiento '
      Font.Charset = MAC_CHARSET
      Font.Color = clNavy
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EditCapital: TcxCalcEdit
      Left = 123
      Top = 55
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = '###,###,###'
      Style.Shadow = True
      StyleDisabled.TextStyle = []
      StyleFocused.TextStyle = []
      TabOrder = 0
      Width = 121
    end
    object EditHonorarios: TcxCalcEdit
      Left = 123
      Top = 103
      EditValue = 0c
      TabOrder = 1
      Width = 121
    end
    object editInteres: TcxCalcEdit
      Left = 160
      Top = 352
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = '###,###,###'
      TabOrder = 2
      Width = 121
    end
    object EditMeses: TcxCalcEdit
      Left = 303
      Top = 55
      EditValue = 0
      TabOrder = 3
      Width = 121
    end
    object editPago: TcxCalcEdit
      Left = 344
      Top = 352
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = '###,###,###'
      TabOrder = 4
      Width = 129
    end
    object BttnCalcularValor: TButton
      Left = 303
      Top = 101
      Width = 121
      Height = 25
      Caption = 'Calcular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12891332
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BttnCalcularValorClick
    end
    object Panel2: TPanel
      Left = 23
      Top = 132
      Width = 546
      Height = 205
      Caption = 'Panel2'
      Color = 16776176
      ParentBackground = False
      TabOrder = 6
      object cxGrid1: TcxGrid
        Left = 24
        Top = 7
        Width = 497
        Height = 186
        Font.Charset = JOHAB_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsCon
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxgrdbclmnGrid1DBTableView1RecId: TcxGridDBColumn
            DataBinding.FieldName = 'RecId'
            Visible = False
          end
          object cxgrdbclmnGrid1DBTableView1Meses: TcxGridDBColumn
            Caption = 'periodo(meses)'
            DataBinding.FieldName = 'Meses'
            Width = 87
          end
          object cxgrdbclmnGrid1DBTableView1Honorario: TcxGridDBColumn
            Caption = 'intereses'
            DataBinding.FieldName = 'Honorario'
            Width = 68
          end
          object cxgrdbclmnGrid1DBTableView1Amortizacionsaldodeudor: TcxGridDBColumn
            DataBinding.FieldName = 'Amortizacion saldo deudor'
            Width = 138
          end
          object cxgrdbclmnGrid1DBTableView1pagamiento: TcxGridDBColumn
            DataBinding.FieldName = 'pagamiento'
          end
          object GridTsaldo: TcxGridDBColumn
            Caption = 'saldo deudor '
            DataBinding.FieldName = 'Capital'
            Width = 112
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object TBDATA: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'Capital'
    Left = 520
    Top = 64
    object TBDATACapital: TCurrencyField
      FieldName = 'Capital'
    end
    object TBDATAMeses: TStringField
      FieldName = 'Meses'
    end
    object TBDATAHonorario: TStringField
      FieldName = 'Honorario'
    end
    object TBDATAAmortizacionSaldoDeudor: TCurrencyField
      FieldName = 'Amortizacion saldo deudor'
    end
    object TBDATApagamiento: TCurrencyField
      FieldName = 'pagamiento'
    end
    object TBDATASaldoDeudor: TCurrencyField
      FieldName = 'Saldo deudor'
    end
  end
  object dsCon: TDataSource
    DataSet = TBDATA
    Left = 520
    Top = 16
  end
end
