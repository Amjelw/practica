unit ventanaCalculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, dxmdaset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, Vcl.ExtCtrls;
type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BttnCalcularValor: TButton;
    EditCapital: TcxCalcEdit;
    EditMeses: TcxCalcEdit;
    Panel1: TPanel;
    EditHonorarios: TcxCalcEdit;
    TBDATA: TdxMemData;
    TBDATACapital: TCurrencyField;
    TBDATAMeses: TStringField;
    TBDATAHonorario: TStringField;
    TBDATAAmortizacionSaldoDeudor: TCurrencyField;
    TBDATApagamiento: TCurrencyField;
    dsCon: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    TBDATASaldoDeudor: TCurrencyField;
    cxgrdbclmnGrid1DBTableView1RecId: TcxGridDBColumn;
    GridTsaldo: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Meses: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Honorario: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Amortizacionsaldodeudor: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1pagamiento: TcxGridDBColumn;
    editInteres: TcxCalcEdit;
    Label4: TLabel;
    Label5: TLabel;
    editPago: TcxCalcEdit;
    Panel2: TPanel;
    procedure BttnCalcularValorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
 // funciones }
   procedure sumasDeCalculoDeAmortizacion();
    end;
var
  Form5: TForm5;

implementation

{$R *.dfm}


procedure TForm5.BttnCalcularValorClick(Sender: TObject);
  begin
    sumasDeCalculoDeAmortizacion();
  end;
procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure TForm5.sumasDeCalculoDeAmortizacion;
  var i : integer;
  var VsaldoDeudo : currency ;
  var VInteresTotales : currency;
  var Calculo : Double;

  begin
     VsaldoDeudo := EditCapital.EditValue;
     Calculo := (EditHonorarios.EditValue / 100);
     VInteresTotales := 0;

     for i :=  1 to EditMeses.EditValue  do
       begin
         // insercion de datos en la tabla
         TBDATA.Open;
         TBDATA.Insert;
         TBDATAMeses.AsInteger := i;
         TBDATAHonorario.AsCurrency := VsaldoDeudo * Calculo ;

         // suma de saldos deudor
         TBDATACapital.AsCurrency := VsaldoDeudo;
         VsaldoDeudo :=VsaldoDeudo + (VsaldoDeudo * calculo);
          // suma de intereses
         VInteresTotales:=  VInteresTotales + TBDATAHonorario.AsCurrency;
         editInteres.EditValue := VInteresTotales ;
         editPago.EditValue := EditCapital.EditValue + VInteresTotales ;

         // un condicional para poder hacer el calculo, puede que lo cambie por una funcion
         if i  = EditMeses.EditValue then
           begin
             TBDATAAmortizacionSaldoDeudor.AsCurrency := EditCapital.EditValue;
             // aca va la suma del interes total mas el capital inicial
             TBDATApagamiento.AsCurrency := EditCapital.EditValue + VInteresTotales;
           end;
         TBDATA.Post;
       end;
  end;
end.
