unit wrConstantes;

interface

uses
  Winapi.Messages, Vcl.Graphics;


const
//  Mensagens
  MS_CALCULAR_CUSTOS = WM_USER + 92;
  WM_VERIFICA_PNL = WM_USER + 563;
  WM_DETALHES_PRODUTO = WM_USER + 564;
  WM_CARREGAR_CONFIGURACOES = WM_USER + 565;
  WM_LAYOUT_CHANGED = WM_USER + 566;
  WM_ABRIR_VENDA = WM_USER + 567;
  WM_ABRIR_CONSULTA = WM_USER + 568;
  WM_INSTALAR_MODULO = WM_USER + 937;
  WM_REFRESH_RIBBON = WM_USER + 4524;
  WM_ATUALIZAR = WM_USER + 658;

  CompEstoque     = 0;   // Composição altera estoque
  CompEstProducao = 1;   // Composição altera estoque de forma inversa ao produto composto - REMOVER
  EstSomComp      = 2;   // Estoque é alterado somente na composição - REMOVER

  DATA_ZERO = -693594;   //Representa a data 00/00/0000 00:00:00
  CODIGOCRMDATABASE = 0;
  SIMBOLO_MONETARIO = 'R$';

  //Formatação de Datas
  DATA_SIMPLES     = 'DD/MM/YYYY';
  DATA_FB          = 'MM/DD/YYYY';               //Formato de Data do FireBird, usar em filtros SQL.
  DATA_HORA        = DATA_SIMPLES + ' hh:nn:ss';
  DATA_HORA_NS     = DATA_SIMPLES + ' hh:nn';    //NoSeconds
  DATA_HORA_FB     = DATA_FB + ' hh:nn:ss.zzz';  //Formato de Data/Hora do FireBird, usar em filtros SQL. Não remover os milisegundos, são importantes!!!
  DATA_EXTENSO     = 'DD ''de'' mmmm ''de'' YYYY';
  DATA_MES_EXTENSO = 'mmmm ''de'' YYYY';

  //Formatação de casas decimais fixas.
  DECIMAL_0  = '#,##0';              //sem casas decimais
  DECIMAL_1  = DECIMAL_0 + '.0';
  DECIMAL_2  = DECIMAL_0 + '.00';    //2 casas fixas
  DECIMAL_3  = DECIMAL_2 + '#';      //3 casas decimais facultativas, sendo 2 fixas
  DECIMAL_4  = DECIMAL_2 + '##';     //4 casas decimais facultativas, sendo 2 fixas
  DECIMAL_5  = DECIMAL_2 + '###';    //5 casas decimais facultativas, sendo 2 fixas
  DECIMAL_6  = DECIMAL_2 + '####';   //6 casas decimais facultativas, sendo 2 fixas
  DECIMAL_8  = DECIMAL_2 + '######'; //8 casas decimais facultativas, sendo 2 fixas

  DECIMAL_1F = DECIMAL_0 + '.#';
  DECIMAL_2F = DECIMAL_0 + '.##';    //2 casas facultativas
  DECIMAL_3F = DECIMAL_2F + '#';      //3 casas decimais facultativas
  DECIMAL_4F = DECIMAL_2F + '##';     //4 casas decimais facultativas
  DECIMAL_5F = DECIMAL_2F + '###';    //5 casas decimais facultativas
  DECIMAL_6F = DECIMAL_2F + '####';   //6 casas decimais facultativas
  DECIMAL_8F = DECIMAL_2F + '######'; //8 casas decimais facultativas

  DECIMAL_0P = DECIMAL_0 + '%'; //Formatações com o símbolo de Percentual
  DECIMAL_1P = DECIMAL_1 + '%';
  DECIMAL_2P = DECIMAL_2 + '%';
  DECIMAL_4P = DECIMAL_4 + '%';
  DECIMAL_6P = DECIMAL_6 + '%';
  DECIMAL_8P = DECIMAL_8 + '%';

  DECIMAL_1PF = DECIMAL_1F + '%'; //Formatações com o símbolo de Percentual, decimais facultativas
  DECIMAL_2PF = DECIMAL_2F + '%';
  DECIMAL_4PF = DECIMAL_4F + '%';
  DECIMAL_6PF = DECIMAL_6F + '%';
  DECIMAL_8PF = DECIMAL_8F + '%';

  DECIMAL_0M = SIMBOLO_MONETARIO + ' ' + DECIMAL_0; //Formatações com o símbolo monetário
  DECIMAL_2M = SIMBOLO_MONETARIO + ' ' + DECIMAL_2;
  DECIMAL_4M = SIMBOLO_MONETARIO + ' ' + DECIMAL_4; //A partir de 4 casa, é facultativo
  DECIMAL_6M = SIMBOLO_MONETARIO + ' ' + DECIMAL_6;
  DECIMAL_8M = SIMBOLO_MONETARIO + ' ' + DECIMAL_8;

  COR_EXCESSO_HORARIOS = clYellow;
  COR_FALTA_HORARIOS   = $00FFFF80;
  COR_HORAS_EXTRAS     = $0080FF80;
  COR_HORAS_FALTAS     = clRed;
  TOLERANCIA_EXTRAS_FALTAS = 10;
  EXTENSOES_IMAGENS : Array of String = ['PNG', 'GIF', 'JPG', 'JPEG', 'BMP', 'TIF', 'TIFF'];  //Deveria ser um enumerator MIGRAR

  MESES_NOMES: array [0..12] of string = ('','Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
                                          'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro');

