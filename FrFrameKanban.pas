unit FrFrameKanban;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, DataModuleBanco,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, dxLayoutcxEditAdapters, cxContainer, cxLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomLayoutView, uGridLayoutView, dxLayoutLookAndFeels, cxImageComboBox, cxProgressBar,
  dxDateRanges, dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  UnitFuncoes, Aguarde;

const
  WM_REFRESH_AGENDA = WM_USER + 814;

type
//  TcxGridDBLayoutView = class(TWRcxGridDBLayoutView);

  TFrameKanban = class(TFrame)
    LcFrameGroup_Root: TdxLayoutGroup;
    LcFrame: TdxLayoutControl;
    GridKanbanLevel1: TcxGridLevel;
    GridKanban: TcxGrid;
    LiGridKanban: TdxLayoutItem;
    PnlCabecalho: TPanel;
    LcCabecalhoGroup_Root: TdxLayoutGroup;
    LcCabecalho: TdxLayoutControl;
    LiBtnViewGrid: TdxLayoutItem;
    BtnViewGrid: TcxButton;
    LbTituloFrame: TcxLabel;
    LiLbTituloFrame: TdxLayoutItem;
    Kanban: TFDQuery;
    DS: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    EstiloPreto: TcxStyle;
    EstiloCinza: TcxStyle;
    EstiloVermelho: TcxStyle;
    EstiloFonteGrid: TcxStyle;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    cxStyle2: TcxStyle;
    popMenu_Mais: TPopupMenu;
    pop_Dobrar: TMenuItem;
    LiLbTituloQuant: TdxLayoutItem;
    LbTituloQuant: TcxLabel;
    GrupoFrameTitulo: TdxLayoutGroup;
    GridKanbanDBLayoutView1Group_Root: TdxLayoutGroup;
    GridKanbanDBLayoutView1: TcxGridDBLayoutView;
    pnlDobrado: TPanel;
    LcDobrado: TdxLayoutControl;
    cxButton1: TcxButton;
    LbTituloFrameDobrado: TcxLabel;
    LbTituloQuantDobrado: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    pop_Recaregr: TMenuItem;
    pop_Novo: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Configurar1: TMenuItem;
    Movercoluna1: TMenuItem;
    pnlEmcaminhar: TPanel;
    procedure KanbanAfterOpen(DataSet: TDataSet);
    procedure GridKanbanDBLayoutView1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GridKanbanDBLayoutView1DT_PROMETIDO_PARAStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure BtnViewGridClick(Sender: TObject);
    procedure KanbanDT_PROMETIDO_PARAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure GridKanbanDBLayoutView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure pop_DobrarClick(Sender: TObject);
    procedure popMenu_MaisPopup(Sender: TObject);
    procedure KanbanBeforePost(DataSet: TDataSet);
    procedure GridKanbanDBLayoutView1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure pop_RecaregrClick(Sender: TObject);
    procedure LcDobradoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure KanbanBeforeOpen(DataSet: TDataSet);
    procedure GridKanbanDBLayoutView1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure LbTituloFrameMouseLeave(Sender: TObject);
    procedure Movercoluna1Click(Sender: TObject);
    procedure GridKanbanDBLayoutView1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure pnlEmcaminharClick(Sender: TObject);
    procedure Configurar1Click(Sender: TObject);
  private
    { Private declarations }
    FQuerQuant: TFDQuery;
    procedure LayoutChanged;
//    procedure AtualizaTitulo;
  public
    FCodigo: Variant;
    FChave: Variant;
    FFieldName :String;
    FFrmAguarde : TFrmAguarde;
    FDobrado: Boolean;
    { Public declarations }
    procedure Kanban_CloseOpen;
    procedure AcaoSelecionados(AFrame_Con: TFrame; AGridView: TcxGridDBLayoutView;  AFieldName : String; AResult :Variant);
    procedure Dobrar;
    //    function GetAltura: Integer;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;


implementation

{$R *.dfm}

uses
  Base, wrFuncoes, DateUtils, StrUtils, Frame_Con, FrmRegistroAviso, wr_memoria, Frame_BI_Acoes, Tag.Form;

procedure TFrameKanban.Configurar1Click(Sender: TObject);
var
  Form: TFrmFrame_BI_Acoes;
begin
  Form := TFrmFrame_BI_Acoes(ABaseClass_Normal[Tag_BI_Acoes].Create(Self));
  try
