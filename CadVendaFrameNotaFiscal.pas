unit CadVendaFrameNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, dxLayoutContainer, cxMemo, DB,
  dxLayoutControl, cxContainer, cxEdit, cxDBEdit, Menus, StdCtrls, cxButtons, ExtCtrls, cxButtonEdit, Mask, DBCtrls,
  cxDBLookupComboBox, Buttons, UnitFuncoes, wrFuncoes, DataModuleImpressao, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxCurrencyEdit, cxCalendar, cxCheckBox,
  cxTextEdit, cxMaskEdit, pcnConversaoNFe, pcnConversao, CadNotaFiscal, ACBrNFe, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, pcnNFe,
  System.StrUtils, uControleWR, DataModuleBanco, ACBrBase, ImpNFConvenio115, FileCtrl, FireDAC.Stan.Async,
  FireDAC.DApt, uWRCalculaConfiguracoes, uWRNotaFiscal, FrFrameMestre, dxLayoutLookAndFeels, UCBase,
  System.ImageList, Vcl.ImgList, uWRFrameEventos, uWRFormataCamposDataSet, cxLabel, WinSpool, Printers,
  Frame_CadVenda_Mestre, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmVendaFrameNotaFiscal = class(TFrmFrameMestre)
    liedtNF_DT_EMISSAO: TdxLayoutItem;
    edtNF_DT_EMISSAO: TcxDBTextEdit;
    liedtNF_IE_SUBST: TdxLayoutItem;
    edtNF_IE_SUBST: TcxDBTextEdit;
    liedtNF_DT_SaidaEntrada: TdxLayoutItem;
    edtNF_DT_SaidaEntrada: TcxDBDateEdit;
    libtnNFe: TdxLayoutItem;
    btnNFe: TcxButton;
    libtnNFeMenu: TdxLayoutItem;
    btnNFeMenu: TcxButton;
    liedtTransportadoraÎPessoas: TdxLayoutItem;
    edtTransportadoraÎPessoas: TcxDBButtonEdit;
    liedtTransportadoraÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    edtTransportadoraÎPessoasÎRAZAOSOCIAL: TcxDBTextEdit;
    liedtTransportadoraÎPessoasÎUF: TdxLayoutItem;
    edtTransportadoraÎPessoasÎUF: TcxDBTextEdit;
    liedtNF_Tranportadora_Placa: TdxLayoutItem;
    edtNF_Tranportadora_Placa: TcxDBTextEdit;
    liedtNF_UF: TdxLayoutItem;
    edtNF_UF: TcxDBTextEdit;
    dxLayoutControl1Group3: TdxLayoutGroup;
    GrupoDadosAdicionais: TdxLayoutGroup;
    liedtNfDadosAdicionaisÎNF_DadosAdicionais: TdxLayoutItem;
    edtNfDadosAdicionaisÎNF_DadosAdicionais: TcxButtonEdit;
    liedtNfDadosAdicionaisÎNF_DadosAdicionaisÎDESCRICAO: TdxLayoutItem;
    edtNfDadosAdicionaisÎNF_DadosAdicionaisÎDESCRICAO: TLabel;
    dxLayoutControl1Group5: TdxLayoutGroup;
    libtnAdicionarDadosAdicionais: TdxLayoutItem;
    btnAdicionarDadosAdicionais: TcxButton;
    liedtNF_Observacao: TdxLayoutItem;
    edtNF_Observacao: TcxDBMemo;
    liedtNF_Porcentagem_Desconto: TdxLayoutItem;
    edtNF_Porcentagem_Desconto: TcxDBTextEdit;
    liedtNF_Transp_QVol: TdxLayoutItem;
    edtNF_Transp_QVol: TcxDBTextEdit;
    liedtNF_Especie: TdxLayoutItem;
    edtNF_Especie: TcxDBTextEdit;
    liedtNF_Marca: TdxLayoutItem;
    edtNF_Marca: TcxDBTextEdit;
    liedtNF_Peso_Bruto: TdxLayoutItem;
    edtNF_Peso_Bruto: TcxDBTextEdit;
    liedtNF_Peso_Liquido: TdxLayoutItem;
    edtNF_Peso_Liquido: TcxDBTextEdit;
    liedtNF_Valor_ISS_Aliq: TdxLayoutItem;
    edtNF_Valor_ISS_Aliq: TcxDBTextEdit;
    liedtNF_ISS_VBC: TdxLayoutItem;
    edtNF_ISS_VBC: TcxDBTextEdit;
    liedtNF_VBC: TdxLayoutItem;
    edtNF_VBC: TcxDBTextEdit;
    liedtNF_VICMS: TdxLayoutItem;
    edtNF_VICMS: TcxDBTextEdit;
    liedtNF_VBCST: TdxLayoutItem;
    edtNF_VBCST: TcxDBTextEdit;
    liedtNF_VICMSST: TdxLayoutItem;
    edtNF_VICMSST: TcxDBTextEdit;
    liedtNF_ISS_VISS: TdxLayoutItem;
    edtNF_ISS_VISS: TcxDBTextEdit;
    liedtNF_VFrete: TdxLayoutItem;
    edtNF_VFrete: TcxDBTextEdit;
    liedtNF_VSEG: TdxLayoutItem;
    edtNF_VSEG: TcxDBTextEdit;
    liedtNF_IPI_VIPI: TdxLayoutItem;
    edtNF_IPI_VIPI: TcxDBTextEdit;
    liedtTotal: TdxLayoutItem;
    edtTotal: TcxDBTextEdit;
    liedtNF_VCREDSN: TdxLayoutItem;
    edtNF_VCREDSN: TcxDBTextEdit;
    liedtNF_ValorAduaneira: TdxLayoutItem;
    edtNF_ValorAduaneira: TcxDBTextEdit;
    liedtNF_COFINSST_VCONFINS: TdxLayoutItem;
    edtNF_COFINSST_VCONFINS: TcxDBTextEdit;
    liedtNF_PIS_VPIS: TdxLayoutItem;
    edtNF_PIS_VPIS: TcxDBTextEdit;
    PopNFe: TPopupMenu;
    VisualizaraNFe1: TMenuItem;
    N7: TMenuItem;
    PopNotaComplementar: TMenuItem;
    N8: TMenuItem;
    ConsultarcarregandoXML1: TMenuItem;
    GerarPDF1: TMenuItem;
    ImprimirDANFE1: TMenuItem;
    EnviarNFeporEmail1: TMenuItem;
    RecuperarXMLpelaChave1: TMenuItem;
    N11: TMenuItem;
    NFSe1: TMenuItem;
    edtNF_II_VII: TcxDBCurrencyEdit;
    liedtNF_II_VII: TdxLayoutItem;
    cbxNF_Saida_Entrada: TcxDBLookupComboBox;
    licbxNF_Saida_Entrada: TdxLayoutItem;
    cbxNF_FretePorConta: TcxDBLookupComboBox;
    licbxNF_FretePorConta: TdxLayoutItem;
    MenuNotaFiscal1: TMenuItem;
    CartadeCorreo1: TMenuItem;
    edtPedido_Compra: TcxDBTextEdit;
    liedtPedido_Compra: TdxLayoutItem;
    cbxNF_Finalidade: TcxDBLookupComboBox;
    licbxNF_Finalidade: TdxLayoutItem;
    edtNF_NREF: TcxDBTextEdit;
    btnBuscarXML: TcxButton;
    liedtNF_NREF: TdxLayoutItem;
    libtnBuscarXML: TdxLayoutItem;
    edtDt_Coleta: TcxDBDateEdit;
    liedtDt_Coleta: TdxLayoutItem;
    edtCodColeta: TcxDBTextEdit;
    liedtCodColeta: TdxLayoutItem;
    GrupoNotasFiscais: TdxLayoutGroup;
    PnlNotasFiscais: TPanel;
    dxLayoutControl1Item57: TdxLayoutItem;
    btnNFCe: TcxButton;
    libtnNFCe: TdxLayoutItem;
    liedtConsumidor_Final: TdxLayoutItem;
    edtConsumidor_Final: TcxDBComboBox;
    liedtNF_Numero: TdxLayoutItem;
    edtNF_Numero: TcxDBTextEdit;
    lichkNFe_Calcula_Difal: TdxLayoutItem;
    chkNFe_Calcula_Difal: TcxDBCheckBox;
    lichkNF_Utilizar_CodFabrica_Na_Impr: TdxLayoutItem;
    chkNF_Utilizar_CodFabrica_Na_Impr: TcxDBCheckBox;
    lichkNF_Observacao_Padrao: TdxLayoutItem;
    chkNF_Observacao_Padrao: TcxDBCheckBox;
    PrVsualizarNFe1: TMenuItem;
    liedtVOutro: TdxLayoutItem;
    edtVOutro: TcxDBTextEdit;
    GrupoVolumeTransportado: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    liedtNF_ISSQN_VISSQN: TdxLayoutItem;
    edtNF_ISSQN_VISSQN: TcxDBTextEdit;
    liedtNF_ISSQN_VBC: TdxLayoutItem;
    edtNF_ISSQN_VBC: TcxDBTextEdit;
    DSNF_Natureza_Operacao: TDataSource;
    cbxNF_CodNatureza_Operacao: TcxDBLookupComboBox;
    licbxNF_CodNatureza_Operacao: TdxLayoutItem;
    edtNF_ISSQN_VISSRET: TcxDBCurrencyEdit;
    liedtNF_ISSQN_VISSRET: TdxLayoutItem;
    libtnSAT: TdxLayoutItem;
    btnSAT: TcxButton;
    MenuSAT: TPopupMenu;
    Configuraes1: TMenuItem;
    NF_Natureza_Operacao: TFDQuery;
    licbxPode_Emitir_NotaFiscal: TdxLayoutItem;
    cbxPode_Emitir_NotaFiscal: TcxDBComboBox;
    OdNFe: TOpenDialog;
    LiedtDtFaturamento: TdxLayoutItem;
    edtDtFaturamento: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBCheckBox20: TcxDBCheckBox;
    chkNFePorQtdPeca: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    poupConfigurar: TMenuItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutGroup15: TdxLayoutGroup;
    LilblTributacaoIncorretaProdutos: TdxLayoutGroup;
    lblProdutosTributacaoIncorreta: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    btnAbrirNatureza: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    btnCalcularImpostos: TcxButton;
    procedure btnAdicionarDadosAdicionaisClick(Sender: TObject);
    procedure btnConfigurarClick(Sender: TObject);
    procedure btnNFeMenuClick(Sender: TObject);
    procedure btnNFeClick(Sender: TObject);
    procedure VisualizaraNFe1Click(Sender: TObject);
    procedure PopNotaComplementarClick(Sender: TObject);
    procedure ConsultarcarregandoXML1Click(Sender: TObject);
    procedure GerarPDF1Click(Sender: TObject);
    procedure ImprimirDANFE1Click(Sender: TObject);
    procedure EnviarNFeporEmail1Click(Sender: TObject);
    procedure RecuperarXMLpelaChave1Click(Sender: TObject);
    procedure btnNotaFiscalClick(Sender: TObject);
    procedure CartadeCorreo1Click(Sender: TObject);
    procedure PopNFePopup(Sender: TObject);
    procedure btnBuscarXMLClick(Sender: TObject);
    procedure PnlNotasFiscaisResize(Sender: TObject);
    procedure edtNF_NREFExit(Sender: TObject);
    procedure cbxNF_FretePorContaExit(Sender: TObject);
    procedure edtNF_ValorAduaneiraExit(Sender: TObject);
    procedure edtVOutroExit(Sender: TObject);
    procedure btnSATClick(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure cxDBCheckBox5PropertiesEditValueChanged(Sender: TObject);
    procedure WRCalcVENDA(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure CxDBPodeEmitirNFPropertiesChange(Sender: TObject);
    procedure wrFrameEventosInicializar(Sender: TObject);
    procedure cbxNF_CodNatureza_OperacaoPropertiesEditValueChanged(
      Sender: TObject);
    procedure edtDtFaturamentoPropertiesChange(Sender: TObject);
    procedure cxLabel2Click(Sender: TObject);
    procedure lblProdutosTributacaoIncorretaClick(Sender: TObject);
    procedure btnAbrirNaturezaClick(Sender: TObject);
    procedure btnCalcularImpostosClick(Sender: TObject);
    procedure cbxNF_CodNatureza_OperacaoPropertiesCloseUp(Sender: TObject);
  private

    FFormVenda: TFrame;
    FWRCalc: TWRCalculaConfiguracoes;
    FwrNotaFiscal: TwrNotaFiscal;
    FFrameVenda: TFrame_Venda_Mestre;

    procedure VerificaSePodeAlteraDataSet(ADataSet: TDataSet = nil);

    procedure FinalizarEmissaoNota(const AACBrNFe: TACBrNFe; const ATipoNota: TwrNotaFiscalTipo);
    function VisualizaNotaFiscaldoBancodeDados : Boolean;
    procedure EnviarEmailNFe(AEnderecoDestino: string);
    procedure IncrementaNumeroNota(ATipoNota: TwrNotaFiscalTipo; ATipoAmbiente: TpcnTipoAmbiente);
    function IsCStatDenegado(AcStat: Integer): Boolean;
    procedure TrataDuplicidadeEmissaoNFe(const AACBrNFe: TACBrNFe; const ATipoNota: TwrNotaFiscalTipo);
    procedure VerificaNotasJaEmitidas;
    procedure VerificaTributacaoProdutos;
    function ConsultaNota3X: Boolean;
  public
    FFrmNotaFiscal: TFrmNotaFiscal;
    class procedure CarregaFrame(var AFrame: TFrmFrameMestre; AParent: TWinControl; ADataSource: TDataSource;
      AwrNotaFiscal: TwrNotaFiscal);
    procedure Atualizar;

    class procedure AtualizarNotaNaVenda(const AVenda, AVendaProduto: TDataSet; const AACBrNFe: TACBrNFe);
  end;

implementation

uses
  ACBrUtil, Types, Registry, Email, DateUtils, NFeDuplicidade, Classes.WR, wrPreencheLookup,
  ACBrNFeNotasFiscais, IniFiles, Math, Principal, Rotinas, ACBrDFeException,Senha, NFe, Aguarde,
  DataModuleSAT, SAT, wrConversao, wrConstantes, Validacoes, CadEmpresa, wrForms,
  CadNF_Natureza_Operacao;

{$R *.dfm}

//class procedure TFormNFeventos.Abrir(ASender: TWinControl;
//  ANotaFiscalEventos: TFDQuery);
//var
//  AFormNFeventos: TFormNFeventos;
//begin
//  AFormNFeventos := TFormNFeventos.Create(ASender.Owner);
//  try
//    AFormNFeventos.PopupMode := pmAuto;
//    AFormNFeventos.DS.DataSet := ANotaFiscalEventos;
//    AFormNFeventos.DS.DataSet.Open;
//    // AFormNFeventos.DS.AutoEdit:= AFormNFeventos.WRCalc.DSProduto.AutoEdit;
//    PosicionarControleAbaixoDe(AFormNFeventos, ASender);
//    AFormNFeventos.ShowModal;
//  finally
//    AFormNFeventos.Free;
//  end;
//end;

class procedure TFrmVendaFrameNotaFiscal.CarregaFrame(var AFrame: TFrmFrameMestre; AParent: TWinControl;
  ADataSource: TDataSource; AwrNotaFiscal: TwrNotaFiscal);
begin
  if AFrame = nil then
  begin
    AFrame := TFrmVendaFrameNotaFiscal.CreateSemDS(AParent);
    TFrmVendaFrameNotaFiscal(AFrame).FwrNotaFiscal := AwrNotaFiscal;

    PreencheLookupModalidadeFrete(TFrmVendaFrameNotaFiscal(AFrame).cbxNF_FretePorConta.Properties);
    PreencheLookupFinalidadeNFe(TFrmVendaFrameNotaFiscal(AFrame).cbxNF_Finalidade.Properties);
    PreencheLookupTipoNFe(TFrmVendaFrameNotaFiscal(AFrame).cbxNF_Saida_Entrada.Properties);

    TFrmVendaFrameNotaFiscal(AFrame).DS.DataSet := ADataSource.DataSet;
    TFrmVendaFrameNotaFiscal(AFrame).DS.DataSet.Open;
    AFrame.wrFrameEventos.DoOnInicializar;
  end else
    TFrmVendaFrameNotaFiscal(AFrame).Atualizar;

  TFrmVendaFrameNotaFiscal(AFrame).VerificaTributacaoProdutos;
//      if AFrame = nil then
//  begin
//    AFrame := TFrmVendaFrameNotaFiscal.Create(AParent, ADataSource);
//    TFrmVendaFrameNotaFiscal(AFrame).FwrNotaFiscal := AwrNotaFiscal;
//    AFrame.wrFrameEventos.DoOnInicializar;
//  end else
//    TFrmVendaFrameNotaFiscal(AFrame).Atualizar;
end;

procedure TFrmVendaFrameNotaFiscal.wrFrameEventosInicializar(Sender: TObject);
begin
  inherited;

//  if FwrNotaFiscal.Owner is TFrame then
    FFrameVenda := (FwrNotaFiscal.Owner as TFrame_Venda_Mestre);
//  else
//    FFormVenda := (FwrNotaFiscal.Owner as TFrmVenda);

  FWRCalc := FwrNotaFiscal.WRCalc;

//  dxLayoutControl1Group10.Visible := False; //Verificação e o Status é feito por nota salva no banco de dados.

  DS.AutoEdit := FWRCalc.DSVendaOuCompra.AutoEdit;
//  GrupoColeta.Visible := TConfig.ReadBoolean('VENDA_EXIBIR_DADOS_COLETA');

  Tag := -1;//Isso é para não dar o open na query da notafiscalxml, no create do formulário.

  FFrmNotaFiscal := TFrmNotaFiscal.Create(Self);
  FFrmNotaFiscal.ExclusivoDaVenda := True;
  FFrmNotaFiscal.Venda         := FWRCalc.DBVendaOuCompra;
  FFrmNotaFiscal.Venda_Produto := FWRCalc.DBProduto;

  Tag := 0;
  Atualizar;
  libtnNFe.Visible         := (Empresa.FieldByName('EMITE_NFE').AsString = 'S');
  libtnNFCe.Visible         := (Empresa.FieldByName('EMITE_NFCE').AsString = 'S');
  libtnSAT.Visible          := (Empresa.FieldByName('EMITE_SAT').AsString = 'S');
  NF_Natureza_Operacao.Open;



  chkNFePorQtdPeca.Checked := (Empresa.FieldByName('NFE_IMPRIMIR_QTDEPECA').AsString = 'S');

end;

procedure TFrmVendaFrameNotaFiscal.Atualizar;
begin
  FFrmNotaFiscal.Atualizar(PnlNotasFiscais);
  if DS.DataSet.FieldByName('CODIGO').AsString <> FFrmNotaFiscal.CodVenda then
  begin
    FFrmNotaFiscal.CodVenda := DS.DataSet.FieldByName('CODIGO').AsString;
    FFrmNotaFiscal.NotaFiscalXML.Close;
    FFrmNotaFiscal.NotaFiscalXML.Open;
  end;
end;

procedure TFrmVendaFrameNotaFiscal.btnAbrirNaturezaClick(Sender: TObject);
var
  AForm: TFrmNF_Natureza_Operacao;
  AOldCursor: TCursor;
  AChave: Variant;
begin
  AOldCursor    := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  AForm := TFrmNF_Natureza_Operacao.Create(FrmPrincipal);
  try
    AForm.Show;
//    TFrmCadM(AForm).MainLayout.ApplyBestFit;
    AForm.MainLayout.EndUpdate;
    Application.ProcessMessages;
    AChave := VarArrayOf([FWRCalc.DBVendaOuCompra.FieldByName('NF_CODNATUREZA_OPERACAO').AsInteger]);
    AForm.ChavePrimaria:= AChave;
    AForm.DS.DataSet.Open;
    if FWRCalc.DBProduto.Locate('TEM_TRIBUTACAO_INCORRETA', 'S', []) then
      AForm.Produto_Grupo_Vinculado.Locate('CODPRODUTO_GRUPO', FWRCalc.DBProduto.FieldByName('CODPRODUTO_GRUPO').AsString, []);

    Screen.Cursor := AOldCursor;
  finally
//    Result := Codigo;
  end;
//  inherited;
//  CadastroMidChildChave(TFormClass(GetClass('')), FWRCalc.DBVendaOuCompra.FieldByName('NF_CODNATUREZA_OPERACAO').AsInteger);
end;

procedure TFrmVendaFrameNotaFiscal.btnAdicionarDadosAdicionaisClick(Sender: TObject);
var
  AStr: TStringList;
begin
  VerificaSePodeAlteraDataSet;
  if EdtNfDadosAdicionaisÎNF_DadosAdicionaisÎDESCRICAO.Caption <> '' then
  begin
    AStr := TStringList.Create;
    try
      AStr.Text := DS.DataSet.FieldByName('NF_OBSERVACAO').AsString;
      AStr.Add(EdtNfDadosAdicionaisÎNF_DadosAdicionaisÎDESCRICAO.Caption);
      DS.DataSet.FieldByName('NF_OBSERVACAO').AsString := AStr.Text;
    finally
      AStr.Free;
    end;
  end;
  EdtNfDadosAdicionaisÎNF_DadosAdicionais.Clear;
end;

procedure TFrmVendaFrameNotaFiscal.btnCalcularImpostosClick(Sender: TObject);
var
  AProdutosTributacaoIncorreta : Integer;
begin
  inherited;
  FFrameVenda.Calculartodososimpostos1Click(self);
  VerificaTributacaoProdutos;
end;

procedure TFrmVendaFrameNotaFiscal.btnConfigurarClick(Sender: TObject);
begin
  TFrmNFe.Abrir;
//  libtnNFCe.Visible := (Empresa.FieldByName('EMITE_NFCE').AsString = 'S');
//  libtnSAT.Visible := (Empresa.FieldByName('EMITE_SAT').AsString = 'S');
//  Atualizar;
end;

procedure TFrmVendaFrameNotaFiscal.btnNFeClick(Sender: TObject);
var
  Erros, ACOO: string;
  AOk: Boolean;
  AIni: TIniFile;
  ATipoContribuinte: TpcnindIEDest;
  AForm: TCustomForm;
begin
  // Checar o sertificado Difgital, e Enviar para o cadastro da Empresa, Quais os Erros do acesso ao Certificado Digital?
//  if Not FFrmNotaFiscal.FFrmNFe.ACBrNFe1.Configuracoes.Certificados.VerificarValidade then
//  begin
//    ShowMessage('Seu Certificado não esta válido!!');
//    Exit;
//  end;
  VerificaNotasJaEmitidas;
  TFrmEmpresa.MigrarConfiguracaoNFe;
  AForm := GetParentFormWR(Self);

//  if not FFrameVenda.PodeEditarVenda then
//  begin
//    if ShowMessageWR('Essa Venda já está faturada, deseja gerar uma nova Nota Fiscal?', MB_ICONQUESTION) = mrYes then
//    begin
//      FFrameVenda.CopiarVendaComProduto(vtmNotaFiscal);
//      ShowMessageWR('Concluído!');
//    end;
//   // Exit; assim existe a possibilidade de escolha sem precisar criar mais um Tconfig
//  end;
  //inherited;
  with FFrameVenda do
  begin

    with FFrmNotaFiscal.FFrmNFe do
      if TWinControl(Sender).Name = 'btnNFCe' Then
        WREventosCadastro.ValidaCamposObrigatorio(FFrameVenda, 'NFCe')
      else
        WREventosCadastro.ValidaCamposObrigatorio(FFrameVenda, 'NFE');

    if Cadastro.FieldByName('PODE_ATUALIZAR_CADASTRO').AsString = 'S' then
    begin
      edtPessoa_Responsavel_CodigoPropertiesEditValueChanged(nil);
    end;

    EdtResponsavelÎPessoasÎRAZAOSOCIAL.ValidateEdit(True);
    if (Venda_Financeiro.RecordCount > 0) and not VerificaTotalParcelas then
      Exit;

    ATipoContribuinte := StrToindIEDest(AOk, DS.DataSet.FieldByName('RESPONSAVEL_TIPO_CONTRIBUINTE').AsString);
    if not AOk then
      ATipoContribuinte := inContribuinte;

    if (DS.DataSet.FieldByName('CONSUMIDOR_FINAL').AsString = 'N') and (ATipoContribuinte <> inContribuinte) then
    begin
      edtConsumidor_Final.SetFocusWR;
      FrmPrincipal.ActivateBalloonHint(edtConsumidor_Final, '', 'Tem que ser consumidor final quando o cliente não for Contribuinte. Mude para "S"'+lineBreak+
                                                      '401->Rejeicao: Operacao com nao contribuinte deve indicar operacao com consumidor final.');
      Exit;
    end;
    DS.DataSet.DisableControls;
    BtnNFe.Enabled := False;
    try
      with FFrmNotaFiscal.FFrmNFe do
      try
        {$REGION 'Verifica NFe ou NFCe'}
        if TWinControl(Sender).Name = 'btnNFCe' Then // Verifica se quem chamou a função foi NFCe
          FwrNotaFiscal.NotaTipo := nftNFCe
        else
          FwrNotaFiscal.NotaTipo := nftNFe;
        with ACBrNFe1.Configuracoes.Geral do
        begin
          if FwrNotaFiscal.NotaTipo = nftNFCe then
            ModeloDF := moNFCe
          else
            ModeloDF := moNFe;
        end;
        {$ENDREGION}

        {$REGION 'Calcula Impostos'}
        Calculartodososimpostos1Click(self); //aqui dentro tem a flag para não calcular impostos
        VerificaTributacaoProdutos;
        {$ENDREGION}

        ACBrNFe1.NotasFiscais.Clear;

        FwrNotaFiscal.ACBrNFe           := ACBrNFe1;
        FwrNotaFiscal.DataAtual         := DataHoraSys;
        FwrNotaFiscal.ComunicacaoVisual := ComunicacaoVisual;
//        FwrNotaFiscal.ImprimirXPedNPed  := TConfig.ReadBoolean('NF_NFE_IMPRIMIR_XPED_NTEMPED');
        FwrNotaFiscal.VersaoSistema     := Sistema.Versao;
        FwrNotaFiscal.PafNFe            := PAFNFE;
        FwrNotaFiscal.Transportadora.Open;

        // Desabilita a tela para o usuário não poder clicar em confirmar, será habilitada novamente quando finalizar a emissão da nota
        AForm.Enabled := False;
        {$REGION 'Verifica o Ambiente se esta em homologação ou Produção'}
        if rgTipoAmb.ItemIndex  = 0 then
          FwrNotaFiscal.NotaAmbiente := taProducao
        else
        begin
          FwrNotaFiscal.NotaAmbiente := taHomologacao;
          if ShowMessageWR('A Nota Fiscal '+IfThen((FwrNotaFiscal.NotaTipo = nftNFCe), '(NFCe) ')+'será emitida em ambiente de Homologação. Neste caso, esta nota não terá valor fiscal.' +
                           sLineBreak + 'Deseja continuar?', MB_ICONQUESTION) <> mrYes then
            Exit;
        end;
        {$ENDREGION}
        {$REGION 'Gera o numero da nota'}

        FwrNotaFiscal.NumeroCOO := 0;
        if FWRCalc.DBVendaOuCompra.FieldByName('VENDA_TIPO').AsString = 'CUPOM' then
        begin
          // Se for só para visualizar não precisa passar por aqui.
          if not (TWinControl(Sender).Name = 'PrVsualizarNFe1')  then   // Aproveitei código E daí vai falar que ta feio?
          begin
            FwrNotaFiscal.NumeroCOO := DS.DataSet.FieldByName('NOTAFISCAL').AsInteger;
            DS.DataSet.FieldByName('NOTAFISCAL').AsInteger := 0;
          end
        end;

        if (TWinControl(Sender).Name = 'PrVsualizarNFe1') and
           (DS.DataSet.FieldByName('NOTAFISCAL').AsInteger = 0)  then
        begin // Pega o número só para visualizar mesmo, mas não faz nada.
          TConfig.Atualizar;
          if FwrNotaFiscal.NotaTipo = nftNFCe then
            FwrNotaFiscal.NotaNumero := IfThen(FwrNotaFiscal.NotaAmbiente = taProducao, TConfig.ReadInteger('NOTAFISCAL_CUPOM'),
                                                       TConfig.ReadInteger('NOTAFISCAL_CUPOM_HOMOLOGACAO'))
          else
            FwrNotaFiscal.NotaNumero := IfThen(FwrNotaFiscal.NotaAmbiente = taProducao, TConfig.ReadInteger('NOTAFISCAL'),
                                                       TConfig.ReadInteger('NOTAFISCAL_HOMOLOGACAO'));
        end
        else
        if (DS.DataSet.FieldByName('NOTAFISCAL').AsInteger = 0) then
        begin
          TConfig.Atualizar;        // Isso permite realizar e tirar o cache do número do rRPS na Emissão de nota em 2 computadores
          if FwrNotaFiscal.NotaTipo = nftNFCe then
            FwrNotaFiscal.NotaNumero := IfThen(FwrNotaFiscal.NotaAmbiente = taProducao, TConfig.ReadInteger('NOTAFISCAL_CUPOM'),
                                                       TConfig.ReadInteger('NOTAFISCAL_CUPOM_HOMOLOGACAO'))
          else
            FwrNotaFiscal.NotaNumero := IfThen(FwrNotaFiscal.NotaAmbiente = taProducao, TConfig.ReadInteger('NOTAFISCAL'),
                                                       TConfig.ReadInteger('NOTAFISCAL_HOMOLOGACAO'));
          IncrementaNumeroNota(FwrNotaFiscal.NotaTipo, FwrNotaFiscal.NotaAmbiente);
          FwrNotaFiscal.NotaNumero := IfThen(FwrNotaFiscal.NotaNumero = 0, 1, FwrNotaFiscal.NotaNumero);
          VerificaSePodeAlteraDataSet;
          DS.DataSet.FieldByName('NOTAFISCAL').AsFloat:=FwrNotaFiscal.NotaNumero;
        end
        else
          FwrNotaFiscal.NotaNumero:=DS.DataSet.FieldByName('NOTAFISCAL').AsInteger;
        {$ENDREGION}

        FwrNotaFiscal.GerarNota;
        DS.DataSet.Post;
        TransaFD.Commit;
//        btnConfirmar.Click; //Feito confirmação para gravar os totais da nota após o calculo dos impostos.

        {$REGION 'Validação do XML'}
//            ACBrNFe1.NotasFiscais.Validar;
//          ACBrNFe1.NotasFiscais.GerarNFe;
//          ACBrNFe1.NotasFiscais.Assinar;
//          ACBrNFe1.NotasFiscais.ValidarRegrasdeNegocios();
//          ACBrNFe1.WebServices.Envia(DataModule_NF.qry_nf.FieldByName('n_nf').AsInteger);
        {$ENDREGION}
//            PreencheComponenteImpressaoDANFE;  testando a nova rotina abaixo, apagar aqui se der certo
        ConfiguraDANFe(ACBrNFe1);
        TFrmNFe.ConfiguraFuso(ACBrNFe1, 'Emissao');
        if TWinControl(Sender).Name = 'PrVsualizarNFe1'  then   // Aproveitei código E daí vai falar que ta feio?
        begin
          ACBrNFe1.NotasFiscais.Imprimir;
          Exit;
        end else
        begin
          {$REGION 'DEBUG'}
//            ACBrNFe1.NotasFiscais.GerarNFe;
//            GeraExcecao('');
//            ACBrNFe1.NotasFiscais.Assinar;
//            ACBrNFe1.NotasFiscais.Validar;
          {$ENDREGION}

          if (DS.DataSet.FieldByName('PODE_NF_VALIDAR').AsString = 'S') AND not ACBrNFe1.NotasFiscais.ValidarRegrasdeNegocios(Erros) then    // Aqui vai a mágica, cadastra e consulta novos Erro ou  Alertas Cadastrados
          begin
            if not (TFrmValidacoes.TrataErroNFe(TForm(AForm), Erros) = mrOK) then
              Exit;
          end;

          TFrmNfe.InsereNovaNFeNoBanco(FFrmNotaFiscal.FFrmNFe.ACBrNFe1, DS.DataSet.FieldByName('CODIGO').AsString);

          if FwrNotaFiscal.NotaTipo = nftNFCe then
          begin
            ACBrNFe1.Enviar(Trunc(FwrNotaFiscal.NotaNumero), False, (FwrNotaFiscal.NotaTipo = nftNFCe));

          end else
          ACBrNFe1.Enviar(Trunc(FwrNotaFiscal.NotaNumero), True, (FwrNotaFiscal.NotaTipo = nftNFCe));

          if (ACBrNFe1.WebServices.Retorno.RetornoWS <> '') and
             (ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat in [100, 110, 150]) then //As exceções são tratadas no final desta rotina
            FinalizarEmissaoNota(ACBrNFe1, FwrNotaFiscal.NotaTipo);

          {$REGION 'Retorno do PAF'}
          if PAFNFE then
          begin
            AIni := TIniFile.Create(GetDirSistema + 'PAFNFE.ini');
            try
              AIni.WriteString('Geral', 'ChaveNFE', StringReplace(ACBrNFe1.NotasFiscais[0].NFe.infNFe.ID, 'NFe', '', [rfIgnoreCase]));
            finally
              AIni.Free;
            end;
          end;
          {$ENDREGION}
        end;
      except
        {$REGION 'Trata excessão'}
        on E:Exception do
        begin
//          btnCancelarClick(nil);
          if ContainsText(E.Message, 'Forbidden') then
            ShowMessageWR('Seu Certificado Digital foi negado pelo SEFAZ. ' + sLineBreak +
                          'Verifique a data de validade do Certificado Digital. Caso o certificado esteja expirado, ' +
                          'entre em contato com o seu escritório de contabilidade para solicitar um novo ' +
                          'Certificado Digital para emissão de Nota Fiscal Eletrônica (NF-e).', MB_ICONWARNING)
          else if ContainsText(E.Message, 'Duplicidade de NF-e') then
            TrataDuplicidadeEmissaoNFe(ACBrNFe1, FwrNotaFiscal.NotaTipo)
          else if ContainsText(E.Message, 'DadosPFX, ArquivoPFX ou NumeroSerie não especificados') then
          begin
            if ShowMessageWR('Certificado não encontrado.' + sLineBreak +
                             '(DadosPFX, ArquivoPFX ou NumeroSerie não especificados)' + sLineBreak +
                             'Deseja Configurar?', MB_ICONQUESTION) = mrYes then
            begin
//              FFrmNotaFiscal.FFrmNFe.PageControl1.TabIndex:=0;
              poupConfigurar.Click;
            end;
          end
//            else if ContainsText(E.Message, 'TimeOut') then
//              TFrmNFe.TrataTimeOut(ACBrNFe1, Venda.FieldByName('CODIGO').AsString);
          else if not (E is EAbort) then
            TFrmValidacoes.TrataErroNFe(TForm(AForm), E.Message);  //ShowMessageWR(E.Message, MB_ICONWARNING);
        end;
        {$ENDREGION}
      end;
    finally
      AForm.Enabled := True;
      BtnNFe.Enabled  := cbxPode_Emitir_NotaFiscal.Text = 'S';
      BtnNFCe.Enabled := cbxPode_Emitir_NotaFiscal.Text = 'S';
      BtnSAT.Enabled  := cbxPode_Emitir_NotaFiscal.Text = 'S';
      DS.DataSet.EnableControls;
    end;
  end;
  Atualizar;
//  if FwrNotaFiscal.NotaTipo = nftNFCe then
  FFrmNotaFiscal.ConsultaNotaSelecionadaNaSEFAZPelaVenda(False);
  if DS.DataSet.FieldByName('NF_STATUS').AsString = 'Confirmada' then
    FFrameVenda.UCHist_Cadastro.MensagemHistorico.Add('-> ' + IfThen(FwrNotaFiscal.NotaTipo = nftNFe, 'NFe', 'NFCe') + ' ' + VarToStrDef(FwrNotaFiscal.NotaNumero,'') + ' emitida com sucesso.' + IfThen(FwrNotaFiscal.NumeroCOO <> 0, ' Vinculada ao cupom ' + VarToStrDef(FwrNotaFiscal.NumeroCOO,'') + '.', ''));
  if DS.DataSet.FieldByName('NF_STATUS').AsString = 'Desconhecida' then
    FFrameVenda.UCHist_Cadastro.MensagemHistorico.Add('-> ' + IfThen(FwrNotaFiscal.NotaTipo = nftNFe, 'NFe', 'NFCe') + ' ' + VarToStrDef(FwrNotaFiscal.NotaNumero,'') + ' emitida com situação Desconhecida.' + IfThen(FwrNotaFiscal.NumeroCOO <> 0, ' Vinculada ao cupom ' + VarToStrDef(FwrNotaFiscal.NumeroCOO,'') + '.', ''));
end;

function TFrmVendaFrameNotaFiscal.ConsultaNota3X: Boolean;
var
  Count : Integer;
begin
  with FFrmNotaFiscal.FFrmNFe do
  begin
    Count := 0;
    Repeat
      sleep(3000);
//      ACBrNFe1.WebServices.Consulta.Executar;
      inc(Count);
    Until (Count >= 3) or (ACBrNFe1.CstatConfirmada(ACBrNFe1.NotasFiscais[0].NFe.procNFe.cStat));
    Result := ACBrNFe1.CstatConfirmada(ACBrNFe1.NotasFiscais[0].NFe.procNFe.cStat);
    if Result = False then
    begin
      if ShowMessageWR('Nota não confirmada, Deseja tentar Consultar Novamente?', MB_ICONQUESTION) = mrYes then
        ConsultaNota3X;
    end;

  end;
end;

procedure TFrmVendaFrameNotaFiscal.btnNFeMenuClick(Sender: TObject);
begin
  PopNFe.PopupOnMouse;
end;

procedure TFrmVendaFrameNotaFiscal.CartadeCorreo1Click(Sender: TObject);
begin
  if Assigned(FFrmNotaFiscal) then
    FFrmNotaFiscal.CartadeCorreo1Click(Self);
end;

procedure TFrmVendaFrameNotaFiscal.Configuraes1Click(Sender: TObject);
begin
  TFrmSAT.AbrirConfiguracao;
end;

procedure TFrmVendaFrameNotaFiscal.ConsultarcarregandoXML1Click(Sender: TObject);
begin
  FFrmNotaFiscal.FFrmNFe.btnConsultarClick(nil);
end;

procedure TFrmVendaFrameNotaFiscal.btnNotaFiscalClick(Sender: TObject);
begin
  with TFrmNotaFiscal.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
  DS.DataSet.Refresh;
end;

procedure TFrmVendaFrameNotaFiscal.btnSATClick(Sender: TObject);
var
  ACodVendaNew : String;
begin
//  VerificaNotasJaEmitidas;

  BtnSAT.Enabled := False;
  try
   (* if not FFrameVenda.PodeEditarVenda then
    begin
      if ShowMessageWR('Está venda não pode ser editada, Deseja criar uma NOVA venda e gerar uma nota fiscal?', MB_ICONQUESTION) = mrYes then
      begin
        FFrameVenda.TransaFD.StartTransaction;

//        AFrmVendaNovo := TFrmVendaFrameNotaFiscal(ConsultaForm(TFrmVenda));
        ACodVendaNew := FFrameVenda.CopiarVendaEFinanceiro( ds.DataSet, FwrNotaFiscal.VendaFinanceiro, FWRCalc.DSProduto.Produto , '');
        AFrmVendaNovo.CloseOpen_AbrirRegistro(ACodVendaNew);

        FFrameVenda.CopiarVendaComProduto(TFormClass(FFrameVenda), True, FFrameVenda, AFrmVendaNovo);

        FFrameVenda.TransaFD.Commit;
        ShowMessageWR('Concluído!');
      end;
      Exit;
    end;  *)

    TDMSAT.GerarCFeSAT(FWRCalc.DBVendaOuCompra, FWRCalc.DBProduto, FwrNotaFiscal.VendaFinanceiro,
      FFrmNotaFiscal.NotaFiscalXML);
    FFrameVenda.btnConfirmarClick(nil); // Usar assim com nil, para confirmar na marra.
    FFrmNotaFiscal.NotaFiscalXML.Close;
    FFrmNotaFiscal.NotaFiscalXML.Open;
  finally
    BtnSAT.Enabled := FFrameVenda.UCControls1.GetComponentRight(BtnSAT).Enabled;
  end;
end;

procedure TFrmVendaFrameNotaFiscal.btnBuscarXMLClick(Sender: TObject);
var
  AACBrNFe: TACBrNFe;
  AChave: string;
begin
  inherited;
  OdNFe.InitialDir := GetDirSistema + 'NFe\' + OnlyNumber(Empresa.FieldByName('CNPJCPF').AsString) + '\XML\';
  if OdNFe.Execute then
  begin
    AACBrNFe := TACBrNFe.Create(nil);
    try
      AACBrNFe.NotasFiscais.LoadFromFile(OdNFe.FileName);
      AChave := OnlyNumber(AACBrNFe.NotasFiscais[0].NFe.infNFe.ID);
    finally
      AACBrNFe.Free;
    end;
    VerificaSePodeAlteraDataSet;
    DS.DataSet.FieldByName('NF_NREF').AsString := AChave;
  end;
end;

procedure TFrmVendaFrameNotaFiscal.cxDBCheckBox5PropertiesEditValueChanged(Sender: TObject);
begin
  edtNF_Observacao.Enabled := (Not chkNF_Observacao_Padrao.Checked );
end;

procedure TFrmVendaFrameNotaFiscal.cbxNF_CodNatureza_OperacaoPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
   if FWRCalc <> nil then
    if FWRCalc.DBVendaOuCompra.State in dsEditModes then
    begin
      FFrameVenda.Calculartodososimpostos1Click(self);
      VerificaTributacaoProdutos;
    end;
end;

procedure TFrmVendaFrameNotaFiscal.cbxNF_CodNatureza_OperacaoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if FWRCalc <> nil then
    if FWRCalc.DBVendaOuCompra.State in dsEditModes then
    begin
      FWRCalc.DBVendaOuCompra.FieldByName('NF_NATUREZA_OPERACAO').AsString := Procura('DESCRICAO','NF_NATUREZA_OPERACAO',FWRCalc.DBVendaOuCompra.FieldByName('NF_CODNATUREZA_OPERACAO').AsInteger);
//      FFrameVenda.Calculartodososimpostos1Click(self);
//      VerificaTributacaoProdutos;
    end;

    //FWRCalc.DBVendaOuCompra.FieldByName('NF_NATUREZA_OPERACAO').AsString := cbxNF_CodNatureza_Operacao.Text
end;

procedure TFrmVendaFrameNotaFiscal.cbxNF_FretePorContaExit(Sender: TObject);
begin
  if DS.DataSet.State in dsEditModes then
    FWRCalc.SuperCalc;
end;

procedure TFrmVendaFrameNotaFiscal.CxDBPodeEmitirNFPropertiesChange(Sender: TObject);
begin
  //Tem a mesma programação neste combo na tela da venda, guia de dados adicionais
  licbxPode_Emitir_NotaFiscal.Visible:= cbxPode_Emitir_NotaFiscal.Text <> 'S';
  if cbxPode_Emitir_NotaFiscal.Text = 'S' then
    cbxPode_Emitir_NotaFiscal.Hint:= 'Pode Emitir Nota Fiscal'
  else
    cbxPode_Emitir_NotaFiscal.Hint:= 'Verifique a Opção No Tipo de Venda ou a Configuração Geral: Permite emissão da Nota Fiscal Somente Após o Faturamento.';

  BtnNFe.Enabled  := cbxPode_Emitir_NotaFiscal.Text = 'S';
  BtnNFCe.Enabled := cbxPode_Emitir_NotaFiscal.Text = 'S';
  BtnSAT.Enabled  := cbxPode_Emitir_NotaFiscal.Text = 'S';
end;

procedure TFrmVendaFrameNotaFiscal.cxLabel2Click(Sender: TObject);
begin
  inherited;
  FrmPrincipal.ActivateBalloonHint(edtConsumidor_Final, 'Tributação para Revenda', 'Verifique se esta natureza de operação possui tributação para revenda');
//  FFrameVenda.TabProdutos.MakeVisible;
end;

procedure TFrmVendaFrameNotaFiscal.edtVOutroExit(Sender: TObject);
begin
//  FFrameVenda.EdtValorAcrescimoExit(Sender);
end;

procedure TFrmVendaFrameNotaFiscal.WRCalcVENDA(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  FWRCalc.ValidaCampoVENDA(Sender);
end;

procedure TFrmVendaFrameNotaFiscal.edtNF_ValorAduaneiraExit(Sender: TObject);
var
  ABookmark: TBookmark;
begin
  ABookmark := FWRCalc.DBProduto.GetBookmark;
  FWRCalc.DBProduto.DisableControls;
  try
    if ShowMessageWR('Deseja Ratear o Valor da Aduaneira, para os produtos?', MB_ICONQUESTION) <> mrYes then
      Exit;
    FWRCalc.DBProduto.First;
    while not FWRCalc.DBProduto.Eof do
    begin
      FWRCalc.DBProduto.Edit;
      FWRCalc.DBProduto.FieldByName('NF_II_VDESPADU').AsFloat := (DS.DataSet.FieldByName('NF_VALORADUANEIRA').AsFloat / FWRCalc.DBProduto.RecordCount);
      FWRCalc.DBProduto.Post;
      FWRCalc.DBProduto.Next;
    end;
  finally
    if ABookmark <> nil then
      FWRCalc.DBProduto.GotoBookmark(ABookmark);
    FWRCalc.DBProduto.EnableControls;
  end;
end;

procedure TFrmVendaFrameNotaFiscal.edtDtFaturamentoPropertiesChange(Sender: TObject);
begin
  inherited;
  edtNF_VFrete.Enabled  := DS.DataSet.FieldByName('DT_FATURAMENTO').IsNull;
  edtVOutro.Enabled     := DS.DataSet.FieldByName('DT_FATURAMENTO').IsNull;
  edtNF_VSEG.Enabled    := DS.DataSet.FieldByName('DT_FATURAMENTO').IsNull;
end;

procedure TFrmVendaFrameNotaFiscal.edtNF_NREFExit(Sender: TObject);
begin
   if ShowMessageWR('Deseja incluir na observação da nota os dados de Referência?', MB_ICONQUESTION) = mrYes then
   begin
      if (edtNF_NREF.Text = '') then
      begin
        ShowMessageWR('Campo NF de Referência está em Branco.',  MB_ICONWARNING);
        exit;
      end
      else
      begin
        if (DS.DataSet.State <> dsEdit) then
          DS.DataSet.Edit;

        DS.DataSet.FieldByName('NF_OBSERVACAO').AsString :=
         DS.DataSet.FieldByName('NF_OBSERVACAO').AsString + sLineBreak +
         ' Documentos Fiscais Referenciados ' + sLineBreak +
         ' Nota Fiscal Eletrônica : ' + DS.DataSet.FieldByName('NOTAFISCAL').AsString + sLineBreak +
         ' Chave de Acesso: ' + DS.DataSet.FieldByName('NF_NREF').AsString;
      end;
   end;
// Aqui tem qu informar a Nota de referencia que originou essa correção
end;

procedure TFrmVendaFrameNotaFiscal.EnviarEmailNFe(AEnderecoDestino: string);
var
  ATmpStr, AMensagem, AAssunto: string;
  AAnexos: TStringList;
begin
  if AEnderecoDestino = '' then
    Exit;

  with FFrmNotaFiscal.FFrmNFe do
  begin
     AAssunto   := Empresa.FieldByName('NF_EMAIL_ASSUNTO').AsString;
     AMensagem  := Empresa.FieldByName('NF_EMAIL_MENSAGEM').AsString;

    ReplaceTagsEmail(AMensagem, AAssunto,
                     DS.DataSet.FieldByName('CODIGO').AsString,
                     DS.DataSet.FieldByName('NOTAFISCAL').AsString,
                     DS.DataSet.FieldByName('RAZAOSOCIAL').AsString,
                     Procura('RAZAOSOCIAL', 'EMPRESA', EmpresaAtiva),
                     DS.DataSet.FieldByName('PEDIDO_COMPRA').AsString);

//    Empresa.FieldByName('NF_EMAIL_BACKUP').AsString := TConfig.ReadString('EmailCopiaNFe');
    if Empresa.FieldByName('NF_EMAIL_BACKUP').AsString <> '' then
      AEnderecoDestino := AEnderecoDestino + ';' + Empresa.FieldByName('NF_EMAIL_BACKUP').AsString;

    with ACBrNFe1.NotasFiscais[0].NFe do
    begin
      AAnexos := TStringList.Create;
      try
        ATmpStr := IncludeTrailingPathDelimiter(ACBrNFe1.Configuracoes.Arquivos.PathSalvar) + 'TempXML\' +
                                                infNFe.ID.Replace('NFe', '\') + '-nfe.xml';
        if not FileExists(ATmpStr) then
          ACBrNFe1.NotasFiscais.Items[0].GravarXML(infNFe.ID.Replace('NFe', '') + '-nfe.xml',
                                                   IncludeTrailingPathDelimiter(ACBrNFe1.Configuracoes.Arquivos.PathSalvar) + 'TempXML\');
        AAnexos.Add(ATmpStr);

        ACBrNFe1.DANFE.ImprimirDANFEPDF(ACBrNFe1.NotasFiscais.Items[0].NFe);
        ATmpStr := StringReplace(infNFe.ID, 'NFe', '', [rfIgnoreCase]);
        ATmpStr := PathWithDelim(ACBrNFe1.DANFE.PathPDF) + ATmpStr + '.pdf';
        if not FileExists(ATmpStr) then
        begin
          ATmpStr := StringReplace(infNFe.ID, 'NFe', '', [rfIgnoreCase]);
          ATmpStr := PathWithDelim(ACBrNFe1.DANFE.PathPDF) + ATmpStr + '-nfe.pdf';
        end;
        AAnexos.Add(ATmpStr);
        if (TConfig.ReadBoolean('NFE_ESCOLHE_EMAIL')) then
          TFrmEmail.GerarEmail(GetParentFormWR(Self), AEnderecoDestino, AAssunto, AMensagem, AAnexos)
        else
          TFrmEmail.EnviarEmail3(TFrmEmail.GetEnderecoEmail(AEnderecoDestino)[0], AEnderecoDestino, AAssunto, AMensagem, AAnexos);
      finally
        AAnexos.Free;
      end;
    end;
  end;
end;

procedure TFrmVendaFrameNotaFiscal.EnviarNFeporEmail1Click(Sender: TObject);
begin
  if Assigned(FFrmNotaFiscal) then
    FFrmNotaFiscal.EnviarEmail4Click(nil);
end;

procedure TFrmVendaFrameNotaFiscal.FinalizarEmissaoNota(const AACBrNFe: TACBrNFe; const ATipoNota: TwrNotaFiscalTipo);
begin
  TFrmNfe.GravaNFeNoBanco(AACBrNFe, DS.DataSet.FieldByName('CODIGO').AsString);

  AlteraDataSet(DS.DataSet);
//  IncrementaNumeroNota(ATipoNota, AACBrNFe.NotasFiscais[0].NFe.Ide.tpAmb);
  AtualizarNotaNaVenda(DS.DataSet, FWRCalc.DBProduto, AACBrNFe);
  FFrameVenda.btnConfirmarClick(nil);  // Usar assim com nil, para confirmar na marra.
  AACBrNFe.NotasFiscais.ImprimirPDF;

  {$REGION 'Envia email'}
  if (Empresa.FieldByName('TEM_NF_EMAIL_ENVIO').AsString = 'S') {$IFNDEF DEBUG} and (AACBrNFe.NotasFiscais[0].NFe.Ide.tpAmb = taProducao) {$ENDIF} then
    EnviarEmailNFe(DS.DataSet.FieldByName('RESPONSAVEL_EMAIL').AsString);
  {$ENDREGION}
end;

procedure TFrmVendaFrameNotaFiscal.GerarPDF1Click(Sender: TObject);
begin
  if Assigned(FFrmNotaFiscal) then
    FFrmNotaFiscal.S1Click(Self);
end;

procedure TFrmVendaFrameNotaFiscal.ImprimirDANFE1Click(Sender: TObject);
begin
  if Assigned(FFrmNotaFiscal) then
    FFrmNotaFiscal.cxGridDBTableView2DblClick(nil);
end;

procedure TFrmVendaFrameNotaFiscal.IncrementaNumeroNota(ATipoNota: TwrNotaFiscalTipo; ATipoAmbiente: TpcnTipoAmbiente);
var
  ACampo: string;
begin
  case ATipoAmbiente of
    taProducao:
      begin
        case ATipoNota of
          nftNFe:  ACampo := 'NOTAFISCAL';
          nftNFCe: ACampo := 'NOTAFISCAL_CUPOM';
          nftNFSe: ACampo := 'NOTAFISCAL_SERVICO';
        end;
      end;
    taHomologacao:
      begin
        case ATipoNota of
          nftNFe:  ACampo := 'NOTAFISCAL_HOMOLOGACAO';
          nftNFCe: ACampo := 'NOTAFISCAL_CUPOM_HOMOLOGACAO';
          nftNFSe: ACampo := 'NOTAFISCAL_SERVICO_HOMOLOGACAO';
        end;
      end;
  end;
   TConfig.SaveInteger(ACampo, TConfig.ReadInteger(ACampo)+1);//TODO: testar nfe
end;

function TFrmVendaFrameNotaFiscal.IsCStatDenegado(AcStat: Integer): Boolean;
begin
  //Colocar aqui a lista de códigos cStat que representam Denegação de SEFAZ e que tornam o número da nota não reutilizável
  case AcStat of
    110, 205, 233, 234, 301, 302, 303 : Result := True;
  else
    Result := False;
  end;
end;

procedure TFrmVendaFrameNotaFiscal.lblProdutosTributacaoIncorretaClick(
  Sender: TObject);
begin
  inherited;
  if FWRCalc.DBVendaOuCompra.FieldByName('CONSUMIDOR_FINAL').AsString = 'N' then
    FrmPrincipal.ActivateBalloonHint(edtConsumidor_Final, 'Tributação para Revenda', 'Verifique se esta natureza de operação possui tributação para revenda')
  else
    FFrameVenda.TabProdutos.MakeVisible;
end;

procedure TFrmVendaFrameNotaFiscal.PnlNotasFiscaisResize(Sender: TObject);
begin
  if FFrmNotaFiscal <> nil then
  begin
    FFrmNotaFiscal.Left := 0;
    FFrmNotaFiscal.Top := 0;
    FFrmNotaFiscal.Height := PnlNotasFiscais.Height;
    FFrmNotaFiscal.Width := PnlNotasFiscais.Width;
  end;
end;

procedure TFrmVendaFrameNotaFiscal.PopNFePopup(Sender: TObject);
begin
  MenuNotaFiscal1.Enabled := FrmPrincipal.Action_Notas_Fiscais.Enabled;
end;

procedure TFrmVendaFrameNotaFiscal.PopNotaComplementarClick(Sender: TObject);
var
  QuerVenda, QuerVendaProduto: TWRDataSet;
  i: integer;
  ANovoCodVenda, AOldCodVenda: string;
  AField: TField;
  FOldBeforePost: TDataSetNotifyEvent;
begin
  inherited;
  with FFrameVenda do
  begin
    FOldBeforePost   := FWRCalc.DBProduto.BeforePost;
    FWRCalc.DBProduto.BeforePost := nil;
    QuerVenda        := TWRDataSet.Create(FWRCalc.DBVendaOuCompra);
    QuerVendaProduto := TWRDataSet.Create(FWRCalc.DBVendaOuCompra);
    try
      AOldCodVenda := FWRCalc.DBVendaOuCompra.FieldByName('CODIGO').AsString;
      QuerVenda.SQL.Text := 'select * ' +
                            'from VENDA ' +
                            'where (CODIGO = :Cod)';
      QuerVenda.Params[0].AsString := AOldCodVenda;
      QuerVenda.Open;
      if not QuerVenda.IsEmpty then
      begin
        //Cria nova venda
        btnNovoClick(nil);
        ANovoCodVenda := FWRCalc.DBVendaOuCompra.FieldByName('CODIGO').AsString;
        FWRCalc.DBVendaOuCompra.DisableControls;
        try
          for i := 0 to QuerVenda.FieldCount - 1 do
          begin
            AField := FWRCalc.DBVendaOuCompra.FindField(QuerVenda.Fields[i].FieldName);
            if Assigned(AField) and not MatchStr(AField.FieldName, ['VENDA_TIPO', 'CODIGO', 'TOTAL', 'DT_FATURAMENTO']) then
              AField.Value := QuerVenda.Fields[i].Value;
          end;

          //Adiciona os produtos
          FWRCalc.DBProduto.DisableControls;
          QuerVendaProduto.SQL.Text := 'select * ' +
                                       'from VENDA_PRODUTO ' +
                                       'where (CODVENDA = :Cod)';
          QuerVendaProduto.Params[0].AsString := AOldCodVenda;
          QuerVendaProduto.Open;
          FWRCalc.DBProduto.Insert;
          FWRCalc.DBProduto.FieldByName('CODVENDA').AsString := ANovoCodVenda;
          for i := 0 to QuerVendaProduto.FieldCount - 1 do
          begin
            AField := FWRCalc.DBProduto.FindField(QuerVendaProduto.Fields[i].FieldName);
            if Assigned(AField) and (AField.FieldName <> 'CODVENDA') then
            begin
              if (AField.FieldName = 'VALOR') then
                AField.AsInteger := 0
              else if (AField.FieldName = 'PICMS') then
                AField.AsInteger := 0
              else if (AField.FieldName = 'CODNF_CST') then
                AField.AsString := '000'
              else if (AField.FieldName = 'VBC') then
                AField.AsInteger := 0
              else if (AField.FieldName = 'VICMS') then
                AField.AsInteger := 0
              else if (AField.FieldName = 'QUANT') then
                AField.AsInteger := 0
              else if (AField.FieldName = 'PRODUTO') then
                AField.AsString := 'NFe Complementar'
              else
                AField.Value := QuerVendaProduto.Fields[i].Value;
            end;
          end;
          FWRCalc.DBProduto.FieldByName('QUANT').AsFloat        := 1;
          FWRCalc.DBProduto.FieldByName('QTDADEPECA').AsFloat   := 1;
          FWRCalc.DBProduto.FieldByName('CODPRODUTO').AsInteger := 0;
          FWRCalc.DBProduto.Post;

          FWRCalc.DBVendaOuCompra.FieldByName('VENDA_TIPO').AsString := 'COMPLEMENTAR';
          cbxTipo_Venda.SetTextBuf('COMPLEMENTAR');
          btnConfirmarClick(nil); //Venda.Post;   ??? TODO: Problema se não usar o Nil, mudar isso o quanto antes
        finally
          FWRCalc.DBVendaOuCompra.EnableControls;
          FWRCalc.DBProduto.EnableControls;
        end;
      end;
    finally
      QuerVenda.Free;
      QuerVendaProduto.Free;
    end;
    FWRCalc.DBProduto.BeforePost := FOldBeforePost;
  end;
end;

procedure TFrmVendaFrameNotaFiscal.RecuperarXMLpelaChave1Click(Sender: TObject);
begin
  try
    FFrmNotaFiscal.FFrmNFe.Button1Click(nil);
  finally
  end;
end;

procedure TFrmVendaFrameNotaFiscal.TrataDuplicidadeEmissaoNFe(const AACBrNFe: TACBrNFe; const ATipoNota: TwrNotaFiscalTipo);
var
  ABusca: TACBrNFe;
  AMsg, AChave: string;
  ANFe: ACBrNFeNotasFiscais.NotaFiscal;
begin
    {
    Segue o Passo a Passo: TODO : Fazer.
    Outra coisa, se uma nota foi rejeitada pelo motivo de Duplicidade é porque a sua aplicação esta deixando o usuário enviar a mesma nota mais de uma vez.
    Uma nota enviada não pode ficar disponível para ser enviada novamente a não ser que a mesma tenha sido rejeitada, por exemplo o total da nota não bate com a soma dos totais dos itens.
    Após o envio de uma nota, você deve marcar no banco de dados que a mesma foi enviada, desta forma travando para que o usuário envie novamente.
    E se por acaso a nota ficar sem protocolo?
    Neste caso devemos carregar o componente com o XML da nota que deve estar assinado e executar o método Consultar.
    Se a nota realmente foi enviada com sucesso, a SEFAZ vai retornar o protocolo de autorização, ai você atualiza o seu banco de dados.
    Agora se ocorreu erro no enviar, a SEFAZ vai retornar uma rejeição acusando que a nota não costa na base de dados deles, ai sim você libera no banco de dados a nota para ser enviada novamente.
    }

  {Quando o cliente for emitir uma NFe e houver uma duplicidade, o sistema deve garantir que não haja problemas e que a
   nota correta esteja disponível.
   Pode ter ocorrido de a nota ter sido emitida mas o sistema não recebeu o retorno. Neste caso não pode ser emitida
   uma nova nota e a correta deve ser baixada/validada.}

  ABusca := TFrmNFe.CriaComponenteACBrNFe;
  try
    AChave := TFrmNFe.BuscaChaveDuplicadaEmissao(AACBrNFe);

    //Tenta buscar a nota retornada pela chave que a SEFAZ informa no erro de duplicidade
    if TFrmNfe.BuscaNotaDuplicada(AACBrNFe, ABusca, AChave) then
    begin
      ANFe := ABusca.NotasFiscais[0];
      AMsg := 'A nota nº ' + IntToStr(AACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF) + ' retornou com status de Duplicidade. ' +
              'O sistema fez uma busca e encontrou uma nota que pode ser a nota que você já emitiu anteriormente da mesma venda.' +
              LineBreakWR(2) +
              'Dados da nota encontrada' + sLineBreak +
              'Destinatário: '    + ANFe.NFe.Dest.CNPJCPF + ' - ' + ANFe.NFe.Dest.xNome + sLineBreak +
              'Data de Emissão: ' + FormatDateTime(DATA_HORA_NS, ANFe.NFe.Ide.dEmi) + sLineBreak +
              'Total da Nota: '   + FormatFloat(DECIMAL_2M, ANFe.NFe.Total.ICMSTot.vNF) + sLineBreak +
              sLineBreak +
              'Clique em SIM para usar esta nota e vincular a venda' + sLineBreak +
              'Clique em NÃO para emitir uma NOVA Nota Fiscal e ignorar esta nota encontrada.';
      case ShowMessageWR(AMsg, MB_ICONQUESTION or MB_YESNOCANCEL) of
        mrYes: FinalizarEmissaoNota(ABusca, ATipoNota); //Finaliza a emissão da venda usando a nota encontrada
        mrNo:
        begin
          IncrementaNumeroNota(ATipoNota, AACBrNFe.NotasFiscais.Items[0].NFe.Ide.tpAmb);
          BtnNFe.Click;
        end;
      end;
      {Caso o usuário clique em Cancelar, nada precisa ser feito pois o btnCancelar da venda já foi chamado
       quando a exceção da duplicidade aconteceu. Então apenas deixa continuar e a emissão da nota finaliza sem alterações
       na venda}
    end else
    begin
      AMsg := 'A nota nº ' + IntToStr(AACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF) + ' retornou com status de Duplicidade.' + LineBreakWR(2) +
              'Clique em SIM para buscar a nota correta e vincular a venda' + sLineBreak +
              'Clique em NÃO para emitir uma NOVA Nota Fiscal e ignorar a duplicidade.';
      case ShowMessageWR(AMsg, MB_ICONQUESTION or MB_YESNOCANCEL) of
        mrYes:
        begin
          if TFrmNFeDuplicidade.AbrirQuandoNaoEncontrou(AChave, ABusca) then
          begin
            FinalizarEmissaoNota(ABusca, ATipoNota); //Finaliza a emissão da venda usando a nota encontrada
            TFrmNFe.ImprimirNota(ABusca);
          end;
        end;
        mrNo:
        begin
          IncrementaNumeroNota(ATipoNota, AACBrNFe.NotasFiscais.Items[0].NFe.Ide.tpAmb);
          BtnNFe.Click;
        end;
      end;
    end;
  finally
    ABusca.Free;
  end;
end;

procedure TFrmVendaFrameNotaFiscal.VerificaNotasJaEmitidas;
var
  AACBrNFe: TACBrNFe;
  ACount: Integer;
  APoint: TBookmark;
  ATentarNovamente, AJaMostrouDesconhecida, AOk: Boolean;
  AFrmAguarde: TFrmAguarde;
begin
  {Rotina que é executada antes da emissão de notas ficais. O objetivo é avaliar as notas já vinculadas a venda buscando
   por situações que devem ser tratadas antes da emissão da nota. Ex:
   - Se já existir uma nota Autorizada, o sistema deve mostrar a nota, não deve ser emitido uma nova.
   - Se há uma nota Desconhecida, uma consulta deve ser feita.
   etc..}

  AJaMostrouDesconhecida := False;

  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
  FFrmNotaFiscal.NotaFiscalXML.DisableControls;
  try
    APoint := FFrmNotaFiscal.NotaFiscalXML.GetBookmark;
    FFrmNotaFiscal.NotaFiscalXML.First;
    while not FFrmNotaFiscal.NotaFiscalXML.Eof do
    begin
      if (StrToTpAmb(AOk, FFrmNotaFiscal.NotaFiscalXML.FieldByName('NF_AMBIENTE').AsString) = taHomologacao) and AOk then
      begin
        FFrmNotaFiscal.NotaFiscalXML.Next;
        Continue;
      end;
      
      //Nota Autorizada
      if AACBrNFe.CstatConfirmada(FFrmNotaFiscal.NotaFiscalXML.FieldByName('NF_CSTAT').AsInteger)
         and not IsCStatDenegado(FFrmNotaFiscal.NotaFiscalXML.FieldByName('NF_CSTAT').AsInteger) then
      begin
        ShowMessageWR('Já há uma nota autorizada emitida para esta venda. Clique em OK para visualizar.', MB_ICONWARNING);
        TFrmNFe.CarregaNota(FFrmNotaFiscal.NotaFiscalXML, AACBrNFe);
        TFrmNFe.ImprimirNota(AACBrNFe);
        Abort;
      end;

      //Nota Desconhecida
      if AnsiSameText(TFrmNFe.GetCStatDescricao(FFrmNotaFiscal.NotaFiscalXML.FieldByName('NF_CSTAT').AsInteger), 'Desconhecida') then
      begin
        if not AJaMostrouDesconhecida then
        begin
          ShowMessageWR('Há uma nota com status "Desconhecida". O sistema irá primero consultar esta nota.');
          AJaMostrouDesconhecida := True;
        end;
        ACount := 0;
        ATentarNovamente := True;
        repeat
          Inc(ACount);
          FFrmNotaFiscal.ConsultaNotaSelecionadaNaSEFAZPelaVenda(False);

          //Caso o retorno seja como Autorizada, a nota já foi mostrada na tela e encerramos o processo aqui
          if AACBrNFe.CstatConfirmada(FFrmNotaFiscal.NotaFiscalXML.FieldByName('NF_CSTAT').AsInteger) then
            Abort

          //Caso o retorno continue como Desconhecido, deve estar havendo algum problema de conexão ou certificado, mas
          //mesmo assim pergunta ao usuário se deseja continuar...
          else if AnsiSameText(TFrmNFe.GetCStatDescricao(FFrmNotaFiscal.NotaFiscalXML.FieldByName('NF_CSTAT').AsInteger), 'Desconhecida') then
          begin
            if ACount < 5 then
            begin
              AFrmAguarde := TFrmAguarde.Create(Self);
              try
                AFrmAguarde.Show;
                AFrmAguarde.Mensagem := 'Aguardando para nova tentativa...';
                Sleep(1500);
              finally
                AFrmAguarde.Free;
              end;
              Continue;
            end;

            if ShowMessageWR('Não foi possível consultar a situação desta nota. Deseja IGNORAR esta nota e emitir uma NOVA nota fiscal?' +
                sLineBreak + 'Cuidado! Isso pode gerar notas duplicadas!' + sLineBreak +
                'Recomendamos clicar em NÃO e avaliar ', MB_ICONWARNING or MB_YESNO) <> mrYes then
              Abort;
          end;

          {TODO: Tratar quando for duplicidade!!! Ver se tem que ter o mesmo comportamento de quando a nota foi emitida}

          ATentarNovamente := False;
        until not ATentarNovamente;
      end;

      FFrmNotaFiscal.NotaFiscalXML.Next;
    end;
  finally
    AACBrNFe.Free;

    if FFrmNotaFiscal.NotaFiscalXML.BookmarkValid(APoint) then
      FFrmNotaFiscal.NotaFiscalXML.GotoBookmark(APoint);
    FFrmNotaFiscal.NotaFiscalXML.EnableControls;
  end;
end;

procedure TFrmVendaFrameNotaFiscal.VerificaSePodeAlteraDataSet(ADataSet: TDataSet = nil);
begin
//  PermisaoAlterar;
  if not DS.AutoEdit then   // Regra não pode ser burlada
  begin
    ShowMessageWR('Não pode alterar esse registro. ');
    Abort;
  end;
  if not Assigned(ADataSet) then
    ADataSet := DS.DataSet;
  if not (ADataSet.State in [dsEdit, dsInsert]) then
    ADataSet.Edit;
end;

procedure TFrmVendaFrameNotaFiscal.VerificaTributacaoProdutos;
var
  AProdutosTributacaoIncorreta: Integer;
begin
  AProdutosTributacaoIncorreta := 0;

  FWRCalc.DBProduto.First;
  while not FWRCalc.DBProduto.eof do
  begin
    if (FWRCalc.DBProduto.FieldByName('TEM_TRIBUTACAO_INCORRETA').AsString <> 'N')
       and (FWRCalc.DBProduto.FieldByName('PARENT').AsString = '') then
      AProdutosTributacaoIncorreta := AProdutosTributacaoIncorreta + 1;
    FWRCalc.DBProduto.Next;
  end;

  if AProdutosTributacaoIncorreta > 1 then
    lblProdutosTributacaoIncorreta.Caption := 'Existem ' + VarToStr(AProdutosTributacaoIncorreta) + ' produtos com tributação incorreta.'
  else
    lblProdutosTributacaoIncorreta.Caption := 'Existe ' + VarToStr(AProdutosTributacaoIncorreta) + ' produto com tributação incorreta.';

  LilblTributacaoIncorretaProdutos.Visible := (AProdutosTributacaoIncorreta > 0);
end;

class procedure TFrmVendaFrameNotaFiscal.AtualizarNotaNaVenda(const AVenda, AVendaProduto: TDataSet; const AACBrNFe: TACBrNFe);
var
  ANFe: ACBrNFeNotasFiscais.NotaFiscal;
begin
  ANFe := AACBrNFe.NotasFiscais[0];

//  AVenda.FieldByName('NOTAFISCAL').AsInteger          := ANFe.NFe.Ide.nNF;
  AVenda.FieldByName('NF_DT_EMISSAO').AsDateTime      := ANFe.NFe.Ide.dEmi;
  AVenda.FieldByName('NF_DT_SAIDAENTRADA').AsDateTime := ANFe.NFe.Ide.dSaiEnt;
  if AVenda.FieldByName('VENDA_TIPO').AsString = 'CUPOM' then
    AVenda.FieldByName('NF_NREF').AsString := AVenda.FieldByName('NOTAFISCAL').AsString;

  NotaFiscalVincularNotaVendaOriginal(WRGetTransacao(AVenda), AVenda.FieldByName('CODIGO').AsString,
    AVenda.FieldByName('NOTAFISCAL').AsLargeInt);       // LargeInt Fora do Padrão

  //Atualiza o status da nota de acordo com o cStat
  {Existe uma rotina TFrmNfe.GetCStatDescricao() que retorna essa descrição, mas algumas diferentes. Fazer o ajuste aqui
   para que use a mesma rotina}
  case ANFe.NFe.procNFe.cStat of
    100: begin
      AVenda.FieldByName('NF_STATUS').AsString    := 'Confirmada';
      AVenda.FieldByName('TEM_IMPRESSO').AsString := 'S';
    end;
    110: AVenda.FieldByName('NF_STATUS').AsString := 'Denegada';
    150: AVenda.FieldByName('NF_STATUS').AsString := 'Confirmada fora do prazo';
  end;

  TFrmNotaFiscal.AtualizaNrNfNoFinanceiro(AVenda.FieldByName('NOTAFISCAL').AsLargeInt,       // LargeInt Fora do Padrão
    AVenda.FieldByName('CODIGO').AsString, EmpresaAtiva, AVenda.FieldByName('VENDA_TIPO').AsString, WRGetTransacao(AVenda));
  TFrame_Venda_Mestre.AtualizaSTATUSVendaPrincipal(AVenda, AVendaProduto, tsfNota);
end;

function TFrmVendaFrameNotaFiscal.VisualizaNotaFiscaldoBancodeDados: Boolean;
begin
  Result := False;
  if Assigned(FFrmNotaFiscal) then
  begin
    with FFrmNotaFiscal do
    begin
      Result := not NotaFiscalXML.IsEmpty;
      if Result then
        Visualizar1Click(Self);
    end;
  end;
end;

procedure TFrmVendaFrameNotaFiscal.VisualizaraNFe1Click(Sender: TObject);

  function IsArquivoCerto(const AArquivo: string): Boolean;
  var
    a, b, c: string;
  begin
    a := FormatFloat('00000000', FWRCalc.DBVendaOuCompra.FieldByName('NOTAFISCAL').AsInteger);
    b := Copy(AArquivo, 36, 8); //Número da Nota
    c := Copy(AArquivo, 7, 14); //CNPJ da Empresa
    Result := (a = b) and (c = OnlyNumberWR(Empresa.FieldByName('CNPJCPF').AsString));
  end;

var
  F: TSearchRec;
  Ret: Integer;
  ACaminhoArquivo: string;
  ADtUltimoArquivo: TDateTime;
  AACBrNFe: TACBrNFe;
begin
  if VisualizaNotaFiscaldoBancodeDados then
    Exit;

  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
  try
    //Faz uma busca pelo último arquivo gerado, baseado na data de alteração
    ACaminhoArquivo  := '';
    ADtUltimoArquivo := 0;
    Ret := FindFirst(IncludeTrailingPathDelimiter(AACBrNFe.Configuracoes.Arquivos.PathSalvar) + '\*-nfe.xml', faAnyFile, F);
    try
      while Ret = 0 do
      begin
        if not (F.Attr and faDirectory = faDirectory) then
        begin
          if IsArquivoCerto(F.Name) then
          begin
            if FileAge(IncludeTrailingPathDelimiter(AACBrNFe.Configuracoes.Arquivos.PathSalvar) + F.Name) > ADtUltimoArquivo then
            begin
              ACaminhoArquivo  := IncludeTrailingPathDelimiter(AACBrNFe.Configuracoes.Arquivos.PathSalvar) + F.Name;
              ADtUltimoArquivo := FileDateToDateTime(FileAge(IncludeTrailingPathDelimiter(AACBrNFe.Configuracoes.Arquivos.PathSalvar) + F.Name));
            end;
          end;
        end;
        Ret := FindNext(F);
      end;
    finally
      FindClose(F);
    end;
    if ACaminhoArquivo <> '' then
    begin
      AACBrNFe.NotasFiscais.Clear;
      AACBrNFe.NotasFiscais.LoadFromFile(ACaminhoArquivo);
      {if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
      begin
        ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
        ACBrNFe1.WebServices.ConsultaDPEC.Executar;
      end;}
      AACBrNFe.NotasFiscais.Imprimir;
    end else
      ShowMessageWR('O arquivo XML relativo a esta Nota Fiscal não foi encontrado.');
  finally
    AACBrNFe.Free;
  end;
end;

end.
