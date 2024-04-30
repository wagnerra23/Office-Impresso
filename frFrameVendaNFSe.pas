unit frFrameVendaNFSe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrFrameMestre, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  uWRFormataCamposDataSet, uWRFrameEventos, Data.DB, cxClasses,
  dxLayoutLookAndFeels, UCBase, System.ImageList, Vcl.ImgList,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxTextEdit,
  cxCheckBox, cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtonEdit, cxLabel, cxMaskEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxCurrencyEdit, cxMemo, Vcl.ExtCtrls,  NFSe, uWRCalculaConfiguracoes,
  uWRNotaFiscal, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  StrUtils, dxScrollbarAnnotations, Frame_CadVenda_Mestre, dxSkinsCore,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrameVendaNFSe = class(TFrmFrameMestre)
    edtNfDadosAdicionaisÎNF_DadosAdicionaisÎDESCRICAO: TLabel;
    edtNF_Observacao_Servico: TcxDBMemo;
    edtNF_Valor_ISS: TcxDBCurrencyEdit;
    edtNF_Valor_ISS_BC: TcxDBCurrencyEdit;
    edtNF_Valor_ISS_Retido: TcxDBCurrencyEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBTableView2TIPO: TcxGridDBColumn;
    cxGridDBTableView2NF_NUMERO: TcxGridDBColumn;
    cxGridDBTableView2NF_SITUACAO: TcxGridDBColumn;
    cxGridDBTableView2CODVENDA: TcxGridDBColumn;
    cxGridDBTableView2NF_RAZAO_SOCIAL: TcxGridDBColumn;
    cxGridDBTableView2NF_DT_EMISSAO: TcxGridDBColumn;
    cxGridDBTableView2NF_PROTOCOLO: TcxGridDBColumn;
    cxGridDBTableView2NF_CHAVE: TcxGridDBColumn;
    cxGridDBTableView2NF_TIPO: TcxGridDBColumn;
    cxGridDBTableView2NF_NATUREZA_OPERACAO: TcxGridDBColumn;
    cxGridDBTableView2AMBIENTE: TcxGridDBColumn;
    cxGridDBTableView2NF_PROTOCOLO_CANCELAMENTO: TcxGridDBColumn;
    cxGridDBTableView2NF_DT_CANCELAMENTO: TcxGridDBColumn;
    cxGridDBTableView2MOTIVO_CANCELAMENTO: TcxGridDBColumn;
    cxGridDBTableView2NF_STATUS: TcxGridDBColumn;
    cxGridDBTableView2NF_MOTIVO_STATUS: TcxGridDBColumn;
    cxGridDBTableView2CodEmpresa: TcxGridDBColumn;
    cxGridDBTableView2NF_SEQUENCIA_EVENTO: TcxGridDBColumn;
    cxGridDBTableView2NF_DIGEST_VALUE: TcxGridDBColumn;
    cxGridDBTableView2STATUS: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    edtNaturezaOperacaoÎNF_Natureza_Operacao: TcxDBButtonEdit;
    lblNaturezaOperacaoÎNF_Natureza_OperacaoÎDESCRICAO: TcxLabel;
    edtNfDadosAdicionaisÎNF_DadosAdicionais: TcxButtonEdit;
    btnNFSeAdicionarObs: TcxButton;
    edtRegimeEspecialÎNF_Regime_Especial_Tributacao: TcxDBButtonEdit;
    edtListaServicoÎNF_NCM: TcxDBButtonEdit;
    edtListaServicoÎNF_NCMÎDESCRICAO: TcxLabel;
    edtNF_VALOR_ISS_ALIQ: TcxDBCurrencyEdit;
    edtListaServicoÎNF_NCMÎCNAE: TcxDBTextEdit;
    edtListaServicoÎNF_NCMÎCTRIBUTACAO_MUNICIPIO: TcxDBTextEdit;
    cbxServico_ISS_Retido: TcxDBLookupComboBox;
    cbxServico_Incentivador_Cultural: TcxDBLookupComboBox;
    edtISSQN_CMUNFG: TcxDBCurrencyEdit;
    edtServico_CodPais: TcxDBCurrencyEdit;
    edtRegimeEspecialÎNF_Regime_Especial_TributacaoÎDESCRICAO: TcxLabel;
    BtnConfigurarNFSe: TcxButton;
    btnNFSe: TcxButton;
    chkServico_Nota_Padrao: TcxDBCheckBox;
    cbxNF_Tributacao: TcxDBLookupComboBox;
    btnCarregarPadrao: TcxButton;
    chkNao_Deduz_ISS_Retido_Total_Nota: TcxDBCheckBox;
    edtMunIncidenciaÎCidades: TcxDBButtonEdit;
    cbxNFSeSituacaoTributacao: TcxDBLookupComboBox;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    TabNFSe: TdxLayoutGroup;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    liedtListaServicoÎNF_NCM: TdxLayoutItem;
    liedtListaServicoÎNF_NCMÎDESCRICAO: TdxLayoutItem;
    liedtListaServicoÎNF_NCMÎALIQ_ISS: TdxLayoutItem;
    liedtListaServicoÎNF_NCMÎCTRIBUTACAO_MUNICIPIO: TdxLayoutItem;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    liedtNfDadosAdicionaisÎNF_DadosAdicionais: TdxLayoutItem;
    liedtNfDadosAdicionaisÎNF_DadosAdicionaisÎDESCRICAO: TdxLayoutItem;
    libtnNFSeAdicionarObs: TdxLayoutItem;
    liedtNF_Observacao_Servico: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    dxLayoutItem30: TdxLayoutItem;
    libtnCarregarPadrao: TdxLayoutItem;
    liBtnConfigurarNFSe: TdxLayoutItem;
    libtnNFSe: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    liedtMunIncidenciaÎCidades: TdxLayoutItem;
    liedtISSQN_CMUNFG: TdxLayoutItem;
    liedtServico_CodPais: TdxLayoutItem;
    dxLayoutAutoCreatedGroup28: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    licbxNF_Tributacao: TdxLayoutItem;
    licbxServico_Incentivador_Cultural: TdxLayoutItem;
    liedtNF_Valor_ISS_BC: TdxLayoutItem;
    liedtNF_Valor_ISS: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    liedtRegimeEspecialÎNF_Regime_Especial_Tributacao: TdxLayoutItem;
    liedtRegimeEspecialÎNF_Regime_Especial_TributacaoÎDESCRICAO: TdxLayoutItem;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    liedtNaturezaOperacaoÎNF_Natureza_Operacao: TdxLayoutItem;
    lilblNaturezaOperacaoÎNF_Natureza_OperacaoÎDESCRICAO: TdxLayoutItem;
    liedtListaServicoÎNF_NCMÎCNAE: TdxLayoutItem;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    licbxServico_ISS_Retido: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    lichkNao_Deduz_ISS_Retido_Total_Nota: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    PopupMenuNFe: TPopupMenu;
    ConsultarLote1: TMenuItem;
    Consultarpor1: TMenuItem;
    ConsultaNFSePeloNumero1: TMenuItem;
    ConsultarNFSepeloRPS1: TMenuItem;
    ConsultaNFSeSituao1: TMenuItem;
    Substituir1: TMenuItem;
    VisualizarDANFSe1: TMenuItem;
    VizualizarXML2: TMenuItem;
    N8: TMenuItem;
    S1: TMenuItem;
    ExportarXML2: TMenuItem;
    DeletarNFSe: TMenuItem;
    MenuItem1: TMenuItem;
    CancelamentodaNFe2: TMenuItem;
    CartadeCorreo2: TMenuItem;
    MenuItem2: TMenuItem;
    EnviarEmail1: TMenuItem;
    wrNotaFiscal: TwrNotaFiscal;
    NotaFiscal: TFDQuery;
    DSNotaFiscal: TDataSource;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    cxGridDBTableView2Eventos: TcxGridDBColumn;
    NotaFiscalEventos: TFDQuery;
    cxGridDBTableView2Visualizar: TcxGridDBColumn;
    cxGridDBTableView2Xml: TcxGridDBColumn;
    cxGridDBTableView2xmlRetorno: TcxGridDBColumn;
    procedure btnNFSeAdicionarObsClick(Sender: TObject);
    procedure VisualizarDANFSe1Click(Sender: TObject);
    procedure ConsultarLote1Click(Sender: TObject);
    procedure Substituir1Click(Sender: TObject);
    procedure ConsultaNFSePeloNumero1Click(Sender: TObject);
    procedure ConsultarNFSepeloRPS1Click(Sender: TObject);
    procedure ConsultaNFSeSituao1Click(Sender: TObject);
    procedure VizualizarXML2Click(Sender: TObject);
    procedure DeletarNFSeClick(Sender: TObject);
    procedure CancelamentodaNFe2Click(Sender: TObject);
    procedure PopupMenuNFePopup(Sender: TObject);
    procedure cbxNFSeSituacaoTributacaoPropertiesChange(Sender: TObject);
    procedure cbxServico_ISS_RetidoExit(Sender: TObject);
    procedure BtnConfigurarNFSeClick(Sender: TObject);
    procedure btnCarregarPadraoClick(Sender: TObject);
    procedure btnNFSeClick(Sender: TObject);
    procedure wrFrameEventosInicializar(Sender: TObject);
    procedure cxGridDBTableView4Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBTableView2VisualizarPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBTableView4CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView2XmlPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBTableView2xmlRetornoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbxServico_ISS_RetidoPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    FFrmNFSe : TFrmNFSe;
    FFrameVenda: TFrame_Venda_Mestre;
    { Public declarations }
    class procedure CarregaFrameNota(var AFrame: TFrmFrameMestre; AParent: TWinControl; ADataSource: TDataSource;
      AwrNotaFiscal: TwrNotaFiscal);
  end;

