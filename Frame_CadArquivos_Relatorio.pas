unit Frame_CadArquivos_Relatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, CadM, Menus, DB, dxLayoutContainer,
  ImgList, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, cxContainer, cxEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.Actions, Vcl.ActnList, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxTextEdit, cxMemo, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxStatusBar, DataModuleImpressao, Generics.Collections, DataModuleFrxDataSets, frxClass, frxDesgn,
  frxDBSet, UCHistDataset, cxLabel, cxDBLabel, cxButtonEdit, dxUIAdorners, fs_iinterpreter, cxRichEdit, cxDBRichEdit,
  System.Generics.Collections, WRButtonsEditAdd, Frame_Con, Frame_Cad, uWRFormataCamposDataSet, dxCustomTileControl, dxTileControl, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmArquivos_Relatorio = class(TFrmCad_Frame)
    TimerRelatorio: TTimer;
    MainLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    ActionList1: TActionList;
    ActDeploy: TAction;
    PnlDeploy: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    MemoObservacao: TcxMemo;
    dxLayoutItem4: TdxLayoutItem;
    EdtVersao1: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    EdtVersao2: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    EdtVersao3: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    EdtVersao4: TcxTextEdit;
    CbEnviarPara: TcxComboBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    BtnDeployCancelar: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    BtnDeployEnviar: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    EdtLink: TcxTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    ImgListRelatorios: TImageList;
    GrupoTab: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    BtnLiberarAcesso: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem18: TdxLayoutItem;
    EdtCNPJDestino: TcxMaskEdit;
    OdImportar: TOpenDialog;
    SdExportar: TSaveDialog;
    CadastroTamanhoStr: TStringField;
    edtXML: TcxDBRichEdit;
    LiXML: TdxLayoutItem;
    btnExportarEAbrirBlocodeNotas: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    Act_Confirma: TAction;
    Act_FechaTelaCheia: TAction;
    PnlPreview: TPanel;
    Act_Salvar_Como_Modelo: TAction;
    Act_Importar: TAction;
    Act_SalvarComo: TAction;
    Act_Historico: TAction;
    Act_Excluir: TAction;
    pnlEditar: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    liedtNomeDoArquivo: TdxLayoutItem;
    edtNomeDoArquivo: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxDBComboBox2: TcxDBComboBox;
    dxLayoutItem23: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    Act_Editar: TAction;
    btnFecharEditar: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    LicxbForm: TdxLayoutItem;
    cxbForm: TcxDBComboBox;
    Act_Editar_XML: TAction;
    pnlXML: TPanel;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutItem3: TdxLayoutItem;
    btnFecharXML: TcxButton;
    procedure ActDeployExecute(Sender: TObject);
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure cxDBTextEdit1PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure BtnLiberarAcessoClick(Sender: TObject);
    procedure btnExportarEAbrirBlocodeNotasClick(Sender: TObject);
    procedure cxbFormExit(Sender: TObject);
    procedure edtCodigoPropertiesChange(Sender: TObject);
    procedure Act_ConfirmaExecute(Sender: TObject);
    procedure Act_FechaTelaCheiaExecute(Sender: TObject);
    procedure Act_Salvar_Como_ModeloExecute(Sender: TObject);
    procedure Act_ImportarExecute(Sender: TObject);
    procedure Act_SalvarComoExecute(Sender: TObject);
    procedure Act_HistoricoExecute(Sender: TObject);
    procedure Act_ExcluirExecute(Sender: TObject);
    procedure Act_EditarExecute(Sender: TObject);
    procedure btnFecharEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TdxTileControlItem);
    procedure btnConfirmarClick(Sender: TdxTileControlItem);
    procedure FrameEnter(Sender: TObject);
    procedure Act_Editar_XMLExecute(Sender: TObject);
    procedure btnFecharXMLClick(Sender: TObject);
    procedure CadastroAfterCancel(DataSet: TDataSet);
  private
    FDMImpressao: TDMImpressao;
    procedure SetAcessoLiberado(const Value: Boolean);
    procedure CarregarDataSetsDaTela;
