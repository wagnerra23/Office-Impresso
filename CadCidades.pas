unit CadCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, IBX.IBCustomDataSet, DB, cxDBEdit,
  cxGridDBTableView, CadM, dxLayoutContainer, Buttons, Menus, ImgList, ExtCtrls,  UCHist_WRGeral, dxLayoutControl,
  cxDBLookupComboBox, IBX.IBQuery, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, StdCtrls,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxContainer, dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxMaskEdit, cxGridCustomTableView, cxGridTableView, UCBase, dxLayoutLookAndFeels, IBX.IBStoredProc,
  IBX.IBDatabase, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, frxClass, frxDBSet, FireDAC.Comp.DataSet, WREventos,
  System.ImageList, dxStatusBar, cxButtons, cxButtonEdit, UCHistDataset, dxUIAdorners, fs_iinterpreter,
  System.Generics.Collections, cxLabel, WRButtonsEditAdd, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrmCidades = class(TFrmCadM)
    liedtUF: TdxLayoutItem;
    edtUF: TcxDBTextEdit;
    edtCodPais: TcxDBTextEdit;
    liedtCodPais: TdxLayoutItem;
    edtPais: TcxDBLookupComboBox;
    liedtPais: TdxLayoutItem;
    DSPais: TDataSource;
    Pais: TFDQuery;
    liedtNFSeProprio: TdxLayoutItem;
    edtNFSeProprio: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    edtEstado: TcxDBComboBox;
    liedtEstado: TdxLayoutItem;
    LiedtLC116: TdxLayoutItem;
    edtLC116: TcxDBComboBox;
    LiedtHomologado: TdxLayoutItem;
    edtHomologado: TcxDBComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    GrupoNFSe_Configuracao: TdxLayoutGroup;
    LiedtTem_Homologacao: TdxLayoutItem;
    edtTem_Homologacao: TcxDBComboBox;
    LibtnAtualizar: TdxLayoutItem;
    btnAtualizar: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton1: TcxButton;
    LiedtNFSE_LinkURL_P: TdxLayoutItem;
    edtNFSE_LinkURL_P: TcxDBTextEdit;
    LiedtNFSE_LinkURL_H: TdxLayoutItem;
    edtNFSE_LinkURL_H: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    LiedtNFSe_Banco_P: TdxLayoutItem;
    edtNFSe_Banco_P: TcxDBTextEdit;
    LiedtNFSe_RPS_Serie_P: TdxLayoutItem;
    edtNFSe_RPS_Serie_P: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    LiedtNFSe_RPS_Serie_H: TdxLayoutItem;
    edtNFSe_RPS_Serie_H: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxButton2: TcxButton;
    LiedtNFSE_NomeURL_P: TdxLayoutItem;
    edtNFSE_NomeURL_P: TcxDBTextEdit;
    LiedtNFSE_NomeURL_H: TdxLayoutItem;
    edtNFSE_NomeURL_H: TcxDBTextEdit;
    cxbProvedorNFSe: TcxDBLookupComboBox;
    licxbProvedorNFSe: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure CidadesAfterInsert(DataSet: TDataSet);
    procedure edtCodPaisPropertiesEditValueChanged(Sender: TObject);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure cxbProvedorNFSePropertiesChange(Sender: TObject);
    procedure cxbProvedorNFSePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure BaixarTabelaCidade_NFSe;
  end;

implementation

{$R *.dfm}

uses
  wrFuncoes, UnitFuncoes, StrUtils, Classes.WR, wrConversao, wrPreencheLookup,
  Aguarde, uWeb, dxSpreadSheetCore, dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules, dxSpreadSheetClasses,
  dxSpreadSheetContainers, dxSpreadSheetFormulas, dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetStyles,
  dxSpreadSheetGraphics, dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils, dxSpreadSheet, IniFiles;


