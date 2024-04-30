unit Services.Produto.Variacao;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Frame_CadProduto_Mestre, Classes;

  procedure ServiceProdutoVariacao_CriaOuAlteraProdutoVariavelVinculado(ATransaction: TFDCustomTransaction; AFrmProduto_Frame: TFrame_Produto_Mestre; AProduto_Preco: TDataSet; ADescricao: string; AAlteraValor, AAlteraDescricao: Boolean);
  procedure ServiceProdutoVariacao_AtualizaValoresPelaVariacaoPai(AProduto_Preco: TFDQuery; AValor: Double);
  procedure ServiceProdutoVariacao_AtualizaDescontoDoFilhoPeloNovoValor(AProduto_PrecoFilho: TFDQuery; AValor: Double);

implementation

Uses UnitFuncoes, Utils.Produto;

procedure ServiceProdutoVariacao_CriaOuAlteraProdutoVariavelVinculado(ATransaction: TFDCustomTransaction; AFrmProduto_Frame: TFrame_Produto_Mestre; AProduto_Preco: TDataSet; ADescricao: string; AAlteraValor, AAlteraDescricao: Boolean);
var
  AProdutoFrame: TFrame_Produto_Mestre;
begin
  try
    with AFrmProduto_Frame do
    begin
      TransaFD := TFDTransaction(ATransaction);
      Cadastro.Transaction := ATransaction;
      if AProduto_Preco.FieldByName('CODPRODUTO_VINCULADO').AsString <> '' then
      begin
//        Cadastro.Close;
//        Cadastro.ParamByName('CODIGO').AsString := AProduto_Preco.FieldByName('CODPRODUTO_VINCULADO').AsString;
//        Cadastro.Open;
        CloseOpen_AbrirRegistro(AProduto_Preco.FieldByName('CODPRODUTO_VINCULADO').AsString);
        Cadastro.Edit;
      end
      else
        btnNovo.Click;

      if AAlteraDescricao then
      begin
        if Cadastro.FieldByName('DESCRICAO').AsString <> (ADescricao + ' - ' + AProduto_Preco.FieldByName('REFERENCIA').AsString) then
          UCHist_Cadastro.MensagemHistorico.Add('DESCRIÇÃO alterada para ' + ADescricao + ' - ' + AProduto_Preco.FieldByName('REFERENCIA').AsString +
                                        ' pelo produto Variação PAI cód. ' +
                                        AProduto_Preco.FieldByName('CODPRODUTO').AsString +
                                        '('+ADescricao+'), pois as variações filhas não estavam marcadas como DESCRIÇÃO INDIVIDUAL.');

        Cadastro.FieldByName('DESCRICAO').AsString  := ADescricao + ' - ' + AProduto_Preco.FieldByName('REFERENCIA').AsString;

  //      Cadastro.FieldByName('CODFABRICA').AsString := AProduto_Preco.FieldByName('SKU').AsString;
  //      Cadastro.FieldByName('CODIGOEAN').AsString  := AProduto_Preco.FieldByName('SKU').AsString;
      end;

      if AAlteraValor then
      begin
        if Cadastro.FieldByName('VALOR').AsFloat <> AProduto_Preco.FieldByName('VALOR').AsFloat then
          UCHist_Cadastro.MensagemHistorico.Add('VALOR alterado para ' + AProduto_Preco.FieldByName('VALOR').AsString +
                                        ' pelo produto Variação PAI cód. ' +
                                        AProduto_Preco.FieldByName('CODPRODUTO').AsString +
                                        '('+ADescricao+'), pois as variações filhas não estavam marcadas como VALOR INDIVIDUAL.');

        Cadastro.FieldByName('VALOR').AsFloat := AProduto_Preco.FieldByName('VALOR').AsFloat;
      end;
      cbxCodProduto_Tipo.ItemIndex := 0;
      AProduto_Preco.Edit;
      AProduto_Preco.FieldByName('CODPRODUTO_VINCULADO').AsString := Cadastro.FieldByName('CODIGO').AsString;
      AProduto_Preco.Post;
      Cadastro.FieldByName('DT_ALTERACAO').AsDateTime := DataHoraSys;
      Cadastro.Post;
    end;
  except
    raise EWRException.Create('WRError: Erro ao criar ou alterar produto variável vinculado.');
  end;
end;

procedure ServiceProdutoVariacao_AtualizaValoresPelaVariacaoPai(AProduto_Preco: TFDQuery; AValor: Double);
begin
  try
    AProduto_Preco.First;                 // Aqui devem chegar os filhos
    while not AProduto_Preco.eof do
    begin
      AProduto_Preco.Edit;
      AProduto_Preco.FieldByName('Valor').AsFloat := AValor * AProduto_Preco.FieldByName('PORCENTAGEM').AsFloat/100;
      AProduto_Preco.Post;
      AProduto_Preco.Next;
    end;
  except
    raise EWRException.Create('WRError: Erro ao atualizar valores pela Variação Pai.');
  end;
end;

procedure ServiceProdutoVariacao_AtualizaDescontoDoFilhoPeloNovoValor(AProduto_PrecoFilho: TFDQuery; AValor: Double);
var
  AValorPai: Double;
begin
  try
    AProduto_PrecoFilho.First;                 // Aqui devem chegar os filhos
    while not AProduto_PrecoFilho.eof do
    begin
      AValorPai := SQLProduto_BuscaValorDaVariacaoPai(AProduto_PrecoFilho.FieldByName('CODPRODUTO').AsString);
      AProduto_PrecoFilho.Edit;
      AProduto_PrecoFilho.FieldByName('PORCENTAGEM').AsFloat := ((AValorPai - AValor) / AValorPai)*100;
      AProduto_PrecoFilho.Post;
      AProduto_PrecoFilho.Next;
    end;
  except
    raise EWRException.Create('WRError: Erro ao atualizar desconto do filho pelo Novo Valor do filho.');
  end;
end;

end.
