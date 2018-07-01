unit u_orden_lavado;

interface

uses Windows, Classes, Graphics, Forms, Controls, Menus,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ImgList, StdActns,
  ActnList, ToolWin, sysutils, ibutils, DB, Mask, DBCtrls, Grids, DBGrids, ovcbase,
  ovccal, ovcdbcal, Calendar, dbcgrids, ovcef, ovcpb, ovcnf, Spin, ActnMan,
  ActnCtrls, StrUtils, PrinterSetup, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, RpCon, RpConDS,
  RpBase, RpSystem, RpDefine, RpRave, JvExComCtrls, JvDateTimePicker,
  JvDBDateTimePicker, dateutils, JvDBControls, variants;

type
  Tfr_orden_lavado = class(TForm)
    Label2: TLabel;
    Label5: TLabel;
    DSO_Orden_Lavado: TDataSource;
    dbt_OrdenNumero: TDBText;
    sb_BuscaTelefono: TSpeedButton;
    DSO_Clientes: TDataSource;
    dbt_Nombre_look: TDBText;
    ED_BUSCA_TELEFONO: TMaskEdit;
    dbg_OrdenLavadoDatos: TDBGrid;
    DSO_Orden_Lavado_Datos: TDataSource;
    SpeedButton1: TSpeedButton;
    gb_Introducirdatos: TGroupBox;
    sb_borraOrdenLavadoDatos: TSpeedButton;
    gb_Buscarportelefono: TGroupBox;
    gb_BuscarporNombre: TGroupBox;
    sb_BuscaporNombre: TSpeedButton;
    ED_BUSCA_NOMBRE: TMaskEdit;
    se_CantPrendas: TSpinEdit;
    DBLC_Selecciona_Prenda: TDBLookupComboBox;
    DSO_Prendas: TDataSource;
    gb_DatosOrdenLavado: TGroupBox;
    Label6: TLabel;
    lb_saldo: TLabel;
    Label8: TLabel;
    DSO_Subtotal_OrdendeLavado: TDataSource;
    DBT_NumerodePrendas: TDBText;
    DBT_SubTotal: TDBText;
    sb_guardar_eimprimir: TSpeedButton;
    DSO_Empleados: TDataSource;
    gb_totales: TGroupBox;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    btn_anticipo: TButton;
    Panel1: TPanel;
    sb_Nueva: TSpeedButton;
    sb_Retira: TSpeedButton;
    sb_Corte: TSpeedButton;
    sb_Buscar: TSpeedButton;
    sb_Admin: TSpeedButton;
    sb_Empleados: TSpeedButton;
    sb_Ver_Cortes: TSpeedButton;
    sb_Calculadora: TSpeedButton;
    MainMenu1: TMainMenu;
    Orden1: TMenuItem;
    Nueva1: TMenuItem;
    Modifica1: TMenuItem;
    Corte1: TMenuItem;
    Buscar1: TMenuItem;
    Calculadora1: TMenuItem;
    Salir1: TMenuItem;
    GenerarCorte1: TMenuItem;
    VerCortes1: TMenuItem;
    Administracin1: TMenuItem;
    BuscarOrden1: TMenuItem;
    Panel2: TPanel;
    lb_Empleado: TLabel;
    StatusBar1: TStatusBar;
    dso_Frases: TDataSource;
    DBCheckBox2: TDBCheckBox;
    gb_fecha_in: TGroupBox;
    gb_fecha_out: TGroupBox;
    RvProject: TRvProject;
    RvSystem: TRvSystem;
    rvds_OrdenLavado: TRvDataSetConnection;
    rvds_OrdenLavadoTotal: TRvDataSetConnection;
    rvds_OrdenLavadoDatos: TRvDataSetConnection;
    GroupBox3: TGroupBox;
    sb_IrOrdenLavado: TSpeedButton;
    me_NoOrdenLavado: TMaskEdit;
    dtp_Fecha_IN: TJvDBDateEdit;
    dtp_Fecha_OUT: TJvDBDateEdit;
    dtp_Hora_OUT: TJvDBDateTimePicker;
    dtp_Hora_IN: TJvDBDateTimePicker;
    DSO_IBQ_Clientes: TDataSource;
    rvds_Clientes: TRvDataSetConnection;
    sb_Salir: TSpeedButton;
    pActividad: TPanel;
    Memo1: TMemo;
    DBText1: TDBText;
    DSO_Bitacora: TDataSource;
    Button1: TButton;

    procedure FormCreate(Sender: TObject);
    procedure sb_BuscaTelefonoClick(Sender: TObject);
    procedure ED_BUSCA_TELEFONOEnter(Sender: TObject);
    procedure ED_BUSCA_TELEFONOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_anticipoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sb_borraOrdenLavadoDatosClick(Sender: TObject);
    procedure sb_BuscaporNombreClick(Sender: TObject);
    procedure ED_BUSCA_NOMBREKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg_OrdenLavadoDatosDblClick(Sender: TObject);

    procedure tb_SalirClick(Sender: TObject);
    procedure tb_AyudaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure sb_guardar_eimprimirClick(Sender: TObject);
    procedure tb_BuscaOrdenClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure dbg_OrdenLavadoDatosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure tb_RetiraClick(Sender: TObject);
    procedure tb_CorteClick(Sender: TObject);
    procedure sb_NuevaClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure tb_AdminClick(Sender: TObject);
    procedure sb_EmpleadosClick(Sender: TObject);
    procedure sb_RetiraClick(Sender: TObject);
    procedure sb_CalculadoraClick(Sender: TObject);
    procedure sb_CorteClick(Sender: TObject);
    procedure sb_BuscarClick(Sender: TObject);
    procedure sb_AdminClick(Sender: TObject);
    procedure sb_Ver_CortesClick(Sender: TObject);
    procedure sb_ModificaClick(Sender: TObject);
    procedure btn_ImprimirClick(Sender: TObject);
    procedure sb_IrOrdenLavadoClick(Sender: TObject);
    procedure me_NoOrdenLavadoKeyPress(Sender: TObject; var Key: Char);
    procedure me_NoOrdenLavadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLC_Selecciona_PrendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure se_CantPrendasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sb_SalirClick(Sender: TObject);
    procedure sb_ImprimirTicketClick(Sender: TObject);
    procedure ED_BUSCA_TELEFONOExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    //Function VerificaNIP : integer;

  private

    { Private declarations }
  public
    //function VerificaNIP : Integer;
    { Public declarations }

  end;