class procedure TFrmCidades.BaixarTabelaCidade_NFSe;
var
  AFtp: TWRFtp;
  AArquivoXLS: TMemoryStream;
  ASpreadSheet: TdxSpreadSheet;
  ASheet: TdxSpreadSheetTableView;
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
  ALinha, ANovos, AAtualizados: Integer;
  AFrmAguarde: TFrmAguarde;

  AIni, AIniCidade, AIniProvedor: TIniFile;
  ACaminho : String;
begin
  AFtp := TWRFtp.Create;
  AArquivoXLS := TMemoryStream.Create;
  ASpreadSheet := TdxSpreadSheet.Create(nil);
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Baixando lista de Configuração NFSe atualizada...';

    //Baixa o arquivo
    AFtp.Conectar;
    AFtp.IrParaPasta('Schemas');
    AFtp.BaixarArquivoParaStream('CIDADES_NFSE.xls', AArquivoXLS);

    AFrmAguarde.Mensagem := 'Importando dados';

    AIni := TIniFile.Create(GetDirSistema + 'WR2.ini');
    try
      ACaminho := AIni.ReadString(Empresa.FieldByName('CNPJCPF').AsString + 'Geral', 'PathSalvar', '');
      ACaminho := ACaminho+ '\Schemas\NFSe\';
    finally
      AIni.Free;
    end;

    AIniCidade := TIniFile.Create(ACaminho + 'Cidades.INI');

    //Carrega no SpreadSheet
    ASpreadSheet.LoadFromStream(AArquivoXLS);
    ASheet := TdxSpreadSheetTableView(ASpreadSheet.Sheets[0]);

    //Importa os dados                                                                 {ALIQUOTA_NO_XML, LINK,, PROVEDOR}
    QuerX.SQL.Text := ' select UF, CODIGO, DESCRICAO, METODO_ENVIO, TIPO_RPS, ' +
                      ' TEM_HOMOLOGACAO, TEM_MULTIPLOS_SERVICOS, TEM_CERTIFICADO_DIGITAL,  TEM_LC116, '+
                      ' NFSE_PROVEDOR, NFSE_HOMOLOGADO, NFSE_NOMEURL_H, NFSE_NOMEURL_P, NFSE_VERSAODADOS, NFSE_VERSAOATRIB '+
                      ' from CIDADES ' +
                      ' where (Codigo = :Codigo) ';
    AFrmAguarde.ProgressoMaximo := ASheet.Dimensions.Height;
    ANovos       := 0;
    AAtualizados := 0;
    for ALinha := 1 to ASheet.Dimensions.Height - 1 do
    begin
      if ASheet.Cells[ALinha, 1].AsInteger = 0 then
        Continue;

      QuerX.Close;
      QuerX.ParamByName('Codigo').AsInteger  := ASheet.Cells[ALinha, 1].AsInteger;
      QuerX.Open;
      if QuerX.IsEmpty then
      begin
        QuerX.Insert;
        QuerX.FieldByName('UF').AsString        := ASheet.Cells[ALinha, 0].AsString;
        QuerX.FieldByName('CODIGO').AsInteger   := ASheet.Cells[ALinha, 1].AsInteger;
        QuerX.FieldByName('DESCRICAO').AsString := ASheet.Cells[ALinha, 2].AsString;
        Inc(ANovos);
      end else
      begin
        QuerX.Edit;
        Inc(AAtualizados);
      end;
      if not ASheet.Cells[ALinha, 3].IsEmpty then
        QuerX.FieldByName('NFSE_PROVEDOR').AsString          := ASheet.Cells[ALinha, 3].AsString;
      if not ASheet.Cells[ALinha, 4].IsEmpty then
        QuerX.FieldByName('NFSE_HOMOLOGADO').AsString             := ASheet.Cells[ALinha, 4].AsString;
      if not ASheet.Cells[ALinha, 5].IsEmpty then
