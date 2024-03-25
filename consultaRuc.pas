// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://servicios.set.gov.py/EsetApiWS/consultaRuc?wsdl
//  >Import : http://servicios.set.gov.py/servicios-proxy-consulta-publica/EsetApiWS/consultaRuc?wsdl=ConsultaRuc.wsdl
//  >Import : http://servicios.set.gov.py/servicios-proxy-consulta-publica/EsetApiWS/consultaRuc?wsdl=ConsultaRuc.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (08/03/2024 10:57:04 - - $Rev: 69934 $)
// ************************************************************************ //

unit consultaRuc;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  SQLException2        = class;                 { "http://api.esetapiws.set.gov.py/"[GblCplx] }
  SQLException         = class;                 { "http://api.esetapiws.set.gov.py/"[Flt][GblElm] }
  contribuyente        = class;                 { "http://api.esetapiws.set.gov.py/"[GblCplx] }
  baseResponse         = class;                 { "http://api.esetapiws.set.gov.py/"[GblCplx] }
  infoContribuyenteResponse = class;            { "http://api.esetapiws.set.gov.py/"[GblCplx] }
  validezDocumentoResponse = class;             { "http://api.esetapiws.set.gov.py/"[GblCplx] }



  // ************************************************************************ //
  // XML       : SQLException, global, <complexType>
  // Namespace : http://api.esetapiws.set.gov.py/
  // ************************************************************************ //
  SQLException2 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SQLException, global, <element>
  // Namespace : http://api.esetapiws.set.gov.py/
  // Info      : Fault
  // Base Types: SQLException
  // ************************************************************************ //
  SQLException = class(ERemotableException)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : contribuyente, global, <complexType>
  // Namespace : http://api.esetapiws.set.gov.py/
  // ************************************************************************ //
  contribuyente = class(TRemotable)
  private
    Fcategoria: string;
    Fcategoria_Specified: boolean;
    Fdv: string;
    Fdv_Specified: boolean;
    Festado: string;
    Festado_Specified: boolean;
    FmesCierre: string;
    FmesCierre_Specified: boolean;
    FrazonSocial: string;
    FrazonSocial_Specified: boolean;
    Fruc: string;
    Fruc_Specified: boolean;
    FrucAnterior: string;
    FrucAnterior_Specified: boolean;
    FtipoPersona: string;
    FtipoPersona_Specified: boolean;
    FtipoSociedad: string;
    FtipoSociedad_Specified: boolean;
    FnombreComercial: string;
    FnombreComercial_Specified: boolean;
    Fvalido: string;
    Fvalido_Specified: boolean;
    procedure Setcategoria(Index: Integer; const Astring: string);
    function  categoria_Specified(Index: Integer): boolean;
    procedure Setdv(Index: Integer; const Astring: string);
    function  dv_Specified(Index: Integer): boolean;
    procedure Setestado(Index: Integer; const Astring: string);
    function  estado_Specified(Index: Integer): boolean;
    procedure SetmesCierre(Index: Integer; const Astring: string);
    function  mesCierre_Specified(Index: Integer): boolean;
    procedure SetrazonSocial(Index: Integer; const Astring: string);
    function  razonSocial_Specified(Index: Integer): boolean;
    procedure Setruc(Index: Integer; const Astring: string);
    function  ruc_Specified(Index: Integer): boolean;
    procedure SetrucAnterior(Index: Integer; const Astring: string);
    function  rucAnterior_Specified(Index: Integer): boolean;
    procedure SettipoPersona(Index: Integer; const Astring: string);
    function  tipoPersona_Specified(Index: Integer): boolean;
    procedure SettipoSociedad(Index: Integer; const Astring: string);
    function  tipoSociedad_Specified(Index: Integer): boolean;
    procedure SetnombreComercial(Index: Integer; const Astring: string);
    function  nombreComercial_Specified(Index: Integer): boolean;
    procedure Setvalido(Index: Integer; const Astring: string);
    function  valido_Specified(Index: Integer): boolean;
  published
    property categoria:       string  Index (IS_OPTN or IS_UNQL) read Fcategoria write Setcategoria stored categoria_Specified;
    property dv:              string  Index (IS_OPTN or IS_UNQL) read Fdv write Setdv stored dv_Specified;
    property estado:          string  Index (IS_OPTN or IS_UNQL) read Festado write Setestado stored estado_Specified;
    property mesCierre:       string  Index (IS_OPTN or IS_UNQL) read FmesCierre write SetmesCierre stored mesCierre_Specified;
    property razonSocial:     string  Index (IS_OPTN or IS_UNQL) read FrazonSocial write SetrazonSocial stored razonSocial_Specified;
    property ruc:             string  Index (IS_OPTN or IS_UNQL) read Fruc write Setruc stored ruc_Specified;
    property rucAnterior:     string  Index (IS_OPTN or IS_UNQL) read FrucAnterior write SetrucAnterior stored rucAnterior_Specified;
    property tipoPersona:     string  Index (IS_OPTN or IS_UNQL) read FtipoPersona write SettipoPersona stored tipoPersona_Specified;
    property tipoSociedad:    string  Index (IS_OPTN or IS_UNQL) read FtipoSociedad write SettipoSociedad stored tipoSociedad_Specified;
    property nombreComercial: string  Index (IS_OPTN or IS_UNQL) read FnombreComercial write SetnombreComercial stored nombreComercial_Specified;
    property valido:          string  Index (IS_OPTN or IS_UNQL) read Fvalido write Setvalido stored valido_Specified;
  end;



  // ************************************************************************ //
  // XML       : baseResponse, global, <complexType>
  // Namespace : http://api.esetapiws.set.gov.py/
  // ************************************************************************ //
  baseResponse = class(TRemotable)
  private
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    Festado: string;
    Festado_Specified: boolean;
    Fmensaje: string;
    Fmensaje_Specified: boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setestado(Index: Integer; const Astring: string);
    function  estado_Specified(Index: Integer): boolean;
    procedure Setmensaje(Index: Integer; const Astring: string);
    function  mensaje_Specified(Index: Integer): boolean;
  published
    property codigo:  string  Index (IS_OPTN or IS_UNQL) read Fcodigo write Setcodigo stored codigo_Specified;
    property estado:  string  Index (IS_OPTN or IS_UNQL) read Festado write Setestado stored estado_Specified;
    property mensaje: string  Index (IS_OPTN or IS_UNQL) read Fmensaje write Setmensaje stored mensaje_Specified;
  end;



  // ************************************************************************ //
  // XML       : infoContribuyenteResponse, global, <complexType>
  // Namespace : http://api.esetapiws.set.gov.py/
  // ************************************************************************ //
  infoContribuyenteResponse = class(baseResponse)
  private
    Fcontribuyente: contribuyente;
    Fcontribuyente_Specified: boolean;
    procedure Setcontribuyente(Index: Integer; const Acontribuyente: contribuyente);
    function  contribuyente_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property contribuyente: contribuyente  Index (IS_OPTN or IS_UNQL) read Fcontribuyente write Setcontribuyente stored contribuyente_Specified;
  end;



  // ************************************************************************ //
  // XML       : validezDocumentoResponse, global, <complexType>
  // Namespace : http://api.esetapiws.set.gov.py/
  // ************************************************************************ //
  validezDocumentoResponse = class(baseResponse)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://api.esetapiws.set.gov.py/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ConsultaRucPortSoapBinding
  // service   : ConsultaRucPort
  // port      : ConsultaRucPort
  // URL       : http://servicios.set.gov.py/s.ervicios-proxy-consulta-publica/EsetApiWS/consultaRuc
  // ************************************************************************ //
  ConsultaRuc = interface(IInvokable)
  ['{C4FE5A45-4A7E-A80F-8164-BD6FF2D5CA18}']
    function  consultaRuc(const apiKey: string; const ruc: string; const dv: string): infoContribuyenteResponse; stdcall;
  end;

