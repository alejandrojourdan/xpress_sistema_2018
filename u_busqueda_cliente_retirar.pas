unit u_busqueda_cliente_retirar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DB, DBGrids, ComCtrls, ExtCtrls;

type
  Tfr_busqueda_cliente_retirar = class(TForm)
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    DSO_Busca_Cliente: TDataSource;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public

  function ShowModalbusquedaClienteRetirar: Integer;
    { Public declarations }
  end;

var
  fr_busqueda_cliente_retirar: Tfr_busqueda_cliente_retirar;

implementation

uses u_Clientes, u_orden_lavado, u_Servidor_Datos;

{$R *.dfm}

function Tfr_busqueda_cliente_retirar.ShowModalbusquedaClienteRetirar: Integer;
begin

   StatusBar1.panels[1].Text :=
    'Resultados de la busqueda';
   Result := ShowModal;

end;

procedure Tfr_busqueda_cliente_retirar.BitBtn1Click(Sender: TObject);
begin

{if fr_Clientes.ShowModalClientes = mrOk then //
              begin //222

                // **verificar que exista informacion antes de postear**
                DM_ServidorDatos.IBDS_Clientes.Insert;
                DM_ServidorDatos.IBDS_ClientesTELEFONO.Value := fr_Clientes.ED_Telefono.text;
                DM_ServidorDatos.IBDS_ClientesCliente.Value := fr_Clientes.ED_Nombre.text;
                DM_ServidorDatos.IBDS_Clientes.post;
                //  guardamos el cliente_id en la tabla de orden de lavado
                DM_ServidorDatos.IBDS_Orden_Lavado.Edit;
                DM_ServidorDatos.IBDS_Orden_LavadoCLIENTE_ID.Value := DM_ServidorDatos.IBDS_ClientesCLIENTE_ID.Value;
                DM_ServidorDatos.IBDS_Orden_Lavado.Post;
                fr_busqueda_Cliente.Close;
                // := mbok;
                //exit;
              end;//222

 }
end;

procedure Tfr_busqueda_cliente_retirar.DBGrid1DblClick(Sender: TObject);
begin
BitBtn2.Click;
end;

end.