//        QuerX.FieldByName('ALIQUOTA_NO_XML').AsString        := ASheet.Cells[ALinha, 5].AsString;
//      if not ASheet.Cells[ALinha, 6].IsEmpty then
//        QuerX.FieldByName('TIPO_RPS').AsString               := ASheet.Cells[ALinha, 6].AsString;
//      if not ASheet.Cells[ALinha, 7].IsEmpty then
        QuerX.FieldByName('METODO_ENVIO').AsString           := ASheet.Cells[ALinha, 7].AsString;
      if not ASheet.Cells[ALinha, 8].IsEmpty then
        QuerX.FieldByName('TEM_LC116').AsString              := ASheet.Cells[ALinha, 8].AsString;
      if not ASheet.Cells[ALinha, 9].IsEmpty then
        QuerX.FieldByName('TEM_HOMOLOGACAO').AsString        := ASheet.Cells[ALinha, 9].AsString;
      if not ASheet.Cells[ALinha, 10].IsEmpty then
        QuerX.FieldByName('TEM_MULTIPLOS_SERVICOS').AsString := ASheet.Cells[ALinha, 10].AsString;
      if not ASheet.Cells[ALinha, 11].IsEmpty then
        QuerX.FieldByName('TEM_CERTIFICADO_DIGITAL').AsString:= ASheet.Cells[ALinha, 11].AsString;
//      if not ASheet.Cells[ALinha, 12].IsEmpty then
//        QuerX.FieldByName('LINK').AsString                   := ASheet.Cells[ALinha, 12].AsString;

//      Aqui Começa a Ler o Arquivo INI


      QuerX.FieldByName('NFSE_PROVEDOR').AsString      := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'Provedor', '');
      QuerX.FieldByName('NFSE_NOMEURL_H').AsString     := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'NomeURL_H', '');
      QuerX.FieldByName('NFSE_NOMEURL_P').AsString     := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'NomeURL_P', '');
      QuerX.FieldByName('NFSE_VERSAODADOS').AsString   := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'VersaoDados', '');
      QuerX.FieldByName('NFSE_VERSAOATRIB').AsString   := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'VersaoAtrib', '');

//      if FileExists(ACaminho + QuerX.FieldByName('PROVEDOR').AsString+'.INI') then
//        TBlobField(QuerX.FieldByName('NFSE_PROVEDOR_INI')).LoadFromFile(ACaminho + QuerX.FieldByName('PROVEDOR').AsString+'.INI');
      QuerX.Post;
      AFrmAguarde.AvancarProgresso;
    end;

    ComitaTransacao(ATransa);
    AFrmAguarde.Close;
    ShowMessageWR('Operação concluída com sucesso.' + sLineBreak +
                  IntToStr(ANovos) + ' itens novos inseridos.' + sLineBreak +
                  IntToStr(AAtualizados) + ' itens atualizados.');
  finally
    QuerX.Free;
    ATransa.Free;
    AFtp.Free;
    AArquivoXLS.Free;
    ASpreadSheet.Free;
    AFrmAguarde.Free;
    AIniCidade.Free;
  end;
end;

procedure TFrmCidades.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Pais.Close;
end;

procedure TFrmCidades.CadastroBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Pais.Open;
end;

procedure TFrmCidades.CidadesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  edtCodigo.SetFocusWR;
end;

procedure TFrmCidades.cxbProvedorNFSePropertiesChange(Sender: TObject);
begin
  inherited;