var

   fr_orden_lavado: Tfr_orden_lavado;
   adondevoycliente: integer;
   empleado_activo: string;
   empleado_id_global : integer;
   empleado_id_activo : integer;

implementation

uses u_about, u_servidor_datos, u_adicionales, IBCustomDataSet, u_Clientes,
  u_busqueda_cliente, u_CambiarImporte, u_vistaordenlavado, u_IntroduceAnticipo,
  u_retirar, u_corte, u_VerCortes,  u_IntroduceCodigo, u_Admin, IBQuery,
  u_utilerias, u_Calculadora, u_Empleados;

{$R *.dfm}

VAR
EMPLEADO : STRING;
NIP, EXISTE, NIVEL : INTEGER;

Function VerificaNIP : integer;

begin
if fr_IntroduceCodigo.ShowModalIntroduceCodigo = mrCancel then exit;

if (fr_IntroduceCodigo.ed_IntroduceNIP.Text = '') then
         begin
          ShowMessage('Debe de teclear un NIP Válido');
           exit;
         end;

        NIP := strtoint(LeftStr(fr_IntroduceCodigo.ed_IntroduceNIP.Text,4));
        //ShowMessage('el nip tecleado es '+ inttostr(NIP));
       try
        with DM_ServidorDatos.SP_VERIFICA_NIP do
         begin
          CLOSE;
          PREPARE;
          parambyname('I_EMPLEADO_ID').Clear;
          parambyname('I_EMPLEADO_ID').VALUE := NIP;
          empleado_id_global := NIP;
          EXECPROC;
          EMPLEADO := parambyname('E_EMPLEADO').VALUE;
          empleado_activo := EMPLEADO;
          EXISTE := parambyname('E_EXISTE').VALUE;
          NIVEL := parambyname('E_NIVEL').VALUE;
          // aqui asignar la variable de empleado activo
          fr_orden_lavado.lb_Empleado.Caption := EMPLEADO;

         end;
       except
         // MENSAJE DE ERROR
      //   showmessage('error');

       end;

  result := EXISTE;
  //ShowMessage('el resultado es '+ inttostr(EXISTE));
  //fr_introduceCodigo.ed_IntroduceNIP.Text := '';
end;

// para determinar si hay prendas en la orden de lavado
Function TieneDatos : Boolean;
var
detalle : integer;
begin
    With DM_ServidorDatos.IBQ_Contar_Detalle do
     begin
      close;
      Active:= True;
      detalle := DM_ServidorDatos.IBQ_Contar_Detalle.FieldbyName('Count').asinteger;
     end;

     if detalle > 0 then
       begin
          Result := true;
          //exit;
       end
	   else
	   begin
	   Result := false;
	   end;
end;

Function SaldoOrden : Double;
var
  TotalTemp : double;
 // SaldoTemp : double;

begin //general
TotalTemp := 0;
//SaldoTemp := 0;

With DM_ServidorDatos.IBQ_SubTotal_OrdendeLavado do
   begin
    close;
    Active:= True;
   end;
  TotalTemp := DM_ServidorDatos.IBQ_SubTotal_OrdendeLavadoSUBTOTAL.value;
  //SaldoTemp := DM_ServidorDatos.IBQ_SubTotal_OrdendeLavadoSALDO_CALC.Value;
//ShowMessage('Valor Subtotal' + floattostr(TotalTemp));
//ShowMessage('Valor Saldo' + floattostr(Saldotemp));
  //Aqui vamos a guardar el anticipo en la tabla de pagos

Result :=  TotalTemp;
end;


procedure Tfr_orden_lavado.FormCreate(Sender: TObject);
begin
//CopyMasterFieldToDetail := true;
//dtprx_Fecha_IN.Date := now;
//NIP := 0;

      //dtp_Fecha_IN.Date := now();
      //dtp_Fecha_OUT.Date := now();
      //dtp_hora_in.Time := Now();
      //dtp_hora_out.Time := Now();

end;

procedure Tfr_orden_lavado.me_NoOrdenLavadoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = vk_Return)  then
  sb_IrOrdenLavado.Click;
end;

