unit u_Empleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, DB, ComCtrls,
  Buttons, u_FileUtils, IBDatabase, IBCustomDataSet;

type
  Tfr_Empleados = class(TForm)
    dso_Empleados: TDataSource;
    dso_Prendas: TDataSource;
    BitBtn3: TBitBtn;
    dso_Niveles: TDataSource;
    dso_Clientes: TDataSource;
    PageControl1: TPageControl;
    ts_Empelados: TTabSheet;
    Empleado_ID: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bt_guarda_Imp_NotaClick(Sender: TObject);
    procedure bt_Carga_notaClick(Sender: TObject);
    procedure bt_guarda_Imp_CorteClick(Sender: TObject);
    procedure bt_Carga_CorteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_Empleados: Tfr_Empleados;
  edfromcode : Boolean;

implementation
uses u_Servidor_Datos, PrinterSetup, u_Admin;

{$R *.dfm}

procedure Tfr_Empleados.BitBtn3Click(Sender: TObject);
begin
fr_Empleados.Close;
end;

procedure Tfr_Empleados.FormActivate(Sender: TObject);
begin
DM_ServidorDatos.IBQ_Niveles.FetchAll;

end;

procedure Tfr_Empleados.bt_guarda_Imp_NotaClick(Sender: TObject);
var
  PrinterSetup: TPrinterSetup;
begin
  PrinterSetup := TPrinterSetup.Create;
  //PrinterSetup.SaveSetup(FileName);
  PrinterSetup.SaveSetup('c:\Tintoreria\print_nota.cfg');
  //where file name is a string to the location of the File ex.'c:\Tintoreria\print_nota'
  PrinterSetup.Free;

end;

procedure Tfr_Empleados.bt_Carga_notaClick(Sender: TObject);
var
  PrinterSetup: TPrinterSetup;
begin
  PrinterSetup := TPrinterSetup.Create;
  //PrinterSetup.SaveSetup(FileName);
  PrinterSetup.LoadSetup('c:\Tintoreria\print_nota');
  //where file name is a string to the location of the File ex.'c:\Tintoreria\print_nota'
  PrinterSetup.Free;

end;

procedure Tfr_Empleados.bt_guarda_Imp_CorteClick(Sender: TObject);
var
  PrinterSetup: TPrinterSetup;
begin
  PrinterSetup := TPrinterSetup.Create;
  //PrinterSetup.SaveSetup(FileName);
  PrinterSetup.SaveSetup('c:\Tintoreria\print_corte.cfg');
  //where file name is a string to the location of the File ex.'c:\Tintoreria\print_corte'
  PrinterSetup.Free;


end;

procedure Tfr_Empleados.bt_Carga_CorteClick(Sender: TObject);
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