//    function BuscaMenu(AImpressaoFrx: TImpressaoFrx; AMenuItem: TMenuItem): TMenuItem;
  public
    FInstancia: TObject;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

uses
  wrFuncoes, UnitFuncoes, StrUtils, uWeb, Aguarde, IniFiles, Classes.WR, wrConversao, frxXML,
  ShellAPI, ConsM, wrForms, Base, Base_Arquivos_Relatorio_Normal, wr_memoria, Tag.Form, Tag.Report;

constructor TFrmArquivos_Relatorio.Create(AOwner: TComponent);
var
  ADesigner: TfrxDesignerForm;
  AMenuItem: TMenuItem;
begin
  inherited Create(AOwner);

  FDMImpressao := TDMImpressao.Create(Self);

  FDMImpressao.frxDesigner1.Restrictions := [];//[drDontCreateReport, drDontShowRecentFiles];
  FDMImpressao.Report.DesignReportInPanel(PnlPreview);
  ADesigner := TfrxDesignerForm(FDMImpressao.Report.Designer);
  ADesigner.Menu := nil;

  ADesigner.NewItemCmd.OnExecute := Act_EditarExecute;
  ADesigner.NewItemCmd.Caption := 'Editar';

  ADesigner.NewReportCmd.OnExecute := Act_Salvar_Como_ModeloExecute;
  ADesigner.NewReportCmd.Caption := 'Salvar como modelo..';

//  ADesigner.NewDialogCmd.OnExecute := ;
  ADesigner.NewDialogCmd.Caption := 'Novo dialogo..';

  //  ADesigner.NewPageCmd.OnExecute := ;
  ADesigner.NewPageCmd.Caption := 'Nova página..';

  ADesigner.OpenCmd.OnExecute := Act_ImportarExecute;
  ADesigner.OpenCmd.Caption := 'Importar..';

  ADesigner.SaveCmd.OnExecute := Act_ConfirmaExecute;       // Botão Salvar
  ADesigner.SaveCmd.Caption := 'Salvar';

  ADesigner.ExitCmd.OnExecute := Act_FechaTelaCheiaExecute; // Sair - Botão Tela Cheia
  ADesigner.ExitCmd.Caption := 'Sair..';

//  ADesigner.DeleteCmd.OnExecute := Act_ExcluirExecute;
//  ADesigner.DeleteCmd.Caption := 'Excluir';

  ADesigner.SaveAsCmd.OnExecute := Act_SalvarComoExecute;
  ADesigner.SaveAsCmd.Caption := 'Exportar como..';

  AMenuItem := TMenuItem.Create(ADesigner.MainMenu);
  AMenuItem.Caption := 'Editar XML';
  AMenuItem.OnClick := Act_Editar_XMLExecute;
  ADesigner.MainMenu.Items.Add(AMenuItem);

  AMenuItem := TMenuItem.Create(ADesigner.MainMenu);
  AMenuItem.Caption := '<Historico>';
  AMenuItem.OnClick := Act_HistoricoExecute;
  ADesigner.MainMenu.Items.Add(AMenuItem);

  AMenuItem := TMenuItem.Create(ADesigner.MainMenu);
  AMenuItem.Caption := '<Excluir>';
  AMenuItem.OnClick := Act_ExcluirExecute;
  ADesigner.MainMenu.Items.Add(AMenuItem);

  PnlPreview.Align  := alClient;
end;

destructor TFrmArquivos_Relatorio.Destroy;
begin
//  Try
//    FDMImpressao.Report.Designer.Free;
//    FDMImpressao.Report.Designer := nil;
//  except  End;
//  Try
////    FInstancia := nil;
//    if Assigned(FInstancia) then
//      FreeAndNil(FInstancia);
//  except  End;
//  Try
//    inherited;
//  except
//    Application.Terminate;
//  End;
end;

