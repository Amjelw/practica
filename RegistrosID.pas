unit RegistrosID;

interface
//uses
type
  Tregistro = class
    private
    { declaraciones privadas }
    public
    procedure ValidarTipoDocYmedioGen();

  end;

type
  TrecordIdGeneracion = record
    VnumeroIdGeneracion : Integer;
    VnombreDeGeneracion : string;
  end;

type
  TrecordTipoDeDoc = record
    VnumeroDeTipoDoc : Integer;
    VnombreDetipoDoc : string;



  end;
const
  n = 4;
  m = 23;
var
   VectorMedioGen : array[1..n] of TrecordIdGeneracion;
   VectorTipoDoc  : array[1..m] of TrecordTipoDeDoc;

   implementation




{ Tregistro }

procedure Tregistro.ValidarTipoDocYmedioGen;
var  i : Integer;
begin
  VectorTipoDoc[20].VnumeroDeTipoDoc := 60;
  VectorTipoDoc[20].VnombreDetipoDoc := 'Factura electronica';
  for i := 0 to m do
    if VectorTipoDoc[i].VnumeroDeTipoDoc = 60 then





end;

end.
