unit u_IntroduceSaldo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, ovcbase, ovcef, ovcpb, ovcnf,
  o32editf, o32flxed;

type
  Tfr_IntroduceSaldo = class(TForm)
    bb_ok: TBitBtn;
    bb_cancelar: TBitBtn;
    me_NuevoImporte: TMaskEdit;
    lb_NuevoImporte: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    

  private
    { Private declarations }
  public
    { Public declarations }
    function ShowModalCambiarImporte: Integer;
  end;

var
  fr_IntroduceSaldo: Tfr_IntroduceSaldo;

implementation

uses u_Clientes, u_orden_lavado;

{$R *.dfm}

function Tfr_IntroduceSaldo.ShowModalCambiarImporte: Integer;
begin

    if fr_orden_lavado.dbg_OrdenLavadoDatos.Fields[2].Value = null then
     begin
       ShowMessage('El precio debe ser un numero positivo mayor a cero');
       exit;
     end
    else
    me_NuevoImporte.Text := fr_orden_lavado.dbg_OrdenLavadoDatos.Fields[2].Value;
   {StatusBar1.panels[1].Text :=
    'Por favor ingrese la información del nuevo cliente';

    StatusBar1.panels[0].Text := fr_orden_lavado.ED_BUSCA_TELEFONO.Text;
    ED_Nombre.Text := ''; //NullAsStringValue
    fr_Clientes.ED_Nombre.text := fr_orden_lavado.ED_BUSCA_NOMBRE.Text;
    ED_Telefono.text := '';
    ED_Telefono.text := fr_orden_lavado.ED_BUSCA_TELEFONO.Text;}

  Result := ShowModal;

end;

procedure Tfr_IntroduceSaldo.FormCreate(Sender: TObject);
begin
//me_NuevoImporte.SetFocus;
end;

procedure Tfr_IntroduceSaldo.FormActivate(Sender: TObject);
begin
me_NuevoImporte.SetFocus;
end;

end.
