unit Certificado;

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids, ExtCtrls, Buttons;

type

  { TfrSelecionarCertificado }

  TFrmSelecionarCertificado = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    StringGrid1: TStringGrid;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmSelecionarCertificado: TFrmSelecionarCertificado;

implementation

{$R *.dfm}

end.