procedure Tfr_orden_lavado.me_NoOrdenLavadoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not( key in ['0'..'9', #8, #46]) then
    key := #0;
end;

procedure Tfr_orden_lavado.sb_BuscaTelefonoClick(Sender: TObject);
  var
    largotel: Integer;
    telcompara : String;
    cadenaTel : String;
begin {general}

  largotel := 0;
  cadenaTel := ED_BUSCA_TELEFONO.Text;
  cadenaTel := StringReplace(cadenaTel, ' ', '', [rfReplaceAll]);
  //largotel := Length(trim(ED_BUSCA_TELEFONO.Text));
  largotel := Length(trim(cadenaTel));

  if largotel = 8 then telcompara := '8';
  if largotel = 10 then telcompara := '10';
  if largotel = 13 then telcompara := '13';

  if not ((telcompara = '8') OR (telcompara = '10') OR (telcompara = '13')) then
    begin
      MessageDlg('El número Telefónico debe estar formado '+#13+#10+' por 8, 10 ó 13 digitos', mtError, [mbOK], 0);
      ED_BUSCA_TELEFONO.SetFocus;
      exit;
  end;

ED_BUSCA_NOMBRE.Text := '';

// termina codigo de verificacion

//screen.cursor := crsqlwait;

with DM_ServidorDatos.IBDS_Clientes do begin
    screen.cursor := crsqlwait;
    try
      disablecontrols;
      active := false;
      SelectSql.Clear;
      SelectSql.add('select * from CLIENTES');
      SelectSql.add('where TELEFONO = :BUSCA_TELEFONO');
      parambyname('BUSCA_TELEFONO').Clear;
      parambyname('BUSCA_TELEFONO').asstring := cadenaTel;
      Enablecontrols;
      open; //use open for a select statement

    finally // al llamar esta funcion este pedazo de codigo siempre se hace
      screen.cursor := crdefault;
      //ShowMessage('a ver si funciona');

    end; {try}

end; {with}

// aqui para ver si abrimos formulario de captura o que hacemos

  if (DM_ServidorDatos.IBDS_Clientes.IsEmpty) then
  //si ESTA vacio el query haz lo siguiente:

  begin
   if MessageDlg('Número de Teléfono no asignado a ningún cliente, '+#13+#10+'¿Desea crear Cliente?', mtWarning, [mbOK,mbCancel], 0) = mrCancel then exit;
      ED_BUSCA_TELEFONO.SetFocus;

      //fr_Clientes.ed_Nombre.SetFocus;
      adondevoycliente := 1;
           if fr_Clientes.ShowModalClientes = mrOk
           then
              begin

               if (fr_Clientes.ED_Telefono.text = '') or (fr_Clientes.ED_Nombre.text = '') then
                 begin
                    // **verificar que exista informacion antes de postear**
                    MessageDlg('El nombre o el teléfono no pueden estar vacíos'+#13+#10+'No se ha generado registro del nuevo cliente', mtError, [mbOK], 0);
                    exit;
                 end;

                 DM_ServidorDatos.IBDS_Clientes.Insert;
                 //DM_ServidorDatos.IBDS_ClientesTELEFONO.Value := fr_Clientes.ED_Telefono.text;
                 DM_ServidorDatos.IBDS_ClientesTELEFONO.Value := cadenaTel;
                 DM_ServidorDatos.IBDS_ClientesCliente.Value := fr_Clientes.ED_Nombre.text;
                 DM_ServidorDatos.IBDS_ClientesFecha_Captura.Value := now;
                 DM_ServidorDatos.IBDS_Clientes.post;

                 //dtp_hora_in.Time := Now();
                 //dtp_hora_out.Time := IncHour(dtp_hora_in.Time, 2);
              end
            else
              begin
                 beep;
                 {fr_Clientes.Close;}
                 exit;
              end;
   end;

// aqui insertamos el numero de cliente que se acaba de capturar
    DM_ServidorDatos.IBDS_Orden_Lavado.Edit;
    DM_ServidorDatos.IBDS_Orden_LavadoCLIENTE_ID.Value := DM_ServidorDatos.IBDS_ClientesCLIENTE_ID.Value;
    DM_ServidorDatos.IBDS_Orden_Lavado.Post;
    se_CantPrendas.SetFocus;
    sb_guardar_eimprimir.Enabled := true;
    //screen.cursor := crDefault;

Memo1.Lines.Add(cadenaTel);

end; {general}

procedure Tfr_orden_lavado.ED_BUSCA_TELEFONOEnter(Sender: TObject);
begin
ED_BUSCA_TELEFONO.Text := '';

end;

procedure Tfr_orden_lavado.ED_BUSCA_TELEFONOExit(Sender: TObject);
begin
sb_BuscaTelefono.Click;
end;

procedure Tfr_orden_lavado.ED_BUSCA_TELEFONOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_Tab)
 then
sb_BuscaTelefono.Click;
end;

procedure Tfr_orden_lavado.SpeedButton1Click(Sender: TObject);
var detalle : integer;
var contador, vueltas: integer;
var prenda: String;
//var TX_ADICIONALES: String;

begin {1}

if dbt_Nombre_look.Caption = '' then
 begin
MessageDlg('Antes debe introducir un número telefónico'
            +#13+#10+'o el nombre del cliente a buscar.',
            mtError, [mbOK], 0);
// le damos el foco al ed_busca_telefono
ED_BUSCA_TELEFONO.SetFocus;
// nos salimos de esta acción
 exit;
 end
else
//
// Aqui limitamos la nota a 7 lineas
//
  begin

    With DM_ServidorDatos.IBQ_Contar_Detalle do
     begin
      close;
      Active:= True;
      detalle := DM_ServidorDatos.IBQ_Contar_Detalle.FieldbyName('Count').asinteger;
     end;
    if detalle >= 7 then
       begin
          ShowMessage('Si hay mas prendas que capturar hay que hacerlo en otra orden');
          exit;
       end;

vueltas := se_CantPrendas.Value; // Aqui se define el loop

if vueltas <= 0 then
  begin {2}
   MessageDlg('El numero de prendas debe ' + #13+#10 + 'ser mayor que cero', mtWarning, [mbOK], 0);
   se_CantPrendas.SetFocus;
   Exit;
  end;  {2}

if DBLC_Selecciona_Prenda.Text = '' then
  begin {3}
  ShowMessage('Debe seleccionar una prenda de la lista');
  DBLC_Selecciona_Prenda.SetFocus;
  Exit;
  end;  {3}

//variable de prenda para pasar a bd
fr_Adicionales.lbl_prenda.caption := DBLC_Selecciona_Prenda.Text;

// prenda := DBLC_Selecciona_Prenda.Text + #13+#10 + '(';
prenda := DBLC_Selecciona_Prenda.Text;

fr_Adicionales.Edit5.Text := ''; // limpiamos la caja que guarda caracteristicas'

for contador := 0 to (vueltas - 1) do
  begin  {3}

  //Antes del show modal del form adicionales

fr_Adicionales.lb_muestraConteo.caption :=
'Añadiendo prenda ' + inttostr(contador + 1) + ' de ' + inttostr(vueltas);

if fr_Adicionales.ShowModaladicionales = mrok then

    begin    {4}
      if contador < (vueltas - 1) then
      begin
         if trim(fr_Adicionales.Edit5.Text) <> '' then
          fr_Adicionales.Edit5.Text := trim(fr_Adicionales.Edit5.Text) + ' | ';
      end;
    end;       {4}

  end;     {3}

  if trim(fr_Adicionales.Edit5.Text) <> '' then
    fr_Adicionales.Edit5.Text :=  #13+#10 + '(' + fr_Adicionales.Edit5.Text + ') ';

 DM_ServidorDatos.IBDS_Orden_Lavado_datos.insert;
 DM_ServidorDatos.IBDS_Orden_Lavado_datosCANTIDAD.Value := vueltas;
 DM_ServidorDatos.IBDS_Orden_Lavado_datosPRENDA_ID.AsVariant := DBLC_Selecciona_Prenda.KeyValue;

 DM_ServidorDatos.IBDS_Orden_Lavado_datosITEM.ASSTRING := DelDoubleSpaces(Prenda) +
                                                           DelDoubleSpaces(fr_Adicionales.Edit5.Text);


{ DM_ServidorDatos.IBDS_Orden_Lavado_datosITEM.ASSTRING := Prenda +
                                                           fr_Adicionales.Edit5.Text;}

  DM_ServidorDatos.IBDS_Orden_Lavado_datosIMPORTE.Value := (vueltas * DM_ServidorDatos.IBDS_PrendasPRECIO.Value);
  DM_ServidorDatos.IBDS_Orden_Lavado_datosPRECIO.Value := DM_ServidorDatos.IBDS_PrendasPRECIO.Value;
  DM_ServidorDatos.IBDS_Orden_Lavado_datosSUMA_PRENDAS.VALUE := vueltas * DM_ServidorDatos.IBDS_PrendasPIEZAS.Value;
  DM_ServidorDatos.IBDS_Orden_Lavado_datos.post;

// damos valor cero y vacio a los selectores.

DBLC_Selecciona_Prenda.KeyValue := 0;

se_CantPrendas.Value := 0;
se_CantPrendas.SetFocus;

end;  {1}

end;

procedure Tfr_orden_lavado.btn_anticipoClick(Sender: TObject);
var
  TotalTemp : double;
  SaldoTemp : double;

begin //general
TotalTemp := 0;
SaldoTemp := 0;

if dbt_Nombre_look.Caption = ''
then
 begin //
MessageDlg('Antes debe introducir un número telefónico'
            +#13+#10+'o el nombre del cliente a buscar.',
            mtError, [mbOK], 0);
// le damos el foco al ed_busca_telefono

ED_BUSCA_TELEFONO.SetFocus;
// nos salimos de esta acción
 exit;
 end     //
else

// para observar el valor de la funcion que evalua si hay datos en la orden
//ShowMessage(BoolToStr(TieneDatos));

if not TieneDatos then
  begin
    se_CantPrendas.SetFocus;
    exit;
  end;
// Aquì definimos el valor por default de la forma de pago
fr_IntroduceAnticipo.dblcb_Forma_Pago.KeyValue := 0;


if fr_IntroduceAnticipo.ShowModalIntroduceAnticipo = mrok then

if fr_IntroduceAnticipo.me_Anticipo.text = '' then
begin
ShowMessage('Favor de capturar un anticipo mayor a cero');
exit;
end;
// poner codigo para que el anticipo no pueda ser mayor que el total de la orden

if StrToFloat(fr_IntroduceAnticipo.me_Anticipo.text) > SaldoOrden then
begin
ShowMessage('Favor de capturar un anticipo válido');
exit;
end;

begin
 //ShowMessage('Aqui va el codigo para registrar el anticipo');
 DM_ServidorDatos.IBDS_Orden_Lavado.Edit;

 DM_ServidorDatos.IBDS_Orden_LavadoA_Cuenta.value
                            := strtocurr(fr_IntroduceAnticipo.me_Anticipo.text);
 DM_ServidorDatos.IBDS_Orden_LavadoSALDO.Value
                            := DM_ServidorDatos.IBQ_SubTotal_OrdendeLavadoSALDO_CALC.Value;
 DM_ServidorDatos.IBDS_Orden_LavadoFORMA_PAGO_ID.value := fr_IntroduceAnticipo.dblcb_Forma_Pago.KeyValue;

  DM_ServidorDatos.IBDS_Orden_Lavado.Post;

 WITH DM_ServidorDatos.IBQ_SubTotal_OrdendeLavado do
   begin
    close;
    Active:= True;
   end;
  TotalTemp := DM_ServidorDatos.IBQ_SubTotal_OrdendeLavadoSUBTOTAL.value;
  SaldoTemp := DM_ServidorDatos.IBQ_SubTotal_OrdendeLavadoSALDO_CALC.Value;
//ShowMessage('Valor Subtotal' + floattostr(TotalTemp));
//ShowMessage('Valor Saldo' + floattostr(Saldotemp));
  //Aqui vamos a guardar el anticipo en la tabla de pagos
  DM_ServidorDatos.IBDS_Orden_Lavado_Pagos.Edit;
  {DM_ServidorDatos.IBDS_Orden_Lavado_PagosORDEN_ID.value :=
  DM_ServidorDatos.IBDS_Orden_LavadoORDEN_ID.value;}
  DM_ServidorDatos.IBDS_Orden_Lavado_PagosFECHA_PAGO.value := fr_orden_lavado.dtp_Fecha_IN.date;
  DM_ServidorDatos.IBDS_Orden_Lavado_PagosIMPORTE.value := strtocurr(fr_IntroduceAnticipo.me_Anticipo.text);
  DM_ServidorDatos.IBDS_Orden_Lavado_PagosPRENDAS_OUT.Value := 0;
  DM_ServidorDatos.IBDS_Orden_Lavado_PagosFORMA_PAGO_ID.value := fr_IntroduceAnticipo.dblcb_Forma_Pago.KeyValue;
  DM_ServidorDatos.IBDS_Orden_Lavado_Pagos.post;
 end;

 // ademas puedo poner el codigo para revisar si la nota esta
 // completamente pagada para prenderle la bandera de status
 // 1 - Pagada
 // 0 - No Pagada

 if SaldoTemp = 0 then
  begin
    showmessage('La Orden de Lavado quedo Pagada');
    {showmessage('vamos a actulaizar el valor de status id de la orden_id No.'+
    inttostr(DM_ServidorDatos.IBDS_Orden_LavadoORDEN_ID.value));}

    DM_ServidorDatos.IBDS_Orden_Lavado.edit;
    DM_ServidorDatos.IBDS_Orden_LavadoSTATUS_PAGO.value := 1;
    // Actualizamos el valor del saldo
    DM_ServidorDatos.IBDS_Orden_LavadoSALDO.Value := SaldoTemp;
    DM_ServidorDatos.IBDS_Orden_Lavado.Post;
  end
  else
   begin
   showmessage('Quedo un saldo pendiente');
     DM_ServidorDatos.IBDS_Orden_Lavado.edit;
     DM_ServidorDatos.IBDS_Orden_LavadoSTATUS_PAGO.Value := 0;
     //showmessage('valor del saldo' + floattostr(SaldoTemp));
     DM_ServidorDatos.IBDS_Orden_LavadoSALDO.Value := SaldoTemp;
     DM_ServidorDatos.IBDS_Orden_Lavado.Post;
    end;
 end;

procedure Tfr_orden_lavado.btn_ImprimirClick(Sender: TObject);
begin

    RvProject.Open;
    //RvProject.SelectReport('rpt_OrdenLavado',False);
    RvProject.SelectReport('rpt_OrdenLavado',true);
    RvProject.Execute;
    RvProject.Close;

//Proyecto.ExecuteReport('Report1.rpt_OrdendeLavado');
end;

procedure Tfr_orden_lavado.Button1Click(Sender: TObject);
begin
//DM_ServidorDatos.IBQ_Bitacora.Open;
Memo1.Lines.clear;
Memo1.Lines.BeginUpdate;
Memo1.Lines.Add('Inicio de Sesión');
Memo1.Lines.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss', Now()));
DM_ServidorDatos.IBQ_Bitacora.Open;
while not DM_ServidorDatos.IBQ_Bitacora.eof do
  begin
    Memo1.lines.Add('---------------------------');
    Memo1.lines.Add('ORDEN: '+ DM_ServidorDatos.IBQ_Bitacora.FieldList[0].asString +
                    ' PRENDAS: ' + DM_ServidorDatos.IBQ_Bitacora.FieldList[6].asString);
    Memo1.lines.Add('CLIENTE: '+ LEFTSTR(DM_ServidorDatos.IBQ_Bitacora.FieldList[1].asString, 18));
    Memo1.lines.Add('TELEFONO: ' + DM_ServidorDatos.IBQ_Bitacora.FieldList[2].asString);
    Memo1.lines.Add('SUBTOTAL: ' + DM_ServidorDatos.IBQ_Bitacora.FieldList[3].asString);
    Memo1.lines.Add('A CUENTA: ' + DM_ServidorDatos.IBQ_Bitacora.FieldList[4].asString);
    Memo1.lines.Add('SALDO:' + DM_ServidorDatos.IBQ_Bitacora.FieldList[5].asString);
    DM_ServidorDatos.IBQ_Bitacora.Next;
  end;
  Memo1.Lines.EndUpdate;
  DM_ServidorDatos.IBQ_Bitacora.Close;
end;

//general


procedure Tfr_orden_lavado.BitBtn1Click(Sender: TObject);
begin

  //     fr_backup.show;
  fr_orden_lavado.Hide;
  fr_orden_lavado.release;

end;

procedure Tfr_orden_lavado.sb_borraOrdenLavadoDatosClick(Sender: TObject);
begin

if MessageDlg('¿Está seguro que desea Borrar el registro seleccionado?',
mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    DM_ServidorDatos.IBDS_Orden_Lavado_datos.Edit;
    DM_ServidorDatos.IBDS_Orden_Lavado_datos.Delete;
    //DM_ServidorDatos.IBDS_Orden_Lavado_datos.post;

  end;
end;

procedure Tfr_orden_lavado.sb_BuscaporNombreClick(Sender: TObject);

begin  {general}

//Hacer Rutina que la busqueda debe de ser de mas de 3 o 4 caracteres
  //para que sea valida

  IF ED_BUSCA_NOMBRE.Text = '' then exit;
  ED_BUSCA_TELEFONO.Text := '';

with DM_ServidorDatos.IBDS_Clientes do
  begin
    try
      screen.cursor := crsqlwait;
      disablecontrols;
      active := false;
      SelectSql.Clear;
      SelectSql.add('select * from CLIENTES');
      SelectSql.add('where UPPER(CLIENTE) CONTAINING :buscarxcliente');
      SelectSql.add('order by CLIENTE');
      // linea con la cual se limpian los parametros
      parambyname('buscarxcliente').Clear;
      // pasamos el parametro
      parambyname('buscarxcliente').asstring := UPPERCASE(ED_BUSCA_NOMBRE.Text);
      Enablecontrols;
      open; //use open for a select statement

    finally // al llamar esta funcion este pedazo de codigo siempre se hace
      screen.cursor := crdefault;
     // ShowMessage('a ver si funciona');
    end; {try}
    end; {with}

    // aqui para ver si abrimos formulario de captura o que hacemos

  if DM_ServidorDatos.IBDS_Clientes.IsEmpty then

      begin //then  123

         if MessageDlg('Ningun registro coincide con el criterio,'+#13+#10+'¿Desea crear Cliente?', mtWarning, [mbOK,mbCancel], 0) = mrCancel then

          begin // de la caja de mensaje
          exit;
          end
          else // de la caja de mensaje
            begin//
             adondevoycliente := 2;
             if fr_Clientes.ShowModalClientes = mrOk then //
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

                //exit;
              end;//222
            end;
      end// then   123

  else

    begin
    // si no esta vacio el query hacemos esto
    // aqui insertamos el numero de cliente en la tabla de lavado
    //ShowMessage('El query no esta vacio');

    if fr_Busqueda_cliente.ShowModalbusquedaCliente = mrOk
         then //
           begin
                //  guardamos el cliente_id en la tabla de orden de lavado
                DM_ServidorDatos.IBDS_Orden_Lavado.Edit;
                DM_ServidorDatos.IBDS_Orden_LavadoCLIENTE_ID.Value := DM_ServidorDatos.IBDS_ClientesCLIENTE_ID.Value;
                DM_ServidorDatos.IBDS_Orden_Lavado.Post;
                sb_guardar_eimprimir.Enabled := true;
           end;

        // borramos el campo de busqueda

        ED_BUSCA_NOMBRE.Text := '';
    end;
end; {general}

 procedure Tfr_orden_lavado.ED_BUSCA_NOMBREKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = vk_Return then
sb_BuscaporNombre.Click;
end;

procedure Tfr_orden_lavado.dbg_OrdenLavadoDatosDblClick(Sender: TObject);

begin
if fr_CambiarImporte.ShowModalCambiarImporte = mrok then
  begin
    //Aqui va el codigo para asignar el nuevo precio
    DM_ServidorDatos.IBDS_Orden_Lavado_datos.Edit;
    DM_ServidorDatos.IBDS_Orden_Lavado_datosPRECIO.Value := strtocurr(fr_CambiarImporte.me_NuevoImporte.text);
    DM_ServidorDatos.IBDS_Orden_Lavado_datosIMPORTE.Value :=
                    (DM_ServidorDatos.IBDS_Orden_Lavado_datosCANTIDAD.Value * DM_ServidorDatos.IBDS_Orden_Lavado_datosPRECIO.Value);
    DM_ServidorDatos.IBDS_Orden_Lavado_datos.Post;
  end;
end;

procedure Tfr_orden_lavado.tb_SalirClick(Sender: TObject);
begin
fr_orden_lavado.Close;
end;

procedure Tfr_orden_lavado.tb_AyudaClick(Sender: TObject);
begin
fr_AboutBox.ShowModal;
end;

procedure Tfr_orden_lavado.FormActivate(Sender: TObject);

  begin
   sb_borraOrdenLavadoDatos.Enabled := False;
   gb_Buscarportelefono.Enabled := false;
   gb_BuscarporNombre.Enabled := false;
   gb_Introducirdatos.Enabled := false;
   dbg_OrdenLavadoDatos.Enabled := false;
   gb_Fecha_in.Enabled := false;
   gb_Fecha_out.Enabled := false;
   btn_anticipo.enabled := false;
//   sb_guardar_eimprimir.Enabled := false;
   dtp_Fecha_IN.Enabled := false;
   dtp_Fecha_OUT.Enabled := false;
   dtp_Hora_IN.Enabled := false;
   dtp_Hora_OUT.Enabled := false;

   // estas lineas son para que los dblookupcombobox se llenen con todos los
   // de los ibdatasets y no salgan las flechitas chiquitas.
   DM_ServidorDatos.IBDS_Prendas.FetchAll;
   DM_ServidorDatos.IBDS_Empleados.FetchAll;
   DM_ServidorDatos.IBQ_FormaPago.FetchAll;

 { with DM_ServidorDatos.IBQ_Frases do
  begin
    try
      Randomize;
      disablecontrols;
      active := false;
      //Aqui va el numero de frases en la base de datos.
      parambyname('frase_id').value :=  (Random(28)+1);
      Active := true;
      EnableControls;
    finally
    //
    end;
   end;}

  end;

procedure Tfr_orden_lavado.ToolButton1Click(Sender: TObject);
begin
//fr_ImprimirOrdenLavado.qr_ImprimirOrdenLavado.preview;
end;

procedure Tfr_orden_lavado.Salir1Click(Sender: TObject);
begin
close;
end;

procedure Tfr_orden_lavado.sb_guardar_eimprimirClick(Sender: TObject);
var
detalle : integer;

begin
    With DM_ServidorDatos.IBQ_Contar_Detalle do
     begin
      close;
      Active:= True;
      detalle := DM_ServidorDatos.IBQ_Contar_Detalle.FieldbyName('Count').asinteger;
     end;

     if detalle = 0 then
       begin
          se_CantPrendas.SetFocus;
          exit;
       end;

//     Actualizar conteo de prendas

     With DM_ServidorDatos.IBQ_SubTotal_OrdendeLavado do
     begin
      close;
      Active:= True;
     end;

    // Guardar (copiar igual a boton guardar)
    DM_ServidorDatos.IBDS_Orden_Lavado.Edit;
    DM_ServidorDatos.IBDS_Orden_Lavado.Post;

    if Application.MessageBox(pchar('Vas a Imprimir la Nota No. '
    + dbt_OrdenNumero.Caption + ' en la Impresora'), 'Imprimir Nota',
  MB_ICONINFORMATION OR MB_OKCANCEL ) = ID_OK then

  begin
    // Imprimimos con Rave Reports

    exit;

    With RvProject do begin
      Open;
      SetParam('PiedePagina','- CLIENTE -');
      ExecuteReport('rpt_OrdenLavado');
      Close;
    end; { with }

    With RvProject do begin
      Open;
      SetParam('PiedePagina','- CONSECUTIVO -');
      ExecuteReport('rpt_OrdenLavado');
      Close;
    end; { with }

    With RvProject do begin
      Open;
      SetParam('PiedePagina','- CONTROL -');
      ExecuteReport('rpt_OrdenLavado');
      Close;
    end; { with }

//    RvProject.Open;
//    RvProject.SelectReport('rpt_TicketOrdenLavado.rav',False);
//    RvProject.Execute;
//    RvProject.Close;

    StatusBar1.Panels[0].Text := pchar(
    'Orden de Lavado No. ' + dbt_OrdenNumero.Caption + ' Impresa y Guardada');
  end;

    StatusBar1.panels[1].Text := 'Para hacer una orden nueva haga click en Nueva';

end;

procedure Tfr_orden_lavado.sb_ImprimirTicketClick(Sender: TObject);
var
detalle : integer;
begin
    With DM_ServidorDatos.IBQ_Contar_Detalle do
     begin
      close;
      Active:= True;
      detalle := DM_ServidorDatos.IBQ_Contar_Detalle.FieldbyName('Count').asinteger;
     end;

     if detalle = 0 then
     begin
     se_CantPrendas.SetFocus;
     exit;
     end;

    // Guardar (copiar igual a boton guardar)
    DM_ServidorDatos.IBDS_Orden_Lavado.Edit;
    DM_ServidorDatos.IBDS_Orden_Lavado.Post;

    if Application.MessageBox(pchar('Favor de colocar la Nota No. '
    + dbt_OrdenNumero.Caption + ' en la Impresora'), 'Imprimir Nota',
  MB_ICONINFORMATION OR MB_OKCANCEL ) = ID_OK then

  begin
    // Imprimimos con Rave Reports

    RvProject.Open;
    RvProject.SelectReport('rpt_TicketOrdenLavado.rav',False);
    RvProject.Execute;
    RvProject.Close;

    StatusBar1.Panels[0].Text := pchar(
    'Orden de Lavado No. ' + dbt_OrdenNumero.Caption + ' Impresa y Guardada');

  end;

    StatusBar1.panels[1].Text := 'Para hacer una orden nueva haga click en Nueva';

end;


procedure Tfr_orden_lavado.sb_IrOrdenLavadoClick(Sender: TObject);
begin
if me_NoOrdenLavado.Text = '' then
   begin
     MessageDlg('Favor de Captura una Orden de Lavado válida', mtWarning, [mbOk], 0);
     Exit
   end
else
 begin
  ED_BUSCA_TELEFONO.Text := '';

  DM_ServidorDatos.IBDS_Orden_Lavado_datos.Close;
  //DM_ServidorDatos.IBDS_Clientes.Close;
  DM_ServidorDatos.IBQ_Clientes.Close;
  DM_ServidorDatos.IBQ_SubTotal_OrdendeLavado.Close;

  //DM_ServidorDatos.IBDS_Orden_Lavado_datos.Active := false;
  //DM_ServidorDatos.IBDS_Clientes.Active := false;

  with DM_ServidorDatos.IBDS_Orden_Lavado do
   begin
     try
      disablecontrols;
      //DM_ServidorDatos.IBDS_Orden_Lavado_datos.Active := false;
      //DM_ServidorDatos.IBDS_Clientes.Active := false;
      close;
      active := false;

    //  SelectSql.Clear;
    //  SelectSql.add('select * from ORDEN_LAVADO');
    //  SelectSql.add('where ORDEN_ID = :ORDEN_ID');
      parambyname('ORDEN_ID').Value := strtoint(me_NoOrdenLavado.Text);
      open;
      active := true;
      EnableControls;
      //DM_ServidorDatos.IBDS_Orden_Lavado_datos.Active := true;
      //DM_ServidorDatos.IBDS_Clientes.Active := true;
    finally
      DM_ServidorDatos.IBDS_Orden_Lavado_datos.open;
    //  DM_ServidorDatos.IBDS_Clientes.open;
        DM_ServidorDatos.IBQ_Clientes.open;
      //DM_ServidorDatos.IBDS_Clientes.Refresh;
      DM_ServidorDatos.IBQ_SubTotal_OrdendeLavado.open;


      //parambyname('ORDEN_ID').Value := dbg_Buscar_ordenLavado.SelectedField.Value;
      //fr_orden_lavado.show;


    end; {try}
  end; {with}

end;

end;

procedure Tfr_orden_lavado.tb_BuscaOrdenClick(Sender: TObject);
begin

with DM_ServidorDatos.IBQ_Orden_Vista do
  begin
    try
      screen.cursor := crsqlwait;
      disablecontrols;
      active := false;
      active := true;
      EnableControls;

    finally
    screen.cursor := crDefault;
    end;
 end;
 fr_Vista_ordenLavado.show;

end;

procedure Tfr_orden_lavado.DBEdit1Exit(Sender: TObject);
begin
DM_ServidorDatos.IBDS_Orden_Lavado.edit;
DM_ServidorDatos.IBDS_Orden_Lavado.Post;
end;

procedure Tfr_orden_lavado.dbg_OrdenLavadoDatosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

   if not(gdSelected in State) then
    If ( (dbg_OrdenLavadoDatos.DataSource.DataSet.RecNo  MOD 2) = 0 ) then
        TDbGrid(Sender).Canvas.Brush.Color:= $00FFEAD5;
   dbg_OrdenLavadoDatos.DefaultDrawColumnCell (Rect, DataCol, Column, State);
end;

procedure Tfr_orden_lavado.DBLC_Selecciona_PrendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_Tab)
 then
SpeedButton1.Click;
end;

procedure Tfr_orden_lavado.tb_RetiraClick(Sender: TObject);
begin
fr_Retirar.show;
end;

procedure Tfr_orden_lavado.tb_CorteClick(Sender: TObject);
begin
fr_Corte.show;
end;

procedure Tfr_orden_lavado.sb_NuevaClick(Sender: TObject);
begin

 If (verificaNIP = 1) and (NIVEL >= 1) then
  begin
      ED_BUSCA_TELEFONO.Text := '';
      ED_BUSCA_NOMBRE.Text := '';
     // dtp_Fecha_IN.Date := now();
     // dtp_Fecha_OUT.Date := now() + 2;
     // dtp_hora_in.Time := Now();
     // dtp_hora_out.Time := IncHour(dtp_hora_in.Time, 2);

      sb_borraOrdenLavadoDatos.Enabled := true;
      gb_Buscarportelefono.enabled := true;
      gb_BuscarporNombre.Enabled := true;
      gb_Introducirdatos.Enabled := true;
      dbg_OrdenLavadoDatos.Enabled := true;
      gb_Fecha_in.Enabled := true;
      gb_Fecha_out.Enabled := true;
      btn_anticipo.enabled := true;
      dtp_Fecha_IN.Enabled := true;
      dtp_Fecha_OUT.Enabled := true;
      dtp_Hora_IN.Enabled := true;
      dtp_Hora_OUT.Enabled := true;


   // los botones los prendemos al capturar algun cliente
   //sb_guardar_orden.enabled := true;
   //sb_guardar_eimprimir.Enabled := true;


ED_BUSCA_TELEFONO.SetFocus;

with DM_ServidorDatos.IBDS_Orden_Lavado do
  begin
    try
      disablecontrols;
      active := false;
      parambyname('ORDEN_ID').Clear;
      active := true;
    finally
    DM_ServidorDatos.IBDS_Orden_Lavado.Insert;
    DM_ServidorDatos.IBDS_Orden_LavadoFECHA_IN.Value := Now();
    DM_ServidorDatos.IBDS_Orden_LavadoHORA_IN.Value := Now();
    DM_ServidorDatos.IBDS_Orden_LavadoFECHA_OUT.Value := Now() + 2;
    DM_ServidorDatos.IBDS_Orden_LavadoHORA_OUT.Value := IncHour(now(), 2);
    DM_ServidorDatos.IBDS_Orden_LavadoSTATUS_PAGO.Value := 0;
    DM_ServidorDatos.IBDS_Orden_LavadoSTATUS_ENTREGA.Value := 0;
    DM_ServidorDatos.IBDS_Orden_LavadoSALDO.Value := 0;
    StatusBar1.Panels[0].Text := 'Creando Registro Nuevo';
    StatusBar1.panels[1].Text := 'Por favor ingrese la información para la nueva orden de lavado';
    enablecontrols;
        end; {try}
  end; {with}
 //ShowMessage('el nip es '+inttostr(NIP));
 DM_ServidorDatos.IBDS_Orden_LavadoEMPLEADO_ID.value := NIP;
end {procedure}
else
 showmessage('El NIP no Existe o es Incorrecto');
 exit;
end;

procedure Tfr_orden_lavado.ToolButton5Click(Sender: TObject);
begin
//fr_Calculadora.show;
end;

procedure Tfr_orden_lavado.tb_AdminClick(Sender: TObject);
begin
fr_Admin.Showmodal;
end;

procedure Tfr_orden_lavado.sb_EmpleadosClick(Sender: TObject);
begin
 If (verificaNIP = 1) and (NIVEL >= 3) then
  begin
fr_Empleados.showmodal;
  end
  else
  exit;
end;

procedure Tfr_orden_lavado.sb_RetiraClick(Sender: TObject);

begin
 If (verificaNIP = 1) and (NIVEL >= 1) then
  begin
fr_Retirar.showmodal;
  end
  else
  exit;
end;

procedure Tfr_orden_lavado.sb_SalirClick(Sender: TObject);
begin
if DM_ServidorDatos.IB_DB_Tintoreria.TestConnected then
  begin
    DM_ServidorDatos.IB_DB_Tintoreria.Connected := false;
  end;
Application.Terminate;
end;

procedure Tfr_orden_lavado.sb_CalculadoraClick(Sender: TObject);
begin
fr_Calculadora.show;
end;

procedure Tfr_orden_lavado.sb_CorteClick(Sender: TObject);
begin
 if
   (verificaNIP = 1) and (NIVEL >= 1) then
  begin
   fr_Corte.showmodal;
   empleado_id_activo := strtoint(fr_IntroduceCodigo.ed_IntroduceNIP.text);
  end
   else
    exit;
   end;

procedure Tfr_orden_lavado.sb_BuscarClick(Sender: TObject);

begin
   If (verificaNIP = 1) and (NIVEL >= 1) then
   begin
   with DM_ServidorDatos.IBQ_Orden_Vista do
   begin
     try
      screen.cursor := crsqlwait;
      disablecontrols;
      active := false;
      //active := true;
      EnableControls;
      finally
       screen.cursor := crDefault;
     end;
 end;
fr_Vista_ordenLavado.show;
end
  else
  exit;
end;

procedure Tfr_orden_lavado.sb_AdminClick(Sender: TObject);
begin
 If (verificaNIP = 1) and (NIVEL >= 2) then
  begin
  fr_Admin.Showmodal;
  end
  else
  ShowMessage('Debe tecleear un NIP Válido');
  exit;
end;

procedure Tfr_orden_lavado.sb_Ver_CortesClick(Sender: TObject);

begin
 If (verificaNIP = 1) and (NIVEL >= 2) then
  begin
  fr_verCortes.showmodal;
  end
  else
  exit;
end;

procedure Tfr_orden_lavado.se_CantPrendasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_Tab)
 then
 DBLC_Selecciona_Prenda.SetFocus;
 //SpeedButton1.Click;
end;

procedure Tfr_orden_lavado.sb_ModificaClick(Sender: TObject);
begin
if dbt_OrdenNumero.Caption = '' then
begin
  exit;
end
else
 If (verificaNIP = 1) and (NIVEL >= 2) then
  begin
      sb_borraOrdenLavadoDatos.Enabled := true;
      gb_Buscarportelefono.enabled := true;
      gb_BuscarporNombre.Enabled := true;
      gb_Introducirdatos.Enabled := true;
      dbg_OrdenLavadoDatos.Enabled := true;
      gb_Fecha_in.Enabled := true;
      gb_Fecha_out.Enabled := true;
      btn_anticipo.enabled := true;
      sb_guardar_eimprimir.Enabled := true;

    if DM_ServidorDatos.IBDS_Orden_Lavado.State in [dsEdit,dsInsert] then
    DM_ServidorDatos.IBDS_Orden_Lavado.post;

     // aqui va el codigo para editar
    //DM_ServidorDatos.IBDS_Orden_Lavado.Insert;

    DM_ServidorDatos.IBDS_Orden_Lavado.Edit;
    DM_ServidorDatos.IBDS_Orden_LavadoEMPLEADO_ID.value := NIP;
    StatusBar1.Panels[0].Text := 'Modificando Orden de Lavado';
    StatusBar1.panels[1].Text := 'Por favor ingrese la información para la Orden';
  end {try}
 else

 if DM_ServidorDatos.IBDS_Orden_Lavado.State in [dsEdit,dsInsert] then
    DM_ServidorDatos.IBDS_Orden_Lavado.post;

    //showmessage('El NIP no Existe');
    //exit;
end;

end.
