unit wr.APP.RH;

interface

procedure Inicializa_WR_APP_RH;

implementation

Uses
  Base, UnitFuncoes, Tag.APP, Tag.Modulo;

procedure Inicializa_WR_APP_RH;
begin
  RegistraWR_APP(TagAPP_RH_Funcionarios, -1, TagModulo_RH,
  'Funcionários',
  'com o Office Impresso',
  'https://oimpresso.com/ajuda/fluxo-de-produto/');

  RegistraWR_APP(TagAPP_RH_Folha_Pagamento, 61, TagModulo_RH,
  'Folha de Pagamento',
  'Elabore as folhas de pagamento detalhando informações como o número de horas extras, salário, 13º salário, adiantamento, FGTS e INSS.'+
  ' O Office Impresso te auxilia a realizar o processo vinculando o plano de contas e a conta bancária que serão utilizadas para um melhor controle do financeiro da empresa.',
  'https://oimpresso.com/ajuda/folha-de-pagamento/');

  RegistraWR_APP(TagAPP_RH_Ficha_Ponto, 62, TagModulo_RH,
  'Ficha Ponto',
  'Com o Office Impresso você pode registrar diretamente no cadastro '+
  'os horários de entrada e saída do funcionário, mantendo assim o controle da jornada de trabalho e podendo apontar dados exatos como horas extras,'+
  ' faltas e atrasos, auxiliando o setor de RH.',
  'https://oimpresso.com/ajuda/ficha-ponto/');
end;

initialization
  Inicializa_WR_APP_RH;


end.















