unit Frame_ConArquivos_Relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, dxScreenTip, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, cxClasses, Vcl.ExtCtrls, dxLayoutLookAndFeels,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, dxStatusBar, cxDateProfileButton, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView, cxGridCustomView, cxGrid, dxLayoutControl, dxSkinsCore,
  cxDataControllerConditionalFormattingRulesManagerDialog, WREventos, cxImageList, uButtonFlat, frxClass, frxDBSet,
  cxGridViewLayoutContainer, dxTokenEdit, dxDateRanges, UCHistDataset, dxRibbonSkins, dxRibbonCustomizationForm, dxBar,
  cxBarEditItem, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxOfficeSearchBox, dxServerModeData, dxServerModeFireDACDataSource, dxRibbonStatusBar,
  System.Generics.Collections, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, cxCustomStatusKeeper, cxStatusKeeper, ShellAPI, dxScrollbarAnnotations, Frame_Con, dxCustomTileControl,
  dxTileControl, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrameConsuArquivos_Relatorio = class(TConsu_Frame)
    ConsultaDESCRICAO: TStringField;
    ConsultaFORM: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    ConsultaOBSERVACAO: TStringField;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1ARQUIVO: TcxGridDBColumn;
    GridConsultaDBTableView1FORM: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    ConsultaATIVO: TStringField;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    ConsultaLINK: TStringField;
    GridConsultaDBTableView1LINK: TcxGridDBColumn;
    ActAtivarRelatorio1: TMenuItem;
    ActAtivarRelatorio2: TMenuItem;
    N1: TMenuItem;
    Ativar1: TMenuItem;
    Desativar1: TMenuItem;
    ConsultaCODIGO: TIntegerField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    ConsultaID_INTERNO: TStringField;
    GridConsultaDBTableView1ID_INTERNO: TcxGridDBColumn;
    ConsultaVERSAO: TStringField;
    ConsultaNATIVO: TStringField;
    GridConsultaDBTableView1VERSAO: TcxGridDBColumn;
    GridConsultaDBTableView1NATIVO: TcxGridDBColumn;
    tiImportar: TdxTileControlItem;
    tiExcluir: TdxTileControlItem;
    tiBaixarRelatorioEspecifico: TdxTileControlItem;
    tiBaixarRelatoriosAtualizados: TdxTileControlItem;
    tiAtivarRelatorio: TdxTileControlItem;
    tiDesativarRelatorio: TdxTileControlItem;
    procedure GridConsultaDBTableView1LINKGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure GridConsultaDBTableView1LINKCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure GridConsultaDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure GridConsultaDBTableView1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure tiBaixarRelatorioEspecificoClick(Sender: TdxTileControlItem);
    procedure tiBaixarRelatoriosAtualizadosClick(Sender: TdxTileControlItem);
    procedure tiDesativarRelatorioClick(Sender: TdxTileControlItem);
    procedure tiAtivarRelatorioClick(Sender: TdxTileControlItem);
    procedure GridConsultaDBTableView1DblClick(Sender: TObject);
    procedure dxTileControlItem1Click(Sender: TdxTileControlItem);
    procedure tiImportarClick(Sender: TdxTileControlItem);
    procedure tiExcluirClick(Sender: TdxTileControlItem);
    procedure tcTopoBtnItem1Click(Sender: TdxTileControlItem);
  private
    { Private declarations }
    procedure AtivarOuDesativarRelatorio(AAtivar: Boolean);
    procedure AbreTela(AKeys: Variant; ATemNovo: Boolean = False; ATemExcluir: Boolean = False);
  public
    { Public declarations }
  end;

implementation

uses
  Base, wrFuncoes, UnitFuncoes, uWeb, Aguarde, DataModuleImpressao, StrUtils, wrConversao, Principal, Frame_CadArquivos_Relatorio, wr_memoria,
  Tag.Form;

{$R *.dfm}

procedure TFrameConsuArquivos_Relatorio.AtivarOuDesativarRelatorio(AAtivar: Boolean);
var
  ATransa: TFDTransaction;
  QuerX: TFDQuery;
  i, ACod, ACountSelecionados: Integer;
  ARecord: TcxCustomGridRecord;
  AMsg, AAtivarStr: string;