var
  FrameVendaNFSe: TFrameVendaNFSe;

implementation

{$R *.dfm}

Uses  UnitFuncoes, Classes.WR, wrFuncoes, CadEmpresa, VendaTipoSelecao, wrPreencheLookup,
  NFe_Status, wrConversao, pcnConversao, CadNotaFiscal, ACBrNFSeXConversao, FrmNFeventos, DateUtils;

class procedure TFrameVendaNFSe.CarregaFrameNota(var AFrame: TFrmFrameMestre; AParent: TWinControl;
  ADataSource: TDataSource; AwrNotaFiscal: TwrNotaFiscal);
begin
  if Pointer(AFrame) = nil then
  begin
    AFrame := Self.Create(AParent, ADataSource);
    TFrameVendaNFSe(AFrame).wrNotaFiscal:= AwrNotaFiscal;
//    TFrameVendaNFSe(AFrame).wrNotaFiscal.NF_Provedor := TFrameVendaNFSe(AFrame).NF_Provedor;
    TFrameVendaNFSe(AFrame).wrFrameEventos.DoOnInicializar;
  end;
end;

procedure TFrameVendaNFSe.btnCarregarPadraoClick(Sender: TObject);
begin
  inherited;
  if not DS.AutoEdit then   // Regra não pode ser burlada
  begin
    ShowMessageWR('Não pode alterar esse registro.');
    Abort;
  end;
  ds.DataSet.Edit;
  TFrmNFSe.CarregarConfiguracoesPadrao(ds.DataSet);


  wrNotaFiscal.WRCalc.SuperCalc;
  wrNotaFiscal.WRCalc.RecalcularTodosOsProdutos;

  // Não está no StateChange, tem que estar enable

  TFrmNFSe.CarregarObservacaoServicoPadrao(ds.DataSet, wrNotaFiscal.VendaFinanceiro);
  ds.DataSet.FieldByName('SERVICO_NOTA_PADRAO').AsString := 'N'; // Erro por não estar em edição
  // Parece que isso aqui ta no envento errado
  //ds.DataSet.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat  := Empresa.FieldByName('NFSe_ALIQ_ISS').AsFloat;      accho que tava errado aui, mudei lá pra cima

