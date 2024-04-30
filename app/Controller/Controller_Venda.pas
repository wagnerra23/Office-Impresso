unit Controller_Venda;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Winapi.Windows, Winapi.Messages,
  DataSet.Serialize, DataSet.Serialize.Export,
  DataSetConverter4D,
  DataSetConverter4D.Impl,
  DataSetConverter4D.Util,
  DataSetConverter4D.Helper, System.SysUtils, System.IOUtils;


function Controller_Venda_Sales(Message: string): string;
function Controller_Venda_SalesByCategory(Message: string): string;
function Controller_Venda_SalesByOrderDate(Message: string): string;

implementation

Uses UnitFuncoes;


function Controller_Venda_Sales(Message: string): string;
var
  startDate, endDate: string;
  ADateStart, ADateEnd: TDateTime;
  AFormatSettings: TFormatSettings;
  QuerX: TFDQuery;
  AFile: TFile;
  MensagemTratada: string;
begin
  Result := '';

  AFormatSettings := TFormatSettings.Create('');
  AFormatSettings := FormatSettings;
  AFormatSettings.ShortDateFormat := 'yyyy-mm-dd';
  AFormatSettings.dateseparator := '-';
  AFormatSettings.ShortTimeFormat := 'hh:nn:ss';
  AFormatSettings.TimeSeparator := ':';

  OutputDebugString(StringToOleStr(message));
  MensagemTratada := copy(message, pos('?"',message)+2, length(message));
  startDate := copy(MensagemTratada, pos('date1=',MensagemTratada)+6, pos('&', MensagemTratada)-7)+'T00:00:00';
  endDate := copy(MensagemTratada, pos('date2=',MensagemTratada)+6, length(MensagemTratada) - pos('date2=',MensagemTratada)-6)+'T00:00:00';
  QuerX := GeraFDQuery;
  try
    try
      TryStrToDateTime(startDate, ADateStart, AFormatSettings);
      TryStrToDateTime(endDate, ADateEnd, AFormatSettings);
      QuerX.Sql.text:=' Select CAST(sum(coalesce(vp.total_relatorio,0)) AS NUMERIC(15,2)) as "total", ' +
                      ' EXTRACT(year from v.dt_emissao) || ''-'' || LPAD(EXTRACT(Month from v.dt_emissao), 2, ''0'') || ''-'' || LPAD(EXTRACT(Day from v.dt_emissao), 2, ''0'') || ''T00:00:00'' as "date", ' +
//                      ' EXTRACT(year from v.dt_faturamento) || ''-'' || LPAD(EXTRACT(Month from v.dt_faturamento), 2, ''0'')  as "date", ' + //|| ''-'' || LPAD(EXTRACT(Day from v.dt_faturamento), 2, ''0'') || ''T00:00:00'' as "date", ' +
//                      ' EXTRACT(year from v.dt_faturamento) || ''-'' || LPAD(EXTRACT(Month from v.dt_faturamento), 2, ''0'') || ''-01T00:00:00'' as "date", ' +
                      ' coalesce(c.descricao, ''SEM DESCRICAO'') as "category" ' +
                      ' from venda_produto vp ' +
                      ' left join venda v on v.codigo = vp.codvenda '  +
                      ' left join produto p on p.codigo = vp.codproduto ' +
                      ' left join produto_categoria c on p.codproduto_categoria = c.codigo ' +
                      ' where v.dt_emissao between '+QuotedStr(FormatDateTime('MM/DD/YYYY', ADateStart)) +
                      ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', ADateEnd)) +
                      ' group by 2, 3  ' +
                      ' order by 2, 3 asc' ;

//      QuerX.ParamByName('startDate').DataType := ftDateTime;
//      QuerX.ParamByName('endDate').DataType := ftDateTime;
//      QuerX.ParamByName('startDate').AsDateTime := TDateTime(ADateStart);
//      QuerX.ParamByName('endDate').AsDateTime   := TDateTime(ADateEnd);
      QuerX.Prepare;
      QuerX.open;

  //    Res.Send<TFDQuery>(QuerX);
      Result:=TConverter.New.DataSet(QuerX).AsJSONArray.ToString;
      TFile.WriteAllText('C:\Eduardo\File.txt', Result);
    except
      Result := 'Erro';
    end;
  finally
    QuerX.Free;
  end;
end;