//    Form.FGridTableView := GridKanbanDBLayoutView1;     // Aqui teria que usar o TcxGridDBTableView, para funcionar
//    Form.FUCHist := UCHist_Cadastro;
    Form.AtualizarAcoes;
    Form.ShowModal;
  finally
    Form.Free;
  end;
end;

constructor TFrameKanban.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Self.Name  := '';
  Self.Width := 282;

//  TcxImageComboBoxProperties(GridKanbanDBLayoutView1PlayPause.Properties).Images := DMImagens.ImgListTarefaTempo;
//  LcFrame.LayoutLookAndFeel             := DMEstilo.LafSkin;
//  LcCabecalho.LayoutLookAndFeel         := DMEstilo.LafSkin;
//  AgendaDT_PROMETIDO_PARA.DisplayFormat := DATA_SIMPLES;
end;

procedure TFrameKanban.AcaoSelecionados(AFrame_Con: TFrame; AGridView: TcxGridDBLayoutView; AFieldName : String; AResult :Variant);
var
 QuerX: TFDQuery;
 I, CampoPK1Index,CampoPK2Index,CampoPK3Index: Integer;
 Prefixo, AFieldNameTratado:String;
begin
  with TConsu_Frame(AFrame_Con) do
  try
    QuerX               := GeraFDQuery;
    LcFrame.Enabled     := False;
    GridKanban.Enabled  := False;
    if Kanban.Active then
      ABookmarkSubGrid  := Kanban.FieldByName('Descricao').value;
    if Not Assigned(FFrmAguarde) then
      FFrmAguarde := TFrmAguarde.Create(Self);
    FFrmAguarde.Mensagem := 'Atualizando ! ...';
    FFrmAguarde.Show;
    Application.ProcessMessages;
    if Kanban.Active then
      GridKanban.Enabled := False;
    FFrmAguarde.ProgressoMaximo := AGridView.Controller.SelectedRecordCount;
    if UCHist_Cadastro.CampoPK1 <>'' then
      CampoPK1Index:=  AGridView.GetItemByFieldName(UCHist_Cadastro.CampoPK1).Index;
    if UCHist_Cadastro.CampoPK2 <>'' then
      CampoPK2Index:=  AGridView.GetItemByFieldName(UCHist_Cadastro.CampoPK2).Index;
    if UCHist_Cadastro.CampoPK3 <>'' then
      CampoPK3Index:=  AGridView.GetItemByFieldName(UCHist_Cadastro.CampoPK3).Index;

    WREventosCadastro.DoOnValidaEdicaoCamposBefore(AFieldName,AFieldName,AResult);

    TransaDragAndDrop.StartTransaction;
    for i := 0 to AGridView.ViewData.RecordCount - 1 do
    begin
      if Not AGridView.ViewData.Records[i].IsData then
        Continue;
      if AGridView.ViewData.Records[i].Selected then
      begin
        try
