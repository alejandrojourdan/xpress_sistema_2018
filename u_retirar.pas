unit u_retirar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, u_utilerias, ComCtrls,
  Mask, DBCtrls;

type
  Tfr_Retirar = class(TForm)
  //TDBGHack = class(TdbGrid)
    Label1: TLabel;
    Label2: TLabel;
    sb_Buscar_OrdenID: TSpeedButton;
    GroupBox2: TGroupBox;
    sdo_IBQ_Retirar: TDataSource;
    sdo_IBQ_Pagar: TDataSource;
    GroupBox1: TGroupBox;
    DBG_Retirar: TDBGrid;
    BitBtn3: TBitBtn;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    sb_Buscar_Telefono: TSpeedButton;
    sb_Retira_Orden: TSpeedButton;
    Label7: TLabel;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    lb_NombreCliente: TLabel;
    StatusBar1: TStatusBar;
    ED_BUSCA_NOMBRE: TMaskEdit;
    sb_BuscaporNombre: TSpeedButton;
    ED_BUSCA_TELEFONO: TMaskEdit;
    ED_NUMERO_ORDEN: TEdit;
    dtp_fechaderetiro: TDateTimePicker;
    lbl_Ordenes_Retiradas: TLabel;
    DSO_Forma_Pago: TDataSource;
    dblcb_Forma_Pago: TDBLookupComboBox;
    Label3: TLabel;
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure DBGrid2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBGrid3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox3DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure sb_Buscar_OrdenIDClick(Sender: TObject);
    procedure sb_RetirarClick(Sender: TObject);
    procedure sb_Buscar_TelefonoClick(Sender: TObject);
    procedure sb_Retira_OrdenClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sb_BuscaporNombreClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ED_NUMERO_ORDEN_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ED_BUSCA_TELEFONOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ED_BUSCA_NOMBREKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ED_NUMERO_ORDENKeyPress(Sender: TObject; var Key: Char);
    procedure ED_NUMERO_ORDENKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_Retirar: Tfr_Retirar;

implementation

uses u_Servidor_Datos, u_busqueda_cliente_retirar;

{$R *.dfm}

type
  TDBGHack = class (TDbGrid)
  end;

var
  SGC : TGridCoord;


procedure Tfr_Retirar.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
   var
  DG     : TDBGrid;
begin

ShowMessage('Apretaste el boton');

if Button = mbleft then

 with sender as TDBGrid do
  begin
  ShowMessage('Apretaste el boton');
   if (DG.MouseCoord(X,Y).X > 0) and (DG.MouseCoord(X,Y).Y > 0) then
    (Sender as TDBGrid).BeginDrag(False);


{  DG := Sender as TDBGrid;
  SGC := DG.MouseCoord(X,Y);

 if (SGC.X > 0) and (SGC.Y > 0) then
    (Sender as TDBGrid).BeginDrag(False);  }
end;
end;

procedure Tfr_Retirar.DBGrid2DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);

var
  GC : TGridCoord;
begin
  GC := (Sender as TDBGrid).MouseCoord(X,Y);
  Accept := Source is TDBGrid and (GC.X > 0) and (GC.Y > 0);
end;

procedure Tfr_Retirar.DBGrid3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ShowMessage('Apretaste el boton');
end;

procedure Tfr_Retirar.BitBtn1Click(Sender: TObject);
var
s_orden, s_promesa, s_acuenta, s_saldo : String;

begin
 DM_ServidorDatos.IBDS_Clientes.First;

 while not DM_ServidorDatos.IBDS_Clientes.eof
  do begin

  //s_orden := DM_ServidorDatos.IBDS_Clientes.fieldbyname('Cliente').asstring;
  s_orden := DM_ServidorDatos.IBDS_Clientes.fieldbyname('Cliente').asstring;

  s_promesa := DM_ServidorDatos.IBDS_Clientes.fieldbyname('TELEFONO').asstring;

  //id := listbox1.Items.addObject(s_promesa.AsInteger);

  while Length(s_orden) < 15 do s_orden := s_orden + ' ';
  while Length(s_promesa) < 10 do s_promesa := s_promesa + ' ';