//  GrupoNFSe_Configuracao.Visible:= (cxbProvedorNFSe.Text <> ''); //DESABILITADO pois agora é pelo componente ou pelo ACBrNFSeXServicos.ini, não apaguei por conta das informações que estão aqui
  LiedtNFSe_Banco_P.Visible:= (cxbProvedorNFSe.Text = 'DataSmart');//tem que ver se são importantes

  liedtNFSeProprio.Visible:= (cxbProvedorNFSe.Text = 'Goiania');

  LiedtNFSe_RPS_Serie_P.Visible:= (cxbProvedorNFSe.Text = 'Agili');   // Cidade Juina
  LiedtNFSe_RPS_Serie_H.Visible:= (cxbProvedorNFSe.Text = 'Agili');   // Cidade Juina


  LiedtNFSE_LinkURL_P.Visible:= (cxbProvedorNFSe.Text = 'Fiorilli');
  LiedtNFSE_LinkURL_H.Visible:= (cxbProvedorNFSe.Text = 'Fiorilli');
  if cxbProvedorNFSe.Text = 'Fiorilli' then
  begin       //Múltiplos Serviços	Certificado	Login	Senha
              //Monte Sião	MG	3143401   SIM	SIM	SIM	SIM

  end;

  if cxbProvedorNFSe.Text = 'GeisWeb' then
   begin
                                   //Múltiplos Serviços	Certificado	Login	Senha
          //Cajamar/SP 3509205       NÃO	SIM	NÃO	NÃO
          //Itatiniga/SP 3523503     NÃO	SIM	NÃO	NÃO
          //Pardinho/SP 3536109      NÃO	SIM	NÃO	NÃO
          //tietê/SP 3554508         NÃO	NÃO	SIM	SIM

  end;
end;

procedure TFrmCidades.cxbProvedorNFSePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if Cadastro.State in [dsEdit,dsInsert] then
    Cadastro.FieldByName('UF').AsString := EstadoDescricaoToUF(edtEstado.Text);
end;

procedure TFrmCidades.cxButton1Click(Sender: TObject);
begin
  inherited;
//  TFrmCidades.BaixarTabelaCidade_NFSe;
end;

procedure TFrmCidades.cxButton2Click(Sender: TObject);
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
  AAtualizados: Integer;
  AFrmAguarde: TFrmAguarde;
  AProvedor: String;
  AIni, AIniCidade: TIniFile;
  ACaminho : String;
begin
  inherited;
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Baixando lista de Configuração NFSe atualizada...';


//    Dialog Solicitando o Arquivo Ini, Colocar no diretório correto já

    AFrmAguarde.Mensagem := 'Importando dados';

    AIni := TIniFile.Create(GetDirSistema + 'WR2.ini');
    try
      ACaminho := AIni.ReadString(Empresa.FieldByName('CNPJCPF').AsString + 'Geral', 'PathSalvar', '');
      ACaminho := ACaminho+ '\Schemas\NFSe\';
    finally
      AIni.Free;
    end;

    AIniCidade := TIniFile.Create(ACaminho + 'Cidades.INI');

    //Importa os dados
    QuerX.SQL.Text := ' select UF, CODIGO, DESCRICAO, TEM_HOMOLOGACAO,  ' +
                      ' NFSE_PROVEDOR, NFSE_NOMEURL_H, NFSE_NOMEURL_P, NFSE_VERSAODADOS, NFSE_VERSAOATRIB, NFSE_LINKURL_H, NFSE_LINKURL_P, NFSE_RPS_SERIE_H, NFSE_RPS_SERIE_P, NFSE_BANCO_P '+
                      ' from CIDADES ' ;
    AAtualizados := 0;
    QuerX.Open;
    QuerX.FetchAll;
    AFrmAguarde.ProgressoMaximo := QuerX.RecordCount;
    QuerX.First;
    while Not QuerX.EOF do
    begin
     AProvedor        := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'Provedor', '');
      if AProvedor <> '' then
      begin
        QuerX.Edit;
        QuerX.FieldByName('NFSE_NOMEURL_H').AsString     := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'NomeURL_H', '');
        QuerX.FieldByName('NFSE_NOMEURL_P').AsString     := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'NomeURL_P', '');

        if AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'NomeURL_H', 'SemReferencia') <> 'SemReferencia' then
          begin
          if QuerX.FieldByName('NFSE_NOMEURL_H').AsString <> '' then
            QuerX.FieldByName('TEM_HOMOLOGACAO').AsString := 'S'
          else
            QuerX.FieldByName('TEM_HOMOLOGACAO').AsString := 'N';
        end;

        QuerX.FieldByName('NFSE_VERSAODADOS').AsString   := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'VersaoDados', '');
        QuerX.FieldByName('NFSE_VERSAOATRIB').AsString   := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'VersaoAtrib', '');

        QuerX.FieldByName('NFSE_BANCO_P').AsString       := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'Banco_P', '');

        QuerX.FieldByName('NFSE_LINKURL_H').AsString     := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'LinkURL_H', '');
        QuerX.FieldByName('NFSE_LINKURL_P').AsString     := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'LinkURL_P', '');

        QuerX.FieldByName('NFSE_RPS_SERIE_P').AsString   := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'RPS_Serie_P', '');
        QuerX.FieldByName('NFSE_RPS_SERIE_H').AsString   := AIniCidade.ReadString(QuerX.FieldByName('CODIGO').AsString , 'RPS_Serie_H', '');

        QuerX.Post;
        Inc(AAtualizados);
      end;
      QuerX.next;
      AFrmAguarde.AvancarProgresso;
    end;

    ComitaTransacao(ATransa);
    AFrmAguarde.Close;
    ShowMessageWR('Operação concluída com sucesso.' + sLineBreak +
                  IntToStr(AAtualizados) + ' itens atualizados.');
  finally
    QuerX.Free;
    ATransa.Free;
    AFrmAguarde.Free;
    AIniCidade.Free;
  end;
