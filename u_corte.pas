unit u_corte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, PrinterSetup, RpCon, RpConDS, RpBase,
  RpSystem, RpDefine, RpRave;

type
  Tfr_Corte = class(TForm)
    sb_GenerarCorte: TSpeedButton;
    dtp_Fecha_Corte: TDateTimePicker;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    sb_Imprimir_Corte: TSpeedButton;
    sb_salir: TSpeedButton;
    Label2: TLabel;
    dtp_Fecha_Imprimir_Corte: TDateTimePicker;
    rvp_Corte: TRvProject;
    rvs_Corte: TRvSystem;
    dsc_Corte: TRvDataSetConnection;
    dsc_Ordenes_del_dia: TRvDataSetConnection;
    dsc_Ordenes_Entregadas: TRvDataSetConnection;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure sb_GenerarCorteClick(Sender: TObject);
    procedure sb_Imprimir_CorteClick(Sender: TObject);
    procedure dtp_Fecha_CorteChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_Corte: Tfr_Corte;

implementation

uses u_Servidor_Datos, u_CorteImprimir, u_orden_lavado;

{$R *.dfm}

procedure Tfr_Corte.dtp_Fecha_CorteChange(Sender: TObject);
begin
dtp_Fecha_Imprimir_Corte.Date := dtp_Fecha_Corte.Date;
end;

procedure Tfr_Corte.FormCreate(Sender: TObject);
begin
dtp_Fecha_Corte.Date := now();
dtp_Fecha_Imprimir_Corte.date := now();
end;

procedure Tfr_Corte.SpeedButton3Click(Sender: TObject);
begin
fr_Corte.Close;
end;

procedure Tfr_Corte.sb_GenerarCorteClick(Sender: TObject);

begin //3
try
  with DM_ServidorDatos.IBQ_ExisteCorte do
   begin
    CLOSE;
    PREPARE;
    parambyname('FECHA_CORTE').Clear;
    parambyname('FECHA_CORTE').ASDATE := dtp_Fecha_Corte.date;
    OPEN;
   end;
except
     showmessage('No se pudo verificar el corte');
  end;

if (DM_ServidorDatos.IBQ_ExisteCorte.IsEmpty) then
  begin
  try
   with DM_ServidorDatos.SP_GENERACORTE do
     begin
      PREPARE;
      parambyname('I_FECHA_CORTE').Clear;
      parambyname('I_EMPLEADO_ID').Clear;
      parambyname('I_FECHA_CORTE').ASDATE := DTP_FECHA_CORTE.DATE;
      parambyname('I_EMPLEADO_ID').value :=  empleado_id_global; //AQUI HAY QUE SUBSTITUIR
      EXECPROC;
      DM_ServidorDatos.IB_TR_Tintoreria.CommitRetaining;
      MessageDlg('El corte se ha generado con Exito'
                 + #13+#10+'Ya es posible Imprimirlo.', mtInformation, [mbOK], 0);
     end;
  except
      DM_ServidorDatos.IB_TR_Tintoreria.RollbackRetaining;
      MessageDlg('El corte no se pudo generar'
                  + #13+#10+'Por favor llame a la persona de '+#13+#10+'soporte técnico', mtError, [mbOK], 0);
  end;
 end
   else
  begin
MessageDlg('Ese corte ya ha sido generado'
             +#13+#10+'para esta fecha'+#13+#10
              +'Por favor llame a la persona '+#13+#10+'de soporte técnico', mtWarning, [mbOK], 0);
  exit;
  end;
end;

procedure Tfr_Corte.sb_Imprimir_CorteClick(Sender: TObject);
var
  PrinterSetup: TPrinterSetup;

begin
//// codigo para recuperar preferencias de impresion del corte
//
//  PrinterSetup := TPrinterSetup.Create;
//  //PrinterSetup.SaveSetup(FileName);
//  PrinterSetup.LoadSetup('c:\Tintoreria\print_corte.cfg');
//  //where file name is a string to the location of the File ex.'c:\Tintoreria\print_corte'
//  PrinterSetup.Free;
//
//  //mensaje de información, con el botón "Aceptar"

  application.MessageBox(pchar('Quieres Imprimir el Imprimir Corte del Día'),
      pchar('Imprimir Corte del Día'), (MB_OK + MB_ICONINFORMATION));

 try
   with DM_ServidorDatos.IBQ_CorteImprimir DO
     begin
     CLOSE;
     PREPARE;
     parambyname('FECHA_CORTE').Clear;
     parambyname('FECHA_CORTE').ASDATE := dtp_Fecha_Imprimir_Corte.date;
     OPEN;
     end;
     except
      //DM_ServidorDatos.IB_TR_Tintoreria.RollbackRetaining;
    end;

  try
   with DM_ServidorDatos.IBQ_CorteNotasDia DO
     begin
     CLOSE;
     PREPARE;
     parambyname('fecha').Clear;
     parambyname('fecha').ASDATE := dtp_Fecha_Imprimir_Corte.date;
     OPEN;
     end;
     except
      //DM_ServidorDatos.IB_TR_Tintoreria.RollbackRetaining;
    end;

    try
   with DM_ServidorDatos.IBQ_Ordenes_Lavado_Pagadas DO
     begin
     CLOSE;
     PREPARE;
     parambyname('fecha').Clear;
     parambyname('fecha').ASDATE := dtp_Fecha_Imprimir_Corte.date;
     OPEN;
     end;
     except
      //DM_ServidorDatos.IB_TR_Tintoreria.RollbackRetaining;
    end;

    rvp_Corte.Open;
    rvp_Corte.SelectReport('report_ImprimirCorte',False);
    rvp_Corte.Execute;
    rvp_Corte.Close;

    sb_salir.Click

end;

end.
