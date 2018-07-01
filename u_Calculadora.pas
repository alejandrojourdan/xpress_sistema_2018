unit u_Calculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ovcbase, ovccalc;

type
  Tfr_Calculadora = class(TForm)
    OvcCalculator1: TOvcCalculator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_Calculadora: Tfr_Calculadora;

implementation

{$R *.dfm}

end.
