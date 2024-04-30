unit Controller.Produto.Variacao;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
      FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
      FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
      Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, Frame_CadProduto_Mestre,
      Classes;

  function AtualizaProdutosVinculados(AListaCodigosAlterados: TStringList; Cadastro, AProduto_Preco: TDataSet): Boolean;
  function AdicionaProdutoNaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto, AProduto_Preco: TDataset): Boolean;
  function AdicionaTodosOsProdutosNaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto, AProduto_Preco: TDataset): Boolean;
  function RemoveProdutoDaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto_Preco: TDataset): Boolean;

implementation

Uses UnitFuncoes, Services.Produto.Variacao, Utils.Produto.Variacao;

function AtualizaProdutosVinculados(AListaCodigosAlterados: TStringList; Cadastro, AProduto_Preco: TDataSet): Boolean;
var
  AIndex: integer;
  AFrmProduto_Frame: TFrame_Produto_Mestre;
begin
  try
    if Assigned(AListaCodigosAlterados) and
       (AListaCodigosAlterados.Count > 0) then
    begin
      if (AFrmProduto_Frame = nil) then
      begin
        AFrmProduto_Frame :=  TFrame_Produto_Mestre.Create(nil);
        AFrmProduto_Frame.FrameEnter(AFrmProduto_Frame);
      end;
      try
        AProduto_Preco.First;
        while not AProduto_Preco.eof do
        begin
          if AListaCodigosAlterados.Find(AProduto_Preco.FieldByName('CODPRODUTO_VINCULADO').AsString, AIndex) then
            ServiceProdutoVariacao_CriaOuAlteraProdutoVariavelVinculado(TFDQuery(Cadastro).Transaction,
                                                AFrmProduto_Frame,
                                                AProduto_Preco,
                                                Cadastro.FieldByName('DESCRICAO').AsString,
                                                Cadastro.FieldByName('TEM_FILHO_PRECO_INDIVIDUAL').AsString <> 'S',
                                                Cadastro.FieldByName('TEM_FILHO_DESCRICAO_INDIVIDUAL').AsString <> 'S');

          AProduto_Preco.Next;
        end;
        AListaCodigosAlterados.Clear;
      finally
        AFrmProduto_Frame.Free;
      end;
    end;
    Result := True;
  except
    on E:EWRException do
    begin
      Result := False;
      raise E;
    end;
  end;
end;

function AdicionaProdutoNaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto, AProduto_Preco: TDataset): Boolean;
begin
  try
    if AProduto.FieldByName('VARIACAO_TIPO').AsString <> 'Cor e Tamanho' then
      raise EWRException.Create('Não roda');

    Utils.Produto.Variacao.AdicionaProdutoNaListaDeAlteracao(AListaDeAlteracao, AProduto_Preco);
    Result := True;
  except
    on E:EWRException do
    begin
      Result := False;
      raise E;
    end;
  end;
end;

function AdicionaTodosOsProdutosNaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto, AProduto_Preco: TDataset): Boolean;
begin
  if AProduto.FieldByName('VARIACAO_TIPO').AsString <> 'Cor e Tamanho' then
    raise EWRException.Create('Não roda');

  try
    Utils.Produto.Variacao.AdicionaTodosOsProdutosNaListaDeAlteracao(AListaDeAlteracao, AProduto_Preco);
    Result := True;
  except
    on E:EWRException do
      Result := False;
  end;
end;

function RemoveProdutoDaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto_Preco: TDataset): Boolean;
begin
  try
    Utils.Produto.Variacao.RemoveProdutoDaListaDeAlteracao(AListaDeAlteracao, AProduto_Preco);
    Result := True;
  except
    on E:EWRException do
    begin
      Result := False;
      raise E;
    end;
  end;
end;



end.