begin
  inherited;
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  try
    ACountSelecionados := GridConsultaDBTableView1.Controller.SelectedRecordCount;
    if ACountSelecionados = 0 then
      Exit;
    AAtivarStr := IfThen(AAtivar, 'Ativar', 'Desativar');
    if ACountSelecionados > 1 then
      AMsg := 'Deseja ' + AAtivarStr + ' os Relatórios selecionados?'
    else
      AMsg := 'Deseja ' + AAtivarStr + ' este Relatório?';
    if ShowMessageWR(AMsg, MB_ICONQUESTION) <> mrYes then
      Exit;

    QuerX.SQL.Text := 'update ARQUIVOS_RELATORIO set ATIVO = :Ativo ' +
                      'where (CODIGO = :Cod)';

    for I := 0 to ACountSelecionados - 1 do
    begin
      ARecord := GridConsultaDBTableView1.Controller.SelectedRecords[i];
      ACod    := VarToIntDef(ARecord.Values[GridConsultaDBTableView1CODIGO.Index], 0);

      QuerX.ParamByName('Cod').AsInteger  := ACod;
      QuerX.ParamByName('Ativo').AsString := BoolToStrDB(AAtivar);
      QuerX.ExecSQL;
    end;

    ComitaTransacao(ATransa);
  finally
    QuerX.Free;
    ATransa.Free;
  end;
  RefreshConsulta;
end;

procedure TFrameConsuArquivos_Relatorio.tcTopoBtnItem1Click(
  Sender: TdxTileControlItem);
var
  ATemNovo, ATemExcluir: Boolean;
begin
//  inherited;
  ATemNovo := True;
  ATemExcluir := False;
  AbreTela(null, ATemNovo, ATemExcluir);
end;

procedure TFrameConsuArquivos_Relatorio.tiAtivarRelatorioClick(Sender: TdxTileControlItem);
begin
  inherited;
  AtivarOuDesativarRelatorio(True);
end;

procedure TFrameConsuArquivos_Relatorio.tiBaixarRelatorioEspecificoClick(Sender: TdxTileControlItem);
Var
  ANome: string;
  Arquivo: string;
begin
  inherited;
  ANome := InputBox('Informe o nome do Relatório', 'Nome do Relatório.fr3', '');
  if Trim(ANome) = '' then
    Exit;
  if DMImpressaoCarregaArquivoFR3(Arquivo, ANome) then
  begin
    ShowMessage('Importado com sucesso');
    wr_memoria.Carrega_Relatorios;
    Consulta.Refresh;
    Consulta.Locate('DESCRICAO', ANome, [] );
//    Carrega_Relatorios;
  end else
    ShowMessage('Não localizou o arquivo: '+ ANome);
end;

procedure TFrameConsuArquivos_Relatorio.tiBaixarRelatoriosAtualizadosClick(Sender: TdxTileControlItem);
var
  AFtp: TWRFTP;
  AFrmAguarde: TFrmAguarde;
  AStream: TMemoryStream;
  ACNPJEmpresa: string;
  ABaixarTodosOsClientes: Boolean;
  N: Integer;
  QuerX: TFDQuery;
  APastas: TStringList;

  procedure LBaixarArquivos(const AVincularCNPJ: string = '');
  var
    I, ACodigo: Integer;
    ATransa: TFDTransaction;
    ANomeArquivo, ANovoNome, AID: string;
  begin
    AFrmAguarde.ProgressoMaximo := AFtp.Arquivos.Count;
    AFrmAguarde.Progresso := 0;
    AFrmAguarde.Mensagem := 'Baixando arquivos';

    for I := 0 to AFtp.Arquivos.Count - 1 do
    begin
      if not AnsiEndsText('.fr3', AFtp.Arquivos[i]) then
        Continue;
      AStream.Clear;
      AFtp.BaixarArquivoParaStream(AFtp.Arquivos[i], AStream);

      if (AVincularCNPJ <> '') and (AVincularCNPJ <> ACNPJEmpresa) then
        {Tem que trocar o nome por causa da PK da tabela!! ¬¬}
        ANomeArquivo := ExtractFileNameWithoutExt(AFtp.Arquivos[i]) + '-' + OnlyNumberWR(AVincularCNPJ) + '.fr3'
      else
        ANomeArquivo := AFtp.Arquivos[i];

      ACodigo := DMImpressaoImportarArquivoFR3(AStream, ANomeArquivo, True);
      DMImpressaoGetNomeAndID(ANomeArquivo, AID, ANovoNome);

      if (AVincularCNPJ <> '') and (AVincularCNPJ <> ACNPJEmpresa) then
      begin
        ATransa := GeraFDTransacao;
        QuerX := GeraFDQuery(ATransa);
        try
          QuerX.SQL.Text := 'update ARQUIVOS_RELATORIO set CNPJ = :CNPJ ' +
                            'where (CODIGO = :Cod)';
          QuerX.ParamByName('Cod').AsInteger := ACodigo;
          QuerX.ParamByName('CNPJ').AsString := AVincularCNPJ;
          QuerX.ExecSQL;
          ATransa.Commit;
        finally
          QuerX.Free;
          ATransa.Free;
        end;
      end;

      AFrmAguarde.AvancarProgresso;
    end;
    Carrega_Relatorios;
  end;

