unit u_IntroduceAnticipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, ovcbase, ovcef, ovcpb, ovcnf,
  o32editf, o32flxed, DBCtrls, DB;

type
  Tfr_IntroduceAnticipo = class(TForm)
    bb_ok: TBitBtn;
    bb_cancelar: TBitBtn;
    me_Anticipo: TMaskEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DSO_Forma_Pago: TDataSource;
    dblcb_Forma_Pago: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure me_AnticipoKeyPress(Sender: TObject; var Key: Char);
    

  private
    { Private declarations }
  public
    { Public declarations }
    function ShowModalIntroduceAnticipo: Integer;
  end;

var
  fr_IntroduceAnticipo: Tfr_IntroduceAnticipo;

implementation

uses u_Clientes, u_orden_lavado, u_Servidor_Datos;

{$R *.dfm}

procedure Tfr_IntroduceAnticipo.me_AnticipoKeyPress(Sender: TObject;
  var Key: Char);
begin

if not (key in [#48..#57,#13,#27,#46,#8]) then
begin
 key:=#0;
end;

end;

function Tfr_IntroduceAnticipo.ShowModalIntroduceAnticipo: Integer;
begin

    //aqui va el codigo para meter en anticipo
    Result := ShowModal;

end;

procedure Tfr_IntroduceAnticipo.FormActivate(Sender: TObject);
begin
me_Anticipo.SetFocus;
me_Anticipo.Text := '';
//me_Anticipo.Text := currtostr(DM_ServidorDatos.IBDS_Orden_LavadoA_Cuenta.value);
end;

end.
