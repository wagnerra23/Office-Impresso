unit CadNF_DadosAdicionais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, CadMestre, DB, IBX.IBCustomDataSet,
  ExtCtrls, ComCtrls, StdCtrls, Mask, DBCtrls, Buttons, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, cxContainer, cxEdit, IBX.IBStoredProc, IBX.IBDatabase, cxLabel, cxNavigator, cxDBNavigator, Gradient;

type
  TFrmNF_DadosAdicionais = class(TFrmCadMestre)
    NF_DadosAdicionais: TIBDataSet;
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNF_DadosAdicionais: TFrmNF_DadosAdicionais;

implementation

uses
  UnitFuncoes, ConNF_DadosAdicionais;

{$R *.dfm}

procedure TFrmNF_DadosAdicionais.BitBtn6Click(Sender: TObject);
begin
  inherited;
  DS.DataSet.Locate('Codigo',Consulta(TConsuNF_DadosAdicionais, Self),[]);
end;

initialization
  RegisterClass(TFrmNF_DadosAdicionais);

end.