begin
  inherited;
  {Se manter o CTRL apertado ao clicar no botão, habilita o modo de download de todos os fr3 de todos os clientes}
  ABaixarTodosOsClientes := (GetKeyState(VK_CONTROL) < 0);

  if ABaixarTodosOsClientes then
  begin
    if InputBox('', 'Informe a Senha:', '') <> 'Wscrct' then
      Exit;
  end;

  AFtp := TWRFTP.Create;
  AFrmAguarde := TFrmAguarde.Create(nil);
  AStream := TMemoryStream.Create;
  APastas := TStringList.Create;
  try
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Conectando...';
    AFtp.Conectar;
    ACNPJEmpresa := FrmArquivos_RelatorioSQLGetCNPJEmpresaRelatorios;

    AFrmAguarde.Mensagem := 'Buscando arquivos para importação...';
    AFtp.IrParaPasta('FR3_2023');
    {$IFDEF DEBUG}
    AFtp.IrParaPasta('Debug');
    {$ENDIF}
    LBaixarArquivos;

    if AFtp.ExistePasta(OnlyNumberWR(Empresa.FieldByName('CNPJCPF').AsString)) then
    begin
      AFtp.IrParaPasta(OnlyNumberWR(Empresa.FieldByName('CNPJCPF').AsString));
      LBaixarArquivos;
      if ABaixarTodosOsClientes then
        AFtp.IrParaPastaAcima;
    end;

    if ABaixarTodosOsClientes then
    begin
      //Faz uma cópia das pastas para que o loop não se perca, pois a lista de pastas se altera a cada movimento do FTP
      APastas.AddStrings(AFtp.Pastas);

      for N := 0 to APastas.Count - 1 do
      begin
        if GetCnpjCpf(APastas[N]) = '' then
          Continue;
        AFtp.IrParaPasta(APastas[N]);
        LBaixarArquivos(GetCnpjCpf(APastas[N]));
        AFtp.IrParaPastaAcima;
      end
    end;
  finally
    AFtp.Free;
    AFrmAguarde.Free;
    AStream.Free;
    APastas.Free;
  end;
  Carrega_Relatorios;
  RefreshConsulta;
end;

procedure TFrameConsuArquivos_Relatorio.tiDesativarRelatorioClick(Sender: TdxTileControlItem);
begin
  inherited;
  AtivarOuDesativarRelatorio(False);
end;

procedure TFrameConsuArquivos_Relatorio.tiExcluirClick(Sender: TdxTileControlItem);
//var
//
//  AForm : TFrmBase;
//begin
//  inherited;

//  AForm:=TFrmBase(ABaseClass_Normal[QuemeoPai(TFrmBase(Owner).tcBase.Tag)].Create(FrmPrincipal));

//  AForm.ShowCadastroItem(TFrmBase(Owner).tcBase.Tag, AKeys);
//  Application.ProcessMessages;
//  TFrmArquivos_Relatorio(AForm.FrameCadastro).Act_Excluir.Execute;

var
  ATemNovo, ATemExcluir: Boolean;
  AKeys:Variant;
begin
//  inherited;
  if (Consulta.State = dsBrowse) then
    AKeys:=GridConsultaDBTableView1.DataController.GetKeyFieldsValues;
  ATemNovo := False;
  ATemExcluir := True;
  AbreTela(AKeys, ATemNovo, ATemExcluir);
end;

procedure TFrameConsuArquivos_Relatorio.tiImportarClick(Sender: TdxTileControlItem);
Var
  AForm : TFrmBase;
begin
//  inherited;
  try
    AForm:=TFrmBase(ABaseClass_Normal[QuemeoPai(TFrmBase(Owner).tcBase.Tag)].Create(FrmPrincipal));
    AForm.ShowCadastroItem(TFrmBase(Owner).tcBase.Tag, null);
    Application.ProcessMessages;
    TFrmArquivos_Relatorio(AForm.FrameCadastro).Act_Importar.Execute;
    AguardaFormFechar(AForm);
  finally
    AForm.Free;
  end;
end;

procedure TFrameConsuArquivos_Relatorio.dxTileControlItem1Click(Sender: TdxTileControlItem);
Var
  AForm : TFrmBase;
