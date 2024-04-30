unit Controller_Producao;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  DataSet.Serialize, DataSet.Serialize.Export,
  DataSetConverter4D,
  DataSetConverter4D.Impl,
  DataSetConverter4D.Util,
  DataSetConverter4D.Helper;


function Controller_Producao_AllTasks(Message: String): String;
function Controller_Producao_FilteredTasks(Message: String): String;
function Controller_Analitics_SalesByOrderDate(Message: String): String;
function Controller_Analitics_SalesByCategory(Message: String): String;

implementation

Uses UnitFuncoes;

function Controller_Producao_AllTasks(Message: String): String;
var
  LBody: TJSONObject;
  Varr :String;
  QuerX : TFDquery;
begin
//    "id": 1,
//    "text": "Call to clarify customer requirements.",
//    "startDate": "2021-01-10T00:26:40",
//    "dueDate": "2021-01-17T00:26:40",
//    "status": "In Progress",
//    "priority": "High",
//    "owner": "Robert Reagan",
//    "company": "Electronics Depot",
//    "manager": "John Heart",
//    "progress": null,
//    "parentId": 13
//             ' p.pessoa_funcionario_codigo, ' +
//             ' p.obs_producao as text, ' +
  QuerX:= GeraFDQuery;
  QuerX.Sql.text:=' Select FIRST 20 '+
             ' p.Codigo as "id", ' +
             ' ''Call to clarify customer requirements.'' as "text", ' +
             ' ''2021-01-10T00:26:40'' as "startDate", ' +
             ' ''2021-01-17T00:26:40'' as "dueDate" , ' +
             ' ''In Progress'' as "status", '+
             ' ''Normal'' as "priority", ' +
             ' ''Robert Reagan'' as "owner",'+
             ' ''Electronics Depot'' as "company", '+
             ' ''John Heart'' as "manager", '+
             ' null as "progress", '+
             ' 13 as "parentId" '+

             ' from venda p '+
             ' left join pessoas f on p.pessoa_funcionario_codigo = f.codigo '+
             ' where P.ativo = ''S'' ' ;
  QuerX.open;
  Result:=TConverter.New.DataSet(QuerX).AsJSONArray.ToString;
  QuerX.Free;
end;

function Controller_Producao_FilteredTasks(Message: String): String;
var
  LBody: TJSONObject;
  Varr :String;
  QuerX : TFDquery;
begin
//    "id": 1,
//    "text": "Call to clarify customer requirements.",
//    "startDate": "2021-01-10T00:26:40",
//    "dueDate": "2021-01-17T00:26:40",
//    "status": "In Progress",
//    "priority": "High",
//    "owner": "Robert Reagan",
//    "company": "Electronics Depot",
//    "manager": "John Heart",
//    "progress": null,
//    "parentId": 13
//             ' p.pessoa_funcionario_codigo, ' +
//             ' p.obs_producao as text, ' +
  QuerX:= GeraFDQuery;
  QuerX.Open(' Select FIRST 20 '+
             ' p.Codigo as "id", ' +
             ' ''Call to clarify customer requirements.'' as "text", ' +
             ' ''2021-01-10T00:26:40'' as "startDate", ' +
             ' ''2021-01-17T00:26:40'' as "dueDate" , ' +
             ' ''In Progress'' as "status", '+
             ' ''Normal'' as "priority", ' +
             ' ''Robert Reagan'' as "owner",'+
             ' ''Electronics Depot'' as "company", '+
             ' ''John Heart'' as "manager", '+
             ' null as "progress", '+
             ' 13 as "parentId" '+

             ' from venda p '+
             ' left join pessoas f on p.pessoa_funcionario_codigo = f.codigo '+
             ' where P.ativo = ''S'' ' );
  Result:=TConverter.New.DataSet(QuerX).AsJSONArray.ToString;
  QuerX.Free;
end;

Function Controller_Analitics_SalesByOrderDate(Message: String): String;
var
  LBody: TJSONObject;
  Varr :String;
  QuerX : TFDquery;
begin
//    "date": "2020-01-01T00:00:00",
//    "category": "Automation",
//    "total": 3600
  QuerX:= GeraFDQuery;
  Try
    QuerX.Sql.text:=' select v.dt_competencia AS "date1", PG.DESCRICAO as "category", Sum(v.total) as "total" '+
               ' from venda v '+
               ' left join venda_produto Vp on (Vp.codvenda = v.codigo)  '+
               ' left join produto p on (p.codigo = vp.codproduto)  '+
               ' left join produto_grupo PG on (PG.codigo = P.codproduto_grupo) '+
               ' where v.dt_competencia between :Dt_Ini and :Dt_Fim '+
//               ' group by 1, 2 '+
               ' order by PG.DESCRICAO ';
//    QuerX.ParamByName('Dt_Ini').AsDateTime:=Req.Params.Field('startDate').AsDateTime;
//    QuerX.ParamByName('Dt_Fim').AsDateTime:=Req.Params.Field('endDate').AsDateTime;
    QuerX.Open;
    Result:=TConverter.New.DataSet(QuerX).AsJSONArray.ToString;
  Finally
    QuerX.Free;
  End;
end;

function Controller_Analitics_SalesByCategory(Message: String): String;
var
  LBody: TJSONObject;
  Varr :String;
  QuerX : TFDquery;
begin
//    "date": "2020-01-01T00:00:00",
//    "category": "Automation",
//    "total": 3600
  QuerX:= GeraFDQuery;
  Try
    QuerX.Sql.text:=' select v.dt_competencia AS "date1", PG.DESCRICAO as "category", Round(Sum(v.total), 0) as "total" '+
               ' from venda v '+
               ' left join venda_produto Vp on (Vp.codvenda = v.codigo)  '+
               ' left join produto p on (p.codigo = vp.codproduto)  '+
               ' left join produto_grupo PG on (PG.codigo = P.codproduto_grupo) '+
               ' where v.dt_competencia between :Dt_Ini and :Dt_Fim '+
               ' group by 1, 2 '+
               ' order by PG.DESCRICAO ';
//    QuerX.ParamByName('Dt_Ini').AsDateTime:=Req.Params.Field('startDate').AsDateTime;
//    QuerX.ParamByName('Dt_Fim').AsDateTime:=Req.Params.Field('endDate').AsDateTime;
    QuerX.Open;
    Result:=TConverter.New.DataSet(QuerX).AsJSONArray.ToString;
  Finally
    QuerX.Free;
  End;
end;


end.