end;

procedure TFrameVendaNFSe.BtnConfigurarNFSeClick(Sender: TObject);
begin
  inherited;
  TFrmNFSe.Abrir;
  FFrmNFSe.ConfiguraACBrNFSe(wrNotaFiscal);
  //Por enquanto os dados carregados no AtualizaParametrosNFSe não precisam ser atualizados ao fechar a tela de
  //configurações da NFSe pois eles não são configuráveis (ex: Provedor)
  //Quando houver parâmetros configuráveis nesta rotina, habilitar a linha abaixo
  //AtualizaParametrosNFSe;   Sempre antes de imprimir ele tem que pegar os dados, aqui nunca deve ter essa função
end;

procedure TFrameVendaNFSe.btnNFSeAdicionarObsClick(Sender: TObject);
begin
  inherited;
  if not DS.AutoEdit then   // Regra não pode ser burlada
  begin
    ShowMessageWR('Não pode alterar esse registro.');
    Abort;
  end;
  if EdtNfDadosAdicionaisÎNF_DadosAdicionaisÎDESCRICAO.Caption <> '' then
  begin
    Ds.DataSet.FieldByName('NF_OBSERVACAO_SERVICO').AsString := Ds.DataSet.FieldByName('NF_OBSERVACAO_SERVICO').AsString + sLineBreak +
      EdtNfDadosAdicionaisÎNF_DadosAdicionaisÎDESCRICAO.Caption;
    EdtNfDadosAdicionaisÎNF_DadosAdicionais.Clear;
  end else
  begin
    ShowMessageWR('Informe uma observação padrão.');
    EdtNfDadosAdicionaisÎNF_DadosAdicionais.SetFocusWR;
  end;
end;

procedure TFrameVendaNFSe.btnNFSeClick(Sender: TObject);
var
  AVendaTipoSelecionado, ACodVendaNew, APath, AArquivo, XMLRetorno: string;
  ACodNota : integer;
  AOk: Boolean;
  Lote, Protocolo: String;
begin
//  PodeEditarHitorico_Editando(FCodigoHistorico);     // Recolocar
  inherited;
  with FFrameVenda do
  begin
    WREventosCadastro.ValidaCamposObrigatorio(Self, 'NFSE');
  end;

(*  if not PodeEditarVenda then
  begin
    if ShowMessageWR('Está venda não pode ser editada, Deseja criar uma NOVA venda e gerar uma nota fiscal de serviço?', MB_ICONQUESTION) = mrYes then
    begin
      if not TFrmVendaTipoSelecao.GetVendaTipo(vtmNotaFiscal, AVendaTipoSelecionado) then
        Exit;

      TransaFD.StartTransaction;

      AFrmVendaNovo := TFrmVendaAntiga(ConsultaForm(TFrmVendaAntiga));
      ACodVendaNew  := CopiarVendaEFinanceiro(TransaFD);
      AFrmVendaNovo.CloseOpen_AbrirRegistro(ACodVendaNew);

      TransaFD.Commit;

      CopiarVendaComProduto(vtmNotaFiscal, True, self, AFrmVendaNovo);

      if not DS.AutoEdit then   // Regra não pode ser burlada
      begin
        ShowMessageWR('Não pode alterar esse registro.');
        Abort;
      end;
      Ds.DataSet.FieldByName('VENDA_TIPO').AsString := AVendaTipoSelecionado;
    end else
      Exit;
  end;   *)

  TFrmEmpresa.MigrarConfiguracaoNFSe;
  FFrmNFSe.ConfiguraACBrNFSe(wrNotaFiscal);

//  WREventosCadastro.BeginUpdate;
  if Not FFrmNFSe.ValidaCertificado then Exit;
  if Not FFrmNFSe.ValidaEmpresa     then Exit;
//  if Not FFrmNFSe.ValidaNFSePessoas(ds.DataSet) then Exit;
//  if Not FFrmNFSe.ValidaNFSeShemas(ds.DataSet)  then Exit;       // Aqui deve fazer o download
//  WREventosCadastro.EndUpdate;

//  Depois de validar tudo mostra na Validação

//  WREventosCadastro.ValidaCamposObrigatorio(Self, 'EMPRESA', 'S');
//  WREventosCadastro.ValidaCamposObrigatorio(Self, 'Certificado', 'S');
//  WREventosCadastro.ValidaCamposObrigatorio(Self, 'NFSe, Schema', 'S');
//  WREventosCadastro.ValidaCamposObrigatorio(Self, 'NFSe', 'S');

