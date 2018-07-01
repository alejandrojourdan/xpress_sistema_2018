unit u_backup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, IBServices, Grids, ValEdit, ShlObj, ActiveX,
  DBLogDlg, ExtCtrls, Buttons, U_FILEUTILS;

type
  Tfr_Backup = class(TForm)
    IBBackupService1: TIBBackupService;
    IBRestoreService1: TIBRestoreService;
    Button9: TButton;
    Button10: TButton;
    mCopia: TMemo;
    Animate1: TAnimate;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_Backup: Tfr_Backup;

implementation

uses u_Servidor_Datos, u_Orden_Lavado, u_Inicio;

{$R *.dfm}

function GetComputerName(out S: string): Boolean;
var
  BrowseInfo: TBrowseInfo;
  RootItemIDList, ItemIDList: PItemIDList;
  ComputerName: array [0..MAX_PATH] of Char;
  WindowList: Pointer;
  ShellMalloc: IMalloc;
begin
  if Failed(SHGetSpecialFolderLocation(
    Application.Handle, CSIDL_NETWORK, RootItemIDList)) then
    raise Exception.Create('Diálogo no soportado');
  S := '';
  Result := False;
  if (ShGetMalloc(ShellMalloc) = S_OK) and (ShellMalloc <> nil) then
  begin
    FillChar(BrowseInfo, SizeOf(BrowseInfo), 0);
    BrowseInfo.hwndOwner := Application.Handle;
    BrowseInfo.pidlRoot := RootItemIDList;
    BrowseInfo.pszDisplayName := ComputerName;
    BrowseInfo.lpszTitle := 'Seleccione un servidor';
    BrowseInfo.ulFlags :=BIF_BROWSEFORCOMPUTER;
    WindowList := DisableTaskWindows(0);
    try
      ItemIDList := SHBrowseForFolder(BrowseInfo);
    finally
      EnableTaskWindows(WindowList);
    end;
    if ItemIDList <> nil then
    begin
      Result := True;
      S := ComputerName;
      ShellMalloc.Free(ItemIDList);
    end;
  end;
end;

procedure Tfr_Backup.Button9Click(Sender: TObject);

begin

 try

    //DM_ServidorDatos.IB_TR_Tintoreria.Commit;
//    DM_ServidorDatos.IB_TR_Tintoreria.Active := false;
    DM_ServidorDatos.IB_DB_Tintoreria.CloseDataSets;
    //DM_ServidorDatos.IB_DB_Tintoreria.Connected := false;
   //  DM_ServidorDatos.IB_DB_Tintoreria.ForceClose;
 //   if not DM_ServidorDatos.IB_DB_Tintoreria.TestConnected then ShowMessage('Desconectado');

 except
 ShowMessage('error');
 end;

with IBRestoreService1 do
begin
Active := True;
try
Screen.Cursor := crHourGlass;
DatabaseName.Clear;
BackupFile.Clear;
//MRestore.Lines.Clear;
// Cargamos las opciones que nos indiquen
Options := [];
//if chkreIndices.Checked then Options := Options + [DeactivateIndexes];
//if chkreShadow.Checked then Options := Options + [NoShadow];
//if chkreValidate.Checked then Options := Options + [NoValidityCheck];
Options := Options + [Replace];
//if chkreCreate.Checked then Options := Options + [CreateNewDB];
// ¿Quieren ver el progreso?
Verbose := true;
//Verbose := chkreVerboseRestore.Checked;
PageBuffers := 3000;
PageSize := 4096;
// Indicamos la base de datos destino
//DatabaseName.Add(EDb.Text);
DatabaseName.Add('C:\tintoreria_basedatos\TINTORERIA_LOCAL.GDB');
// El archivo GBK origen
BackupFile.Add('C:\tintoreria_basedatos\RESPALDO_TINTORERIA.GDp');
// Cerramos la conexión con la base de datos.
// En una aplicación real, tendriamos que cerrar todas las ventanas activas
// que tengan una conexión con tablas de la base de datos
//DMMain.Desconectar;
// Comenzar
ServiceStart;
Animate1.active := true;
// Si se quiere ver el progreso...
if Verbose then
begin
While not Eof do
MCopia.Lines.Add(GetNextLine);
MCopia.Lines.Add('¡ PROCESO TERMINADO !');
end;
finally
Active := False;
Animate1.active := false;
// Vovemos a conectar con la base de datos
//DMMain.Conectar;
Screen.Cursor := crDefault;
end;
end;
end;


