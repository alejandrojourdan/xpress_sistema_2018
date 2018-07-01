unit u_Clientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, Mask, DBCtrls, ExtCtrls, DB,
  Buttons, o32editf, o32flxed;

type
  Tfr_Clientes = class(TForm)
    StatusBar1: TStatusBar;
    DSO_Clientes: TDataSource;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    ED_Telefono: TMaskEdit;
    ed_Nombre: TO32FlexEdit;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ed_NombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
     function ShowModalClientes: Integer;
  end;

var
  fr_Clientes: Tfr_Clientes;

implementation

uses u_Servidor_Datos, u_orden_lavado;

{$R *.dfm}

procedure Tfr_Clientes.FormCreate(Sender: TObject);
begin
 //Pasamos algunos parametros a la hora de crear la forma
end;


function Tfr_Clientes.ShowModalClientes: Integer;
begin

   StatusBar1.panels[1].Text :=
    'Por favor ingrese la información del nuevo cliente';

    StatusBar1.panels[0].Text := fr_orden_lavado.ED_BUSCA_TELEFONO.Text;
    ED_Nombre.Text := ''; //NullAsStringValue
    fr_Clientes.ED_Nombre.text := fr_orden_lavado.ED_BUSCA_NOMBRE.Text;
    ED_Telefono.text := '';
    ED_Telefono.text := fr_orden_lavado.ED_BUSCA_TELEFONO.Text;

  Result := ShowModal;

end;

procedure Tfr_Clientes.BitBtn1Click(Sender: TObject);
begin

{if ED_Nombre.Text = '' then
  begin
   ShowMessage('El nombre no puede estar vacio');
  end;
//ShowMessage('Regresamos a orden de lavado');
// aqui tenemos que verificar que el nombre y el telefono tengan valores validos
// podemos hacer subrutina para que revise que el telefono tenga 8 numeros y el nombre
// no este vacio}
end;

procedure Tfr_Clientes.BitBtn2Click(Sender: TObject);
begin
//fr_Clientes.Close;
end;

procedure Tfr_Clientes.ed_NombreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_Tab)
 then
BitBtn1.Click;
end;

procedure Tfr_Clientes.FormActivate(Sender: TObject);

begin

  case adondevoycliente of
   1 : ed_Nombre.SetFocus;
   2 : ED_Telefono.SetFocus;
  end;
end;

end.