end;

procedure TFrmCidades.btnAtualizarClick(Sender: TObject);
Var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery(TransaFD);
  QuerX.SQL.Text := ' Select * '+  //Codigo, Provedor, Homologado, NomeURL_H, NomeURL_P, VersaoDados, VersaoAtrib
                    ' from Cidades ';
  if (GetKeyState(VK_CONTROL) < 0) then
  begin
//    QuerX.SQL.Text :=QuerX.SQL.Text+' Where Provedor <> '''' ';
    TWRFTP.UploadArquivoVersionado('ArqINI','Cidades', 'CODIGO', QuerX );
  end
  else begin
    TWRFTP.DownloadArquivoVersionado('ArqINI', 'Cidades', 'CODIGO', QuerX, False );
    TransaFD.Commit;
  end;
  QuerX.Free;
end;

procedure TFrmCidades.edtCodPaisPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if Cadastro.State in [dsEdit,dsInsert] then
    Cadastro.FieldByName('CODPAIS').AsString:=ProcuraField('CODIGO', 'PAIS', ['DESCRICAO'], [edtPais.Text]);
end;

procedure TFrmCidades.FormCreate(Sender: TObject);
begin
  inherited;
  PreencheComboEstado(edtEstado.Properties);
  PreencheLookupNF_Provedor(cxbProvedorNFSe.Properties);
end;

procedure TFrmCidades.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
begin
//  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      AddChavePrimaria(FNomeTabela , 'CODIGO', edtCodigo);  // Pode Ser Removido
      AddValorInicial(FNomeTabela , 'ATIVO', cbxAtivo, 'S');

      AddValorInicial(FNomeTabela , 'PAIS', edtPais, 'BRASIL' );
      AddValorInicial(FNomeTabela , 'CODPAIS', edtCodPais, '1058' );
      with AddAcoesTabela('CONFIRMAR','', '') do
      begin
        AddObrigatorio(FNomeTabela, 'DESCRICAO', edtDescricao, 'Informar a Descrição');
        AddObrigatorio(FNomeTabela, 'ATIVO',     cbxAtivo,     'Informe se o Cadastro esta ATIVO ou DESATIVADO.');
//        AddImpedirDuplicidade(FNomeTabela, 'DESCRICAO',    edtDescricao , '');  // Tem cidade com mesmo nome em estados diferente
      end;
    end;
  end;
end;

initialization
  RegisterClass(TFrmCidades);

end.