function Controller_Venda_SalesByCategory(Message: string): string;
var
  startDate, endDate: string;
  ADateStart, ADateEnd: TDateTime;
  AFormatSettings: TFormatSettings;
  MensagemTratada: string;
  QuerX: TFDQuery;
begin
  Result := '';

  AFormatSettings := TFormatSettings.Create('');
  AFormatSettings := FormatSettings;
  AFormatSettings.ShortDateFormat := 'yyyy-mm-dd';
  AFormatSettings.dateseparator := '-';
  AFormatSettings.ShortTimeFormat := 'hh:nn:ss';
  AFormatSettings.TimeSeparator := ':';

  OutputDebugString(StringToOleStr(message));
  MensagemTratada := copy(message, pos('?"',message)+2, length(message));
  startDate := copy(MensagemTratada, pos('date1=',MensagemTratada)+6, pos('&', MensagemTratada)-7)+' 00:00:00';
  endDate := copy(MensagemTratada, pos('date2=',MensagemTratada)+6, length(MensagemTratada) - pos('date2=',MensagemTratada)-6)+' 00:00:00';
  QuerX := GeraFDQuery;
  QuerX.Close;
  try
    try
      TryStrToDateTime(startDate, ADateStart, AFormatSettings);
      TryStrToDateTime(endDate, ADateEnd, AFormatSettings);
      QuerX.Sql.text:=' Select CAST(sum(coalesce(vp.total_relatorio,0)) AS NUMERIC(15,2)) as "value", ' +
                      ' coalesce(c.descricao, ''SEM NOME'') as "name" ' +
                      ' from venda_produto vp ' +
                      ' left join venda v on v.codigo = vp.codvenda '  +
                      ' left join produto p on p.codigo = vp.codproduto ' +
                      ' left join produto_categoria c on p.codproduto_categoria = c.codigo ' +
                      ' where v.dt_emissao between '+QuotedStr(FormatDateTime('MM/DD/YYYY', ADateStart)) +
                      ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY', ADateEnd)) +
                      ' group by 2  ' +
                      ' order by 2 asc' ;
      QuerX.Prepare;
      QuerX.open;
      Result:=TConverter.New.DataSet(QuerX).AsJSONArray.ToString;
    except
      Result := 'Erro';
    end;
  finally
    QuerX.Free;
  end;

end;

function Controller_Venda_SalesByOrderDate(Message: string): string;
var
  LBody: TJSONObject;
  Varr :String;
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  QuerX.Close;
  OutputDebugString(StringToOleStr(message));
  try
//    if Req.Params.Field('groupbyPeriod').AsString = 'month' then
      QuerX.Sql.text:=' select sum(coalesce(vp.total_relatorio,0)) AS NUMERIC(15,2)) as "total", ' +
                      ' EXTRACT(year from v.dt_emissao) || ''-'' || LPAD(EXTRACT(Month from v.dt_emissao), 2, ''0'') || ''-01T00:00:00'' as "date", ' +
                      ' c.descricao as "category" ' +
                      ' from venda_produto vp ' +
                      ' left join venda v on v.codigo = vp.codvenda '  +
                      ' left join produto p on p.codigo = vp.codproduto ' +
                      ' left join produto_categoria c on p.codproduto_categoria = c.codigo ' +
                      ' where v.dt_emissao is not null ' +
                      ' group by 2, 3  ' +
                      ' order by 2, 3 asc';
//    else
//      QuerX.Sql.text:=' select first 5 sum(vp.total_relatorio) as "total", ' +
//                      ' EXTRACT(year from v.dt_faturamento) || ''-'' || LPAD(EXTRACT(Month from v.dt_faturamento), 2, ''0'') || ''-'' || LPAD(EXTRACT(Day from v.dt_faturamento), 2, ''0'') || ''T00:00:00'' as "date", ' +
//                      ' c.descricao as "category" ' +
//                      ' from venda_produto vp ' +
//                      ' left join venda v on v.codigo = vp.codvenda '  +
//                      ' left join produto p on p.codigo = vp.codproduto ' +
//                      ' left join produto_categoria c on p.codproduto_categoria = c.codigo ' +
//                      ' where v.dt_faturamento is not null ' +
//                      ' group by 2, 3  ' +
//                      ' order by 2, 3 asc';
//    QuerX.open;
    Result:= '[{"teste":"Teste"}]';//TConverter.New.DataSet(QuerX).AsJSONArray.ToString;
//    Res.Send<TFDQuery>(QuerX);
  finally
    QuerX.Free;
  end;
end;

begin

end.
