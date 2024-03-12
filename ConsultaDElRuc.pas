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
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt;

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
    EditDate: TcxDateEdit;
    EditNumeroDeDocumento: TEdit;
    EditNumeroDeTimbrado: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure insercionRuc();
    procedure buscadorPorNombre();
  end;



var
  Form1: TForm1;




implementation

{$R *.dfm}


  uses consultaRuc1;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
    insercionRuc();
end;

procedure TForm1.buscadorPorNombre;
var
  objInforContribuyente : infoContribuyenteResponse;
  objContribuyente : contribuyente;
begin
end;

procedure TForm1.insercionRuc;
var
  objInfoContrbuyente : infoContribuyenteResponse;
  objConsultaRuc : ConsultaRuc;
  apiKey : string;
  buscador : string;
  I : integer;
begin

    apiKey := '365a90f579dc16c68c9c6f4de69ffb75--4c80918b2a40557b8c101ef56daadf473a002fea';
    objConsultaRuc := GetConsultaRuc();
    objInfoContrbuyente := objConsultaRuc.consultaRuc(apiKey,
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

end.
