unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    MainMenu1: TMainMenu;
    calculo1: TMenuItem;
    Amortizacion: TMenuItem;
    Facturacion: TMenuItem;
    PanelMenu: TPanel;
    SpeedButton3: TSpeedButton;
    BitBttnFactura: TBitBtn;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;

    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBttnFacturaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses ventanaCalculo, CalculoDeInteres;


procedure TForm4.BitBttnFacturaClick(Sender: TObject);
begin
  Form5:= TForm5.Create(Self);
   Form5.Show;
   PanelMenu.Visible := False;
   Panel3.Visible := False;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
  PanelMenu.Visible := True;
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
begin
PanelMenu.Visible := False;
end;

end.
