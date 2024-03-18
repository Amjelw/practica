unit Indentificador;

interface

type TID = class
  private
    Fnombre_ID : String;
    FNumero_ID : Integer;
  public
    constructor Create(Nombre_id : string ;Numero_id : integer);
    property Nombre_id:   String read Fnombre_ID write Fnombre_ID;
    property Numero_id:   Integer read FNumero_ID  write FNumero_ID;
end;


implementation
{ TID }

constructor TID.Create(Nombre_id: string; Numero_id: integer);
begin
  Self.Fnombre_ID := Nombre_id;
  self.FNumero_ID := Numero_id;
end;

end.