begin
//  inherited;
  try
    AForm:=TFrmBase(ABaseClass_Normal[QuemeoPai(TFrmBase(Owner).tcBase.Tag)].Create(FrmPrincipal));
    AForm.ShowCadastroItem(TFrmBase(Owner).tcBase.Tag, null);
    Application.ProcessMessages;
    AForm.FrameCadastro.btnNovo.Click;
    AguardaFormFechar(AForm);
  finally
    AForm.Free;
  end;
end;

procedure TFrameConsuArquivos_Relatorio.GridConsultaDBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  ALink: string;
begin
  inherited;
  if ACellViewInfo.Item = GridConsultaDBTableView1LINK then
  begin
    ALink := VarToStrDef(ACellViewInfo.GridRecord.Values[GridConsultaDBTableView1LINK.Index], '');
    if ALink <> '' then
      ShellExecute(0, 'OPEN', PChar(ALink), nil, nil, SW_SHOWMAXIMIZED);
  end;
  tiDesativarRelatorio.Visible := VarToStrDef(ACellViewInfo.GridRecord.Values[GridConsultaDBTableView1ATIVO.Index], '') = 'S';
  tiAtivarRelatorio.Visible := VarToStrDef(ACellViewInfo.GridRecord.Values[GridConsultaDBTableView1ATIVO.Index], '') <> 'S';
end;

procedure TFrameConsuArquivos_Relatorio.GridConsultaDBTableView1DblClick(Sender: TObject);
var
  AKeys:Variant;
  AForm: TFrmBase;
begin
  //  inherited;
  FSelecionouRegistro := True;
  IF Consulta.ResourceOptions.CmdExecMode = amAsync then Exit;
  AKeys:=null;
  if (Consulta.State = dsBrowse) then
    AKeys:=GridConsultaDBTableView1.DataController.GetKeyFieldsValues;

  AbreTela(AKeys);
end;

procedure TFrameConsuArquivos_Relatorio.AbreTela(AKeys: Variant; ATemNovo: Boolean = False; ATemExcluir: Boolean = False);
var
  AForm: TFrmBase;
begin
  //  inherited;
  AForm := TFrmBase(ABaseClass_Normal[TFrmBase(Owner).tcBase.Tag].Create(FrmPrincipal));
  AForm.ShowCadastroItem(TFrmBase(Owner).tcBase.Tag, AKeys);
  if ATemNovo then AForm.FrameCadastro.BtnNovo.Click;
  if ATemExcluir then TFrmArquivos_Relatorio(AForm.FrameCadastro).Act_Excluir.Execute;
  AForm.Free;

  ApenasConsulta := False;  //isso morre e vira apenas visivel
end;

procedure TFrameConsuArquivos_Relatorio.GridConsultaDBTableView1LINKCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Font.Color := clBlue;
  ACanvas.Font.Style := ACanvas.Font.Style + [fsUnderline];
end;

procedure TFrameConsuArquivos_Relatorio.GridConsultaDBTableView1LINKGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if AText <> '' then
    AText := 'Abrir';
end;

procedure TFrameConsuArquivos_Relatorio.GridConsultaDBTableView1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  AGridSite: TcxGridSite;
  AHitTest: TcxCustomGridHitTest;
begin
  AGridSite := Sender as TcxGridSite;
  AHitTest := GridConsultaDBTableView1.GetHitTest(X, Y);
  if (AHitTest is TcxGridRecordCellHitTest) and
    ((AHitTest as TcxGridRecordCellHitTest).Item = GridConsultaDBTableView1LINK) and
    (VarToStrDef((AHitTest as TcxGridRecordCellHitTest).GridRecord.Values[GridConsultaDBTableView1LINK.Index], '') <> '') then
      AGridSite.Cursor := crHandPoint
  else
    AGridSite.Cursor := crDefault;
end;

procedure TFrameConsuArquivos_Relatorio.WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := AnsiReplaceText(ASQL, '(DESCRICAO', '(A.DESCRICAO');
  ASQL := AnsiReplaceText(ASQL, '(TIPO', '(A.TIPO');
  ASQL := AnsiReplaceText(ASQL, '(FORM', '(A.FORM');
  ASQL := AnsiReplaceText(ASQL, '(DT_ALTERACAO', '(A.DT_ALTERACAO');
  ASQL := AnsiReplaceText(ASQL, '(OBSERVACAO', '(A.OBSERVACAO');
  ASQL := AnsiReplaceText(ASQL, '(ATIVO', '(A.ATIVO');
  ASQL := AnsiReplaceText(ASQL, '(LINK', '(A.LINK');
end;

initialization
  RegisterFrameCon(Tag_Arquivos_Relatorio, TFrameConsuArquivos_Relatorio);

end.
