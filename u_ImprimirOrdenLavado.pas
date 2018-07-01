unit u_ImprimirOrdenLavado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, PrinterSetup;

type
  Tfr_ImprimirOrdenLavado = class(TForm)
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_ImprimirOrdenLavado: Tfr_ImprimirOrdenLavado;

implementation

uses u_servidor_datos;

{$R *.dfm}

procedure Tfr_ImprimirOrdenLavado.BitBtn1Click(Sender: TObject);
begin
//QRDBText1.Top := 120;

end;

procedure Tfr_ImprimirOrdenLavado.Button1Click(Sender: TObject);
var
  PrinterSetup: TPrinterSetup;
begin
  //PrinterSetup := TPrinterSetup.Create;
  //PrinterSetup.SaveSetup(FileName);
  //PrinterSetup.LoadSetup('c:\Tintoreria\print_nota');
  //where file name is a string to the location of the File ex.'c:\Tintoreria\print_nota'
  //PrinterSetup.Free;

end;

end.
