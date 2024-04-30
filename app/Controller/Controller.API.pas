unit Controller.API;

interface

function SocketClient(AEmpresa, ACNPJ, AUsuario: string): String;
function FinalizarSocketClient: String;
function SocketCallBack(Message: String): String;
function SocketCallBackDois(Message: String): String;
procedure ShowUPnPEntries;
procedure CriarServidorWebSocket;

procedure ControllerAPI(ATag_APP: Integer; AEvento_Clicado_String: String; AImage, AText1, AText2, AText3, AText4 : Boolean);
procedure Tag_Funcao_AbreConfiguracao(ATag_APP : Integer; AImage: Boolean);
procedure Tag_Funcao_Produto(ATag_APP, ATag_Funcao: Integer);
procedure Tag_Funcao_Vendas(ATag_APP, ATag_Funcao: Integer);
procedure Tag_Funcao_Acoes;

implementation

uses Horse, Horse.Jhonson, Horse.CORS, Horse.Query,  Horse.SocketIO, Horse.SocketIO.ServerSocket, Horse.SocketIO.Functions,
  Controller_Venda, Controller_Producao, Base, Principal,
  GenericSocket, Winapi.Windows, Winapi.Messages, ComObj, ActiveX, Vcl.Graphics,
  system.StrUtils, System.SysUtils, System.Variants, System.Classes, System.JSON,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxCustomTileControl, dxTileControl, dxActivityIndicator,
  Tag.APP, Tag.Form;

Var
  Socket : iGenericSocket;
  SocketName: string;
  WSServerConectado: boolean;
  Client: iGenericSocket;
  i: integer;

function SocketCallBack(Message: String): String;
begin
  OutputDebugString(StringToOleStr(Message));
  Result := TJSONObject.Create.AddPair('id', TJSONNumber.Create(1)).ToJSON;
end;

function SocketCallBackDois(Message: String): String;
begin
  OutputDebugString(StringToOleStr(Message));
  Result := 'Feito2 ';
end;

function SocketClient(AEmpresa, ACNPJ, AUsuario: string): String;
begin
  if not WSServerConectado then
  Exit;
  SocketName := '@'+AEmpresa+'_'+AUsuario;
  Client := TGenericSocket.New;
  Client
    .SocketClient
    .RegisterCallback('/api/produtos', SocketCallBack)
    .RegisterCallback('/api/Users/Contacts', SocketCallBackDois)
    .RegisterCallback('/api/Employees/AllTasks', SocketCallBackDois)
    .RegisterCallback('/api/Employees/FilteredTasks', SocketCallBackDois)
    .RegisterCallback('/api/Analytics/SalesByOrderDate/:groupbyPeriod', SocketCallBackDois)
    .RegisterCallback('/api/Analytics/SalesByCategory/:startDate/:endDate', SocketCallBackDois)
    .RegisterCallback('/api/Analytics/Sales/:startDate/:endDate', SocketCallBackDois)
    .Connect('177.74.67.30:5414', 9000, SocketName);
end;

function FinalizarSocketClient: String;
begin
  if not Assigned(Client) then
  Exit;

  Client.SocketClient.Disconnet;
end;

procedure CriarServidorWebSocket;
begin
   HorseCORS
     .AllowedOrigin('*')
     .AllowedCredentials(true)
     .AllowedHeaders('*')
     .AllowedMethods('*')
     .ExposedHeaders('*');

  THorse
    .Use(Jhonson)
    .Use(SocketIO)
    .Use(CORS);

  try
    THorse.Listen(5414, '192.168.0.20');
    WSServerConectado := True;
    ShowUPnPEntries;
  except
    WSServerConectado := False;
  end;

end;

procedure ShowUPnPEntries;
var
  Nat, Ports: Variant;
  Port: OleVariant;
  Enum: IEnumVariant;
  iValue: longword;
  Msg, Desc, ExtIP, IntClient, ProtoCol: string;
  Enabled: boolean;
  ExtPort, IntPort: integer;