//  MainLayout.Enabled := False;
  try
    if not (Ds.DataSet.State in dsEditModes) then
      Ds.DataSet.Edit;
    if Ds.DataSet.FieldByName('NOTAFISCAL').AsLargeInt = 0 then
    begin
      TConfig.Atualizar;        // Isso permite realizar e tirar o cache do número do rRPS na Emissão de nota em 2 computadores

      wrNotaFiscal.NotaAmbiente := FFrmNFSe.ACBrNFSeX1.Configuracoes.WebServices.Ambiente;
      if wrNotaFiscal.NotaAmbiente = taProducao then
        Ds.DataSet.FieldByName('NOTAFISCAL').AsFloat := TConfig.ReadFloat('NOTAFISCAL_SERVICO')
      else
      begin
        ShowMessageWR('A Nota Fiscal será emitida em ambiente de Homologação. Neste caso, esta nota não terá valor fiscal.');
        Ds.DataSet.FieldByName('NOTAFISCAL').AsFloat := TConfig.ReadFloat('NOTAFISCAL_SERVICO_HOMOLOGACAO');
      end;

    //  Aqui deve guardar o Número enviado
      if Ds.DataSet.FieldByName('NOTAFISCAL').AsLargeInt = 0 then
        Ds.DataSet.FieldByName('NOTAFISCAL').AsLargeInt := 1;

      // Gera o Número NOVO E CONFIRMA
      // Deve gerar o númeoro de lote, depois ver o Numero da Nota

      if wrNotaFiscal.NotaAmbiente = taProducao then
        TConfig.SaveFloat('NOTAFISCAL_SERVICO', Ds.DataSet.FieldByName('NOTAFISCAL').AsLargeInt + 1)
      else
        TConfig.SaveFloat('NOTAFISCAL_SERVICO_HOMOLOGACAO', Ds.DataSet.FieldByName('NOTAFISCAL').AsLargeInt + 1);

    end;
    if (Ds.DataSet.FieldByName('SERVICO_NOTA_PADRAO').AsString = 'S') then
    begin
      TFrmNFSe.CarregarConfiguracoesPadrao(Ds.DataSet);
//      Impostos1Click(nil); //<<<<<<< Ferrou aqui //OLHAR AQUI
      TFrmNFSe.CarregarObservacaoServicoPadrao(Ds.DataSet, wrNotaFiscal.VendaFinanceiro);
//      btnConfirmar.Click;   //Feito confirmação para gravar os totais da nota após o calculo dos impostos.
    end;

    wrNotaFiscal.NotaNumero := Ds.DataSet.FieldByName('NOTAFISCAL').AsLargeInt;
    wrNotaFiscal.DataAtual  := DataHoraSys;

  //  wrNotaFiscal.NF_Provedor.ServicoProdutoPadrao      := edtListaServicoÎNF_NCM.Text;  //TConfig.ReadString('VENDA_SERVICO_PRODUTO_PADRAO');

    WRLog('Configurações específicas para NFSe');
    {$REGION 'Enviar'}
    WRLog('Inicia o Envio');
    wrNotaFiscal.GerarNFSe;
    //Grava o XML gerado localmente antes de enviar
//    TFrmNFSe.GravarXLMNFSe(FFrmNFSe.ACBrNFSeX1, Ds.DataSet.FieldByName('CODIGO').AsString);
    if (FFrmNFSe.ACBrNFSeX1.Provider.ConfigGeral.Provedor in [prosiat]) then
      FFrmNFSe.ACBrNFSeX1.NotasFiscais.Items[0].XmlNfse := FFrmNFSe.ACBrNFSeX1.NotasFiscais.Items[0].GerarXML;

    WRLog('Inser dados e Grava o XML Localmente');

  {$REGION 'Pasa Passo os eventos ncessários.'}
   {
   > Na NFSe temos os seguintes passos (de acordo com orientações do Italo J. Jr):

    1. Gerar o XML do RPS;
    2. Assinar o XML (depende do provedor);
    3. Montar o lote com 1 ou mais RPS;
    4. Assinar o lote (depende do provedor);
    5. Validar o lote;
    6. Enviar o lote;
    7. Consultar a situação do lote mediante o numero de protocolo;
    8. Se processado com sucesso, Consultar o lote para obter as NFSe;
    9. Imprimir o DANFSE;
    10. Enviar por e-mail o XML da NFSe ao destinatário ou apenas o link para que o mesmo possa obter o DANFSE via site do provedor.

    Observação:

    Os passos de 1 a 9 são executados automaticamente pela function Enviar
     Note que no caso da NFSe o componente gera o XML do RPS  o que temos como retorno do provedor é o XML da NFSe.
     O componente ACBrNFSe cria varias pastas: Ger, NFSe, RPS, entre outras.
    Na pasta Ger ficam os XMLs gerais ou seja os de envio e retorno.
    Na pasta RPS ficam os XMLs dos RPS gerados pelo componente, ja na pasta NFSe ficam os XML das NFSe retornados pelo provedor.

    > Alguns dicas importantes para um bom funcionamento do componente:
    . Devemos utilizar os arquivos de configuração dos provedores que se encontram na pasta: ...\Exemplos\ACBrDFe\ACBrNFSe\ArqINI
    . Devemos utilizar os arquivos de Schemas dos provedores que se encontram na pasta: ...\Exemplos\ACBrDFe\ACBrNFSe\Schemas
    . Na rotina de configuração do componente da sua aplicação que vai emitir a NFS-e deve-se incluir as 6 propriedades de configuração referentes ao Emitente (vide o programa exemplo).
    . Para saber se o componente já atende ou não uma determinada cidade basta procura-la no arquivo: Cidades.INI que se encontra dentro da pasta ArqINI. Caso conste a cidade desejada temos as seguintes informações (no exemplo abaixo a cidade é atendida pelo provedor Betha):
    [3118007]
    Nome=Congonhas
    UF=MG
    Provedor=Betha

    . Não se faz necessário copiar para a maquina do seu cliente todos os arquivos INI e todos os Schemas, basta os arquivos: Cidades.INI e o INI do provedor e a pasta Schemas do respectivo provedor que atende a cidade do Emitente.
    Obs.: utilize o projeto demo para estudar o componente, localizado na pasta do ACBr:
    ACBr\Exemplos\ACBrDFe\ACBrNFSe
    Espero ter ajudado.
    André Luis.
   }
  {$ENDREGION}