// listBox1.Items.Add(S_PROMESA+' '+s_orden);
// listBox1.Items.AddObject(S_PROMESA+' '+s_orden, tobject((s_promesa)));


    {listBox1.Items.Add(DM_ServidorDatos.IBDS_Clientes.fieldbyname('Cliente').asstring
    + ' '+DM_ServidorDatos.IBDS_Clientes.fieldbyname('TELEFONO').ASSTRING);}

    DM_ServidorDatos.IBDS_Clientes.next;
end;

end;

procedure Tfr_Retirar.ListBox1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  iTemp : integer;
  ptTemp : TPoint;
  szTemp : String;
begin
  { change the x,y coordinates into a TPoint record }
  ptTemp.x:=x;
  ptTemp.y:=y;

  { Use a while loop instead of a for loop due to items possible being removed from
    listboxes this prevents an out of bounds exception }
  iTemp := 0;
  While iTemp <= TListBox(Source).Items.Count-1 do
  begin
    { look for the selected items as these are the ones we wish to move }
    if TListBox(Source).selected[iTemp] then
    begin
       { use a with as to make code easier to read }
      With Sender as TListBox do
      begin
      { need to use a temporary variable as when the item is deleted the indexing
        will change }
        szTemp := TListBox(Source).items[iTemp];

     { delete the item that is being dragged  }
        TListBox(Source).items.Delete(iTemp);

	    { insert the item into the correct position in the listbox that it was dropped on }
        items.Insert(itemAtPos(ptTemp,true),
                     szTemp);
      end;
    end;
    inc(iTemp);
  end;
end;


procedure Tfr_Retirar.ListBox1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
if Source is TListBox then accept := true;
end;

procedure Tfr_Retirar.ListBox3DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  iTemp : integer;
  ptTemp : TPoint;
  szTemp : String;
begin
  { change the x,y coordinates into a TPoint record }
  ptTemp.x:=x;
  ptTemp.y:=y;

  { Use a while loop instead of a for loop due to items possible being removed from
    listboxes this prevents an out of bounds exception }
  iTemp := 0;
  While iTemp <= TListBox(Source).Items.Count-1 do
  begin
    { look for the selected items as these are the ones we wish to move }
    if TListBox(Source).selected[iTemp] then
    begin
       { use a with as to make code easier to read }
      With Sender as TListBox do
      begin
      { need to use a temporary variable as when the item is deleted the indexing
        will change }
        szTemp := TListBox(Source).items[iTemp];

     { delete the item that is being dragged  }
        TListBox(Source).items.Delete(iTemp);

	    { insert the item into the correct position in the listbox that it was dropped on }
        items.Insert(itemAtPos(ptTemp,true),
                     szTemp);
      end;
    end;
    inc(iTemp);
  end;
end;

procedure Tfr_Retirar.sb_Buscar_OrdenIDClick(Sender: TObject);
begin

if ED_NUMERO_ORDEN.Text = '' then
  Begin
    ShowMessage('Capturar un número de orden de lavado válido');
    ED_NUMERO_ORDEN.SetFocus;
    Exit;
  End;

   with DM_ServidorDatos.IBQ_Retirar do
      begin
        try
	   screen.cursor := crsqlwait;
	   active := false;
	   disablecontrols;
	   sql.Clear;
	   sql.Add('Select');
	   sql.Add('ORDEN_LAVADO_DATOS.ORDEN_ID,');
	   sql.Add('CLIENTES.CLIENTE,');
	   sql.Add('CLIENTES.TELEFONO,');
	   sql.Add('ORDEN_LAVADO.FECHA_IN,');
	   sql.Add('ORDEN_LAVADO.FECHA_OUT,');
	   sql.Add('ORDEN_LAVADO.A_CUENTA,');
	   sql.Add('ORDEN_LAVADO.STATUS_ENTREGA,');
	   sql.Add('SUM(ORDEN_LAVADO_DATOS.IMPORTE) AS SUBTOTAL,');
	   sql.Add('SUM(ORDEN_LAVADO_DATOS.SUMA_PRENDAS) AS TOTALPRENDAS,');
	   sql.Add('SUM(ORDEN_LAVADO_DATOS.IMPORTE) - ORDEN_LAVADO.A_CUENTA AS SALDO');
	   sql.Add('From ORDEN_LAVADO_DATOS');
	   sql.Add('join');
	   sql.Add('ORDEN_LAVADO ON ORDEN_LAVADO_DATOS.ORDEN_ID = ORDEN_LAVADO.ORDEN_ID');
	   sql.Add('left join');
	   sql.Add('CLIENTES ON ORDEN_LAVADO.CLIENTE_ID = CLIENTES.CLIENTE_ID');
	   sql.Add('WHERE ORDEN_LAVADO.STATUS_ENTREGA = 0');
	   sql.Add('AND ORDEN_LAVADO.ORDEN_ID = :ORDEN_ID');
	   sql.Add('group by ORDEN_LAVADO_DATOS.ORDEN_ID,');
	   sql.Add('ORDEN_LAVADO.FECHA_IN,');
	   sql.Add('ORDEN_LAVADO.FECHA_OUT,');
	   sql.Add('ORDEN_LAVADO.CLIENTE_ID,');
	   sql.Add('ORDEN_LAVADO.A_CUENTA,');
	   sql.Add('ORDEN_LAVADO.STATUS_ENTREGA,');
	   sql.Add('CLIENTES.CLIENTE,');
	   sql.Add('CLIENTES.TELEFONO;');

          // pasamos los parametros
	   parambyname('ORDEN_ID').clear;
	   parambyname('ORDEN_ID').VALUE := STRTOINT(TRIM(ED_NUMERO_ORDEN.Text));
	   enablecontrols;
	   active := true;
	finally
      screen.cursor := crdefault;
      lb_NombreCliente.Alignment := taCenter;
	    lb_NombreCliente.Caption := DM_ServidorDatos.IBQ_RetirarCLIENTE.Text;
	end;
    end;
