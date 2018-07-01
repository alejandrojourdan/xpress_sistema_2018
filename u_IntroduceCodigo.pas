unit u_IntroduceCodigo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls;

type
  Tfr_IntroduceCodigo = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ed_IntroduceNIP: TEdit;
    procedure ed_IntroduceNIPKeyPress(Sender: TObject; var Key: Char);
    procedure ed_IntroduceNIPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    function ShowModalIntroduceCodigo: Integer;
  end;

var
  fr_IntroduceCodigo: Tfr_IntroduceCodigo;

implementation

{$R *.dfm}

function Tfr_IntroduceCodigo.ShowModalIntroduceCodigo: Integer;
begin

   //aqui va el codigo para meter en Codigo
    Result := ShowModal;

end;

procedure Tfr_IntroduceCodigo.ed_IntroduceNIPKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in [#48..#57,#13,#27,#46,#8]) then
begin
 key:=#0;
end;

end;

procedure Tfr_IntroduceCodigo.ed_IntroduceNIPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 var Numero_NIP: integer;
  begin
if Key = vk_Return then
//Key:=#0; //un nulo para que no te avance un renglon
Numero_NIP:=strtoint(ed_IntroduceNIP.Text);//capturas la cantidad
  //Edit1.Clear;//Limpias el RichEdit
  //Edit1.Text:=floattostrf(cant,ffcurrency,15,2);//Agregas la
end;

procedure Tfr_IntroduceCodigo.FormActivate(Sender: TObject);
begin
ed_IntroduceNIP.Text := '';
ed_IntroduceNIP.SetFocus;
end;

procedure Tfr_IntroduceCodigo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//ed_IntroduceNIP.text := '';
end;

end.