//function TFrmArquivos_Relatorio.BuscaMenu(AImpressaoFrx: TImpressaoFrx; AMenuItem: TMenuItem): TMenuItem;
//var
//  I, ATag: Integer;
//begin
//  Result := nil;
//  ATag := Integer(AImpressaoFrx);
//  for I := 0 to AMenuItem.Count - 1 do
//  begin
//    if AMenuItem.Items[I].Count > 0 then
//      Result := BuscaMenu(AImpressaoFrx, AMenuItem.Items[I]);
//
//    if Result <> nil then
//      Exit;
//
//    if (AMenuItem.Items[I].Tag = ATag) and (AMenuItem.Items[I].Caption <> '-') then
//    begin
//      Result := AMenuItem.Items[I];
//      Exit;
//    end;
//  end;
//end;

procedure TFrmArquivos_Relatorio.BtnLiberarAcessoClick(Sender: TObject);
begin
  inherited;
//  if InputBox('Envio de Relatório', 'Para enviar um relatório para o Repositório Principal, ' + 'é necessário informar a senha de acesso.', '') = 'Wscrct' then
    SetAcessoLiberado(True);
end;

procedure TFrmArquivos_Relatorio.SetAcessoLiberado(const Value: Boolean);
var
  AEditValue: Variant;
begin
  BtnLiberarAcesso.Enabled := not Value;
  EdtCNPJDestino.Properties.ReadOnly := not Value;
  CbEnviarPara.Properties.ReadOnly := not Value;

  if Value then
    EdtCNPJDestino.Style.AssignedValues := EdtCNPJDestino.Style.AssignedValues - [2]
  else
    EdtCNPJDestino.Style.Color := clSilver;

  if Value then
    CbEnviarPara.Style.AssignedValues := CbEnviarPara.Style.AssignedValues - [2]
  else
    CbEnviarPara.Style.Color := clSilver;

  if not Value then
  begin
    CbEnviarPara.ItemIndex := 0;
    EdtCNPJDestino.PrepareEditValue(FrmArquivos_RelatorioSQLGetCNPJEmpresaRelatorios, AEditValue, False);
    EdtCNPJDestino.EditValue := AEditValue;
  end;
end;

procedure TFrmArquivos_Relatorio.edtCodigoPropertiesChange(Sender: TObject);
 var
  AStream: TMemoryStream;
begin
  inherited;
  if edtCodigo.DataBinding.DataSource = nil then exit;
  if edtCodigo.Text = '' then Exit;

  PnlPreview.Parent := Parent.Parent.Parent;
  TFrmArquivos_Relatorio_Normal(Parent.Parent.Parent).Menu:=TfrxDesignerForm(FDMImpressao.Report.Designer).MainMenu;
  PnlPreview.Visible:=True;
  FDMImpressao.Report.Designer.Lock;
  try
    if Cadastro.Active and not Cadastro.FieldByName('ARQUIVO_FR3').IsNull then
    begin
      CarregarDataSetsDaTela;
      AStream := TMemoryStream.Create;
      try
        TBlobField(Cadastro.FieldByName('ARQUIVO_FR3')).SaveToStream(AStream);
        AStream.Position := 0;
        FDMImpressao.Report.LoadFromStream(AStream);
      finally
        AStream.Free;
      end;
    end
    else
      FDMImpressao.Report.Clear;
  finally
    try
    try
      FDMImpressao.Report.Designer.ReloadReport;
    except
    end;
    except
    end;
  end;
  VerificaSePodeAlteraDataSet(Cadastro);

  repeat
    Application.ProcessMessages;
  until not PnlPreview.Visible;
  Hide;

  Try
    FDMImpressao.Report.Designer.Free;
    FDMImpressao.Report.Designer := nil;
  except  End;
  Try
//    FInstancia := nil;
    if Assigned(FInstancia) then
      FreeAndNil(FInstancia);
  except  End;
  Try
//    inherited;
  except
    Application.Terminate;
  End;
//  liPanelEditor.CreateItemForControl(PnlPreview);
//  SetActiveWindow(Self.Handle);
end;

