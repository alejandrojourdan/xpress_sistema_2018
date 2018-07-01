unit u_Admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, DB, ComCtrls,
  Buttons, u_FileUtils, IBDatabase, IBCustomDataSet;

type
  Tfr_Admin = class(TForm)
    PageControl1: TPageControl;
    ts_Servicios: TTabSheet;
    dso_Empleados: TDataSource;
    DBNavigator2: TDBNavigator;
    DBGrid1: TDBGrid;
    dso_Prendas: TDataSource;
    BitBtn3: TBitBtn;
    dso_Niveles: TDataSource;
    ts_Respaldo: TTabSheet;
    DBGrid2: TDBGrid;
    dso_Clientes: TDataSource;
    DBNavigator3: TDBNavigator;
    Label8: TLabel;
    Label9: TLabel;
    gb_BuscarporNombre: TGroupBox;
    ED_BUSCA_NOMBRE: TMaskEdit;
    GroupBox1: TGroupBox;
    ED_BUSCA_SERVICIO: TMaskEdit;
    GroupBox2: TGroupBox;
    ED_BUSCA_TELEFONO: TMaskEdit;
    btn_GuardarCliente: TBitBtn;
    btn_GuardarServicios: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bt_guarda_Imp_NotaClick(Sender: TObject);
    procedure bt_Carga_notaClick(Sender: TObject);
    procedure bt_guarda_Imp_CorteClick(Sender: TObject);
    procedure bt_Carga_CorteClick(Sender: TObject);
    procedure ED_BUSCA_NOMBREChange(Sender: TObject);
    procedure ED_BUSCA_NOMBREKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ED_BUSCA_TELEFONOChange(Sender: TObject);
    procedure ED_BUSCA_SERVICIOChange(Sender: TObject);
    procedure btn_GuardarClienteClick(Sender: TObject);
    procedure btn_GuardarServiciosClick(Sender: TObject);
    procedure ED_BUSCA_TELEFONOKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_Admin: Tfr_Admin;
  edfromcode : Boolean;

implementation
uses u_Servidor_Datos, PrinterSetup;

{$R *.dfm}

procedure Tfr_Admin.BitBtn3Click(Sender: TObject);
begin
fr_Admin.Close;
end;

procedure Tfr_Admin.FormActivate(Sender: TObject);
begin
DM_ServidorDatos.IBQ_Niveles.FetchAll;

end;

procedure Tfr_Admin.ED_BUSCA_SERVICIOChange(Sender: TObject);

var txt, sfind:string;
    len:integer;

 begin

 txt:=ED_BUSCA_SERVICIO.Text;
 if Length(txt)=0 then exit;

 with DM_ServidorDatos.IBDS_Prendas do
  begin
    try
      screen.cursor := crsqlwait;
      disablecontrols;
      active := false;
      SelectSql.Clear;
      SelectSql.add('select * from PRENDAS');
      SelectSql.add('where UPPER(PRENDA) CONTAINING :buscarxprenda');
      SelectSql.add('order by PRENDA');
      // linea con la cual se limpian los parametros
      parambyname('buscarxprenda').Clear;
      // pasamos el parametro
      parambyname('buscarxprenda').asstring := txt;
      Enablecontrols;
      open; //use open for a select statement
     finally // al llamar esta funcion este pedazo de codigo siempre se hace
      screen.cursor := crdefault;
     // ShowMessage('a ver si funciona');
    end; {try}
    end; {with}

end;

procedure Tfr_Admin.bt_guarda_Imp_NotaClick(Sender: TObject);
var
  PrinterSetup: TPrinterSetup;
begin
  PrinterSetup := TPrinterSetup.Create;
  //PrinterSetup.SaveSetup(FileName);
  PrinterSetup.SaveSetup('c:\Tintoreria\print_nota.cfg');
  //where file name is a string to the location of the File ex.'c:\Tintoreria\print_nota'
  PrinterSetup.Free;

end;

