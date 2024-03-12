unit CalculoDeInteres;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus, cxStyles,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxmdaset, cxButtonEdit, Vcl.Buttons;

type
  TFormImpuestos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ComboBoxImpuesto: TGroupBox;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    EditPrecio: TcxCalcEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxCalcEdit6: TcxCalcEdit;
    cxCalcEdit7: TcxCalcEdit;
    EditTotalIva: TcxCalcEdit;
    BttnGuardar: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    EditNumeroFactura: TEdit;
    EditTimbrado: TEdit;
    EditRUC: TEdit;
    ComboBoxImpuestos: TComboBox;
    Label6: TLabel;
    MemTabla: TdxMemData;
    DataSource1: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    MemTablaCantidad: TIntegerField;
    MemTablaPrecio: TCurrencyField;
    MemTablaRuc: TStringField;
    MemTablaNDeFactura: TStringField;
    MemTablaNDeTimbrado: TStringField;
    MemTablaDescripcion: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    EditDate: TcxDateEdit;
    Label3: TLabel;
    EditCantidad: TcxCalcEdit;
    Label11: TLabel;
    EditDescripcion: TEdit;
    MemTablaFecha: TDateTimeField;
    MemTablaIVADIEZ: TCurrencyField;
    MemTablaIVACINCO: TCurrencyField;
    MemTablaEXENTA: TStringField;
    cxGrid1DBTableView1RecId: TcxGridDBColumn;
    cxGrid1DBTableView1Cantidad: TcxGridDBColumn;
    cxGrid1DBTableView1Precio: TcxGridDBColumn;
    cxGrid1DBTableView1RUC: TcxGridDBColumn;
    cxGrid1DBTableView1NDeFactura: TcxGridDBColumn;
    cxGrid1DBTableView1NDeTimbrado: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    IVADIEZ: TcxGridDBColumn;
    cxGrid1DBTableView1IVA5: TcxGridDBColumn;
    cxGrid1DBTableView1EXENTA: TcxGridDBColumn;
    BitBttnSumaTotal: TBitBtn;
    procedure BttnGuardarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure IsercionAlaTabla();
  end;

var
  FormImpuestos: TFormImpuestos;

implementation

{$R *.dfm}


procedure TFormImpuestos.BttnGuardarClick(Sender: TObject);
begin
 IsercionAlaTabla();
end;

procedure TFormImpuestos.IsercionAlaTabla;
  var VprecioUnitario : Currency ; VivaDiez : Currency ; VivaCinco : Currency;
begin
  VprecioUnitario := (EditPrecio.EditValue * EditCantidad.EditValue) / (110/100);
  VivaDiez :=  (EditPrecio.EditValue * EditCantidad.EditValue) -  VprecioUnitario;
  VivaCinco := (EditPrecio.EditValue * EditCantidad.EditValue) / 21;

  MemTabla.Insert;
  MemTablaFecha.AsDateTime := EditDate.EditValue;
  MemTablaRuc.AsString := EditRUC.Text;
  MemTablaDescripcion.AsString := EditDescripcion.Text;
  MemTablaNDeFactura.AsString := EditNumeroFactura.Text;
  MemTablaNDeTimbrado.AsString := EditTimbrado.Text;
  MemTablaCantidad.AsInteger := EditCantidad.EditValue;
  MemTablaPrecio.AsCurrency :=  VprecioUnitario;


  if ComboBoxImpuestos.ItemIndex = 0 then
    begin
      MemTablaIVADIEZ.AsCurrency := VivaDiez;
    end;
  if ComboBoxImpuestos.ItemIndex = 1 then
    begin
      MemTablaIVACINCO.AsCurrency := VivaCinco;
    end;
  if ComboBoxImpuestos.ItemIndex = 2 then
    begin
      MemTablaEXENTA.AsString := 'EXENTA';
    end;
  MemTabla.Post;
end;
end.