procedure TFrmArquivos_Relatorio.FrameEnter(Sender: TObject);
var
  I: integer;
begin
  inherited;
  cxbForm.Properties.Items.Clear;

  for I := 0 to Length(AConFrameClasses) do
  begin
    if not Assigned(AConFrameClasses[I]) then
      Continue;

    cxbForm.Properties.Items.Add(AConFrameClasses[I].ClassName);
  end;

  for I := 0 to Length(ACadFrameClasses) do
  begin
    if not Assigned(ACadFrameClasses[I]) then
      Continue;

    cxbForm.Properties.Items.Add(ACadFrameClasses[I].ClassName);
  end;
end;

procedure TFrmArquivos_Relatorio.CarregarDataSetsDaTela;
var
  AClasse: TPersistentClass;
  ADS: TDataSource;
  ANomeClasse: string;

begin
  { Este recurso foi criado em caráter de teste, mas parece funcionar bem
    Trata-se de um recurso que instancia em segundo plano a form a qual o relatório será impresso. Desta forma
    é possível carregar quais datasets a tela possui, sem necessidade de usar o DataModuleFrxDataSets, pois este
    último acabou ficando grande demais e inviabilizando sua existência }

//  TForm(Parent.Parent.Parent).FormStyle := fsStayOnTop;

  ANomeClasse := Cadastro.FieldByName('FORM').AsString;
  if not AnsiStartsText('T', ANomeClasse) then
    ANomeClasse := 'T' + ANomeClasse;
  AClasse := GetClass(ANomeClasse);   //TFrmBase
  if (AClasse = nil) or not(ClassInheritsFrom(AClasse, 'TForm') or
     ClassInheritsFrom(AClasse, 'TDataModule') or
     ClassInheritsFrom(AClasse, 'TFrmCad_Frame') or
     ClassInheritsFrom(AClasse, 'TConsu_Frame') or
     ClassInheritsFrom(AClasse, 'TPainel_Frame') or
     ClassInheritsFrom(AClasse, 'TFrmCad_Frame_Pocket'))
  then
  begin
    LicxbForm.Caption := 'Tela do Sistema (Classe não registrada)';
    cxbForm.Style.TextColor := clRed;
    Exit;
  end
  else
  begin
    LicxbForm.Caption := 'Tela do Sistema';
    cxbForm.Style.AssignedValues := cxbForm.Style.AssignedValues - [7];
  end;
  FInstancia := nil;

  try
    if ClassInheritsFrom(AClasse, 'TFrmCad_Frame') or ClassInheritsFrom(AClasse, 'TPainel_Frame') then   //TFrmBase
      FInstancia := CadastroTag_Frame(Self, GetTagByClass(AClasse))
    else
    if ClassInheritsFrom(AClasse, 'TConsu_Frame') then
      FInstancia := ConsultaTag_Frame(Self, GetTagByClass(AClasse))
    else
      FInstancia := ConsultaForm(TFormClass(AClasse));
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;

  if (FInstancia <> nil) then
  begin
    if not MatchStr(ANomeClasse, ['TFrmBoleto','TFrmNotaFiscal']) then
      FDMImpressao.RemoveDataSetsDaForm(TForm(FInstancia));

    // Busca o DataSource da tela para abrir o DataSet, assim temos acesso a lista de fields disponível na tela
    // É necessário abrir pois os fields são carregados dinamicamente

    if FInstancia is TConsuM then
      TConsuM(FInstancia).Show     // Por que disso aqui
    else if FInstancia is TConsu_Frame then
      TConsu_Frame(FInstancia).Show
    else begin
      ADS := (TComponent(FInstancia).FindComponent('DS') as TDataSource);
      if ADS <> nil then
        ADS.DataSet.Open;
    end;
    FDMImpressao.AdicionaDataSets(TForm(FInstancia));

    if FInstancia is TConsuM then
      TConsuM(FInstancia).Close;   //

    if FInstancia is TFrmCadM then
      TFrmCadM(FInstancia).MainLayout.BeginUpdate;

