unit ConsultaDElRuc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.Buttons, Soap.InvokeRegistry, Soap.Rio,
  Soap.SOAPHTTPClient, IPPeerClient, Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Client, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, consultaRuc1 , validezDocumentoTimbrado1,
  Vcl.Mask,UItemsCbx, Indentificador;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditNumeroDeRuc: TEdit;
    EditIdentificadorDelRuc: TEdit;
    BitBtn1: TBitBtn;
    GroupBox3: TGroupBox;
    MemoInformacionDeConsultaRuc: TMemo;
    RESTClient: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    ComboTipoDoc: TComboBox;
    EditNumeroDeTimbrado: TEdit;
    DateExp: TDateTimePicker;
    EditMaskNumeroDoc: TMaskEdit;
    EditRucTimbrado: TEdit;
    Label9: TLabel;
    EditDvTimbrado: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    ComboBoxMedioGen: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBoxMedioGenEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure insercionRuc();
    procedure insertarTimbrado();

  end;



var
  Form1: TForm1;


implementation

{$R *.dfm}




procedure TForm1.BitBtn1Click(Sender: TObject);
begin
    insercionRuc();
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  {aqui ira el boton de la consulta del timbrado}
end;


procedure TForm1.insercionRuc;
var
  objInfoContrbuyente : infoContribuyenteResponse;
  InterConsultaRuc : ConsultaRuc;
const
  ApiKey : string = '365a90f579dc16c68c9c6f4de69ffb75--4c80918b2a40557b8c101ef56daadf473a002fea';
begin
  InterConsultaRuc := GetConsultaRuc();
  objInfoContrbuyente := InterConsultaRuc.consultaRuc(apiKey,
                                                    EditNumeroDeRuc.Text,
                                                    EditIdentificadorDelRuc.Text);
  if objInfoContrbuyente.estado = 'INVALIDO' then
    ShowMessage(objInfoContrbuyente.mensaje)
  else
    begin
      MemoInformacionDeConsultaRuc.Lines.Add('------------INFORMACION------------');
      MemoInformacionDeConsultaRuc.Lines.Add('el ruc es:                  ' + EditNumeroDeRuc.Text + '-' +  EditIdentificadorDelRuc.Text);
      MemoInformacionDeConsultaRuc.Lines.Add('el tipo de persona es:      ' + objInfoContrbuyente.contribuyente.tipoPersona);
      MemoInformacionDeConsultaRuc.Lines.Add('el estado es:               ' + objInfoContrbuyente.contribuyente.estado);
      MemoInformacionDeConsultaRuc.Lines.Add('La categoria es:            ' + objInfoContrbuyente.contribuyente.categoria);
      MemoInformacionDeConsultaRuc.Lines.Add('el Nombre comercial es:     ' + objInfoContrbuyente.contribuyente.razonSocial);
    end;
  objInfoContrbuyente.Free;
end;


procedure TForm1.insertarTimbrado;
var
  InterFaceConsultarTimbrado : ValidezDocumentoTimbrado;
  objResponseValidateDoc : validezDocumentoResponse;
const
  ApiKey : string = '365a90f579dc16c68c9c6f4de69ffb75--4c80918b2a40557b8c101ef56daadf473a002fea';
begin
  InterFaceConsultarTimbrado.validezDocumentoTimbrado(ApiKey,EditRucTimbrado.Text,
                                                      EditDvTimbrado.Text,
                                                      EditNumeroDeTimbrado.Text,
                                                      ComboTipoDoc.ItemIndex,
                                                      EditMaskNumeroDoc.Text,
                                                      DateExp.ToString);

  objResponseValidateDoc.Free;
end;




procedure TForm1.FormActivate(Sender: TObject);
var
  ObjOpcion : TTipoDoc;
  ObjIdentificador : TID;

begin

   {Combo box items de tipo de documento}
  ComboTipoDoc.Items.AddObject('Factura', TTipoDoc.Create('Factura', 1));
  ComboTipoDoc.Items.AddObject('Boleta de venta', TTipoDoc.Create('Boleta de Venta', 2));
  ComboTipoDoc.Items.AddObject('Nota de remision', TTipoDoc.Create('Nota de remision', 5));
  ComboTipoDoc.Items.AddObject('Nota de credito', TTipoDoc.Create('Boleta de Venta', 6));
  ComboTipoDoc.Items.AddObject('Nota de debito', TTipoDoc.Create('Factura', 7));
  ComboTipoDoc.Items.AddObject('Comprobantes de retencion', TTipoDoc.Create('Boleta de Venta', 8));
  ComboTipoDoc.Items.AddObject('Boleto del transporte publico', TTipoDoc.Create('Factura',9 ));
  ComboTipoDoc.Items.AddObject('Boletos de loterias, juegos de azar', TTipoDoc.Create('Boleta de Venta', 10));
  ComboTipoDoc.Items.AddObject('Entradas a espectaculos publicos', TTipoDoc.Create('Factura', 11));
  ComboTipoDoc.Items.AddObject('Autofacturas', TTipoDoc.Create('Boleta de Venta', 12));
  ComboTipoDoc.Items.AddObject('Boleto de trasporte aereo', TTipoDoc.Create('Factura',13));
  ComboTipoDoc.Items.AddObject('Boleta resimple', TTipoDoc.Create('Boleta de Venta', 10020));
  ComboTipoDoc.Items.AddObject('Factura virtual', TTipoDoc.Create('Factura', 15));
  ComboTipoDoc.Items.AddObject('Comprobante de retencion virtual', TTipoDoc.Create('Boleta de Venta', 16));
  ComboTipoDoc.Items.AddObject('Autofactura virtual', TTipoDoc.Create('Factura', 21));
  ComboTipoDoc.Items.AddObject('Retencion virtual idu', TTipoDoc.Create('Boleta de Venta', 24));
  ComboTipoDoc.Items.AddObject('factura electronica', TTipoDoc.Create('Factura', 60));
  ComboTipoDoc.Items.AddObject('Nota de credito electronica', TTipoDoc.Create('Boleta de Venta',5020));
  ComboTipoDoc.Items.AddObject('Nota de debito electronica', TTipoDoc.Create('Factura', 22));
  ComboTipoDoc.Items.AddObject('AutoFactura electronica', TTipoDoc.Create('Boleta de Venta', 15020));
  ComboTipoDoc.Items.AddObject('Nota de remision electronica', TTipoDoc.Create('Factura', 15021));
  ComboTipoDoc.Items.AddObject('Boleta de venta', TTipoDoc.Create('Boleta de Venta', 20021));
  ComboTipoDoc.Items.AddObject('Boleta Resimple electronica', TTipoDoc.Create('Factura', 20020));
  ComboTipoDoc.Items.AddObject('Boleta de venta electronica', TTipoDoc.Create('Boleta de Venta', 20021));

   {ComboBox Id medio de generacion}
  ComboBoxMedioGen.Items.AddObject('Autoimpresiones', ObjIdentificador.create('Autoimpresiones', 1));
  ComboBoxMedioGen.Items.AddObject('Preimpresos', ObjIdentificador.Create('Preimpresos', 3));
  ComboBoxMedioGen.Items.AddObject('Comprobantes Virtuales', ObjIdentificador.Create('Comprobantes virtuales', 6));
  ComboBoxMedioGen.Items.AddObject('Documentos electronicos', ObjIdentificador.Create('Documentos electronicos', 7));
end;

end.
