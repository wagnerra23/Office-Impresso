unit Tag.Report;

interface

Uses
  Classes.APP, System.Classes;

const
  Tag_Report_Venda_Agrupado_Cliente = -1;
  Tag_Report_Venda_Relacao_Vendas = -2;
  Tag_Report_Cod_Barras = -3;
  Tag_Report_Venda_Recibo = -4;
  Tag_Report_Produtos_Gerencial = -5;
  Tag_Report_Sintetico_Produtos = -6;
  Tag_Report_Vendas = -7;
  Tag_Report_Vendas_Com_Parcelas = -8;
  Tag_Report_Vendas_Com_Produtos = -9;
  Tag_Report_Vendas_Com_Produtos_Simpli = -10;
  Tag_Report_Vendas_Agrupado_Cliente = -11;
  Tag_Report_Balanco = -12;
  Tag_Report_Notas_Fiscais = -13;
  Tag_Report_Cheque_Copia = -14;
  Tag_Report_Cheque_000 = -15;
  Tag_Report_Nota_Entrada = -16;
  Tag_Report_Entrada = -17;
  Tag_Report_Financeiro_Devedores = -18;
  Tag_Report_Funcionario_Ponto_Diario = -19;
  Tag_Report_Funcionario_Ponto = -20;
  Tag_Report_Produtos_Entrada_Saida = -21;
  Tag_Report_Produtos_Grade_Corte = -22;
  Tag_Report_Agenda_Completo = -23;
  Tag_Report_Agenda_Simplificado = -24;
  Tag_Report_Producao_Custos_Lucros = -25;
  Tag_Report_Producao_Finalizacoes = -26;
  Tag_Report_Producao_Perdas = -27;
  Tag_Report_Producao_Reaproveitamentos = -28;
  Tag_Report_Mensalidade = -29;
  Tag_Report_Ficha_Registro_Empregado = -30;
  Tag_Report_Financeiro_Livro_Caixa = -31;
  Tag_Report_Financeiro_Relatorio_Devedores = -32;
  Tag_Report_Carne_Financeiro = -33;
  Tag_Report_Financeiro_Duplicata = -34;
  Tag_Report_Financeiro_Relatorio = -35;
  Tag_Report_Financeiro_Relatorio_Contabil = -36;
  Tag_Report_Plano_Contas = -37;
  Tag_Report_Carne_1 = -38;
  Tag_Report_Financeiro_Recebimento = -39;
  Tag_Report_Ficha_Ponto = -40;
  Tag_Report_Folha_Pagamento = -41;
  Tag_Report_Adiantamento_Salarial_Vale = -42;
  Tag_Report_Eventos = -43;
  Tag_Report_Contrato = -44;
  Tag_Report_Venda_Personalizado_ConsultaTEC = -45;
  Tag_Report_Boleto = -46;
  Tag_Report_DANFeRetrato = -47;
  Tag_Report_DANFSeNovo = -48;
  Tag_Report_DANFeNFCeA4 = -49;
  Tag_Report_Inutilizacao = -50;
  Tag_Report_Venda_Personalizado = -51;
  Tag_Report_Relacao_Ocorrencias = -52;
  Tag_Report_Ficha_Ocorrencia_Equipamento = -53;
  Tag_Report_Pedido_Exclusao_Equipamento = -54;
  Tag_Report_Rateio = -55;
  Tag_Report_Tabela_Fipe_Valor = -56;
  Tag_Report_Produtos_Com_Valores = -57;
  Tag_Report_Produtos_Pauta_Preco = -58;
  Tag_Report_Estoque_Inventario_Estoque = -59;
  Tag_Report_Equipamentos_Cadastro_Exclusao = -60;
  Tag_Report_Associados_Representante_Legal = -61;
  Tag_Report_Relacao_Associados = -62;
  Tag_Report_Ocorrencia_Roubos_Furtos = -63;
  Tag_Report_Ocorrencias_Valor_Placa = -64;
  Tag_Report_Produtos_Por_Dia = -65;
  Tag_Report_Produtos_Por_Venda = -66;
  Tag_Report_Produtos_Comprados = -67;
  Tag_Report_Metas_Venda = -68;
  Tag_Report_Cod_Barras_Pimaco_5_Etq = -69;
  Tag_Report_Vendas_2023 = -70;
  Tag_Report_Vendas_Produto_2023 = -71;
  Tag_Report_Curva_ABC = -72;
  Tag_Report_BPO = -73;
  Tag_Report_First = Tag_Report_BPO;

  Tag_Report_Last = 10000;

procedure Reseta_Reports;
procedure Registra_Report(ATag_Report, ACodigo, ATagWR_Form: Integer; ANome, AClassName,
      ALink, AObservacao, AVersao, AIDInterno: string; AStream: TMemoryStream; AAtivo, AIs_Consulta: boolean; ADtAlteracao: TDateTime);
procedure Registra_Report_Nativo(ATag_Report, ATag_Tela: Integer; ANome,
      ALink, AObservacao, AIDInterno: string; AIs_Consulta :Boolean);

Var
  AWR_Report : array [Tag_Report_First..Tag_Report_Last] of TWR_Report;//TAPP_Report_Array;   //

implementation
   
procedure Reseta_Reports;
var
  I: Integer;
begin
  for I := Tag_Report_First to Length(AWR_Report) + Tag_Report_First  do
    AWR_Report[I] := nil;
end;

procedure Registra_Report(ATag_Report, ACodigo, ATagWR_Form: Integer; ANome, AClassName,
      ALink, AObservacao, AVersao, AIDInterno: string; AStream: TMemoryStream; AAtivo, AIs_Consulta: boolean; ADtAlteracao: TDateTime);
begin

  AWR_Report[ATag_Report] := TWR_Report.Create;
  AWR_Report[ATag_Report].Tag_Report  := ATag_Report;
  AWR_Report[ATag_Report].Tag_Tela    := ATagWR_Form;
  AWR_Report[ATag_Report].Codigo      := ACodigo;
  AWR_Report[ATag_Report].Nome        := ANome;
  AWR_Report[ATag_Report].ClassName   := AClassName;
  AWR_Report[ATag_Report].Observacao  := AObservacao;
  AWR_Report[ATag_Report].Versao      := AVersao;
  AWR_Report[ATag_Report].Link        := ALink;
  AWR_Report[ATag_Report].Stream      := AStream;
  AWR_Report[ATag_Report].IDInterno   := AIDInterno;
  AWR_Report[ATag_Report].DtAlteracao := ADtAlteracao;
  AWR_Report[ATag_Report].Ativo       := AAtivo;
  AWR_Report[ATag_Report].Is_Consulta := AIs_Consulta;
end;

procedure Registra_Report_Nativo(ATag_Report, ATag_Tela: Integer; ANome,
      ALink, AObservacao, AIDInterno: string; AIs_Consulta :Boolean);
begin
  AWR_Report[ATag_Report] := TWR_Report.Create;
  AWR_Report[ATag_Report].Tag_Report  := ATag_Report;
  AWR_Report[ATag_Report].Tag_Tela    := ATag_Tela;
  AWR_Report[ATag_Report].Nome        := ANome;
  AWR_Report[ATag_Report].Observacao  := AObservacao;
  AWR_Report[ATag_Report].Link        := ALink;
  AWR_Report[ATag_Report].IDInterno   := AIDInterno;
  AWR_Report[ATag_Report].Is_Consulta := AIs_Consulta;
  AWR_Report[ATag_Report].Ativo       := True;
end;
  
end.