end;

procedure Tfr_Retirar.sb_RetirarClick(Sender: TObject);

begin //1
  end; //1

procedure Tfr_Retirar.sb_Buscar_TelefonoClick(Sender: TObject);
var
s_linea, s_orden_id, s_fecha_out, s_subtotal, s_acuenta, s_saldo : String;
id : Integer;
begin

with DM_ServidorDatos.IBQ_Retirar do
  begin
    try
      screen.cursor := crsqlwait;
      active := false;
      disablecontrols;
      sql.Clear;
      sql.Add('Select');
      sql.Add('ORDEN_LAVADO_DATOS.ORDEN_ID,');
      sql.Add('CLIENTES.CLIENTE,');
      sql.Add('CLIENTES.TELEFONO,');
      sql.Add('ORDEN_LAVADO.FECHA_IN,');
      sql.Add('ORDEN_LAVADO.FECHA_OUT,');
      sql.Add('ORDEN_LAVADO.A_CUENTA,');
      sql.Add('ORDEN_LAVADO.STATUS_ENTREGA,');
      sql.Add('SUM(ORDEN_LAVADO_DATOS.IMPORTE) AS SUBTOTAL,');
      sql.Add('SUM(ORDEN_LAVADO_DATOS.SUMA_PRENDAS) AS TOTALPRENDAS,');
      sql.Add('SUM(ORDEN_LAVADO_DATOS.IMPORTE) - ORDEN_LAVADO.A_CUENTA AS SALDO');
      sql.Add('From ORDEN_LAVADO_DATOS');
      sql.Add('join');
      sql.Add('ORDEN_LAVADO ON ORDEN_LAVADO_DATOS.ORDEN_ID = ORDEN_LAVADO.ORDEN_ID');
      sql.Add('left join');
      sql.Add('CLIENTES ON ORDEN_LAVADO.CLIENTE_ID = CLIENTES.CLIENTE_ID');
      sql.Add('WHERE ORDEN_LAVADO.STATUS_ENTREGA = 0');
      sql.Add('AND TELEFONO = :TELEFONO');
      sql.Add('group by ORDEN_LAVADO_DATOS.ORDEN_ID,');
      sql.Add('ORDEN_LAVADO.FECHA_IN,');
      sql.Add('ORDEN_LAVADO.FECHA_OUT,');
      sql.Add('ORDEN_LAVADO.CLIENTE_ID,');
      sql.Add('ORDEN_LAVADO.A_CUENTA,');
      sql.Add('ORDEN_LAVADO.STATUS_ENTREGA,');
      sql.Add('CLIENTES.CLIENTE,');
      sql.Add('CLIENTES.TELEFONO;');
      parambyname('TELEFONO').clear;
      parambyname('TELEFONO').VALUE := ED_BUSCA_TELEFONO.Text;
      enablecontrols;
      active := true;
  finally
    // aqui debemos cachar los errores
    screen.cursor := crdefault;
    lb_NombreCliente.Caption := DM_ServidorDatos.IBQ_RetirarCLIENTE.Text;
    end; // try
  end; // with
