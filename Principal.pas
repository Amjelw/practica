unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, dxNavBarBase, dxNavBarCollns, dxNavBar, dxNavBarStyles;

type
  TForm4 = class(TForm)
    NavmenuPrincipal: TdxNavBar;
    NavmenuPrincipalGroup1: TdxNavBarGroup;
    NavmenuPrincipalGroup2: TdxNavBarGroup;
    NavmenuPrincipalItem1: TdxNavBarItem;
    NavmenuPrincipalItem2: TdxNavBarItem;
    NavmenuPrincipalStyleItem1: TdxNavBarStyleItem;
    NavConsultarRuc: TdxNavBarItem;
    procedure NavmenuPrincipalItem1Click(Sender: TObject);
    procedure NavmenuPrincipalItem2Click(Sender: TObject);
    procedure NavConsultarRucClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses ventanaCalculo, CalculoDeInteres, ConsultaDElRuc;


procedure TForm4.NavConsultarRucClick(Sender: TObject);
begin
  Form1:= TForm1.Create(self);
  Form1.Show;
end;

procedure TForm4.NavmenuPrincipalItem1Click(Sender: TObject);
begin
   Form5:= TForm5.Create(Self);
   Form5.Show;
end;

procedure TForm4.NavmenuPrincipalItem2Click(Sender: TObject);
begin
  FormImpuestos:= TFormImpuestos.Create(Self);
  FormImpuestos.Show;
end;

end.