procedure Tfr_Admin.ED_BUSCA_NOMBREChange(Sender: TObject);
var txt, sfind:string;
    len:integer;

 begin
{
if edFromCode = true then begin
   edFromCode := false;
   exit;
end; }

 txt:=ED_BUSCA_NOMBRE.Text;
 if Length(txt)=0 then exit;

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
      parambyname('buscarxcliente').asstring := txt;
      Enablecontrols;
      open; //use open for a select statement
     finally // al llamar esta funcion este pedazo de codigo siempre se hace
      screen.cursor := crdefault;
     // ShowMessage('a ver si funciona');
    end; {try}
    end; {with}
end;

procedure Tfr_Admin.ED_BUSCA_NOMBREKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_DELETE) or (Key=VK_BACK) then begin
   if Length(ED_BUSCA_NOMBRE.Text)>0 then begin;
      //onchange event should not be executed...
     edFromCode := true;
   end;
 end;
end;

procedure Tfr_Admin.ED_BUSCA_TELEFONOChange(Sender: TObject);
var txt, sfind:string;
   // len:integer;
 begin

txt:=ED_BUSCA_TELEFONO.Text;
if Length(txt)=0 then exit;

 with DM_ServidorDatos.IBDS_Clientes do
  begin
    try
      screen.cursor := crsqlwait;
      disablecontrols;
      active := false;
      SelectSql.Clear;
      SelectSql.add('select * from CLIENTES');
      SelectSql.add('where TELEFONO CONTAINING :buscarxtelefono');
      SelectSql.add('order by TELEFONO');
      // linea con la cual se limpian los parametros
      parambyname('buscarxtelefono').Clear;
      // pasamos el parametro
      parambyname('buscarxtelefono').asstring := txt;
      Enablecontrols;
      open; //use open for a select statement
     finally // al llamar esta funcion este pedazo de codigo siempre se hace
      screen.cursor := crdefault;
     // ShowMessage('a ver si funciona');
    end; {try}
 end; {with}

end;

procedure Tfr_Admin.ED_BUSCA_TELEFONOKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#48..#57,#13,#27,#46,#8]) then
begin
key:=#0;
end;
end;

procedure Tfr_Admin.bt_Carga_notaClick(Sender: TObject);
var
  PrinterSetup: TPrinterSetup;
begin
  PrinterSetup := TPrinterSetup.Create;
  //PrinterSetup.SaveSetup(FileName);
  PrinterSetup.LoadSetup('c:\Tintoreria\print_nota');
  //where file name is a string to the location of the File ex.'c:\Tintoreria\print_nota'
  PrinterSetup.Free;

end;

procedure Tfr_Admin.bt_guarda_Imp_CorteClick(Sender: TObject);
var
  PrinterSetup: TPrinterSetup;
begin
  PrinterSetup := TPrinterSetup.Create;
  //PrinterSetup.SaveSetup(FileName);
  PrinterSetup.SaveSetup('c:\Tintoreria\print_corte.cfg');
  //where file name is a string to the location of the File ex.'c:\Tintoreria\print_corte'
  PrinterSetup.Free;
end;

procedure Tfr_Admin.btn_GuardarClienteClick(Sender: TObject);
begin
DM_ServidorDatos.IBDS_Clientes.edit;
DM_ServidorDatos.IBDS_Clientes.Post;
end;

procedure Tfr_Admin.btn_GuardarServiciosClick(Sender: TObject);
begin
  DM_ServidorDatos.IBDS_Prendas.edit;
  DM_ServidorDatos.IBDS_Prendas.Post;
end;

procedure Tfr_Admin.bt_Carga_CorteClick(Sender: TObject);
var
  PrinterSetup: TPrinterSetup;
begin
  PrinterSetup := TPrinterSetup.Create;
  //PrinterSetup.SaveSetup(FileName);
  PrinterSetup.LoadSetup('c:\Tintoreria\print_corte');
  //where file name is a string to the location of the File ex.'c:\Tintoreria\print_corte'
  PrinterSetup.Free;


end;

end.
