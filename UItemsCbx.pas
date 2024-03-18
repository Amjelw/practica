unit UItemsCbx;

interface

type TTipoDoc = class
  private
    Fnombre: string;
    FIdTipoDeDoc: Integer;
  public
    constructor Create( nombre: string; IdTipoDeDoc: Integer );

    property nombre:           string read Fnombre write Fnombre;
    property IdTipoDeDoc:      Integer read FIdTipoDeDoc write FIdTipoDeDoc;
end;

implementation

{ TTipoDoc }

constructor TTipoDoc.Create( nombre: string; IdTipoDeDoc: Integer );
begin
     Self.Fnombre:= nombre;
     Self.FIdTipoDeDoc:= IdTipoDeDoc;
end;

end.
