unit Venda.Venda;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;


procedure Inicializa_VendaVenda;

implementation

Uses
   _Mestre, UnitFuncoes, Tag.APP, Tag.Form, Tag.WREventosCadastro;

procedure Inicializa_VendaVenda;
begin
  RegisterWREventosCadastro(Tag_Venda);
  with AWREventosCadastro[Tag_Venda] do
  begin
//    OnConfiguracao_Acoes                      := _VendaWREventosCadastro_Configuracao_Acoes;               // aqui é no Controler
//    OnPreencheVariaveisImpressaoPersonalizada := WREventosCadastroPreencheVariaveisImpressaoPersonalizada; // aqui é no Controler
//    OnImpressaoBeforePrint                    := WREventosCadastroImpressaoBeforePrint;                    // aqui é no Controler
//    OnImpressaoAfterPrint                     := WREventosCadastroImpressaoAfterPrint;                     // aqui é no Controler
//    OnLayoutChange                            := WREventosCadastroLayoutChange;                            // Aqui é no controler
//    OnValidaComponente                        := WREventosCadastroValidaComponente;                        // aqui é no Controler


//     OnAfterInsert      := WREventosCadastroValidaComponente;           // aqui é no Service
//     OnAfterCancel      := WREventosCadastroValidaComponente;           // aqui é no Service
//     OnBeforePost       := WREventosCadastroValidaComponente;           // aqui é no Service
//     OnValidaComponente := WREventosCadastroValidaComponente;           // aqui é no Service
//     OnValidaComponente := WREventosCadastroValidaComponente;           // aqui é no Service

//     Transacao := TransaConfiguracao;                                   // Não pode isso aqui <<----
    Versao_Configuracao    := 12;
    Empresa                := 0;
    FormClassCadastro      := 'TFrmVenda';
    FormClassConsulta      := 'TConsuVenda';
    ValidaPadraoDatela     := True;
    UsaCadastroPocket      := False;
    UsaTravaCadastroPocket := False;
  end;
end;

//initialization
//  Inicializa_VendaVenda;


end.