//  Pastas do Sistema GED
  __PASTA_PRODUTO_MINIATURA = 'Produto\Miniatura\%s.png';
  __PASTA_PRODUTO_ORIGINAL = 'Produto\Original\%s.png';

  __PASTA_PRODUTO_ANEXOS = 'Produto\%s\Anexos\';
  __PASTA_PRODUTO_PRODUCAO = 'Produto\%s\Producao\';
  __PASTA_PRODUTO_VENDA = 'Produto\%s\Venda\';

  __PASTA_PESSOA_MINIATURA = 'Pessoa\Miniatura\%s.png';
  __PASTA_PESSOA_ORIGINAL = 'Pessoa\Original\%s.png';

  __PASTA_PESSOA_ANEXOS = 'Pessoa\%s\Anexos\';
  __PASTA_PESSOA_PRODUCAO = 'Pessoa\%s\Producao\';
  __PASTA_PESSOA_VENDA = 'Pessoa\%s\Venda\';

  __PASTA_RATEIO_PESSOA = 'Rateio\%s\%s\';
  __PASTA_RATEIO_ANEXOS = 'Rateio\Rateio\%s\';
  __PASTA_RATEIO_EXCLUSAO = 'Rateio\Exclusão\%s\';

  __PASTA_FUNCIONARIO = 'Funcionario\';

  __PASTA_VENDA_ANEXOS = 'Venda\%s\Anexos';
  __PASTA_VENDA_PRODUTO = 'Venda\%s\Produto\%s\';
  __PASTA_VENDA_PRODUCAO = 'Venda\%s\Producao\';


  __PASTA_PRODUCAO_PROTOCOLO = 'Producao\%s\Protocolo\';
  __PASTA_PRODUCAO_EQUIPE = 'Producao\%s\Equipe\';


  __PASTA_AGENDA = 'Agenda\%s';
  __PASTA_FINANCEIRO = 'Financeiro\';
  __PASTA_OCORRENCIA = 'Ocorrência\';
  __PASTA_EQUIPAMENTO = 'Equipamento\';
  __PASTA_COMPRAS = 'Compras\';


const
  chtml_bloqueia: string =
    '<html><head> <script = ''javascript''> '+
    'function keypresed() { '+
    'var tecla=window.event.keyCode; '+
    'var E=window.event; ' +
    ' '+
    //'document.title = "Command"+tecla; '+
    'if (E.Ctrl && E.KeyCode == 67) { ' +
    'event.keyCode=0; '+
    'event.returnValue=false; '+
    ' }' +
    '} ' +
    'document.onkeydown=keypresed; '+
    'function click() {'+
    'if (event.button==2||event.button==3) {'+
    'oncontextmenu=''return false'';'+
    '  }'+
    '}'+
    ' function pageScroll() { '+
    '   window.scrollBy(0,document.body.scrollHeight); '+ // horizontal and vertical scroll increments
    '}'+
    'document.onmousedown=click;'+
    'document.oncontextmenu = new Function("return false;")'+
    '</script>' +
    '<style type="text/css"> ' +
    '.Linha {' +
    ' font-family: Verdana, Geneva, sans-serif;' +
    ' font-size: 10px;' +
    ' font-style: normal;' +
    ' color: #C6E2FF;' +
    '}' +
    '.Protocolo {' +
    ' font-family: "Segoe UI","Segoe WP","Segoe UI Latin",Helvetica Neue,Helvetica,Tahoma,Arial Unicode MS,sans-serif;' +
    ' font-size: 12px;' +
    ' font-style: normal;' +
    ' font-weight: 400;' +
    ' color: rgb(18, 22, 24);' +
    '}' +
    '.Protocolo1 {' +
    ' font-family: Verdana, Geneva, sans-serif;' +
    ' font-size: 10px;' +
    ' font-style: normal;' +
    ' color: #EEE' +
    '}' +
    '.hora {' +
    ' font-family: Verdana, Geneva, sans-serif;' +
    ' font-size: 9px;' +
    ' font-style: normal;' +
    ' color: #AAA;' +
    '}' +
    '.hora1 {' +
    ' font-family: Verdana, Geneva, sans-serif;' +
    ' font-size: 11px;' +
    ' font-style: normal;' +
    ' color: #FFF;' +
    '}' +
    '.nome1 {' +
    ' font-family: Georgia, "Times New Roman", Times, serif;' +
    ' font-size: 10px;' +
    ' color: #3CB0FF;' +
    '}' +
    '.nome2 {' +
    ' font-family: Georgia, "Times New Roman", Times, serif;' +
    ' font-size: 10px;' +
    ' color: #CCC;' +
    '}' +
    '.meio1 {' +
    ' font-family: Tahoma, Geneva, sans-serif;' +
    ' border-radius: 5px; ' +
    ' font-size: 13px;' +
    ' padding: 4px 4px 4px 8px; ' +
    ' margin-top: 1px;' +
    ' margin-bottom: 1px;' +
    ' background-color: rgb(199,237,252); ' +
    '-moz-border-radius: 6px; ' +
    '-webkit-border-radius:6px; ' +
    '}' +
    '.meio2 {' +
    ' font-family: Tahoma, Geneva, sans-serif;' +
    ' border-radius: 5px; ' +
    ' font-size: 13px;' +
    ' padding: 4px 4px 4px 8px; ' +
    ' margin-top: 1px;' +
    ' margin-bottom: 1px;' +
    ' background-color: rgb(229,247,253); ' +
    '-moz-border-radius: 6px; ' +
    '-webkit-border-radius:6px; ' +
    '}' +
    'body {' +
    ' margin-left: 0px;' +
    ' margin-top: 0px;' +
    ' margin-right: 0px;' +
    ' margin-bottom: 0px;' +
    '}</style>' +
    '</head>'+
    '<body scroll="auto" onLoad="pageScroll()"> ';

implementation

end.