begin
  Nat := CreateOleObject('HNetCfg.NATUPnP');
  Ports := Nat.StaticPortMappingCollection;
  Msg := '';
  if not VarIsClear(Ports) then
  begin
    Enum := IUnknown(Ports._NewEnum) as IEnumVariant;
    while ENum.Next(1, Port, iValue) = 0 do
    begin
      Desc := Port.Description;
      Enabled := Port.Enabled;
      ExtIP := Port.ExternalIPAddress;
      ExtPort := Port.ExternalPort;
      IntClient := Port.InternalClient;
      IntPort := Port.InternalPort;
      Protocol := Port.Protocol;
      if Msg <> '' then Msg := Msg + #13;
      Msg := Msg + Desc + ' ' + IntToStr(ExtPort) + '/' + IntToStr(IntPort) + ' ' +
        Protocol + ' ' + ExtIP + '/' + IntClient + ' ';
      if Enabled then Msg := Msg + 'Enabled' else Msg := Msg + 'Disabled';
    end;
  end;
  ShowMessage(Msg);
end;


{$REGION 'Lista de Tag_funções '}

procedure ControllerAPI(ATag_APP: Integer; AEvento_Clicado_String: String; AImage, AText1, AText2, AText3, AText4 : Boolean);
begin
//  case ATag_Funcao of
//    1:                     Tag_Funcao_AbreConfiguracao(ATag_APP, AImage);
//    2,3,4,5,6,7,8,9,10,11: Tag_Funcao_Produto(ATag_APP, ATag_Funcao);
//    12: Tag_Funcao_Acoes;
//  end;
end;

procedure Tag_Funcao_AbreConfiguracao(ATag_APP: Integer; AImage: Boolean);
begin
  if AImage then
    with ABaseClass_Normal[ATag_APP].Create(FrmPrincipal) do
      ShowPainel(ATag_APP);
end;

procedure Tag_Funcao_Acoes;
//var
//  Form: TFrmFrame_BI_Acoes;
begin
{  Form := TFrmFrame_BI_Acoes(ABaseClass_Normal[Tag_BI_Acoes].Create(FrmPrincipal));
  try
//    Form.FGridTableView := GridConsultaDBTableView1;
//    Form.FUCHist := UCHist_Cadastro;
//    Form.AtualizarAcoes;
    Form.ShowConsultaModalItem(Tag_BI_Acoes);
  finally
    Form.Free;
  end;   }
end;

procedure Tag_Funcao_Produto(ATag_APP, ATag_Funcao: Integer);
Var
  ASql : String;
begin
 { case ATag_Funcao of
     Tag_Funcao_Produtos_Todos    : ASQl := '(P.ATIVO = ''S'')';
     Tag_Funcao_Produtos_Servicos : ASQl := '(P.ATIVO = ''S'')AND(P.CODPRODUTO_TIPO = 2)';  //Serviços Cadastrados
     Tag_Funcao_Produtos_Produtos : ASQl := '(P.ATIVO = ''S'')AND(P.CODPRODUTO_TIPO <> 2)'; //Produtos com Composição
     Tag_Funcao_Produtos_Familia  : ASQl := '(P.ATIVO = ''S'')AND(P.TEM_GRADE = ''S'')';    //Produtos com Família
     Tag_Funcao_Produtos_Grade    : ASQl := '(P.ATIVO = ''S'')AND(P.CODPRODUTO_TIPO <> 2)'; //Produtos com Grade

     Tag_Funcao_Produtos_Patrimonio     : ASQl := '(P.ATIVO = ''S'')AND(PT.CLASSIFICACAO = ''PATRIMONIO'')'; //Patrimônio
     Tag_Funcao_Produtos_Estoque_Minimo : ASQl := '(P.ATIVO = ''S'')AND(E.ESTOQUE < P.ESTOQUE_MIN)and(P.ESTOQUE_MIN > 0)'; //Produtos com Estoque Abaixo do Mínimo
     Tag_Funcao_Produtos_Estoque_Maximo : ASQl := '(P.ATIVO = ''S'')AND(E.ESTOQUE > P.ESTOQUE_MAX)and (P.ESTOQUE_MAX > 0)'; //Produtos com Estoque Acima do Máximo
     Tag_Funcao_Produtos_Sub_unidade    : ASQl := '(P.ATIVO = ''S'')and (P.QUANT_RENDIMENTO <> 1)'; //Produtos com Rendimento

     Tag_Funcao_Produtos_NCM_Invalidaos : ASQl := '(P.ATIVO is distinct from ''N'')and (char_length(P.CODIGO) is distinct from 8)and (P.PODE_SER_VENDIDO = ''S'')'; // Produtos com NCM Inválidos

    //Produtos com Valor abaixo do Valor Mínimo de Venda
    //Produtos com Finalização Automática na  Produção
    //Tipos de produto
    //Produtos por grupo
    //Sem grupo de Produtos - Impostos
  end;  }

  with ABaseClass_Normal[Tag_Produto_ProdutoSimples].Create(FrmPrincipal) do
    ShowConsultaSQL(Tag_Produto_ProdutoSimples , ASql);