function GetConsultaRuc(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ConsultaRuc;


implementation
  uses System.SysUtils;

function GetConsultaRuc(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ConsultaRuc;
const
  defWSDL = 'https://servicios.set.gov.py/EsetApiWS/consultaRuc?wsdl';
  defURL  = 'http://servicios.set.gov.py/servicios-proxy-consulta-publica/EsetApiWS/consultaRuc';
  defSvc  = 'ConsultaRucPort';
  defPrt  = 'ConsultaRucPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as ConsultaRuc);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure contribuyente.Setcategoria(Index: Integer; const Astring: string);
begin
  Fcategoria := Astring;
  Fcategoria_Specified := True;
end;

function contribuyente.categoria_Specified(Index: Integer): boolean;
begin
  Result := Fcategoria_Specified;
end;

procedure contribuyente.Setdv(Index: Integer; const Astring: string);
begin
  Fdv := Astring;
  Fdv_Specified := True;
end;

function contribuyente.dv_Specified(Index: Integer): boolean;
begin
  Result := Fdv_Specified;
end;

procedure contribuyente.Setestado(Index: Integer; const Astring: string);
begin
  Festado := Astring;
  Festado_Specified := True;
end;

function contribuyente.estado_Specified(Index: Integer): boolean;
begin
  Result := Festado_Specified;
end;

procedure contribuyente.SetmesCierre(Index: Integer; const Astring: string);
begin
  FmesCierre := Astring;
  FmesCierre_Specified := True;
end;

function contribuyente.mesCierre_Specified(Index: Integer): boolean;
begin
  Result := FmesCierre_Specified;
end;

procedure contribuyente.SetrazonSocial(Index: Integer; const Astring: string);
begin
  FrazonSocial := Astring;
  FrazonSocial_Specified := True;
end;

function contribuyente.razonSocial_Specified(Index: Integer): boolean;
begin
  Result := FrazonSocial_Specified;
end;

procedure contribuyente.Setruc(Index: Integer; const Astring: string);
begin
  Fruc := Astring;
  Fruc_Specified := True;
end;

function contribuyente.ruc_Specified(Index: Integer): boolean;
begin
  Result := Fruc_Specified;
end;

procedure contribuyente.SetrucAnterior(Index: Integer; const Astring: string);
begin
  FrucAnterior := Astring;
  FrucAnterior_Specified := True;
end;

function contribuyente.rucAnterior_Specified(Index: Integer): boolean;
begin
  Result := FrucAnterior_Specified;
end;

procedure contribuyente.SettipoPersona(Index: Integer; const Astring: string);
begin
  FtipoPersona := Astring;
  FtipoPersona_Specified := True;
end;

function contribuyente.tipoPersona_Specified(Index: Integer): boolean;
begin
  Result := FtipoPersona_Specified;
end;

procedure contribuyente.SettipoSociedad(Index: Integer; const Astring: string);
begin
  FtipoSociedad := Astring;
  FtipoSociedad_Specified := True;
end;

function contribuyente.tipoSociedad_Specified(Index: Integer): boolean;
begin
  Result := FtipoSociedad_Specified;
end;

procedure contribuyente.SetnombreComercial(Index: Integer; const Astring: string);
begin
  FnombreComercial := Astring;
  FnombreComercial_Specified := True;
end;

function contribuyente.nombreComercial_Specified(Index: Integer): boolean;
begin
  Result := FnombreComercial_Specified;
end;

procedure contribuyente.Setvalido(Index: Integer; const Astring: string);
begin
  Fvalido := Astring;
  Fvalido_Specified := True;
end;

function contribuyente.valido_Specified(Index: Integer): boolean;
begin
  Result := Fvalido_Specified;
end;

procedure baseResponse.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function baseResponse.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure baseResponse.Setestado(Index: Integer; const Astring: string);
begin
  Festado := Astring;
  Festado_Specified := True;
end;

function baseResponse.estado_Specified(Index: Integer): boolean;
begin
  Result := Festado_Specified;
end;

procedure baseResponse.Setmensaje(Index: Integer; const Astring: string);
begin
  Fmensaje := Astring;
  Fmensaje_Specified := True;
end;

function baseResponse.mensaje_Specified(Index: Integer): boolean;
begin
  Result := Fmensaje_Specified;
end;

destructor infoContribuyenteResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcontribuyente);
  inherited Destroy;
end;

procedure infoContribuyenteResponse.Setcontribuyente(Index: Integer; const Acontribuyente: contribuyente);
begin
  Fcontribuyente := Acontribuyente;
  Fcontribuyente_Specified := True;
end;

function infoContribuyenteResponse.contribuyente_Specified(Index: Integer): boolean;
begin
  Result := Fcontribuyente_Specified;
end;

initialization
  { ConsultaRuc }
  InvRegistry.RegisterInterface(TypeInfo(ConsultaRuc), 'http://api.esetapiws.set.gov.py/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ConsultaRuc), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ConsultaRuc), ioDocument);
  { ConsultaRuc.consultaRuc }
  InvRegistry.RegisterMethodInfo(TypeInfo(ConsultaRuc), 'consultaRuc', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ConsultaRuc), 'consultaRuc', 'apiKey', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ConsultaRuc), 'consultaRuc', 'ruc', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ConsultaRuc), 'consultaRuc', 'dv', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ConsultaRuc), 'consultaRuc', 'return', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSClass(SQLException2, 'http://api.esetapiws.set.gov.py/', 'SQLException2', 'SQLException');
  RemClassRegistry.RegisterXSClass(SQLException, 'http://api.esetapiws.set.gov.py/', 'SQLException');
  RemClassRegistry.RegisterXSClass(contribuyente, 'http://api.esetapiws.set.gov.py/', 'contribuyente');
  RemClassRegistry.RegisterXSClass(baseResponse, 'http://api.esetapiws.set.gov.py/', 'baseResponse');
  RemClassRegistry.RegisterXSClass(infoContribuyenteResponse, 'http://api.esetapiws.set.gov.py/', 'infoContribuyenteResponse');
  RemClassRegistry.RegisterXSClass(validezDocumentoResponse, 'http://api.esetapiws.set.gov.py/', 'validezDocumentoResponse');

end.