end;


procedure Tfr_Retirar.sb_Retira_OrdenClick(Sender: TObject);
var
ORDEN_ID_ACTIVA : INTEGER;
RETIRAR_PRENDAS : INTEGER;
SALDO_ORDEN : DOUBLE;
FECHA_DE_RETIRO : TDATE;

begin //1

if dbg_retirar.SelectedField.IsNull
then
  begin //2
     MessageDlg('No hay Orden de Lavado para Retirar'+#13+#10
                 +'Primero seleccione una Orden de Lavado', mtWarning, [mbOK], 0);
     exit;
  end //2
else
begin //3
  ORDEN_ID_ACTIVA := dbg_retirar.Fields[0].Value;
  SALDO_ORDEN := dbg_retirar.Fields[4].Value;
  RETIRAR_PRENDAS := dbg_retirar.Fields[5].Value;
  FECHA_DE_RETIRO := DTP_FECHADERETIRO.Date;
  ShowMessage('Retirando Orden de Lavado No. ' + INTTOSTR(ORDEN_ID_ACTIVA));

  try
   with DM_ServidorDatos.SP_REGISTRO_PAGO do
     begin
     PREPARE;
     screen.cursor := crsqlwait;
     // los retira con la fecha actual pero seria bueno que se pudiera escoger
     // con que fecha retirarlos
      parambyname('I_FECHA_RECOGIERON').Value := FECHA_DE_RETIRO;
      parambyname('I_ORDEN_ID').value := ORDEN_ID_ACTIVA;
      parambyname('I_IMPORTE').value := SALDO_ORDEN;
      ParamByName('I_PRENDAS_OUT').Value := RETIRAR_PRENDAS;
//    VER DE DONDE SACAMOS FORMA DE PAGO ID
      ParamByName('I_FORMA_PAGO_ID').Value := dblcb_Forma_Pago.KeyValue;;
     EXECPROC;
     DM_ServidorDatos.IB_TR_Tintoreria.CommitRetaining;
     end;
     except
      DM_ServidorDatos.IB_TR_Tintoreria.RollbackRetaining;
      screen.cursor := crdefault;
    end;

  DM_ServidorDatos.IBQ_Orden_Vista.Close;
  DM_ServidorDatos.IBQ_Orden_Vista.open;

  DM_ServidorDatos.IBQ_Retirar.close;
  DM_ServidorDatos.IBQ_Retirar.open;

  try
   with DM_ServidorDatos.IBQ_Pagado do
     begin
     screen.cursor := crsqlwait;
     parambyname('FECHA_PAGO').asdate := dtp_fechaderetiro.date;
     close;
     open;
     screen.cursor := crdefault;
     lbl_Ordenes_Retiradas.Caption :=
         'Ordenes Retiradas (incluye anticipos) el: '
                  + DatetoStr(dtp_fechaderetiro.date);
     end;
     except
      screen.cursor := crdefault;
      //nO QUISO AGARRAR LA FECHA
    end;
end;
end;

procedure Tfr_Retirar.BitBtn3Click(Sender: TObject);
begin
fr_Retirar.close;
end;

procedure Tfr_Retirar.FormActivate(Sender: TObject);
begin
dblcb_Forma_Pago.KeyValue := 0;
end;

procedure Tfr_Retirar.FormCreate(Sender: TObject);
begin
dtp_fechaderetiro.Date := now();
lb_NombreCliente.Caption := '';
end;

procedure Tfr_Retirar.sb_BuscaporNombreClick(Sender: TObject);
begin  {general}

If ED_BUSCA_NOMBRE.Text = '' then exit;
 // ED_BUSCA_TELEFONO.Text := '';

with DM_ServidorDatos.IBDS_Clientes do
  begin
    try
      screen.cursor := crsqlwait;
      disablecontrols;
      active := false;
      SelectSql.Clear;
      SelectSql.add('select CLIENTE_ID, CLIENTE, TELEFONO, FECHA_CAPTURA from CLIENTES');
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
      //ShowMessage('a ver si funciona');
    end; {try}
    end; {with}

      // aqui para ver si abrimos formulario de captura o que hacemos

  if DM_ServidorDatos.IBDS_Clientes.IsEmpty then
      begin //then  123
      MessageDlg('Ningún registro coincide con el criterio', mtInformation, [mbOK], 0);
      exit;
      end

      else // de la caja de mensaje
      begin
    //ShowMessage('El query no esta vacio');
    if fr_Busqueda_cliente_retirar.ShowModalbusquedaClienteRetirar = mrOk
     then //
       begin
          //***
     with DM_ServidorDatos.IBQ_Retirar do
          begin
          try
      screen.cursor := crsqlwait;
      active := false;
      disablecontrols;
      sql.Clear;
      sql.Add('Select');