procedure Tfr_Backup.Button10Click(Sender: TObject);
begin
with IBBackupService1 do
begin
Active := True;
try
Screen.Cursor := crHourGlass;
BackupFile.Clear;
MCopia.Lines.Clear;
// Cargamos la opciones que nos indique el usuario
Options := [];
Options := Options + [IgnoreCheckSums];
Options := Options + [IgnoreLimbo];
//if chkbkStructure.Checked then Options := Options + [MetadataOnly];
//if chkbkGarbage.Checked then Options := Options + [NoGarbageCollection];
Options := Options + [NonTransportable];
// Cargamos la información que nos han indicado
// Base de datos origen
DatabaseName := 'C:\tintoreria_basedatos\TINTORERIA_LOCAL.GDB';
// Fichero GBK destino
BackupFile.Add('C:\tintoreria_basedatos\RESPALDO_TINTORERIA.GDp');
// ¿Ver el progreso de la operación?
//Verbose := chkbkVerbose.Checked;
Verbose := true;
// Comenzar
ServiceStart;
// Si quieren ver el progreso
if Verbose then
begin
// Mientras no se llegue al final...
While not Eof do
// Cargamos las lineas de salida en el memo
MCopia.Lines.Add(GetNextLine);
// Avisamos que hemos terminado
MCopia.Lines.Add('¡ PROCESO TERMINADO !');
end;
finally
Active := False;
Screen.Cursor := crDefault;
end;
end;

end;

procedure Tfr_Backup.BitBtn1Click(Sender: TObject);
begin

// copia base de adtos para tener respaldo
MCopia.Lines.Clear;
Try
CopyFile('C:\tintoreria_basedatos\TINTORERIA_LOCAL.GDB',
         'C:\tintoreria_basedatos\RESPALDO_DE_SEGURIDAD\TINTORERIA_LOCAL.FBK');
MCopia.Lines.Add('**Copia de Seguridad Realizada con exito');

except
showmessage('Error');
end;

//***
with IBBackupService1 do
begin
Active := True;
try
Screen.Cursor := crHourGlass;
BackupFile.Clear;
// Cargamos la opciones que nos indique el usuario
Options := [];
Options := Options + [IgnoreCheckSums];
Options := Options + [IgnoreLimbo];
//if chkbkStructure.Checked then Options := Options + [MetadataOnly];
//if chkbkGarbage.Checked then Options := Options + [NoGarbageCollection];
Options := Options + [NonTransportable];
// Cargamos la información que nos han indicado
// Base de datos origen
DatabaseName := 'C:\tintoreria_basedatos\TINTORERIA_LOCAL.GDB';
// Fichero GBK destino
BackupFile.Add('C:\tintoreria_basedatos\RESPALDO_TINTORERIA.GDK');
// ¿Ver el progreso de la operación?
//Verbose := chkbkVerbose.Checked;
Verbose := true;
// Comenzar
ServiceStart;
// Si quieren ver el progreso
if Verbose then
begin
// Mientras no se llegue al final...
While not Eof do
// Cargamos las lineas de salida en el memo
MCopia.Lines.Add(GetNextLine);
// Avisamos que hemos terminado
MCopia.Lines.Add('¡ ** PROCESO TERMINADO ** !');
end;
finally
Active := False;
Screen.Cursor := crDefault;
end;
end;

try

    //DM_ServidorDatos.IB_TR_Tintoreria.Commit;
    //DM_ServidorDatos.IB_TR_Tintoreria.Active := false;
// DM_ServidorDatos.IB_DB_Tintoreria.CloseDataSets;
// DM_ServidorDatos.IB_DB_Tintoreria.Connected := false;
 //if not DM_ServidorDatos.IB_DB_Tintoreria.TestConnected then ShowMessage('Desconectado');

 except
 ShowMessage('error');
 end;

with IBRestoreService1 do
begin
Active := True;
try
Screen.Cursor := crHourGlass;
DatabaseName.Clear;
BackupFile.Clear;
//MRestore.Lines.Clear;
// Cargamos las opciones que nos indiquen
Options := [];
//if chkreIndices.Checked then Options := Options + [DeactivateIndexes];
//if chkreShadow.Checked then Options := Options + [NoShadow];
//if chkreValidate.Checked then Options := Options + [NoValidityCheck];
Options := Options + [Replace];
//if chkreCreate.Checked then Options := Options + [CreateNewDB];
// ¿Quieren ver el progreso?
Verbose := true;
//Verbose := chkreVerboseRestore.Checked;
PageBuffers := 3000;
PageSize := 4096;
// Indicamos la base de datos destino
DatabaseName.Add('C:\tintoreria_basedatos\TINTORERIA_LOCAL.GDB');
// El archivo GBK origen

BackupFile.Add('C:\tintoreria_basedatos\RESPALDO_TINTORERIA.GDK');
// Cerramos la conexión con la base de datos.
// En una aplicación real, tendriamos que cerrar todas las ventanas activas
// que tengan una conexión con tablas de la base de datos

//DMMain.Desconectar;

DM_ServidorDatos.IB_DB_Tintoreria.CloseDataSets;
DM_ServidorDatos.IB_DB_Tintoreria.Connected := false;


