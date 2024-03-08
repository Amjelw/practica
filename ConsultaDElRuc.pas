unit ConsultaDElRuc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    procedure Button1Click(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure GroupBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


  uses consultaRuc1;
procedure TForm1.Button1Click(Sender: TObject);
begin
  consultaRuc1.contribuyente.
  end;

procedure TForm1.GroupBox1Click(Sender: TObject);
begin

end;

procedure TForm1.GroupBox2Click(Sender: TObject);
begin

end;

end.