sql.Add('ORDEN_LAVADO_DATOS.ORDEN_ID,');
sql.Add('CLIENTES.CLIENTE,');
sql.Add('CLIENTES.TELEFONO,');
sql.Add('ORDEN_LAVADO.FECHA_IN,');
sql.Add('ORDEN_LAVADO.FECHA_OUT,');
sql.Add('ORDEN_LAVADO.A_CUENTA,');
sql.Add('ORDEN_LAVADO.STATUS_ENTREGA,');
sql.Add('SUM(ORDEN_LAVADO_DATOS.IMPORTE) AS SUBTOTAL,');
sql.Add('SUM(ORDEN_LAVADO_DATOS.SUMA_PRENDAS) AS TOTALPRENDAS,');
sql.Add('SUM(ORDEN_LAVADO_DATOS.IMPORTE) - ORDEN_LAVADO.A_CUENTA AS SALDO');
sql.Add('From ORDEN_LAVADO_DATOS');
sql.Add('join');
sql.Add('ORDEN_LAVADO ON ORDEN_LAVADO_DATOS.ORDEN_ID = ORDEN_LAVADO.ORDEN_ID');
sql.Add('left join');
sql.Add('CLIENTES ON ORDEN_LAVADO.CLIENTE_ID = CLIENTES.CLIENTE_ID');
sql.Add('WHERE ORDEN_LAVADO.STATUS_ENTREGA = 0');
sql.Add('AND ORDEN_LAVADO.CLIENTE_ID = :CLIENTE_ID');
sql.Add('group by');
sql.Add('ORDEN_LAVADO_DATOS.ORDEN_ID,');
sql.Add('ORDEN_LAVADO.FECHA_IN,');
sql.Add('ORDEN_LAVADO.FECHA_OUT,');
sql.Add('ORDEN_LAVADO.CLIENTE_ID,');
sql.Add('ORDEN_LAVADO.A_CUENTA,');
sql.Add('ORDEN_LAVADO.STATUS_ENTREGA,');
sql.Add('CLIENTES.CLIENTE,');
sql.Add('CLIENTES.TELEFONO;');


      parambyname('CLIENTE_ID').clear;
      parambyname('CLIENTE_ID').VALUE := DM_ServidorDatos.IBDS_ClientesCLIENTE_ID.Value;

      if parambyname('CLIENTE_ID').VALUE = NULL then

      begin
      MessageDlg('Debe seleccionar un Cliente de la lista', mtWarning, [mbOK], 0);
      end;
      enablecontrols;
      active := true;

  finally
    // aqui debemos cachar los errores
    screen.cursor := crdefault;
    lb_NombreCliente.Caption := DM_ServidorDatos.IBQ_RetirarCLIENTE.Text;
    end; //{try
  end; //{with
           //**
        end;
         // borramos el campo de busqueda
         ED_BUSCA_NOMBRE.Text := '';
       end;
 end; {general}

procedure Tfr_Retirar.SpeedButton1Click(Sender: TObject);
begin
ShowMessage(ED_BUSCA_TELEFONO.Text);
end;

procedure Tfr_Retirar.ED_NUMERO_ORDEN_1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = vk_Return then
sb_Buscar_OrdenID.Click;
end;

procedure Tfr_Retirar.ED_BUSCA_TELEFONOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = vk_Return then
sb_Buscar_Telefono.Click;
end;

procedure Tfr_Retirar.ED_BUSCA_NOMBREKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = vk_Return then
sb_BuscaporNombre.Click;
end;

procedure Tfr_Retirar.ED_NUMERO_ORDENKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#48..#57,#13,#27,#46,#8]) then
begin
 key:=#0;
end;
end;

procedure Tfr_Retirar.ED_NUMERO_ORDENKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = vk_Return then
sb_Buscar_OrdenID.Click;
end;

end.
