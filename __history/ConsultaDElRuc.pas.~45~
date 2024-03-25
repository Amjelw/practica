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
  Vcl.Mask,UItemsCbx, Indentificador ;

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
    procedure FormCreate(Sender: TObject);
    procedure ComboTipoDocChange(Sender: TObject);
    procedure EditRucTimbradoKeyPress(Sender: TObject; var Key: Char);
    procedure EditNumeroDeRucKeyPress(Sender: TObject; var Key: Char);
    procedure EditIdentificadorDelRucKeyPress(Sender: TObject; var Key: Char);
    procedure EditDvTimbradoKeyPress(Sender: TObject; var Key: Char);
    procedure EditNumeroDeTimbradoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure insercionRuc();
    procedure insertarTimbrado();
    procedure VerifiacionDeTipoDoc();
    function bloqueador(var Key : Char) : Char;
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
  insertarTimbrado();
end;


procedure TForm1.ComboTipoDocChange(Sender: TObject);
begin
  VerifiacionDeTipoDoc();
end;

procedure TForm1.EditDvTimbradoKeyPress(Sender: TObject; var Key: Char);
begin
  bloqueador(Key);
end;

procedure TForm1.EditIdentificadorDelRucKeyPress(Sender: TObject;
  var Key: Char);
begin
  bloqueador(Key);
end;


procedure TForm1.EditNumeroDeRucKeyPress(Sender: TObject; var Key: Char);
begin
  bloqueador(Key);
end;

procedure TForm1.EditNumeroDeTimbradoKeyPress(Sender: TObject; var Key: Char);
begin
  bloqueador(Key);
end;

procedure TForm1.EditRucTimbradoKeyPress(Sender: TObject; var Key: Char);
begin
bloqueador(Key);
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
      MemoInformacionDeConsultaRuc.Lines.Add('El R.U.C es:                ' + EditNumeroDeRuc.Text + '-' +  EditIdentificadorDelRuc.Text);
      MemoInformacionDeConsultaRuc.Lines.Add('El tipo de persona es:      ' + objInfoContrbuyente.contribuyente.tipoPersona);
      MemoInformacionDeConsultaRuc.Lines.Add('El estado es:               ' + objInfoContrbuyente.contribuyente.estado);
      MemoInformacionDeConsultaRuc.Lines.Add('La categoria es:            ' + objInfoContrbuyente.contribuyente.categoria);
      MemoInformacionDeConsultaRuc.Lines.Add('El Nombre Comercial es:     ' + objInfoContrbuyente.contribuyente.razonSocial);
      MemoInformacionDeConsultaRuc.Lines.Add('El R.U.C anterior es:       ' + objInfoContrbuyente.contribuyente.rucAnterior);
    end;
  objInfoContrbuyente.Free;
end;

procedure TForm1.insertarTimbrado;
var
  objValidez : validezDocumentoResponse;
  InterDocTimbrado  : ValidezDocumentoTimbrado;
  VIdTipo : Integer;
  VIdGen : integer;
const
  ApiKey : string = '365a90f579dc16c68c9c6f4de69ffb75--4c80918b2a40557b8c101ef56daadf473a002fea';
begin
   VIdTipo :=  TTipoDoc(ComboTipoDoc.Items.Objects[ComboTipoDoc.ItemIndex]).IdTipoDeDoc;
   VIdGen :=  TID(ComboBoxMedioGen.Items.Objects[ComboBoxMedioGen.ItemIndex]).Numero_id;

  interDocTimbrado := GetValidezDocumentoTimbrado();
  objValidez :=  InterDocTimbrado.validezDocumentoTimbrado(ApiKey,EditRucTimbrado.Text,
                                                        EditDvTimbrado.Text,
                                                        EditNumeroDeTimbrado.Text,
                                                        VIdTipo,
                                                        EditMaskNumeroDoc.Text,
                                                        FormatDateTime( 'DD/MM/YYYY', DateExp.Date),
                                                        VIdGen);

  MemoInformacionDeConsultaRuc.Lines.Add(objValidez.mensaje + '!!');
  objValidez.Free;

end;