//    TForm(FInstancia).Visible:=False;

    // Marca qual foi a form que carregou os datasets para o datamodule
    // Usado para recarregar os datasets apenas quando mudar a instância/classe carregada
  end;

  TForm(Parent.Parent.Parent).FormStyle := fsNormal;
end;

procedure TFrmArquivos_Relatorio.CadastroAfterCancel(DataSet: TDataSet);
begin
  inherited;
  PnlPreview.Visible := False;
end;

procedure TFrmArquivos_Relatorio.CadastroBeforePost(DataSet: TDataSet);
var
  AStream: TMemoryStream;
begin
  inherited;
  Cadastro.FieldByName('VERSAO').AsString := FDMImpressao.GetVersaoArquivo;
  Cadastro.FieldByName('FORM').AsNotEmpty := TrataNomeForm(Cadastro.FieldByName('FORM').AsString);
  if Cadastro.FieldByName('FORM').AsString <> '' then
    Cadastro.FieldByName('DESCRICAO').AsString := ChangeFileExt(Trim(Cadastro.FieldByName('DESCRICAO').AsString), '.fr3');
  AStream := TMemoryStream.Create;
  try
    FDMImpressao.Report.ScriptText := TfrxDesignerForm(FDMImpressao.Report.Designer).CodeWindow.Lines;
    FDMImpressao.Report.SaveToStream(AStream);
    FR3CorrigeDataSets(AStream);
    TBlobField(Cadastro.FieldByName('ARQUIVO_FR3')).LoadFromStream(AStream);
    Cadastro.FieldByName('MD5').AsString := MD5Stream(AStream);
    Cadastro.FieldByName('OBSERVACAO').AsString := FDMImpressao.Report.ReportOptions.Description.Text;
    Cadastro.FieldByName('TAMANHO').AsInteger := AStream.Size; // Int64 -> Int para não usar BigInt no banco
  finally
    AStream.Free;
  end;
  if Assigned(AWR_Report[Cadastro.FieldByName('CODIGO').AsInteger]) then
    AWR_Report[Cadastro.FieldByName('CODIGO').AsInteger].Stream := nil;
end;

procedure TFrmArquivos_Relatorio.CadastroCalcFields(DataSet: TDataSet);
begin
  inherited;
  Cadastro.FieldByName('TamanhoStr').AsString := FormataBytes(Cadastro.FieldByName('TAMANHO').AsInteger);
{  btnExportar.Text2.Value:='Tamanho: '+ Cadastro.FieldByName('TamanhoStr').AsString;
  if Cadastro.FieldByName('TAMANHO').AsInteger < 100000 then
    btnExportar.Text2.Font.Color := clBlack
  else if Cadastro.FieldByName('TAMANHO').AsInteger < 200000 then
    btnExportar.Text2.Font.Color := $000080FF
  else
    btnExportar.Text2.Font.Color := clRed;   }
end;

procedure TFrmArquivos_Relatorio.cxbFormExit(Sender: TObject);
begin
  inherited;
  CarregarDataSetsDaTela;
end;

procedure TFrmArquivos_Relatorio.btnConfirmarClick(Sender: TdxTileControlItem);
var
  AClasse: TPersistentClass;
begin
  AClasse := GetClass(Cadastro.FieldByName('FORM').AsString);
  if AClasse <> nil then
  begin
    if ClassInheritsFrom(AClasse, 'TFrmCad_Frame') or ClassInheritsFrom(AClasse, 'TPainel_Frame') then   //TFrmBase
      Cadastro.FieldByName('IS_CONSULTA').AsString := 'N'
    else
      Cadastro.FieldByName('IS_CONSULTA').AsString := 'S';

    try
      Cadastro.FieldByName('TAG_TELA').AsInteger := GetTagByClass(AClasse);
    except  end;
  end
  else
  begin
    ShowMessage('Selecione a tela onde este relatório aparece antes de salvar.');
    Exit;
  end;

  inherited;
  if Cadastro.Active then
    Cadastro.Edit; // Bota em edição

  wr_memoria.Carrega_Relatorios;