//          GridConsultaDBTableView1.DataController.ChangeFocusedRecordIndex(GridConsultaDBTableView1.Controller.SelectedRecords[i].RecordIndex);

          QueryDragAndDrop.Close;
          if UCHist_Cadastro.CampoPK1 <>'' then
            QueryDragAndDrop.ParambyName(UCHist_Cadastro.CampoPK1).Value:=  AGridView.DataController.Values[AGridView.ViewData.Records[i].RecordIndex,CampoPK1Index];
          if UCHist_Cadastro.CampoPK2 <>'' then
            QueryDragAndDrop.ParambyName(UCHist_Cadastro.CampoPK2).Value:=  AGridView.DataController.Values[AGridView.ViewData.Records[i].RecordIndex,CampoPK2Index];
          if UCHist_Cadastro.CampoPK3 <>'' then
            QueryDragAndDrop.ParambyName(UCHist_Cadastro.CampoPK3).Value:=  AGridView.DataController.Values[AGridView.ViewData.Records[i].RecordIndex,CampoPK3Index];
          QueryDragAndDrop.Open;

          MemTableDragDrop.Open;
          MemTableDragDrop.EmptyDataSet;

          QuerX.SQL.Text := 'select H.*, U.USUARIO from HISTORICO_EDITANDO H ' +
                            'left join USUARIO U on U.CODIGO = H.CODUSUARIO ' +
                            'where (H.TABELA = :Tabela) and (H.EVENTO = :Evento) and (DT_FECHAMENTO Is Null) ';

          if not (UCHist_Cadastro.CampoPK1 = '') then
            QuerX.SQL.Text:= QuerX.sql.Text  + ' and(H.CHAVE_PK1 = :CHAVE)';
          if not (UCHist_Cadastro.CampoPK2 = '') then
            QuerX.sql.Text:= QuerX.sql.Text  + ' and(H.CHAVE_PK2 = :CHAVE)';
          if not (UCHist_Cadastro.CampoPK3 = '') then
            QuerX.sql.Text:= QuerX.sql.Text  + ' and(H.CHAVE_PK3 = :CHAVE)';
          QuerX.ParamByName('Tabela').AsString := UpperCase(UCHist_Cadastro.Tabela);
          QuerX.ParamByName('Evento').AsString := 'Utilizando';
          QuerX.ParamByName('CHAVE').Value := QueryDragAndDrop.FieldByName('CODIGO').Value;
          QuerX.Open;
          if QuerX.RecordCount > 0 then
          begin
            MemTableDragDrop.Insert;
            WREventosCadastro.DoOnValidaEdicaoMemTable(MemTableDragDrop, QueryDragAndDrop, QuerX.FieldByName('USUARIO').AsString);
            MemTableDragDrop.Post;

            Continue;
          end;

          QueryDragAndDrop.Edit;
          Prefixo:='';
          if Kanban.FindField(AFieldName).AutoGenerateValue <> TAutoRefreshFlag(arNone) then
            Prefixo:='COD';
          AFieldNameTratado:= Prefixo+AFieldName;
          WREventosCadastro.DoOnValidaEdicaoCampos(AFieldName, AFieldNameTratado, AResult, QueryDragAndDrop);
          QueryDragAndDrop.FieldByName(AFieldNameTratado).Value := AResult;
          QueryDragAndDrop.Post;
        except
          On E:Exception do
          begin
            Debug(E.Message);
            ShowMessage('Erro no acaoselecionados');
          end;
        end;
      end;
      FFrmAguarde.AvancarProgresso;
    end;

    try
      TransaDragAndDrop.Commit;
    except
      TransaDragAndDrop.Rollback;
    end;
    FFrmAguarde.Mensagem := 'Atualizados!';
//    Sleep(2000);
    AtualizarKanban_Titulos;
  finally
    QuerX.Free;
    try
      WREventosCadastro.DoOnValidaEdicaoCamposAfter;
      FFrmAguarde.Close;
      if MemTableDragDrop <> nil then
      begin
        if MemTableDragDrop.RecordCount > 0 then
        begin
          TFormRegistroAviso.Abrir(MemTableDragDrop, '');
        end;
      end;

      if Not FDobrado and KanBan.Active then
        AGridView.DataController.DataSet.Refresh;
      if AGridView.DataController.DataSet<> KanBan then
        KanBan.Refresh;

    finally
      GridKanban.Enabled := True;
      LcFrame.Enabled    := True;
    end;
  end;
end;

procedure TFrameKanban.GridKanbanDBLayoutView1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  AFrameKanbanOrigem: TFrameKanban;
//  HT: TcxCustomGridHitTest;
begin
//  HT := GridKanbanDBLayoutView1.GetHitTest(X, Y);
//  if not (HT is TcxGridRecordCellHitTest) then
//    Exit;

  if (Source is TcxDragControlObject) and
     (TcxDragControlObject(Source).Control is TcxGridSite) and
     (TcxDragControlObject(Source).Control.Parent is TcxGrid) and
     (TcxDragControlObject(Source).Control.Parent.Parent is TdxLayoutControl) and
     (TcxDragControlObject(Source).Control.Parent.Parent.Parent is TFrameKanban) then    // Aqui acho bom verificar se esta Assinged
  begin
    AFrameKanbanOrigem:= TFrameKanban(TcxDragControlObject(Source).Control.Parent.Parent.Parent);
    
    AcaoSelecionados(TConsu_Frame(Self.Parent.Parent), AFrameKanbanOrigem.GridKanbanDBLayoutView1, FFieldName, FChave);
    pnlEmcaminhar.Visible:=False;
    Kanban_CloseOpen;
  end;
  pnlEmcaminhar.Visible:=False;
end;

procedure TFrameKanban.GridKanbanDBLayoutView1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source <> nil) and
            (Source is TcxDragControlObject) and
            (TcxDragControlObject(Source).Control is TcxGridSite);
//  pnlEmcaminhar.Visible:=Accept;
end;

procedure TFrameKanban.KanbanDT_PROMETIDO_PARAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
  begin
    if YearOf(Sender.AsDateTime) = 1899 then
      Text := '';
  end;
