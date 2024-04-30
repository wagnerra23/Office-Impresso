unit _Mestre;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;

implementation

Uses UnitFuncoes, Tag.WREventosCadastro, Classes.Pointer_WREventosCadastro;

procedure Inicializa_Mestre;
var
  Pointer: TPointer_WREventosCadastro;
begin
  Pointer := TPointer_WREventosCadastro.Create;

  with RegisterWREventosCadastro(0) do   // Mestre ta no Zero mesmo SEM Tag
  begin
    OnConfiguracao_Acoes   := Pointer.Pointer_Configuracao_Acoes;
    OnImpressaoBeforePrint := Pointer.Pointer_ImpressaoBeforePrint;
    Versao_Configuracao    := 1;
    Empresa                := 0;
    ValidaPadraoDatela     := True;
    UsaCadastroPocket      := False;
    UsaTravaCadastroPocket := False;
    //Transacao := TransaConfiguracao;
  end;

  Pointer.Free;
end;


end.
