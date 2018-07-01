unit u_Inicio;

{-----------------------------------------------------------------------------
 Nombre del Proyecto: Tintoreria
 Autor:     Ing. Alejandro Jourdan
 Copyright: Ing. Alejandro Jourdan
 Proposito: Control de Tintoreria
 Historia:  Es uno de mis primeros proyectos despues de una larga curva de
            aprendizaje en delphi y bases de datos como firebird, etc.
 Fecha:      04/04/2004
 Fecha Modificación: 30/10/2008
-----------------------------------------------------------------------------
 Notas:

 Programa para controlar tintorerias desarrollado en delphi y usando como motor
 de base de datos firebird ver. 1 por ser totalmente compatible con los ibx de
 delphi 6 sin necesidad de comprar librerias adicionales.

 Base de datos: 11.1   Firebird 2.1

 Ultima Modificación: 02/11/2017

 Agregar a base de datos

 VISTA: ordenes_lavado_pagadas

 orden_lavado_pagos: prendas_out
 orden_lavado: prendas_in, status_pago, status_entrega
 agregar a orden_lavado un campo que se llame saldo para manejo de inventarios
 clientes: Pasar campo teléfono a 13 caracteres

 modificar stored prodcedure para regsitrar pagos   SP_REGISTRO_PAGO
 Generar nuevamente: VISTA_ORDEN_LAVADO mediante recreate script
 rescatar el arvhivo de rave reports que esta instalado ya que es de tres notas


 necesito manejar dos tipos de status para manejar corte e inventarios
  1.- status de pago
  2.- status de entrega

 Al registrar un anticipo este importe debe incluirse en el corte
 pero el status de ropa entregada no se debe prender



 Niveles
 1 - Capturista: Solo puede hacer notas
 2 - Supervisor: puede hacer todo salvo registrar empleados, cambiar nips
 3 - Administrador: Puede hacer todo

 El programa no habia presentado ningún problema hasta el 2008,
 parece que el sistema operativo es el que nos esta dando problemas.
 Vamos a reinstalar windows y cargar nuevamente el Sistema de Tintorerias
 -----------------------------------------------------------------------------
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IBUtils, Buttons, ComCtrls, jpeg, IBServices,
  MMSystem, u_FileUtils, GIFImg, pngimage;

type
  Tfr_inicio = class(TForm)
    bb_Entrar: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    lbl_version: TLabel;

    procedure bb_EntrarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_inicio: Tfr_inicio;

implementation

uses u_Servidor_Datos, u_Orden_Lavado, u_backup, u_utilerias;

{$R *.dfm}

procedure Tfr_inicio.bb_EntrarClick(Sender: TObject);
begin

DM_ServidorDatos.IB_DB_Tintoreria.Connected := false;

//Codigo abrir bases de datos etc**

try
  DM_ServidorDatos.IB_DB_Tintoreria.open;
    if DM_ServidorDatos.IB_DB_Tintoreria.TestConnected then
  begin
      // Abre Datasets
     with DM_ServidorDatos do
   try
      IBDS_Orden_Lavado.Open;
      IBDS_Orden_Lavado_datos.open;
      IBDS_Clientes.open;
      IBDS_Prendas.open;
      IBDS_Color.open;
      IBDS_Observacion.open;
      IBDS_Orden_Lavado_Pagos.open;
      IBDS_VerCorte.open;
      IBDS_Empleados.Open;
      IBQ_Niveles.Open;
      IBQ_Clientes.Open;
      IBQ_FormaPago.Open;
      IBQ_Bitacora.Open;
     except
       showmessage('No se pueden abrir los datasets');
   end;

  fr_orden_lavado.show;
     // esconde forma de login
  fr_Inicio.Hide;
     //Del Libro de marco cantu release en lugar de free
  fr_Inicio.release;
  end;

   except
  // aqui va codigo si no se logra conectar, puedes ser
  // que solo permita 3 intentos o alguna otra cosa
    ShowMessage('No nos pudimos conectar a la base de datos, hablar a soporte');
    //ShowMessage(Servidor.ConexionPS.ConnectionString);
   end;
end;

procedure Tfr_inicio.BitBtn2Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure Tfr_inicio.FormCreate(Sender: TObject);
begin
 CopyMasterFieldToDetail := true;
 lbl_version.Caption := GetAppVersionStr;
end;

procedure Tfr_inicio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM_ServidorDatos.IB_DB_Tintoreria.close;
Action := caFree;
Application.Terminate;
end;

end.