end;

procedure TFrameKanban.BtnViewGridClick(Sender: TObject);
begin
  popMenu_Mais.PopupOnMouse;
end;

procedure TFrameKanban.Kanban_CloseOpen;
begin
  Kanban.Close;
  Kanban.Open;
end;

procedure TFrameKanban.pop_RecaregrClick(Sender: TObject);
begin
  Kanban_CloseOpen;
end;

procedure TFrameKanban.pop_DobrarClick(Sender: TObject);
begin
  Dobrar;
  TConsu_Frame(Self.Parent.Parent).Salva_WrKanban;
end;

destructor TFrameKanban.Destroy;
begin
  FQuerQuant.Free;
  inherited;
end;

procedure TFrameKanban.Dobrar;
begin
  FDobrado := not FDobrado;
  LayoutChanged;
end;

procedure TFrameKanban.LayoutChanged;
begin
  pnlDobrado.Visible  := FDobrado;
  PnlCabecalho.Visible:= Not FDobrado;
  LcFrame.Visible     := Not FDobrado;
  LcFrame.Visible     := not FDobrado;
  if FDobrado then
    width:=50
  else
    width:= 282;
end;

procedure TFrameKanban.LbTituloFrameMouseLeave(Sender: TObject);
begin
  // Larguei
//  TConsu_Frame(Self.Parent.Parent).dxLayoutControl1.Customization := False;
end;

procedure TFrameKanban.LcDobradoDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept:=True;
end;

procedure TFrameKanban.Movercoluna1Click(Sender: TObject);
begin
  TConsu_Frame(Self.Parent.Parent).dxLayoutControl1.Customization := True;
  TConsu_Frame(Self.Parent.Parent).dxLayoutControl1.CustomizeForm.OnClose := TConsu_Frame(Self.Parent.Parent).CustomizationFormClose;
end;

procedure TFrameKanban.pnlEmcaminharClick(Sender: TObject);
begin
  pnlEmcaminhar.Visible:=False;
end;

procedure TFrameKanban.popMenu_MaisPopup(Sender: TObject);
begin
  pop_Dobrar.Checked := FDobrado;
end;

///////////////////////////// Lixo /////////////////////////

procedure TFrameKanban.KanbanAfterOpen(DataSet: TDataSet);
var
  QuerX: TFDQuery;
begin
//  if FLayoutItem <> nil then
//    FLayoutItem.Visible := not Kanban.IsEmpty;
//  TFrameProducaoKanban(FGerenciador).AjustaAlturaFrames;
//  if Not AFullExpad then   //Trocou o subGrid quero que abra tudo
//  begin
//    try
//      cxStatusKeeperConsulta.LoadState;
//    except end;
//  end
//  else begin
//    GridConsultaDBTableView1.DataController.Groups.FullExpand;
  try
    GridKanbanDBLayoutView1.DataController.GotoFirst;
  except end;
//  end;
//  if GridKanbanDBLayoutView1.Controller.FocusedRow <> nil then
//    GridKanbanDBLayoutView1.Controller.FocusedRow.Selected := True;

  if not Assigned(FQuerQuant) then
    FQuerQuant := GeraFDQuery;

  try
    FQuerQuant.Close;
    FQuerQuant.SQL.Text := 'SELECT COUNT(1) as QUANT FROM ('+TFDQuery(DataSet).SQL.Text+')';
    FQuerQuant.ParamByName('Codigo').Value := TFDQuery(DataSet).ParamByName('Codigo').Value;
    FQuerQuant.Open;
    if DataSet.RecordCount = 1 then
      LbTituloQuant.Caption := FQuerQuant.FieldByName('QUANT').AsString + ' Item'
    else
      LbTituloQuant.Caption := FQuerQuant.FieldByName('QUANT').AsString + ' Itens';
  finally
  end;

  LbTituloFrameDobrado.Caption := LbTituloFrame.Caption;
  LbTituloQuantDobrado.Caption := LbTituloQuant.Caption;
//  
//  if FFieldName = 'PESSOA_FUNCIONARIO_CODIGO' then
//    LbTituloFrame.Caption := KanBan.FieldByName('FUNCIONARIO').AsString;
end;

procedure TFrameKanban.KanbanBeforeOpen(DataSet: TDataSet);
begin
  Kanban.ParamByName('CODIGO').Value := FCodigo;//
end;