procedure TForm1.FormCreate(Sender: TObject);
begin

   {Combo box items de tipo de documento}
  ComboTipoDoc.AddItem('Factura', TTipoDoc.Create('Factura', 1));
  ComboTipoDoc.AddItem('Boleta de venta', TTipoDoc.Create('Boleta de Venta', 2));
  ComboTipoDoc.AddItem('Nota de remision', TTipoDoc.Create('Nota de remision', 5));
  ComboTipoDoc.AddItem('Nota de credito', TTipoDoc.Create('Nota de credito', 6));
  ComboTipoDoc.AddItem('Nota de debito', TTipoDoc.Create('Nota de debito', 7));
  ComboTipoDoc.AddItem('Comprobantes de retencion', TTipoDoc.Create('Comprobante de retencion', 8));
  ComboTipoDoc.AddItem('Boleto del transporte publico', TTipoDoc.Create('Boleta de transporte publico',9 ));
  ComboTipoDoc.AddItem('Boletos de loterias, juegos de azar', TTipoDoc.Create('Boletos de loterias, juegos de azar', 10));
  ComboTipoDoc.AddItem('Entradas a espectaculos publicos', TTipoDoc.Create('Entradas a espectaculos publicos', 11));
  ComboTipoDoc.AddItem('Autofacturas', TTipoDoc.Create('Autofacturas', 12));
  ComboTipoDoc.AddItem('Boleto de trasporte aereo', TTipoDoc.Create('Boleto de trasporte aereo',13));
  ComboTipoDoc.AddItem('Boleta resimple', TTipoDoc.Create('Boleta resimple', 10020));
  ComboTipoDoc.AddItem('Factura virtual', TTipoDoc.Create('Factura virtual', 15));
  ComboTipoDoc.AddItem('Comprobante de retencion virtual', TTipoDoc.Create('Comprobante de retencion virtual', 16));
  ComboTipoDoc.AddItem('Autofactura virtual', TTipoDoc.Create('Autofactura virtual', 21));
  ComboTipoDoc.AddItem('Retencion virtual idu', TTipoDoc.Create('Retencion virtual idu', 24));
  ComboTipoDoc.AddItem('factura electronica', TTipoDoc.Create('factura electronica', 60));
  ComboTipoDoc.AddItem('Nota de credito electronica', TTipoDoc.Create('Nota de credito electronica',5020));
  ComboTipoDoc.AddItem('Nota de debito electronica', TTipoDoc.Create('Nota de debito electronica', 22));
  ComboTipoDoc.AddItem('AutoFactura electronica', TTipoDoc.Create('AutoFactura electronica', 15020));
  ComboTipoDoc.AddItem('Nota de remision electronica', TTipoDoc.Create('Nota de remision electronica', 15021));
  ComboTipoDoc.AddItem('Boleta de venta', TTipoDoc.Create('Boleta de Venta', 20021));
  ComboTipoDoc.AddItem('Boleta Resimple electronica', TTipoDoc.Create('Boleta Resimple electronica', 20020));
  ComboTipoDoc.AddItem('Boleta de venta electronica', TTipoDoc.Create('Boleta de venta electronica', 20021));

   {ComboBox Id medio de generacion}

end;


procedure TForm1.VerifiacionDeTipoDoc;
var VidTipo : Integer;
begin
  VIdTipo :=  TTipoDoc(ComboTipoDoc.Items.Objects[ComboTipoDoc.ItemIndex]).IdTipoDeDoc;
  case VidTipo of
    1,2,5,6,7,8,9,11,13: begin
                           ComboBoxMedioGen.Items.Clear;
                           ComboBoxMedioGen.AddItem('Autoimpresos', TID.Create('Autoimpreso', 1));
                           ComboBoxMedioGen.AddItem('Preimpresos', TID.Create('Preimpresos', 3));

                         end;

    10,12: begin
             ComboBoxMedioGen.Items.Clear;
             ComboBoxMedioGen.AddItem('Autoimpresos', TID.Create('Autoimpreso', 1));
           end;

    10020: begin
             ComboBoxMedioGen.Items.Clear;
             ComboBoxMedioGen.AddItem('Preimpresos', TID.Create('Preimpresos', 3));
           end;
    15,16,21,24: begin
                   ComboBoxMedioGen.Items.Clear;
                   ComboBoxMedioGen.AddItem('Comprobantes virtuales', TID.Create('Comprobantes virtuales', 6));
                 end;

    60,5020,22,15020,15021,20020,20021: begin
                                          ComboBoxMedioGen.Items.Clear;
                                          ComboBoxMedioGen.AddItem('Documentos electronicos', TID.Create('Comprobantes vrituales', 7));
                                        end;
  end;

end;

function TForm1.bloqueador(var Key: Char): Char;
begin
  if not(Key in [#8, '0'..'9']) then
  Key := #0;
end;
end.
