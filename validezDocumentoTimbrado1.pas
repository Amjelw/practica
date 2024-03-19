// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://servicios.set.gov.py/EsetApiWS/validezDocumentoTimbrado?wsdl
//  >Import : http://servicios.set.gov.py/servicios-proxy-consulta-publica/EsetApiWS/validezDocumentoTimbrado?wsdl=ValidezDocumentoTimbrado.wsdl
//  >Import : http://servicios.set.gov.py/servicios-proxy-consulta-publica/EsetApiWS/validezDocumentoTimbrado?wsdl=ValidezDocumentoTimbrado.wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (13/03/2024 07:23:14 - - $Rev: 69934 $)
// ************************************************************************ //

unit validezDocumentoTimbrado1;

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
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  baseResponse         = class;                 { "http://api.esetapiws.set.gov.py/"[GblCplx] }
  validezDocumentoResponse = class;             { "http://api.esetapiws.set.gov.py/"[GblCplx] }



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
  // binding   : ValidezDocumentoTimbradoPortSoapBinding
  // service   : ValidezDocumentoTimbradoPort
  // port      : ValidezDocumentoTimbradoPort
  // URL       : http://servicios.set.gov.py/servicios-proxy-consulta-publica/EsetApiWS/validezDocumentoTimbrado
  // ************************************************************************ //
  ValidezDocumentoTimbrado = interface(IInvokable)
  ['{75FC8338-7EA6-1F01-6C0A-C5DFCEF93D72}']
    function  validezDocumentoTimbrado(const apiKey: string;
                                       const ruc: string;
                                       const dv: string;
                                       const numero_timbrado: string;
                                       const tipo_documento: Integer;
                                       const numero_documento: string;
                                       const fecha_expedicion: string ;
                                       const medio_generacion: Integer): validezDocumentoResponse; stdcall;
  end;

function GetValidezDocumentoTimbrado(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ValidezDocumentoTimbrado;


implementation
  uses System.SysUtils;

function GetValidezDocumentoTimbrado(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ValidezDocumentoTimbrado;
const
  defWSDL = 'https://servicios.set.gov.py/EsetApiWS/validezDocumentoTimbrado?wsdl';
  defURL  = 'https://servicios.set.gov.py/EsetApiWS/validezDocumentoTimbrado';
  defSvc  = 'ValidezDocumentoTimbradoPort';
  defPrt  = 'ValidezDocumentoTimbradoPort';
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
    Result := (RIO as ValidezDocumentoTimbrado);
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

initialization
  { ValidezDocumentoTimbrado }
  InvRegistry.RegisterInterface(TypeInfo(ValidezDocumentoTimbrado), 'http://api.esetapiws.set.gov.py/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ValidezDocumentoTimbrado), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ValidezDocumentoTimbrado), ioDocument);
  { ValidezDocumentoTimbrado.validezDocumentoTimbrado }
  InvRegistry.RegisterMethodInfo(TypeInfo(ValidezDocumentoTimbrado), 'validezDocumentoTimbrado', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ValidezDocumentoTimbrado), 'validezDocumentoTimbrado', 'apiKey', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ValidezDocumentoTimbrado), 'validezDocumentoTimbrado', 'ruc', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ValidezDocumentoTimbrado), 'validezDocumentoTimbrado', 'dv', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ValidezDocumentoTimbrado), 'validezDocumentoTimbrado', 'numero_timbrado', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ValidezDocumentoTimbrado), 'validezDocumentoTimbrado', 'tipo_documento', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ValidezDocumentoTimbrado), 'validezDocumentoTimbrado', 'numero_documento', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ValidezDocumentoTimbrado), 'validezDocumentoTimbrado', 'fecha_expedicion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ValidezDocumentoTimbrado), 'validezDocumentoTimbrado', 'medio_generacion', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ValidezDocumentoTimbrado), 'validezDocumentoTimbrado', 'return', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSClass(baseResponse, 'http://api.esetapiws.set.gov.py/', 'baseResponse');
  RemClassRegistry.RegisterXSClass(validezDocumentoResponse, 'http://api.esetapiws.set.gov.py/', 'validezDocumentoResponse');

end.