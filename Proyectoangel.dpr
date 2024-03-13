program Proyectoangel;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form4},
  ventanaCalculo in 'ventanaCalculo.pas' {Form5},
  CalculoDeInteres in 'CalculoDeInteres.pas' {FormImpuestos},
  consultaRuc1 in 'consultaRuc1.pas',
  ConsultaDElRuc in 'ConsultaDElRuc.pas',
  validezDocumentoTimbrado1 in 'validezDocumentoTimbrado1.pas',
  UItemsCbx in 'UItemsCbx.pas',
  Indentificador in 'Indentificador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