// Comenzar
ServiceStart;
Animate1.active := true;
// Si se quiere ver el progreso...
if Verbose then
begin
While not Eof do
MCopia.Lines.Add(GetNextLine);
MCopia.Lines.Add('¡ PROCESO TERMINADO !');
end;
finally
Active := False;
Animate1.active := false;
// Vovemos a conectar con la base de datos
//DMMain.Conectar;
Screen.Cursor := crDefault;
end;
end;

//**


end;

procedure Tfr_Backup.BitBtn2Click(Sender: TObject);
begin
fr_inicio.show;
end;

procedure Tfr_Backup.FormActivate(Sender: TObject);
begin
// copia base de adtos para tener respaldo
MCopia.Lines.Clear;
Try
{CopyFile('C:\tintoreria_basedatos\TINTORERIA_LOCAL.GDB',
         'C:\tintoreria_basedatos\RESPALDO_DE_SEGURIDAD\TINTORERIA_LOCAL.FBK');}

MCopia.Lines.Add('**Copia de Seguridad Realizada con exito');

except
showmessage('Error');
end;

//***
with IBBackupService1 do
begin
Active := True;
try
Screen.Cursor := crHourGlass;
BackupFile.Clear;
// Cargamos la opciones que nos indique el usuario
Options := [];
Options := Options + [IgnoreCheckSums];
Options := Options + [IgnoreLimbo];
//if chkbkStructure.Checked then Options := Options + [MetadataOnly];
//if chkbkGarbage.Checked then Options := Options + [NoGarbageCollection];
Options := Options + [NonTransportable];
// Cargamos la información que nos han indicado
// Base de datos origen
DatabaseName := 'C:\tintoreria_basedatos\TINTORERIA_LOCAL.GDB';
// Fichero GBK destino
BackupFile.Add('C:\tintoreria_basedatos\RESPALDO_TINTORERIA.GDK');
// ¿Ver el progreso de la operación?
//Verbose := chkbkVerbose.Checked;
Verbose := true;
// Comenzar
ServiceStart;
// Si quieren ver el progreso
if Verbose then
begin
// Mientras no se llegue al final...
While not Eof do
// Cargamos las lineas de salida en el memo
MCopia.Lines.Add(GetNextLine);
// Avisamos que hemos terminado
MCopia.Lines.Add('¡ ** PROCESO TERMINADO ** !');
end;
finally
Active := False;
Screen.Cursor := crDefault;
end;
end;

try

    //DM_ServidorDatos.IB_TR_Tintoreria.Commit;
    //DM_ServidorDatos.IB_TR_Tintoreria.Active := false;
// DM_ServidorDatos.IB_DB_Tintoreria.CloseDataSets;
// DM_ServidorDatos.IB_DB_Tintoreria.Connected := false;
 //if not DM_ServidorDatos.IB_DB_Tintoreria.TestConnected then ShowMessage('Desconectado');

 except
 ShowMessage('error');
 end;

with IBRestoreService1 do
begin
Active := True;
try
Screen.Cursor := crHourGlass;
DatabaseName.Clear;
BackupFile.Clear;
//MRestore.Lines.Clear;
// Cargamos las opciones que nos indiquen
Options := [];
//if chkreIndices.Checked then Options := Options + [DeactivateIndexes];
//if chkreShadow.Checked then Options := Options + [NoShadow];
//if chkreValidate.Checked then Options := Options + [NoValidityCheck];
Options := Options + [Replace];
//if chkreCreate.Checked then Options := Options + [CreateNewDB];
// ¿Quieren ver el progreso?
Verbose := true;
//Verbose := chkreVerboseRestore.Checked;
PageBuffers := 3000;
PageSize := 4096;
// Indicamos la base de datos destino
DatabaseName.Add('C:\tintoreria_basedatos\TINTORERIA_LOCAL.GDB');
// El archivo GBK origen

BackupFile.Add('C:\tintoreria_basedatos\RESPALDO_TINTORERIA.GDK');
// Cerramos la conexión con la base de datos.
// En una aplicación real, tendriamos que cerrar todas las ventanas activas
// que tengan una conexión con tablas de la base de datos

//DMMain.Desconectar;

DM_ServidorDatos.IB_DB_Tintoreria.CloseDataSets;
DM_ServidorDatos.IB_DB_Tintoreria.Connected := false;


// Comenzar
ServiceStart;
Animate1.active := true;
// Si se quiere ver el progreso...
if Verbose then
begin
While not Eof do
MCopia.Lines.Add(GetNextLine);
MCopia.Lines.Add('¡ PROCESO TERMINADO !');
end;
finally
Active := False;
Animate1.active := false;
// Vovemos a conectar con la base de datos
//DMMain.Conectar;
Screen.Cursor := crDefault;
end;
end;

//**

//fr_Inicio.show;
fr_Backup.Hide;
fr_Backup.release;
fr_orden_lavado.show;

end;

end.