//   FFrmNFSe.ACBrNFSeX1.GravarConfiguracao;
//   antes de enviar verificar se tem algum protocloco deconhecido antes,
//   para poder consultar primeiro
// Depois de consultar imprime se for positivo

    TFrmNFse.GravaNotaFiscalInsert(FFrmNFSe.ACBrNFSeX1, Ds.DataSet.FieldByName('CODIGO').AsString);

    FFrmNFSe.ACBrNFSeX1.Emitir(wrNotaFiscal.NotaLote, meAutomatico, False);


//    with FFrmNFSe.ACBrNFSeX1 do  // Gravar o Envio aqui
//    begin                        // Definir o que é Numero de Nota, Lote , Protacolo AQUI
//      if (WebService.Emite.Protocolo <> '') or (WebService.Emite.Lote <> '') then
//      begin
//        FFrmNFSe.GravaEventoEnvio('NFSe', WebService.Emite.Lote,
//                             WebService.Emite.Protocolo,
//                             WebService.Emite.XmlEnvio);
//      end;
//    end;
//      AArquivo := FFrmNFSe.ACBrNFSeX1.NotasFiscais.Items[0].NomeArq;
//      APath    := FFrmNFSe.ACBrNFSeX1.Configuracoes.Arquivos.PathSalvar;
//      NotaFiscal.Edit;
//      TBlobField(NotaFiscal.FieldByName('ARQUIVO_XML_RETORNO')).LoadFromFile(APath  + 'Notas\' + AArquivo);
//      NotaFiscal.Post;
//      XMLRetorno := AXML;
     FFrmNFSe.ChecarResposta(tmRecepcionar, Ds.DataSet.FieldByName('CODIGO').AsString);
//     while not FFrmNFSe.ChecarResposta(tmRecepcionar, Ds.DataSet.FieldByName('CODIGO').AsString) do
//     begin
//       FFrmNFSe.ACBrNFSeX1.WebService.Emite.NumeroRps;
//       FFrmNFSe.ConsultarNFSeporRps(NotaFiscal);
//     end;

//    if FFrmNFSe.ImprimeNFSe(wrNotaFiscal) then // ShowModal, Se Imprimiu Grava

    if (FFrmNFSe.ACBrNFSeX1.NotasFiscais.Items[0].Confirmada) then
    begin
      if not (Ds.DataSet.State in dsEditModes) then
        Ds.DataSet.Edit;
      Ds.DataSet.FieldByName('NF_DT_EMISSAO').AsDateTime := wrNotaFiscal.DataAtual;

      if FFrmNFSe.ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Producao = snSim then
        TConfig.SaveFloat('NOTAFISCAL_SERVICO', wrNotaFiscal.NotaNumero + 1)
      else
      begin
        TConfig.SaveFloat('NOTAFISCAL_SERVICO_HOMOLOGACAO', wrNotaFiscal.NotaNumero + 1);
          ShowMessageWR('Nota emitida com sucesso! Altere para o modo de Produção para emitir notas fiscais válidas.');
      end;

      {$REGION 'Atualiza os dados do sistema de acordo com a nota gerada'}
      //Pode acontecer de o provedor gerar um número de lote diferente do que foi enviado, então atualizamos
      //o lote da nota para gravar no banco corretamente
      WRLog('Pode acontecer de o provedor gerar um número de lote diferente do que foi enviado, então atualizamos o lote da nota para gravar no banco corretamente');


      //Grava o retorno
      WRLog('Inicia Gravar Retorno');
      try
        //TFrmNFSe.PreencheTagsFaltantesConsultando(ACBrNFSeX1, ACBrNFSeX1, ACodNota);
//        TFrmNFSe.PreencheTagsFaltantes(ACBrNFSeX1, ACBrNFSeX1);
        //O código da nota aqui deve retornar o mesmo gerado anteriormente... senão tem algum problema..
//        TFrmNFSe.GravarXLMNFSe(FFrmNFSe.ACBrNFSeX1, Ds.DataSet.FieldByName('CODIGO').AsString);
        WRLog('Se Chegou até aqui a nota foi gravada');
      except
        on E:Exception do
        begin
          {Se der erro ao salvar o XML de retorno, apenas mostra a mensagem mas continua para q a venda seja
           concluída, a nota foi emitida!!}
          ShowMessageWR('Nota fiscal emitida com sucesso, mas houve uma falha ao salvar o XML de Retorno:' + sLineBreak + E.Message);
        end;
      end;

     { if ACBrNFSeX1.Configuracoes.WebServices.Ambiente = taProducao then
        Cadastro.FieldByName('NF_AMBIENTE').AsString              := 'Produção'
      else
        Cadastro.FieldByName('NF_AMBIENTE').AsString              := 'Homologação'; }

      Ds.DataSet.FieldByName('NFSE_RPS').AsString              := FFrmNFSe.ACBrNFSeX1.NotasFiscais[0].NFSe.IdentificacaoRps.Numero;
      Ds.DataSet.FieldByName('NFSE_RPS_SERIE').AsString        := FFrmNFSe.ACBrNFSeX1.NotasFiscais[0].NFSe.IdentificacaoRps.Serie;
      // Aqui deveria ter o Lote e NFSe Protocolo
//      Cadastro.FieldByName('NF_PROTOCOLO').AsString          := FFrmNFSe.ACBrNFSeX1.NotasFiscais[0].NFSe.Protocolo;