end;

procedure Tag_Funcao_Vendas(ATag_APP, ATag_Funcao: Integer);
Var
  ASql : String;
begin
 (* case ATag_Funcao of
     Tag_Funcao_Produtos_Todos    : ASQl := '(P.ATIVO = ''S'')';
     Tag_Funcao_Produtos_Servicos : ASQl := '(P.ATIVO = ''S'')AND(P.CODPRODUTO_TIPO = 2)';  //Serviços Cadastrados
     Tag_Funcao_Produtos_Produtos : ASQl := '(P.ATIVO = ''S'')AND(P.CODPRODUTO_TIPO <> 2)'; //Produtos com Composição
     Tag_Funcao_Produtos_Familia  : ASQl := '(P.ATIVO = ''S'')ANDAND(P.TEM_GRADE = ''S'')'; //Produtos com Família

  end;

  if tcBase.Items[1].tag = TagAPP_Faturamento then
  begin
    if ATag_APP = 0 then  //Faturamento (Receita Bruta)
  //    ConsultaMidChildFiltro(TConsuVenda, ' (p.ATIVO = ''S'') '+
  //    ' and  (p.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
  //    ' and not(p.dt_faturamento is null)');

    if ATag_APP = 0 then  //ISS Retido
  //    ConsultaMidChildFiltro(TConsuVenda, ' (p.ATIVO = ''S'') '+
  // ' and  (p.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
  // ' and not(p.dt_faturamento is null)');

    if ATag_APP = 0 then  //Faturamento com Retenção ISS
  //    ConsultaMidChildFiltro(TConsuVenda, ' (p.ATIVO = ''S'') '+
  // ' and  (p.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
  // ' and not(p.dt_faturamento is null) and (p.NOTAFISCAL <> NULL) and (p.NF_IPI_VIPI > 0)');

    if ATag_APP = 0 then  //Total de Acréscimos
  //  ConsultaMidChildFiltro(TConsuVenda, ' (p.ATIVO = ''S'') '+
  // ' and  (p.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
  // ' and not(p.dt_faturamento is null) and (p.VOUTRO > 0)');


    if ATag_Funcao = 0 then  //Total Frete
  //  ConsultaMidChildFiltro(TConsuVenda, ' (p.ATIVO = ''S'') '+
  // ' and  (p.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
  // ' and not(p.dt_faturamento is null) and (p.nf_vfrete > 0)');

    if ATag_Funcao = 0 then  //Total de ICMS ST
  //  ConsultaMidChildFiltro(TConsuVenda, ' (p.ATIVO = ''S'') '+
  // ' and  (p.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
  // ' and not(p.dt_faturamento is null) and (p.NOTAFISCAL <> NULL) and (p.nf_vicmsst > 0)');

    if ATag_Funcao = 0 then  //Total de Descontos
  //  ConsultaFrame(TFrameDashboards_Descontos);
  //  Exit;
  //  ConsultaMidChildFiltro(TConsuVenda, ' (p.ATIVO = ''S'') '+
  // ' and  (p.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
  // ' and not(p.dt_faturamento is null) and (p.VDESC > 0)');

    if ATag_Funcao = 0 then  //Total de ISS Retido
  //  ConsultaMidChildFiltro(TConsuVenda, ' (p.ATIVO = ''S'') '+
  // ' and  (p.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
  // ' and not(p.dt_faturamento is null) and (p.NOTAFISCAL <> NULL) and (p.nf_issqn_vissret > 0)');

    if ATag_Funcao = 0 then  //Total de Cofins
  //  ConsultaMidChildFiltro(TConsuVenda, ' (p.ATIVO = ''S'') '+
  // ' and  (p.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
  // ' and not(p.dt_faturamento is null) and (p.NOTAFISCAL <> NULL) and (p.nf_cofins_vcofins > 0)');

    if ATag_Funcao = 0 then  //Quantidade de Devolução
  //  ConsultaMidChildFiltro(TConsuVenda, ' (p.ATIVO = ''S'') '+
  // ' and  (p.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
  // ' and (p.NF_SAIDA_ENTRADA = 0)');

    if ATag_Funcao = 0 then  //Vendas com Valores Diferente do Financeiro
    begin
  //    QuerX := GeraFDQuery;
  //    try
  //      QuerX.SQL.Text := 'with venda_com_financeiro as (                                                                        '  +
  //                        '  select a.CODIGO, sum(A.SOMAFINANCEIRO) as SOMAFINANCEIRO, sum(A.TOTAL) as TOTAL from                '  +
  //                        '  (select f.codpedido as CODIGO,                                                                      '  +
  //                        '  sum(coalesce(f.valor,0) + coalesce(f.juros,0) - coalesce(f.desconto,0)) as SOMAFINANCEIRO,          '  +
  //                        '  0 as TOTAL from financeiro f where f.codpedido in                                                   '  +
  //                        '  (select v.codigo from venda v                                                                       '  +
  //                        '  where  (v.ATIVO = ''S'' )                                                                             '  +
  //                        '  and  (v.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
  //                        '  and (v.is_venda = ''S'')) and f.status like ''ATIVO%''                                                  '  +
  //                        '  group by 1                                                                                          '  +
  //                        '                                                                                                      '  +
  //                        '  union                                                                                               '  +
  //                        '                                                                                                      '  +
  //                        '  select v.codigo, 0 as SOMAFINANCEIRO, v.total from venda v                                          '  +
  //                        '  where  (v.ATIVO = ''S'' )                                                                             '  +
  //                        '  and  (v.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
  //                        '  and (v.is_venda = ''S'')) a where (A.SOMAFINANCEIRO - A.TOTAL) <> 0                                   '  +
  //                        '  group by a.CODIGO             )                                                                     '  +
  //                        'select CODIGO from venda_com_financeiro where somafinanceiro <> total                                 '  ;
  //      QuerX.Open;
  //      QuerX.First;
  //
  //      ASQLWhere:= ' (p.ATIVO = ''S'') and ( ';
  //      while not QuerX.eof do
  //      begin
  //        if not QuerX.Bof then
  //          ASQLWhere := ASQLWhere + ' or (P.CODIGO = ' + QuotedStr(QuerX.FieldByName('CODIGO').AsString) + ')'
  //        else
  //          ASQLWhere := ASQLWhere + '(P.CODIGO = ' + QuotedStr(QuerX.FieldByName('CODIGO').AsString) + ')';
  //        QuerX.Next;
  //      end;
  //      ASQLWhere := ASQLWhere + ')';
  //
  //
  //      ConsultaMidChildFiltro(TConsuVenda, ASQLWhere);
  //    finally
  //      QuerX.Free;
  //    end;
    end;
  end;

  if ATag_Funcao = 0 then  //Vendas com mais de 1 NF
  begin
//    QuerX := GeraFDQuery;
//    try
//      QuerX.SQL.Text := 'select b.codigo from (                                     '  +
//                        ' select a.codigo,count(a.nf_numero) as QUANT  from         '  +
//                        ' (select v.codigo,  nf.nf_numero from venda v              '  +
//                        ' left join nota_fiscal nf on nf.codvenda = v.codigo        '  +
//                        ' where  (v.ATIVO = ''S'' )                                 '  +
//                        ' and  (v.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
//                        ' and (v.is_venda = ''S'')                                  '  +
//                        ' and nf.nf_situacao in (''Autorizada'',''Confirmada'')) a  '  +
//                        ' group by a.codigo                                         '  +
//                        ' having count(a.nf_numero) > 1) b                          ';
//      QuerX.Open;
//      QuerX.First;
//
//      ASQLWhere:= ' (p.ATIVO = ''S'') and ( ';
//      while not QuerX.eof do
//      begin
//        if not QuerX.Bof then
//          ASQLWhere := ASQLWhere + ' or (P.CODIGO = ' + QuotedStr(QuerX.FieldByName('CODIGO').AsString) + ')'
//        else
//          ASQLWhere := ASQLWhere + '(P.CODIGO = ' + QuotedStr(QuerX.FieldByName('CODIGO').AsString) + ')';
//        QuerX.Next;
//      end;
//      ASQLWhere := ASQLWhere + ')';
//
//
//      ConsultaMidChildFiltro(TConsuVenda, ASQLWhere);
//    finally
//      QuerX.Free;
//    end;
  end;

  if ATag_Funcao = 0 then  //Não Faturadas com NF
  begin
//    QuerX := GeraFDQuery;
//    try
//      QuerX.SQL.Text := 'select v.codigo from venda v                             ' +
//                        ' left join nota_fiscal nf on nf.codvenda = v.codigo      ' +
//                        ' where  (v.ATIVO = ''S'' )                               ' +
//                        ' and (v.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
//                        ' and (coalesce(v.dt_faturamento, '''') = '''')           ' +
//                        ' and (v.is_venda = ''S'')                                ' +
//                        ' and nf.nf_situacao in (''Autorizada'',''Confirmada'')   ';
//      QuerX.Open;
//      QuerX.First;
//
//      ASQLWhere:= ' (p.ATIVO = ''S'') and ( ';
//      while not QuerX.eof do
//      begin
//        if not QuerX.Bof then
//          ASQLWhere := ASQLWhere + ' or (P.CODIGO = ' + QuotedStr(QuerX.FieldByName('CODIGO').AsString) + ')'
//        else
//          ASQLWhere := ASQLWhere + '(P.CODIGO = ' + QuotedStr(QuerX.FieldByName('CODIGO').AsString) + ')';
//        QuerX.Next;
//      end;
//      ASQLWhere := ASQLWhere + ')';
//
//
//      ConsultaMidChildFiltro(TConsuVenda, ASQLWhere);
//    finally
//      QuerX.Free;
//    end;
  end;

  if ATag_Funcao = 0 then  //Vendas excluídas por Usuários
//    ConsultaMidChildFiltro(TConsuVenda, ' (p.ATIVO = ''N'') '+
// ' and  (p.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Inicio').AsDateTime)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DashboardBlocoSimples15.Consulta.ParamByName('Dt_Fim').AsDateTime)) + ')' +
// ' and (p.status = ''INATIVO EXCLUÍDO'')');

  if ATag_Funcao = 0 then  //Vendas com financeiro recebido e faturamento cancelado
  begin
//    QuerX := GeraFDQuery;
//    try
//      QuerX.SQL.Text := 'select v.codigo from venda v where v.codigo in ' +
//                        ' (select f.codpedido from financeiro f where f.status = ''INATIVO EXCLUIDA''  '  +
//                        ' and f.codpedido = v.codigo and f.tipo = ''RECEBIDA'') ' +
//                        ' and v.dt_competencia between :Dt_Inicio and :Dt_Fim ';
//      QuerX.Open;
//      QuerX.First;
//
//      ASQLWhere:= ' (p.ATIVO = ''S'') and ( ';
//      while not QuerX.eof do
//      begin
//        if not QuerX.Bof then
//          ASQLWhere := ASQLWhere + ' or (P.CODIGO = ' + QuotedStr(QuerX.FieldByName('CODIGO').AsString) + ')'
//        else
//          ASQLWhere := ASQLWhere + '(P.CODIGO = ' + QuotedStr(QuerX.FieldByName('CODIGO').AsString) + ')';
//        QuerX.Next;
//      end;
//      ASQLWhere := ASQLWhere + ')';
//
//
//      ConsultaMidChildFiltro(TConsuVenda, ASQLWhere);
//    finally
//      QuerX.Free;
//    end;
  end;          *)
  with ABaseClass_Normal[Tag_Produto_ProdutoSimples].Create(FrmPrincipal) do
    ShowConsultaSQL(Tag_Produto_ProdutoSimples , ASql);
end;
{$ENDREGION}



begin

end.
