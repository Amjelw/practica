program Proyectoangel;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form4},
  ventanaCalculo in 'ventanaCalculo.pas' {Form5},
  CalculoDeInteres in 'CalculoDeInteres.pas' {FormImpuestos},
  FormFacturacion in 'FormFacturacion.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TFormImpuestos, FormImpuestos);
  Application.Run;
end.