//     Depende da forma de envio o retorno trabalha diferente;
//      Cadastro.FieldByName('NF_NUM_LOTE').AsString   := FFrmNFSe.ACBrNFSeX1.WebService.Emite.NumeroLote;
      Ds.DataSet.FieldByName('NF_PROTOCOLO').AsString  := FFrmNFSe.ACBrNFSeX1.WebService.Emite.Protocolo;

//    NFSE_PROTOCOLO
      WRLog('Feita a correção do LOTE');
//
      Ds.DataSet.FieldByName('NFSE_CODIGOVERIFICACAO').AsString:= FFrmNFSe.ACBrNFSeX1.NotasFiscais[0].NFSe.CodigoVerificacao;
      if FFrmNFSe.ACBrNFSeX1.NotasFiscais[0].Confirmada then
      begin
        Ds.DataSet.FieldByName('NF_STATUS').AsString           := 'Confirmada';
        DS.DataSet.FieldByName('TEM_IMPRESSO').AsString        := 'S';
      end
      else
        Ds.DataSet.FieldByName('NF_STATUS').AsString           := 'Pendente';

      Ds.DataSet.FieldByName('NFSe_Situacao').AsInteger         := FFrmNFSe.ACBrNFSeX1.NotasFiscais[0].NFSe.Situacao;
      Ds.DataSet.FieldByName('NFSe_dhRecebimento').AsDateTime  := FFrmNFSe.ACBrNFSeX1.NotasFiscais[0].NFSe.dhRecebimento;
      Ds.DataSet.FieldByName('NOTAFISCAL').AsString            := FFrmNFSe.ACBrNFSeX1.NotasFiscais[0].NFSe.Numero;

      NotaFiscalVincularNotaVendaOriginal(WRGetTransacao(Ds.DataSet), Ds.DataSet.FieldByName('CODIGO').AsString,
        Ds.DataSet.FieldByName('NOTAFISCAL').AsLargeInt);

      TFrmNotaFiscal.AtualizaNrNfNoFinanceiro(Ds.DataSet.FieldByName('NOTAFISCAL').AsLargeInt,         // LargeInt Fora do Padrão
        Ds.DataSet.FieldByName('CODIGO').AsString, EmpresaAtiva, Ds.DataSet.FieldByName('VENDA_TIPO').AsString, WRGetTransacao(Ds.DataSet));

      {$ENDREGION}

      if TConfig.ReadBoolean('SUBSTITUI_DADOS_PRESTADOR_IMPRIMIR') then
        FFrmNFSe.PreencheDadosPrestador(FFrmNFSe.ACBrNFSeX1);

      if FFrmNFSe.ACBrNFSeX1.NotasFiscais[0].NFSe.CodigoVerificacao <> '' then
        FFrmNFSe.ACBrNFSeX1.NotasFiscais.ImprimirPDF;

      FFrmNFSe.ACBrNFSeX1.NotasFiscais.Imprimir;
      TFrame_Venda_Mestre.AtualizaSTATUSVendaPrincipal(Ds.DataSet, wrNotaFiscal.WRCalc.DBProduto, tsfNota);

      if (Ds.DataSet.State in dsEditModes) then
      begin
        Ds.DataSet.post;
        try
          TFDQuery(Ds.DataSet).Transaction.Commit;
        except end;
//        btnConfirmar.Click;    Fudeu não tem acesso a Venda
      end;

      {$REGION 'Envia email'}
      if (Empresa.FieldByName('TEM_NF_EMAIL_ENVIO').AsString = 'S') {$IFNDEF DEBUG} and (FFrmNFSe.ACBrNFSeX1.NotasFiscais[0].NFSe.Producao = snSim) {$ENDIF} then
        TFrmNFSe.EnviarEmailNFSe(DS.DataSet.FieldByName('RESPONSAVEL_EMAIL').AsString, Ds.DataSet, FFrmNFSe.ACBrNFSeX1);
      {$ENDREGION}

    end else
      ShowMessage('Atenção! A Nota pode não ter sido emitida, Verifique a Nota Fiscal');
    if Assigned(frmStatus) then
      frmStatus.Close;
    NotaFiscal.Refresh;
  finally
//    MainLayout.Enabled := True;
  end;
  Self.BringToFront;
end;

procedure TFrameVendaNFSe.CancelamentodaNFe2Click(Sender: TObject);
Var
  ACod : String;
begin
  inherited;
//  if Not FFrmNFSe.ValidaCertificado then Exit;
//  FFrmNFSe.ACBrNFSe1.CancelarNFSe(NotaFiscal, 1, 'Nota Lançada errada...');
  ACod := '1';
  InputBox('Informe o código de cancelamento da Prefeitura','Código de Cancelamento', ACod);
  NotaFiscalCancelarNFSe(NotaFiscal  , FFrmNFSe.ACBrNFSeX1, StrToIntDef(ACod, 1), 'Nota Lançada errada...');
end;

procedure TFrameVendaNFSe.cbxNFSeSituacaoTributacaoPropertiesChange(
  Sender: TObject);
begin
  inherited;
  liedtISSQN_CMUNFG.Visible   :=(Ds.DataSet.FieldByName('NFSE_SITUACAO_TRIBUTACAO').AsString = 'tt');
  liedtServico_CodPais.Visible:=(Ds.DataSet.FieldByName('NFSE_SITUACAO_TRIBUTACAO').AsString = 'tt');
end;

procedure TFrameVendaNFSe.cbxServico_ISS_RetidoExit(Sender: TObject);
begin
  inherited;
  if (Ds.DataSet.State in [dsEdit, dsInsert])then
    wrNotaFiscal.WRCalc.SuperCalc;
