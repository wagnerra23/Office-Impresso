unit Tag.APP;

interface

Uses
  Classes.APP, System.Generics.Collections;

const
  TagAPP_First = 1;

  TagAPP_CRM = 1;
  TagAPP_Venda = 2;
  TagAPP_Ordem_Producao = 3;
  TagAPP_Producao = 4;
  TagAPP_Financeiro = 5;
  TagAPP_Compra = 6;
  TagAPP_Nfe = 7;
  TagAPP_NFSe = 8;
  TagAPP_Financeiro_Boleto = 9;
  TagAPP_Codigo_Barras = 10;
  TagAPP_Estoque = 11;
  TagAPP_Relatorio = 12;
  TagAPP_RH_Folha_Pagamento = 13;
  TagAPP_Financeiro_Caixa = 14;
  TagAPP_Integracao_SPED = 15;
  TagAPP_Integracao_Sintegra = 16;
  TagAPP_Financeiro_Contrato = 17;
  TagAPP_Associacao = 18;
  TagAPP_DRE = 19;
  TagAPP_Planejamento = 20;
  TagAPP_Faturamento = 21;

  TagAPP_Venda_PDV = 22;
  TagAPP_Venda_Pedido = 23;
  TagAPP_Venda_Tabela_Preço = 24;
  TagAPP_Venda_Mecanica = 25;
  TagAPP_Credito_Cliente = 26;
  TagAPP_Venda_Comissoes = 27;

  TagAPP_Recebimento = 28;
  TagAPP_TEF_Dedicado = 29;


  TagAPP_Lote = 30;
  TagAPP_Produto_Variacao = 31;
  TagAPP_Multiplos_Estoques = 32;
  TagAPP_Balanco = 33;
  TagAPP_Produto_Composicao = 34;
  TagAPP_SubUnidade = 35;
  TagAPP_Produto_Patrimonio = 36;


  TagAPP_Markup = 37;
  TagAPP_Financeiro_Centro_Custo = 38;

  TagAPP_Importacao_Xml = 39;
  TagAPP_Solicitacao_Compra = 40;

  TagAPP_Propostas = 41;
  TagAPP_Notificacoes = 42;
  TagAPP_Aprovacoes = 43;
  TagAPP_Agendamentos = 44;


  TagAPP_Fabricacao = 45;
  TagAPP_Projeto = 46;
  TagAPP_Fluxo_Produto = 47;

  TagAPP_Integracao_OImpresso = 48;

  TagAPP_RH_Funcionarios = 49;
  TagAPP_RH_Ficha_Ponto = 50;

  TagAPP_Anexo = 51;

  TagAPP_Equipamento = 52;
  TagAPP_Ocorrencias = 53;
  TagAPP_Rateio = 54;
  TagAPP_Boletos_Eventuais = 55;


  TagAPP_NFCe = 56;
  TagAPP_PAF = 57;

  TagAPP_Integracao_IBASE = 58;
  TagAPP_Integracao_ConsultaTEC = 59;
  TagAPP_NaoLocalizada_60 = 60;
  TagAPP_NaoLocalizada_61 = 61;
  TagAPP_NaoLocalizada_62 = 62;

  TagAPP_Financeiro_Conciliacao_Bancaria = 63;
  TagAPP_Venda_Metas = 64;
  TagAPP_BI = 65;
  TagAPP_Email_Massa = 66;

  TagAPP_Produto_Personalizado = 67;
  TagAPP_Produto_UsoEConsumo = 68;
  TagAPP_Produto_Basico = 69;
  TagAPP_Produto_Servico = 70;
  TagAPP_Produto_MateriaPrima = 71;

  TagAPP_Financeiro_Cartao = 72;
  TagAPP_Financeiro_Cheque = 73;
  TagAPP_Producao_Fila_TV = 74;
  TagAPP_Equipamento_Associacao = 75;

  TagAPP_Balanco_Patrimonial = 76;
  TagAPP_DFC = 77;
  TagAPP_Geral = 78;
  TagAPP_Last = TagAPP_Geral;

procedure RegistraWR_APP(ATagApp: Integer; AImageIndex, ATag_Modulo: Integer; ANome, AResumo, ALink: String);

Var
  AWR_APP : array [TagAPP_First..TagAPP_Last] of TWR_APP;

implementation

procedure RegistraWR_APP(ATagApp: Integer; AImageIndex, ATag_Modulo: Integer; ANome, AResumo, ALink: String);
begin
  if not Assigned(AWR_APP[ATagApp]) then
    AWR_APP[ATagApp]            := TWR_APP.Create;

  AWR_APP[ATagApp].Tag_APP    := ATagApp;
  AWR_APP[ATagApp].ImageIndex := AImageIndex;
  AWR_APP[ATagApp].Tag_Modulo := ATag_Modulo;
  AWR_APP[ATagApp].Nome       := ANome;
  AWR_APP[ATagApp].Resumo     := AResumo;
  AWR_APP[ATagApp].Link       := ALink;

  if Not Assigned(AWR_APP[ATagApp].Tag_KPIs) then
    AWR_APP[ATagApp].Tag_KPIs := TList<Integer>.Create;
  if Not Assigned(AWR_APP[ATagApp].TagTelas) then
    AWR_APP[ATagApp].TagTelas   := TList<Integer>.Create;

  AWR_APP[ATagApp].Ativo      := False;
end;

end.
