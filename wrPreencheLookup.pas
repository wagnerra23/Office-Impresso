unit wrPreencheLookup;

interface

uses
  wrConversao, pcnConversaoNFe, cxDBLookupComboBox, System.Variants, ACBrBoletoConversao,
  cxDropDownEdit, wrFuncoes, cxImageComboBox, cxEdit, RTTI, TypInfo, SysUtils,
  ACBrNFSeXConversao, pcnConversao, ACBrNFSeXProviderBase, ACBrNFSeX, ACBrNFSeXInterface;

type
  TWREnumHelper<TEnum> = record
  private
    type
      TFuncConstVar = function(const AItem: TEnum): Variant;
      TFuncConstStr = function(const AItem: TEnum): string;
      TFuncConstInt = function(const AItem: TEnum): Integer;

    class procedure PreencheLookupVar(ALookupProps: TcxLookupComboBoxProperties; AFuncaoToStr: TFunc<TEnum, Variant>;
      AFuncaoToDescricao: TFunc<TEnum, string>); static;
  public
    class procedure PreencheLookupStr(ALookupProps: TcxLookupComboBoxProperties; AFuncaoToStr, AFuncaoToDescricao: TFunc<TEnum, string>); static;
    class procedure PreencheLookupInt(ALookupProps: TcxLookupComboBoxProperties; AFuncaoToStr: TFunc<TEnum, Integer>;
      AFuncaoToDescricao: TFunc<TEnum, string>); static;
    class procedure PreencheLookupStrConst(ALookupProps: TcxLookupComboBoxProperties; AFuncaoToStr,
      AFuncaoToDescricao: TFuncConstStr); static;
    class procedure PreencheLookupIntConst(ALookupProps: TcxLookupComboBoxProperties; AFuncaoToStr: TFuncConstInt;
      AFuncaoToDescricao: TFuncConstStr); static;
    class function EnumValue(const AValue: Integer): TEnum; static;
  end;

  procedure PreencheLookupBancoConvenio(ALookup: TcxCustomLookupComboBox);
  procedure PreencheLookupBoletosEmailTipoExibicaoDados(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupBoletosResponsavelEmissao(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupBoletosCaracTitulo(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupCSTICMST_CSOSN(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupDeterminacaoBaseIcms(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupDeterminacaoBaseIcmsST(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupFinalidadeNFe(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupModalidadeFrete(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupModalidadeFreteComPadrao(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupNFSeSimNao(ALookupProps: TcxLookupComboBoxProperties; AProvedor: IACBrNFSeXProvider);

  procedure PreencheLookupNFSeTributacao(ALookupProps: TcxLookupComboBoxProperties; AProvedor: IACBrNFSeXProvider);
  procedure PreencheLookupSituacaoTributacao(ALookupProps: TcxLookupComboBoxProperties; AProvedor: IACBrNFSeXProvider);
  procedure PreencheLookupSituacaoTrib(ALookupProps: TcxLookupComboBoxProperties; AProvedor: IACBrNFSeXProvider);


  procedure PreencheLookupNFSeMetodoEnvio(ALookupProps: TcxLookupComboBoxProperties);
  procedure PreencheLookupNotaFiscal(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupNotaFiscalModelo(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupOrigemMercadoria(ALookupProperties: TcxLookupComboBoxProperties);
//  procedure PreencheLookupPrioridade(ALookupProps: TcxLookupComboBoxProperties);
  procedure PreencheLookupProducaoMaterialTipoUso(ALookupProps: TcxLookupComboBoxProperties);
//  procedure PreencheLookupProdutoCustoAdicionalClassificacao(ALookupProps: TcxLookupComboBoxProperties);
//  procedure PreencheLookupProdutoCustoAdicionalContexto(ALookupProps: TcxLookupComboBoxProperties);
//  procedure PreencheLookupProdutoLocalMovimentoEstoque(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupRecursoTipo(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupRegimeEspecialTributacao(ALookupProperties: TcxLookupComboBoxProperties; AProvedor: IACBrNFSeXProvider);
  procedure PreencheLookupTipoBalancoAutomatico(ALookup: TcxLookupComboBoxProperties);
  procedure PreencheLookupTipoNFe(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupTipoTabelaPreco(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupTpcnISSQNcSitTrib(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupVendaComissaoModoCobranca(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupVendaSituacaoFinanceira(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupVendaTipoModelo(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupindISSRet(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupindIncentivo(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupSimNao(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheLookupImpostoPafEcf(ALookupProperties: TcxLookupComboBoxProperties);

  procedure PreencheLookuppcnindIEDest(ALookupProperties: TcxLookupComboBoxProperties);

  procedure PreencheComboEstado(AProperties: TcxComboBoxProperties);
  procedure PreencheComboTipoControleCaixa(AProperties: TcxComboBoxProperties);
  procedure PreencheComboProdutoTipoClassificacao(AProperties: TcxImageComboBoxProperties);
  procedure PreencheLookupNotaFiscalPossiveis(ALookupProperties: TcxLookupComboBoxProperties);
  procedure PreencheImageComboBoxProduto_TipoClassificacao(AImageComboBox: TcxCustomEditProperties);

//  procedure PreencheComboCustoExtra(AProperties: TcxComboBoxProperties);
//  procedure PreencheComboProdutoCustoAdicionalTipo(AProperties: TcxComboBoxProperties);
  procedure PreencheComboProdutoTipo_Desconto(AProperties: TcxComboBoxProperties);
  Procedure PreencheImageComboBoxACBrTipo(AImageComboBox: TcxCustomEditProperties);
  procedure PreencheLookupEquipesListaAtendimento(const ACombo: TcxLookupComboBoxProperties);
  procedure PreencheLookupPessoaTipo(const ACombo: TcxLookupComboBoxProperties);
  procedure PreencheLookupGradeModelo(const ACombo: TcxLookupComboBoxProperties);

implementation

class procedure TWREnumHelper<TEnum>.PreencheLookupInt(ALookupProps: TcxLookupComboBoxProperties; AFuncaoToStr: TFunc<TEnum, Integer>;
  AFuncaoToDescricao: TFunc<TEnum, string>);
begin
  PreencheLookupVar(ALookupProps,
    function(AEnum: TEnum): Variant
    begin
      Result := AFuncaoToStr(AEnum);
    end,
    AFuncaoToDescricao);
end;

class procedure TWREnumHelper<TEnum>.PreencheLookupIntConst(ALookupProps: TcxLookupComboBoxProperties;
  AFuncaoToStr: TFuncConstInt; AFuncaoToDescricao: TFuncConstStr);
begin
  PreencheLookupVar(ALookupProps,
    function(AEnum: TEnum): Variant
    begin
      Result := AFuncaoToStr(AEnum);
    end,
    function(AEnum: TEnum): string
    begin
      Result := AFuncaoToDescricao(AEnum);
    end);
end;

class procedure TWREnumHelper<TEnum>.PreencheLookupStrConst(ALookupProps: TcxLookupComboBoxProperties; AFuncaoToStr,
  AFuncaoToDescricao: TFuncConstStr);
begin
  PreencheLookupVar(ALookupProps,
    function(AEnum: TEnum): Variant
    begin
      Result := AFuncaoToStr(AEnum);
    end,
    function(AEnum: TEnum): string
    begin
      Result := AFuncaoToDescricao(AEnum);
    end);
end;

class procedure TWREnumHelper<TEnum>.PreencheLookupStr(ALookupProps: TcxLookupComboBoxProperties; AFuncaoToStr,
  AFuncaoToDescricao: TFunc<TEnum, string>);
begin
  PreencheLookupVar(ALookupProps,
    function(AEnum: TEnum): Variant
    begin
      Result := AFuncaoToStr(AEnum);
    end,
    AFuncaoToDescricao);
end;

class procedure TWREnumHelper<TEnum>.PreencheLookupVar(ALookupProps: TcxLookupComboBoxProperties;
  AFuncaoToStr: TFunc<TEnum, Variant>; AFuncaoToDescricao: TFunc<TEnum, string>);
var
  I: Integer;
  ATypeData: PTypeData;
  ACodigo: Variant;
  ADescricao: string;
begin
  ATypeData := GetTypeData(GetTypeData(PTypeInfo(TypeInfo(TEnum)))^.BaseType^);
  ALookupProps.BeginUpdate;
  try
    LookupCriarEstrutura(ALookupProps);
    for I := ATypeData.MinValue to ATypeData.MaxValue do
    begin
      ACodigo    := AFuncaoToStr(EnumValue(I));
      ADescricao := AFuncaoToDescricao(EnumValue(I));
      LookupAdicionaItem(ALookupProps, ACodigo, ADescricao);
    end;
  finally
    ALookupProps.EndUpdate(False);
  end;
end;

class function TWREnumHelper<TEnum>.EnumValue(const AValue: Integer): TEnum;
var
  typeInf: PTypeInfo;
begin
  typeInf := PTypeInfo(TypeInfo(TEnum));
  if typeInf^.Kind <> tkEnumeration then
    raise EInvalidCast.Create('Invalid TypeCast');

  case GetTypeData(typeInf)^.OrdType of
    otUByte, otSByte: PByte(@Result)^    := AValue;
    otUWord, otSWord: PWord(@Result)^    := AValue;
    otULong, otSLong: PInteger(@Result)^ := AValue;
  else
    raise EInvalidCast.Create('Invalid TypeCast');
  end;
end;

procedure PreencheLookupNFSeTributacao(ALookupProps: TcxLookupComboBoxProperties; AProvedor: IACBrNFSeXProvider);
var
  AItem : TTributacao;
begin
//  TWREnumHelper<TTributacao>.PreencheLookupStrConst(ALookupProps, AProvedor.TributacaoToStr, AProvedor.TributacaoDescricao);
  ALookupProps.BeginUpdate;
  try
    LookupCriarEstrutura(ALookupProps);
    for AItem := Low(AItem) to High(AItem) do
      LookupAdicionaItem(ALookupProps, AProvedor.TributacaoToStr(AItem), AProvedor.TributacaoDescricao(AItem));  // Deveria ter o provedor aqui
  finally
    ALookupProps.EndUpdate(False);
end;
end;

procedure PreencheLookupSituacaoTributacao(ALookupProps: TcxLookupComboBoxProperties; AProvedor: IACBrNFSeXProvider);
var
  AItem : TnfseSituacaoTributaria;
begin
//  TWREnumHelper<TnfseSituacaoTributaria>.PreencheLookupStrConst(ALookupProps, SituacaoTributariaToStr, SituacaoTributariaDescricao);
  ALookupProps.BeginUpdate;
  try
    LookupCriarEstrutura(ALookupProps);
    for AItem := Low(AItem) to High(AItem) do
      LookupAdicionaItem(ALookupProps, AProvedor.SituacaoTributariaToStr(AItem), AProvedor.SituacaoTributariaDescricao(AItem));  // Deveria ter o provedor aqui
  finally
    ALookupProps.EndUpdate(False);
  end;
end;

procedure PreencheLookupSituacaoTrib(ALookupProps: TcxLookupComboBoxProperties; AProvedor: IACBrNFSeXProvider);
var
  AItem : TSituacaoTrib;
begin
//  TWREnumHelper<TnfseSituacaoTributaria>.PreencheLookupStrConst(ALookupProps, SituacaoTributariaToStr, SituacaoTributariaDescricao);
  ALookupProps.BeginUpdate;
  try
    LookupCriarEstrutura(ALookupProps);
    for AItem := Low(AItem) to High(AItem) do
      LookupAdicionaItem(ALookupProps, AProvedor.SituacaoTribToStr(AItem), NFSeSituacaoTribDescricao(AItem));  // Deveria ter o provedor aqui
  finally
    ALookupProps.EndUpdate(False);
  end;
end;

procedure PreencheLookupNFSeSimNao(ALookupProps: TcxLookupComboBoxProperties; AProvedor: IACBrNFSeXProvider);
var
  AItem : TnfseSimNao;
begin
//  TWREnumHelper<TnfseSimNao>.PreencheLookupStrConst(ALookupProps, NFSeSimNaoToStr, NFSeSimNaoToDescricao);
  ALookupProps.BeginUpdate;
  try
    LookupCriarEstrutura(ALookupProps);
    for AItem := Low(AItem) to High(AItem) do
      LookupAdicionaItem(ALookupProps, AProvedor.SimNaoToStr(AItem), NFSeSimNaoToDescricao(AItem));     // Deveria ter o provedor aqui
  finally
    ALookupProps.EndUpdate(False);
  end;
end;

procedure PreencheLookupNFSeMetodoEnvio(ALookupProps: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TNFSeMetodoEnvio>.PreencheLookupStr(ALookupProps, NFSeMetodoEnvioToStr, NFSeMetodoEnvioToDescricao);
end;

//procedure PreencheLookupPrioridade(ALookupProps: TcxLookupComboBoxProperties);
//begin
//  TWREnumHelper<TPrioridade>.PreencheLookupInt(ALookupProps, PrioridadeToStr, PrioridadeToDescricao);
//end;

procedure PreencheLookupProducaoMaterialTipoUso(ALookupProps: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TProducaoMaterialTipoUso>.PreencheLookupStr(ALookupProps, ProducaoMaterialTipoUsoToStr, ProducaoMaterialTipoUsoToStr);
end;

procedure PreencheComboEstado(AProperties: TcxComboBoxProperties);
var
  AEstado: TEstado;
begin
  AProperties.BeginUpdate;
  try
    AProperties.Items.Clear;
    for AEstado := Low(TEstado) to High(TEstado) do
      AProperties.Items.AddObject(EstadoToDescricao(AEstado), TObject(AEstado));
  finally
    AProperties.EndUpdate(False);
  end;
end;

procedure PreencheComboTipoControleCaixa(AProperties: TcxComboBoxProperties);
var
  t: TTipoControleCaixa;
begin
  AProperties.BeginUpdate;
  try
    AProperties.Items.Clear;
    for t := Low(t) to High(t) do
      AProperties.Items.AddObject(TipoControleCaixaToDescricao(t), TObject(t));
  finally
    AProperties.EndUpdate(False);
  end;
end;

procedure PreencheComboProdutoTipoClassificacao(AProperties: TcxImageComboBoxProperties);
var
  AClassificacao: TProduto_TipoClassificacao;
  AItem: TcxImageComboBoxItem;
begin
  AProperties.BeginUpdate;
  try
    AProperties.Items.Clear;
    for AClassificacao := Low(TProduto_TipoClassificacao) to High(TProduto_TipoClassificacao) do
    begin
      AItem := AProperties.Items.Add;
      AItem.Value       := ProdutoTipoClassificacaoToStr(AClassificacao);
      AItem.Description := ProdutoTipoClassificacaoToDescricao(AClassificacao);
      AItem.ImageIndex  := ProdutoTipoClassificacaoToImgIndex(AClassificacao);
    end;
  finally
    AProperties.EndUpdate(False);
  end;
end;

Procedure PreencheLookupTipoNFe(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TpcnTipoNFe>.PreencheLookupStrConst(ALookupProperties, tpNFToStr, TipoNFeToDescricao);
end;

Procedure PreencheLookupTpcnISSQNcSitTrib(ALookupProperties: TcxLookupComboBoxProperties);
var
  AItem : TpcnISSQNcSitTrib;
begin
//  TWREnumHelper<TpcnISSQNcSitTrib>.PreencheLookupStrConst(ALookupProperties, tpNFToStr, ISSQNcSitTribToDescricao);
  ALookupProperties.BeginUpdate;
  try
    LookupCriarEstrutura(ALookupProperties);
    for AItem := Low(AItem) to High(AItem) do
      LookupAdicionaItem(ALookupProperties, Integer(AItem), ISSQNcSitTribToDescricao(AItem));
  finally
    ALookupProperties.EndUpdate(False);
  end;
end;

Procedure PreencheLookupDeterminacaoBaseIcmsST(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TpcnDeterminacaoBaseIcmsST>.PreencheLookupStrConst(ALookupProperties, modBCSTToStr, modBCSTToDescricao);
end;

Procedure PreencheLookupDeterminacaoBaseIcms(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TpcnDeterminacaoBaseIcms>.PreencheLookupStrConst(ALookupProperties, modBCToStr, modBCToDescricao);
end;

Procedure PreencheLookupRegimeEspecialTributacao(ALookupProperties: TcxLookupComboBoxProperties; AProvedor: IACBrNFSeXProvider);
var
  AItem : TnfseRegimeEspecialTributacao;
begin
//  TWREnumHelper<TnfseRegimeEspecialTributacao>.PreencheLookupStrConst(ALookupProperties, RegimeEspecialTributacaoToStr, nfseRegimeEspecialTributacaoDescricao);
  ALookupProperties.BeginUpdate;
  try
    LookupCriarEstrutura(ALookupProperties);
    for AItem := Low(AItem) to High(AItem) do
      LookupAdicionaItem(ALookupProperties, AProvedor.RegimeEspecialTributacaoToStr(AItem), AProvedor.RegimeEspecialTributacaoDescricao(AItem));
  finally
    ALookupProperties.EndUpdate(False);
  end;
end;

procedure PreencheLookupOrigemMercadoria(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TpcnOrigemMercadoria>.PreencheLookupStrConst(ALookupProperties, OrigToStr, OrigemMercadoriaToDescricao);
end;

procedure PreencheLookupindISSRet(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TpcnindISSRet>.PreencheLookupStrConst(ALookupProperties, indISSRetToStr, ISSRetidoToDescricao);
end;

Procedure PreencheLookupindIncentivo(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TpcnindIncentivo>.PreencheLookupStrConst(ALookupProperties, indIncentivoToStr, IndIncentivoToDescricao);
end;

procedure PreencheLookupSimNao(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TwrSimNao>.PreencheLookupStr(ALookupProperties, wrSimNaoToStr, wrSimNaoToDescricao);
end;

procedure PreencheLookupImpostoPafEcf(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TImpostoPafEcf>.PreencheLookupStr(ALookupProperties, ImpostoPafEcfToStr, ImpostoPafEcfToDescricao);
end;

Procedure PreencheLookupModalidadeFrete(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TpcnModalidadeFrete>.PreencheLookupStrConst(ALookupProperties, modFreteToStr, ModFreteToDescricao);
end;

Procedure PreencheLookupModalidadeFreteComPadrao(ALookupProperties: TcxLookupComboBoxProperties);
var
  AItem: TpcnModalidadeFrete;
begin
  ALookupProperties.BeginUpdate;
  try
    LookupCriarEstrutura(ALookupProperties);
    LookupAdicionaItem(ALookupProperties, Null, '<Padrão>');
    for AItem := Low(TpcnModalidadeFrete) to High(TpcnModalidadeFrete) do
      LookupAdicionaItem(ALookupProperties, modFreteToStr(AItem), ModFreteToDescricao(AItem));
  finally
    ALookupProperties.EndUpdate(False);
  end;
end;

procedure PreencheLookupFinalidadeNFe(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TpcnFinalidadeNFe>.PreencheLookupStrConst(ALookupProperties, FinNFeToStr, FinalidadeNFeToDescricao);
end;

procedure PreencheLookupNotaFiscal(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TNotaFiscalTipoRegistro>.PreencheLookupStr(ALookupProperties, NotaFiscalTipoRegistroToStr, NotaFiscalTipoRegistroToDescricao);
end;

procedure PreencheLookupNotaFiscalModelo(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TNotaFiscalModelo>.PreencheLookupStr(ALookupProperties, NotaFiscalModeloToStr, NotaFiscalModeloToDescricao);
end;

procedure PreencheLookupVendaSituacaoFinanceira(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TVendaSituacaoFinanceira>.PreencheLookupStr(ALookupProperties, VendaSituacaoFinanceiraToStr, VendaSituacaoFinanceiraToDescricao);
end;

procedure PreencheLookupVendaComissaoModoCobranca(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TVendaComissaoModoCobranca>.PreencheLookupStr(ALookupProperties, VendaComissaoModoCobrancaToStr, VendaComissaoModoCobrancaToDescricao);
end;

procedure PreencheLookupVendaTipoModelo(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TVendaTipoModelo>.PreencheLookupStr(ALookupProperties, VendaTipoModeloToStr, VendaTipoModeloToDescricao);
end;

procedure PreencheLookupTipoTabelaPreco(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TTipoTabelaPreco>.PreencheLookupStr(ALookupProperties, TipoTabelaPrecoToStr, TipoTabelaPrecoToDescricao);
end;

procedure PreencheLookupCSTICMST_CSOSN(ALookupProperties: TcxLookupComboBoxProperties);
var
  AItem: TpcnCSTIcms;
  AItem2: TpcnCSOSNIcms;
begin
  ALookupProperties.BeginUpdate;
  try
    LookupCriarEstrutura(ALookupProperties);
    for AItem2 := Low(TpcnCSOSNIcms) to High(TpcnCSOSNIcms) do
      LookupAdicionaItem(ALookupProperties, CSOSNIcmsToStr(AItem2), CSOSNToStrTagPosText(AItem2));
    for AItem := Low(TpcnCSTIcms) to High(TpcnCSTIcms) do
      LookupAdicionaItem(ALookupProperties, CSTICMSToStr(AItem), CSTICMSToStrTagPosText(AItem));
  finally
    ALookupProperties.EndUpdate(False);
  end;
end;

procedure PreencheLookupRecursoTipo(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TRecursoTipo>.PreencheLookupStr(ALookupProperties, RecursoTipoToStr, RecursoTipoToDescricao);
end;

//procedure PreencheLookupProdutoLocalMovimentoEstoque(ALookupProperties: TcxLookupComboBoxProperties);
//begin
//  TWREnumHelper<TProdutoLocalMovimentoEstoque>.PreencheLookupStr(ALookupProperties, ProdutoLocalMovimentoEstoqueToStr, ProdutoLocalMovimentoEstoqueToDescricao);
//end;

procedure PreencheLookupBoletosEmailTipoExibicaoDados(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TBoletosEmailTipoExibicaoDados>.PreencheLookupStr(ALookupProperties, BoletosEmailTipoExibicaoDadosToStr, BoletosEmailTipoExibicaoDadosToDescricao);
end;

procedure PreencheLookupBoletosResponsavelEmissao(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TACBrResponEmissao>.PreencheLookupStrConst(ALookupProperties, ResponEmissaoToStr, ResponEmissaoToDescricao);
end;

procedure PreencheLookupBoletosCaracTitulo(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TACBrCaracTitulo>.PreencheLookupStrConst(ALookupProperties, CaracTituloToStr, CaracTituloToDescricao);
end;

procedure PreencheLookupBancoConvenio(ALookup: TcxCustomLookupComboBox);
begin
  TWREnumHelper<TBancoConvenio>.PreencheLookupVar(ALookup.Properties, BancoConvenioToStr, BancoConvenioToDescricao);
end;

procedure PreencheLookupTipoBalancoAutomatico(ALookup: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TTipoBalancoAutomatico>.PreencheLookupStr(ALookup, TipoBalancoAutomaticoToStr, TipoBalancoAutomaticoToDescricao);
end;

procedure PreencheLookupNotaFiscalPossiveis(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TNotaFiscalTipoPossiveis>.PreencheLookupStr(ALookupProperties, NotaFiscalTipoPossiveisToStr, NotaFiscalTipoPossiveisToDescricao);
end;

procedure PreencheImageComboBoxProduto_TipoClassificacao(AImageComboBox: TcxCustomEditProperties);
var
  t: TProduto_TipoClassificacao;
  Items: TcxImageComboBoxItems;
  Item: TcxImageComboBoxItem;
begin
  Items := TcximageComboBoxProperties(AImageComboBox).Items;
  Items.BeginUpdate;
  try
    Items.Clear;
    for t := Low(t) to High(t) do
    begin
      Item := Items.Add as TcxImageComboBoxItem;
      Item.Value := Produto_TipoClassificacaoToStr(t);
      Item.Description := Produto_TipoClassificacaoDescricao(t);
      Item.ImageIndex := integer(t);
    end;
  finally
    Items.EndUpdate;
  end;
end;
      {
procedure PreencheComboCustoExtra(AProperties: TcxComboBoxProperties);
var
  t: TProdutoCustoExtra;
begin
  AProperties.BeginUpdate;
  try
    AProperties.Items.Clear;
    for t := Low(TProdutoCustoExtra) to High(TProdutoCustoExtra) do
      AProperties.Items.AddObject(ProdutoCustoExtraToDescricao(t), TObject(t));
  finally
    AProperties.EndUpdate(False);
  end;
end;

procedure PreencheComboProdutoCustoAdicionalTipo(AProperties: TcxComboBoxProperties);
var
  t: TProdutoCustoAdicionalTipo;
begin
  AProperties.BeginUpdate;
  try
    AProperties.Items.Clear;
    for t := Low(TProdutoCustoAdicionalTipo) to High(TProdutoCustoAdicionalTipo) do
      AProperties.Items.AddObject(ProdutoCustoAdicionalTipoToDescricao(t), TObject(t));
    TcxComboBox(AProperties.Owner).Hint      := ProdutoCustoAdicionalTipoToHintCompleto;
    TcxComboBox(AProperties.Owner).ShowHint  := True;
  finally
    AProperties.EndUpdate(False);
  end;
end;      }

procedure PreencheComboProdutoTipo_Desconto(AProperties: TcxComboBoxProperties);
var
  t: TProdutoTipo_Desconto;
begin
  AProperties.BeginUpdate;
  try
    AProperties.Items.Clear;
    for t := Low(TProdutoTipo_Desconto) to High(TProdutoTipo_Desconto) do
      AProperties.Items.AddObject(ProdutoTipo_DescontoToDescricao(t), TObject(t));
  finally
    AProperties.EndUpdate(False);
  end;
end;

procedure PreencheLookupEquipesListaAtendimento(const ACombo: TcxLookupComboBoxProperties);
begin
  LookupCriaComSQL(ACombo, 'select CODIGO, DESCRICAO ' +
                           'from CENTRO_TRABALHO ' +
                           'where (ATIVO = ''S'') ' +
                           'order by DESCRICAO asc', [], 'CENTRO_TRABALHO');
end;

Procedure PreencheLookuppcnindIEDest(ALookupProperties: TcxLookupComboBoxProperties);
begin
  TWREnumHelper<TpcnindIEDest>.PreencheLookupStrConst(ALookupProperties, indIEDestToStr, indIEDestToDescricao);
end;

Procedure PreencheImageComboBoxACBrTipo(AImageComboBox: TcxCustomEditProperties);
var
  t: TWRACBrTipoItem;
  Items: TcxImageComboBoxItems;
  Item: TcxImageComboBoxItem;
begin
//  TWREnumHelper<TACBrTipoItem>.PreencheLookupStrConst(AImageComboBox, ACBrTipoItemToStr, ACBrTipoItemToDescricao);
  Items := TcximageComboBoxProperties(AImageComboBox).Items;
  Items.BeginUpdate;
  try
    Items.Clear;
    for t := Low(t) to High(t) do
    begin
      Item := Items.Add as TcxImageComboBoxItem;
      Item.Value := ACBrTipoItemToStr(t);
      Item.Description := ACBrTipoItemToDescricao(t);
      Item.ImageIndex := integer(t);
    end;
  finally
    Items.EndUpdate;
  end;
end;

procedure PreencheLookupPessoaTipo(const ACombo: TcxLookupComboBoxProperties);
begin
  LookupCriaComSQL(ACombo, 'select CODIGO, DESCRICAO ' +
                           'from PESSOAS_TIPO ' +
                           'where (ATIVO = ''S'') ' +
                           'order by DESCRICAO asc', [], 'PESSOAS_TIPO');
end;

procedure PreencheLookupGradeModelo(const ACombo: TcxLookupComboBoxProperties);
begin
//  LookupCriaComSQL(ACombo, 'select PGM.CODIGO, PGM.DESCRICAO || '' -'' || (SELECT LIST('' '' || PGMI.DESCRICAO || '' '', ''/'') ' +
//                           '         FROM PRODUTO_GRADE_MODELO_ITEM PGMI ' +
//                           '         WHERE PGMI.codproduto_grade_modelo = PGM.codigo ' +
//                           '         GROUP BY PGMI.CODPRODUTO_GRADE_MODELO) AS DESCRICAO ' +
//                           ' from PRODUTO_GRADE_MODELO PGM ' +
//                           ' where (ATIVO = ''S'') ' +
//                           ' order by DESCRICAO asc', [], 'PRODUTO_GRADE_MODELO');
  LookupCriaComSQL(ACombo, 'select PGM.CODIGO, PGM.DESCRICAO ' +
                           ' from PRODUTO_GRADE_MODELO PGM ' +
                           ' where (ATIVO = ''S'') ' +
                           ' order by DESCRICAO asc', [], 'PRODUTO_GRADE_MODELO');
end;



end.
