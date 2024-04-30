unit Controller.Mestre;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils;


function ControllerMestre_Insert(ACadastro: TFDQuery): Integer;
procedure ControllerMestre_Edit(ACadastro: TFDQuery);
procedure ControllerMestre_Cancel(ACadastro: TFDQuery);
Procedure ControllerMestre_Post(ACadastro: TFDQuery; ANomeTabela: String);
Procedure ControllerMestre_Delete(ACadastro: TFDQuery);

procedure ControllerMestre_WREventosCadastro_ImpressaoBeforePrint(Sender: TObject;var APermiteImprimir: Boolean);
procedure ControllerMestre_WREventosCadastro_Configuracao_Acoes(Sender: TObject);
//procedure ControllerMestre_WREventosCadastro_LayoutChange(Sender: TObject);
//procedure ControllerMestre_WREventosCadastro_ValidaComponente(Sender: TObject;  var AError: Boolean; var ErrorText: TCaption);

implementation

Uses UnitFuncoes, SQL.Boleto, Utils.Boleto, Utils.Boleto.Retorno, Classes.WR, Services.Mestre, ACBrBoletoConversao,
  Tag.WREventosCadastro;


//Funções de entrada
function ControllerMestre_Insert(ACadastro: TFDQuery): Integer;
begin
  if Assigned(ACadastro.MasterSource) then
  begin
     ACadastro.MasterSource:= Nil;
     ACadastro.DataSource:=nil;      // Código novo, tava homologado no produto
  end;
  if ACadastro.State <> dsInsert then
    ServicesMestre_Insert(ACadastro);
end;

procedure ControllerMestre_Edit(ACadastro: TFDQuery);
begin
  ServicesMestre_Edit(ACadastro);
end;

procedure ControllerMestre_Cancel(ACadastro: TFDQuery);
begin
  ServicesMestre_Cancel(ACadastro);
end;

Procedure ControllerMestre_Post(ACadastro: TFDQuery; ANomeTabela: String);
begin
  ServicesMestre_Post(ACadastro, ANomeTabela);
end;

Procedure ControllerMestre_Delete(ACadastro: TFDQuery);
begin
  ServicesMestre_Delete(ACadastro);
end;

procedure ControllerMestre_WREventosCadastro_Configuracao_Acoes(Sender: TObject);
begin
{  with AWREventosCadastro[0] do
  begin
    with AddForm(Sender) do
    begin
      AddChavePrimaria(FNomeTabela , 'CODIGO', edtCodigo);
      AddValorInicial(FNomeTabela , 'ATIVO', cbxAtivo, 'S');
      with AddAcoesTabela('CONFIRMAR','', 'Regras necessárias para poder Confirmar.') do
      begin
        AddObrigatorio(FNomeTabela, 'DESCRICAO', edtDescricao, 'A Descrição não pode ficar vazia ou em branco.');




        AddObrigatorio(FNomeTabela, 'ATIVO',     cbxAtivo,     'Informe se o Cadastro esta ATIVO ou DESATIVADO.');
        AddImpedirDuplicidade(FNomeTabela, 'DESCRICAO',    edtDescricao , '');
      end;
    end;
  end;  }
end;

procedure ControllerMestre_WREventosCadastro_ImpressaoBeforePrint(Sender: TObject; var APermiteImprimir: Boolean);
begin
//  VerificaSeExisteAlteracao; // Aqui tem que achar a Rotina
end;

end.