end;

procedure TFrameVendaNFSe.cbxServico_ISS_RetidoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
//  if ds.DataSet.state = dsedit then
  if (Ds.DataSet.State in [dsEdit, dsInsert])then    // Deveria ser isso aqui, se tiver em insersão tbem calcula
  begin
    if ds.DataSet.FieldByName('SERVICO_ISS_RETIDO').AsInteger = 1 then
      Ds.DataSet.FieldByName('NF_VALOR_ISS_RETIDO').AsFloat:= Ds.DataSet.FieldByName('TOTAL').AsFloat*Perc(Ds.DataSet.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat)
    else
      Ds.DataSet.FieldByName('NF_VALOR_ISS_RETIDO').AsFloat:= 0;
  end;
end;

procedure TFrameVendaNFSe.ConsultaNFSePeloNumero1Click(Sender: TObject);
var
  ADtInicial, ADtFinal: TDateTime;
  ACodVenda, ANumIniNFSe, ANumFinNFSe, ANumLote: String;
begin
  ACodVenda := NotaFiscal. FieldByName('CODVENDA').AsString;
  ADtInicial :=  StartOfTheMonth(NotaFiscal.FieldByName('NF_DT_EMISSAO').AsDateTime);
  ADtFinal := Now;

  ANumIniNFSe :=  NotaFiscal.FieldByName('NF_NUMERO').AsString;
  ANumFinNFSe := NotaFiscal.FieldByName('NF_NUMERO').AsString;

  if (wrNotaFiscal.NF_Provedor.FieldByName('DESCRICAO').AsString = 'Siat') then
    ANumLote := NotaFiscal.FieldByName('NF_NUM_LOTE').AsString
  else
    ANumLote := '';


  FFrmNFSe.ConsultarNFSeManual(NotaFiscal,
                               ADtInicial,
                               ADtFinal,
                               ACodVenda,
                               ANumIniNFSe,
                               ANumFinNFSe,
                               ANumLote);
//  FFrmNFSe.ConsultarNFSe(NotaFiscal);
end;

procedure TFrameVendaNFSe.ConsultaNFSeSituao1Click(Sender: TObject);
begin
  inherited;
  FFrmNFSe.ConsultarSituacao(NotaFiscal);
end;

procedure TFrameVendaNFSe.ConsultarLote1Click(Sender: TObject);
begin
  inherited;
  FFrmNFSe.ConsultarLoteRps(NotaFiscal);
end;

procedure TFrameVendaNFSe.ConsultarNFSepeloRPS1Click(Sender: TObject);
begin
  inherited;
  FFrmNFSe.ConsultarNFSeporRps(NotaFiscal);
end;

procedure TFrameVendaNFSe.cxGridDBTableView2VisualizarPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
//  VisualizarDANFSe1Click(self);
  FFrmNFSe.ConfiguraACBrNFSe(wrNotaFiscal);
//  FFrmNFSe.VisualizarNFSe(NotaFiscal);
  FFrmNFSe.VisualizarNFSeIni(NotaFiscal);
end;

procedure TFrameVendaNFSe.cxGridDBTableView2XmlPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  ANome :String;
begin
  inherited;
  ANome := GetDirTemp + NotaFiscal.FieldByName('NF_CHAVE').AsString + '.xml';
  TBlobField(NotaFiscal.FieldByName('ARQUIVO_XML')).SaveToFile(ANome);
  AbrirArquivo(ANome);
end;

procedure TFrameVendaNFSe.cxGridDBTableView2xmlRetornoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  ANome :String;
begin
  inherited;
  ANome := GetDirTemp + NotaFiscal.FieldByName('NF_CHAVE').AsString + '.xml';
  TBlobField(NotaFiscal.FieldByName('ARQUIVO_XML_RETORNO')).SaveToFile(ANome);
  AbrirArquivo(ANome);
end;

procedure TFrameVendaNFSe.cxGridDBTableView4Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFormNFeventos.Abrir(TWinControl(Sender), NotaFiscalEventos);
end;

procedure TFrameVendaNFSe.cxGridDBTableView4CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ATexto : string;
begin
  if AViewInfo.Item.Index = cxGridDBTableView2NF_SITUACAO.Index then
  begin
//    ACanvas.Font.Color := clWhite;
    ATexto := AViewInfo.GridRecord.DisplayTexts[cxGridDBTableView2NF_SITUACAO.Index];
    if MatchStr(AnsiUpperCase(ATexto), ['CONFIRMADA', 'AUTORIZADA']) then
    begin
      ACanvas.Brush.Color := clGreen;
      ACanvas.Font.Color  := $FFFFFF;
    end
    else if ((ATexto) = 'Desconhecida') then
    begin
      ACanvas.Font.Color  := clBlack;
      ACanvas.Brush.Color := $0095FFFF;
    end
    else if ((ATexto) = 'Enviada') then
    begin
      ACanvas.Font.Color  := $701919;
      ACanvas.Brush.Color := clSkyBlue;
    end else
    begin
      ACanvas.Brush.Color := clRed;
      ACanvas.Font.Color  := $B9DAFF;
    end;
  end;
end;

procedure TFrameVendaNFSe.DeletarNFSeClick(Sender: TObject);
begin
  inherited;
//  PodeEditarHitorico_Editando(FCodigoHistorico);
  inherited;
  TFrmNFSe.DeleteNFSe(NoTaFiscal.FieldByName('Codigo').AsString);
  NotaFiscal.Close;                                          // Close open me apavora, mais acho que é necessário
  NotaFiscal.Open;                                           // deveria ser refresh
end;

