unit u_adicionales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, DB;

type
  Tfr_Adicionales = class(TForm)
    StatusBar1: TStatusBar;
    Label1: TLabel;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    lb_muestraConteo: TLabel;
    BitBtn1: TBitBtn;
    DBLL_Color: TDBLookupListBox;
    DSO_Color: TDataSource;
    Label8: TLabel;
    DSO_Observacion: TDataSource;
    DBLL_Obsevacion: TDBLookupListBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn2: TBitBtn;
    lbl_prenda: TLabel;



    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBLL_ColorClick(Sender: TObject);
    procedure DBLL_ObsevacionClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);




  private
    { Private declarations }
  public
    function ShowModalAdicionales: Integer;
  end;

var
  fr_Adicionales: Tfr_Adicionales;

implementation

uses u_orden_lavado, u_servidor_datos;

{$R *.dfm}


procedure Tfr_Adicionales.SpeedButton2Click(Sender: TObject);
begin
edit1.Text := '';
edit4.Text := '';
end;

procedure Tfr_Adicionales.SpeedButton3Click(Sender: TObject);
begin
// aqui queria yo sumarle el uno pero parece que tiene que sed desde dentro del loop

end;

function Tfr_Adicionales.ShowModalAdicionales: Integer;
begin
  // Aqui puedo borrar lo que ya hay al entrar etc.
  edit1.text := '';
  edit4.text := '';

  Result := ShowModal;
end;

procedure Tfr_Adicionales.DBLL_ColorClick(Sender: TObject);
begin
edit1.text := DBLL_Color.SelectedItem;
// poner aqui una condicon de que si esta vacio no sume espacio
//edit5.Text := edit5.Text + ' ' + edit1.Text;
end;

procedure Tfr_Adicionales.DBLL_ObsevacionClick(Sender: TObject);
begin
edit4.text := DBLL_Obsevacion.SelectedItem;
//edit5.Text := edit5.Text  + ' ' +  edit4.Text;
end;



procedure Tfr_Adicionales.BitBtn1Click(Sender: TObject);
begin
{edit5.Text := edit5.Text + ' ' + edit1.Text;
edit5.Text := edit5.Text  + ' ' +  edit4.Text;}

edit5.Text := edit5.Text + edit1.Text + ' ' +  edit4.Text;

end;
end.
