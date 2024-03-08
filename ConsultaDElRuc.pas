unit ConsultaDElRuc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.Buttons;

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
    MemoInformacionDeConsultaRuc: TMemo;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure insertarDatosConsultaRuc ();
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}


  uses consultaRuc1;
procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  insertarDatosConsultaRuc();
end;

procedure TForm1.insertarDatosConsultaRuc;
var
 Lvariable : contribuyente;
 VvariableObject :  ConsultaRuc ;

var ApiPAswor : string ; Vruc : string ; VDv : string ;
begin
  ApiPAswor := '65a90f579dc16c68c9c6f4de69ffb75--4c80918b2a40557b8c101ef56daadf473a002fea';
  Vruc := '80027710';
  VDv := '4';
  VvariableObject.consultaRuc(ApiPAswor,Vruc,VDv);

end;
end.