procedure TFrameKanban.KanbanBeforePost(DataSet: TDataSet);
begin
//  if TAgendaTipoRegistro.GetFromCodigo(AgendaTIPO_REGISTRO.AsString) = atrPlanejamento then
//    Agenda.Cancel;
end;

procedure TFrameKanban.GridKanbanDBLayoutView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
//var
//  ACodAgenda: string;
//  ACodAgendaProducao, ATarefaStatus: Integer;
begin
//  if ACellViewInfo.Item = GridKanbanDBLayoutView1PlayPause then
//  begin
//    if AgendaPLAY_PAUSE.IsNull or (AgendaPLAY_PAUSE.AsInteger = 1) then
//      AStartPause := tfspStart
//    else
//      AStartPause := tfspPause;
  {
    ATipoRegistro := TAgendaTipoRegistro.GetFromCodigo(VarToStrDef(ACellViewInfo.GridRecord.Values[GridKanbanDBLayoutView1TIPO_REGISTRO.Index], ''));
    if ATipoRegistro = atrPlanejamento then
    begin
      ATarefaStatus := Procura('TAREFA_STATUS', 'AGENDA', AgendaCODAGENDA.Value).ToInteger;
      if ATarefaStatus < 0 then
        Exit;
      ACodAgenda         := AgendaCODAGENDA.AsString; // VarToStrDef(ACellViewInfo.GridRecord.Values[GridKanbanDBLayoutView1CODAGENDA.Index], '');
      ACodAgendaProducao := AgendaCODIGO.AsInteger;   // VarToIntDef(ACellViewInfo.GridRecord.Values[GridKanbanDBLayoutView1CODIGO.Index], 0);
    end else
    begin
      ACodAgenda         := VarToStrDef(ACellViewInfo.GridRecord.Values[GridKanbanDBLayoutView1CODIGO.Index], '');
      ACodAgendaProducao := 0;
    end;     }

//    FuncionarioStartPause(ACodAgenda, ACodAgendaProducao, AStartPause, CodigoUsuario, True);
//    PostMessage(Handle, WM_REFRESH_AGENDA, 0, 0);
//  end;
end;

procedure TFrameKanban.GridKanbanDBLayoutView1DT_PROMETIDO_PARAStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
//var
//  AValue: Variant;
begin
//  AValue := ARecord.Values[AItem.Index];
//  if VarIsNumeric(AValue) and (DateOf(AValue) > Date) then
//    AStyle := EstiloVermelho
//  else
//    AStyle := EstiloCinza;
end;

procedure TFrameKanban.GridKanbanDBLayoutView1EndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  pnlEmcaminhar.Visible:=False;
end;

procedure TFrameKanban.GridKanbanDBLayoutView1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
//var
//  AHitTest: TcxCustomGridHitTest;
//  ATipoRegistro: TAgendaTipoRegistro;
begin
  {AHitTest := GridKanbanDBLayoutView1.ViewInfo.GetHitTest(X, Y);
  if AHitTest is TcxGridRecordHitTest then
  begin
    if TConsuProducao(FFormProducao).ActMostrarMensagens.Checked then
    begin
      ATipoRegistro := TAgendaTipoRegistro.GetFromCodigo(AgendaTIPO_REGISTRO.AsString);
      if ATipoRegistro = atrPlanejamento then
        TConsuProducao(FFormProducao).FrameAgendaMensagem.CodAgenda := AgendaCODAGENDA.AsString
      else
        TConsuProducao(FFormProducao).FrameAgendaMensagem.CodAgenda := AgendaCODIGO.AsString;
    end;
  end;  }
end;

//function TFrameKanban.GetAltura: Integer;
//begin
//  Result := (Kanban.RecordCount * 85) + 100;
//end;

//procedure TFrameKanban.AtualizaTitulo;
//begin
////  case FAgruparPor of
////    kapEstagio: LbTitulo.Caption := Procura('DESCRICAO', 'ESTAGIO', FCodEstagio);
////    kapUsuario: LbTitulo.Caption := Procura('USUARIO', 'USUARIO', FCodUsuario);
////    kapCliente: LbTitulo.Caption := Procura('FANTASIA', 'PESSOAS', FCodCliente);
////    kapVenda:   LbTitulo.Caption := FCodVenda + ' - ' + Procura('RAZAOSOCIAL', 'VENDA', FCodVenda);
////  end;
////  if MatchStr(Trim(LbTitulo.Caption), ['', '-']) then
////    LbTitulo.Caption := 'Indefinido';
////  LbTitulo.Hint := LbTitulo.Caption;
//end;


end.