end;

procedure TFrmArquivos_Relatorio.btnExcluirClick(Sender: TdxTileControlItem);
begin
//  inherited;
  if not DS.DataSet.IsEmpty and (ShowMessageWR('Deseja excluir este relatório?', MB_ICONQUESTION) = mrYes) then
  begin
    try
      DS.DataSet.Cancel;
      edtCodigo.DataBinding.DataSource:=nil;
      DS.DataSet.Delete;
//      edtCodigo.DataBinding.DataSource:=DS;
      TransaFD.Commit;
      PnlPreview.Visible:=False;
    except
      on E:Exception do
      begin
        btnCancelar.Click;
        raise;
      end;
    end;
  end;
end;

procedure TFrmArquivos_Relatorio.btnExportarEAbrirBlocodeNotasClick(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(GetDirSistema + '/Temp/') then
    ForceDirectories(PwideChar(GetDirSistema + '/Temp/'));
  edtXML.Lines.SaveToFile(GetDirSistema + '/Temp/RelatórioFr3.xml');
  ShellExecute(Handle, 'OPEN', PChar(GetDirSistema + '/Temp/RelatórioFr3.xml'), nil, nil, SW_SHOWMAXIMIZED);
end;

procedure TFrmArquivos_Relatorio.btnFecharEditarClick(Sender: TObject);
begin
  inherited;
  FechaPanelForm(pnlEditar);
end;

procedure TFrmArquivos_Relatorio.btnFecharXMLClick(Sender: TObject);
begin
  inherited;
  FechaPanelForm(pnlXML);
end;

procedure TFrmArquivos_Relatorio.cxDBTextEdit1PropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if VarToStrDef(DisplayValue, '') <> VarToStrDef(Cadastro.FieldByName('ID_INTERNO').OldValue, '') then
  begin
    if ShowMessageWR('A Identificação Interna deste arquivo de impressão foi alterada. Essa alteração pode fazer com que ' +
      'esta impressão pare de funcionar. Deseja continuar?', MB_ICONQUESTION) <> mrYes then
    begin
      Error := True;
      ErrorText := 'Identificação Interna alterada';
    end;
  end;
end;

procedure TFrmArquivos_Relatorio.ActDeployExecute(Sender: TObject);
const
  PHISTORICO = 'Historico';
var
  AFtp: TWRFTP;
  AFrmAguarde: TFrmAguarde;
  AStream: TMemoryStream;
  ACNPJ, ANomeEnvio, AID, ANomeTratado: string;
  AIni: TMemIniFile;
  AStrings: TStringList;
begin
  inherited;
  if CbEnviarPara.ItemIndex = 1 then
  begin
    if InputBox('Envio de Relatório', 'Para enviar um relatório para o Repositório Principal, ' + 'é necessário informar a senha de acesso.', '') <> 'Wscrct'
    then
    begin
      ShowMessageWR('Senha Inválida.');
      Exit;
    end;
  end;

  VerificaSePodeAlteraDataSet(Cadastro);
  Cadastro.FieldByName('OBSERVACAO').AsString := MemoObservacao.Lines.Text;
  Cadastro.FieldByName('LINK').AsString := EdtLink.Text;
  FDMImpressao.Report.ReportOptions.VersionMajor := EdtVersao1.Text;
  FDMImpressao.Report.ReportOptions.VersionMinor := EdtVersao2.Text;
  FDMImpressao.Report.ReportOptions.VersionRelease := EdtVersao3.Text;
  FDMImpressao.Report.ReportOptions.VersionBuild := EdtVersao4.Text;

  AIni := TMemIniFile.Create('');
  AStrings := TStringList.Create;
  try
    AIni.WriteString('Dados', 'Versao', FDMImpressao.GetVersaoArquivo);
    AIni.WriteString('Dados', 'Link', EdtLink.Text);
    AIni.WriteString('Dados', 'Observacao', Cadastro.FieldByName('OBSERVACAO').AsString);
    AIni.WriteString('Dados', 'Form', Cadastro.FieldByName('FORM').AsString);
    AIni.GetStrings(AStrings); // Isso aqui ta errado, tem que salvar direto na  "Description"
    FDMImpressao.Report.ReportOptions.Description.Text := AStrings.Text;
  finally
    AIni.Free;
    AStrings.Free;
  end;

  btnConfirmarClick(nil);

  AFtp := TWRFTP.Create;
  AFrmAguarde := TFrmAguarde.Create(nil);
  AStream := TMemoryStream.Create;
  try
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Conectando...';
    AFtp.Conectar;

    AFtp.IrParaPasta('FR3_2023');
{$IFDEF DEBUG}
    AFtp.IrParaPasta('Debug');
{$ENDIF}
    if CbEnviarPara.ItemIndex = 0 then
    begin
      ACNPJ := OnlyNumberWR(Empresa.FieldByName('CNPJCPF').AsString);
      if not AFtp.ExistePasta(ACNPJ) then
        AFtp.CriarPasta(ACNPJ);
      AFtp.IrParaPasta(ACNPJ);
    end;

    DMImpressaoGetNomeAndID(Cadastro.FieldByName('DESCRICAO').AsString, AID, ANomeTratado);
    if AID <> '' then
      ANomeTratado := AID + '-' + ANomeTratado;

    // Se o arquivo já existe no servidor, então deve ser movido para a pasta de Histórico
    if AFtp.ExisteArquivo(ANomeTratado) then
    begin
      AFrmAguarde.Mensagem := 'Criando histórico...';
      try
        // Baixa o arquivo existente
        AFtp.BaixarArquivoParaStream(ANomeTratado, AStream);
        DMImpressao.Report.LoadFromStream(AStream);

        if ComparaVersao(Cadastro.FieldByName('VERSAO').AsString, DMImpressao.GetVersaoArquivo) <= 0 then
        begin
          AFrmAguarde.Close;
          ShowMessageWR('A versão deste relatório no servidor é igual ou mais recente. Este relatório não será enviado.' + sLineBreak + 'Versão do servidor: ' +
            DMImpressao.GetVersaoArquivo + sLineBreak + 'Sua versão: ' + Cadastro.FieldByName('VERSAO').AsString);
          Exit;
        end;

        // Acessa a pasta Histórico
        if not AFtp.ExistePasta(PHISTORICO) then
          AFtp.CriarPasta(PHISTORICO);
        AFtp.IrParaPasta(PHISTORICO);

        // Busca o próximo nome disponível
        ANomeEnvio := ExtractFileNameWithoutExt(ANomeTratado) + ' ver ' + DMImpressao.GetVersaoArquivo + ExtractFileExt(ANomeTratado);
        ANomeEnvio := GetProximoNomeArquivo(ANomeEnvio, AFtp.Arquivos);

        // Envia o arquivo para o histórico
        AFtp.EnviarArquivoViaStream(AStream, ANomeEnvio);
        AFtp.IrParaPastaAcima;
      finally
      end;
    end;

    AFrmAguarde.Mensagem := 'Enviando arquivo...';
    AStream.Position := 0;
    TBlobField(Cadastro.FieldByName('ARQUIVO_FR3')).SaveToStream(AStream);
    AFtp.EnviarArquivoViaStream(AStream, ANomeTratado);
  finally
    AFtp.Free;
    AFrmAguarde.Free;
    AStream.Free;
  end;
  FechaPanelForm(PnlDeploy);
end;

procedure TFrmArquivos_Relatorio.Act_SalvarComoExecute(Sender: TObject);
var
  ANome: string;
begin
  if Cadastro.IsEmpty then
    Exit;
  SdExportar.FileName := Cadastro.FieldByName('DESCRICAO').AsString;
  if SdExportar.Execute then
  begin
    ANome := SdExportar.FileName;
    if ExtractFileExt(ANome) = '' then
      ANome := ChangeFileExt(ANome, '.fr3');
    FDMImpressao.Report.ReportOptions.Description.Text := Cadastro.FieldByName('OBSERVACAO').AsString;
    FDMImpressao.Report.SaveToFile(ANome);
    ShowMessageWR('Arquivo salvo em "' + ANome + '".');
  end;
end;

procedure TFrmArquivos_Relatorio.Act_ConfirmaExecute(Sender: TObject);
begin
  inherited;
  PnlPreview.Visible:=True;
  btnConfirmar.Click;
  Carrega_Relatorios;
end;

procedure TFrmArquivos_Relatorio.Act_EditarExecute(Sender: TObject);
begin
  inherited;
  ShowPanelForm(pnlEditar,bsDialog, edtNomeDoArquivo);
end;

procedure TFrmArquivos_Relatorio.Act_Editar_XMLExecute(Sender: TObject);
begin
  inherited;
  ShowPanelForm(pnlXML, bsSingle);
end;

procedure TFrmArquivos_Relatorio.Act_ExcluirExecute(Sender: TObject);
begin
  inherited;
{  edtCodigo.DataBinding.DataSource:=nil;
  edtCodigo.DataBinding.DataSource:=DS;   }
  btnExcluir.Click;
end;

procedure TFrmArquivos_Relatorio.Act_FechaTelaCheiaExecute(Sender: TObject);
begin
  inherited;
  case MessageBox(Handle, 'Deseja salvar suas modificações?', PWideChar(Sistema.Nome), MB_ICONWARNING or MB_YESNOCANCEL) of
    mrCancel: Exit;
    mrYes: begin
             if ds.AutoEdit <> True then
             begin
               ShowMessage('Você não tem permissões para alterar este registro. A operação será cancelada.');
               btnCancelarClick(nil);
             end else
               btnConfirmarClick(nil);
           end;
    mrNo: btnCancelarClick(nil);
  end;
  PnlPreview.Visible:=True;
  TFrmBase(Parent.Parent.Parent).Close;
end;

procedure TFrmArquivos_Relatorio.Act_HistoricoExecute(Sender: TObject);
begin
  inherited;
  ShowPanelForm(PnlFrameHistorico,bsDialog);
end;

procedure TFrmArquivos_Relatorio.Act_ImportarExecute(Sender: TObject);
begin
  inherited;
  if OdImportar.Execute then
  begin
    edtCodigo.DataBinding.DataSource:=nil;
    btnNovo.Click;
    Cadastro.FieldByName('DESCRICAO').AsString := ExtractFileName(OdImportar.FileName);
    TBlobField(Cadastro.FieldByName('ARQUIVO_FR3')).LoadFromFile(OdImportar.FileName);
    edtCodigo.DataBinding.DataSource:=DS;
    CarregarDataSetsDaTela;
    Act_Confirma.Execute;
//    edtCodigoPropertiesChange(nil);
    // Carrega o relatório no editor para ajustar os datasets
  end;
end;

procedure TFrmArquivos_Relatorio.Act_Salvar_Como_ModeloExecute(Sender: TObject);
begin
  inherited;
  MemoObservacao.Text := Cadastro.FieldByName('OBSERVACAO').AsString;
  EdtLink.Text := Cadastro.FieldByName('LINK').AsString;
  EdtVersao1.Text := FDMImpressao.Report.ReportOptions.VersionMajor;
  EdtVersao2.Text := FDMImpressao.Report.ReportOptions.VersionMinor;
  EdtVersao3.Text := FDMImpressao.Report.ReportOptions.VersionRelease;
  EdtVersao4.Text := FDMImpressao.Report.ReportOptions.VersionBuild;
  SetAcessoLiberado(False);
  ShowPanelForm(PnlDeploy, bsSingle);
end;

initialization
  RegisterFrameCad(Tag_Arquivos_Relatorio, TFrmArquivos_Relatorio);

end.