procedure TFrameVendaNFSe.PopupMenuNFePopup(Sender: TObject);
begin
  inherited;
  DeletarNFSe.Enabled        := (NotaFiscal.RecordCount > 0);
  CancelamentodaNFe2.Enabled := (NotaFiscal.RecordCount > 0)and(FFrmNFSe.ACBrNFSeX1.Provider.ConfigWebServices.Producao.ConsultarNFSe = 'S');//NF_Provedor.FieldByName('TEM_CANCELAR').AsString = 'S');

  ConsultarLote1.Enabled          := (NotaFiscal.RecordCount > 0)and(FFrmNFSe.ACBrNFSeX1.Provider.ConfigGeral.ConsultaLote = True); //NF_Provedor.FieldByName('TEM_CONSLOTE').AsString = 'S');
  ConsultaNFSePeloNumero1.Enabled := (NotaFiscal.RecordCount > 0)and(FFrmNFSe.ACBrNFSeX1.Provider.ConfigGeral.ConsultaNFSe = True);//NF_Provedor.FieldByName('TEM_CONSNFSE').AsString = 'S');
  ConsultarNFSepeloRPS1.Enabled   := (NotaFiscal.RecordCount > 0)and(FFrmNFSe.ACBrNFSeX1.Provider.ConfigGeral.ConsultaLote = True);//NF_Provedor.FieldByName('TEM_CONSNFSERPS').AsString = 'S');
  ConsultaNFSeSituao1.Enabled     := (NotaFiscal.RecordCount > 0)and(FFrmNFSe.ACBrNFSeX1.Provider.ConfigGeral.ConsultaSitLote = True);//NF_Provedor.FieldByName('TEM_CONSSIT').AsString = 'S');
  Substituir1.Enabled             := (NotaFiscal.RecordCount > 0)and(FFrmNFSe.ACBrNFSeX1.Provider.ConfigWebServices.Producao.SubstituirNFSe = 'S');//NF_Provedor.FieldByName('TEM_SUBSTITUIR').AsString = 'S');

//  CancelamentodaNFe2.Enabled := (NF_Provedor.FieldByName('TEM_RECEPCIONAR').AsString = 'S');    Asincrono
//  CancelamentodaNFe2.Enabled := (NF_Provedor.FieldByName('TEM_RECSINCRONO').AsString = 'S');    Sincrono

end;

procedure TFrameVendaNFSe.Substituir1Click(Sender: TObject);
begin
  inherited;
//  if Not FFrmNFSe.ValidaCertificado then Exit;

  FFrmNFSe.ACBrNFSeX1.SubstituirNFSe('1', Ds.DataSet.FieldByName('NF_NUMERO').AsString,
                                      'Substituindo NFSe');
  FFrmNFSe.ACBrNFSeX1.DANFSE.ImprimirDANFSe;
end;

procedure TFrameVendaNFSe.VisualizarDANFSe1Click(Sender: TObject);
begin
  inherited;
  FFrmNFSe.VisualizarNFSe(NotaFiscal);
end;

procedure TFrameVendaNFSe.VizualizarXML2Click(Sender: TObject);
Var
  ANome:String;
begin
  inherited;
  ANome := GetDirTemp + NotaFiscal.FieldByName('NF_CHAVE').AsString + NotaFiscal.FieldByName('TIPO').AsString + '.xml';
  TBlobField(NotaFiscal.FieldByName('ARQUIVO_XML')).SaveToFile(ANome);
  AbrirArquivo(ANome);
  ANome := GetDirTemp + NotaFiscal.FieldByName('NF_CHAVE').AsString + NotaFiscal.FieldByName('TIPO').AsString + 'WR.xml';
  TBlobField(NotaFiscal.FieldByName('ARQUIVO_XML_FORMATO_WR')).SaveToFile(ANome);
  AbrirArquivo(ANome);
end;

procedure TFrameVendaNFSe.wrFrameEventosInicializar(Sender: TObject);
begin
  inherited;
// Antes dessa etapa colocar os vinculo co a Venda
  FFrameVenda := (wrNotaFiscal.Owner as TFrame_Venda_Mestre);
//  wrNotaFiscal.NF_Provedor:=NF_Provedor;

//  NF_Provedor.Open;
  TFrmNFSe.CarregaFrame(FFrmNFSe,wrNotaFiscal);
  NotaFiscal.DataSource:= wrNotaFiscal.WRCalc.DSVendaOuCompra;
  NotaFiscal.Open;


{$REGION 'Inicialização de Lookups'}

  if Assigned(FFrmNFSe.ACBrNFSeX1.Provider) then
  begin
    PreencheLookupNFSeSimNao(cbxServico_Incentivador_Cultural.Properties, FFrmNFSe.ACBrNFSeX1.Provider);
    PreencheLookupSituacaoTrib(cbxNFSeSituacaoTributacao.Properties, FFrmNFSe.ACBrNFSeX1.Provider);
    PreencheLookupindISSRet(cbxServico_ISS_Retido.Properties);
    PreencheLookupNFSeTributacao(cbxNF_Tributacao.Properties, FFrmNFSe.ACBrNFSeX1.Provider);
    cbxServico_Incentivador_Cultural.Enabled := True;
    cbxNFSeSituacaoTributacao.Enabled := True;
    cbxServico_ISS_Retido.Enabled := True;
    cbxNF_Tributacao.Enabled := True;
  end
  else
  begin
    cbxServico_Incentivador_Cultural.Enabled := False;
    cbxNFSeSituacaoTributacao.Enabled := False;
    cbxServico_ISS_Retido.Enabled := False;
    cbxNF_Tributacao.Enabled := False;
  end;


{$ENDREGION}
end;

end.
