 unit Frame_ConMensagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxRibbonCustomizationForm, dxRibbonSkins, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip,
  dxOfficeSearchBox, dxBar, cxBarEditItem, System.Generics.Collections,
  WREventos, frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList,
  System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls,
  dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxPSCore,
  dxPScxCommon, cxClasses, dxGalleryControl,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView,
  cxGridDBLayoutView, cxDateProfileButton, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView,
  cxGridCustomView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl,
  dxRatingControl, dxPSRichEditControlLnk, cxRichEdit, cxHyperLinkEdit, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL, cxImageComboBox,
  cxPC, dxBarBuiltInMenu, dxTabbedMDI, cxDBLookupComboBox, cxCurrencyEdit,
  cxCheckBox, Datasnap.DBClient, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, UCHistDataset,
  frFrameHistorico, cxDropDownEdit, dxStatusBar, dxRibbonStatusBar, uButtonFlat,
  cxCustomStatusKeeper, cxStatusKeeper, dxScrollbarAnnotations, Frame_Con, dxCustomTileControl, dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxGridBandedTableView, cxGridDBBandedTableView, Vcl.OleCtrls, SHDocVw, WebView2,
  Winapi.ActiveX, Vcl.Edge;

type
  TFrame_ConsuMensagens = class(TConsu_Frame)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1CODHISTORICO: TcxGridDBColumn;
    GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_LIDO: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_FAVORITO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1CODPESSOA: TcxGridDBColumn;
    GridConsultaDBTableView1USUARIO: TcxGridDBColumn;
    GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    GridConsultaDBTableView1FORM: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1CODUSUARIO_NOTIFICADO: TcxGridDBColumn;
    AbrirTela1: TMenuItem;
    GridConsultaDBTableView1CHAVE_PK1: TcxGridDBColumn;
    GridConsultaDBTableView1LIDO: TcxGridDBColumn;
    VerificarIntegrantes1: TMenuItem;
    PnlHistorico_Notificacao: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Historico_Notificacao: TFDQuery;
    DSHistorico_Notificacao: TDataSource;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CODHISTORICO: TcxGridDBColumn;
    cxGrid1DBTableView1CODUSUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1DT_LIDO: TcxGridDBColumn;
    cxGrid1DBTableView1TEM_FAVORITO: TcxGridDBColumn;
    cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1CODPESSOA: TcxGridDBColumn;
    cxGrid1DBTableView1FORM: TcxGridDBColumn;
    cxGrid1DBTableView1ATIVO: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOPK1: TcxGridDBColumn;
    cxGrid1DBTableView1MENSAGEM_NOTIFICACAO: TcxGridDBColumn;
    cxGrid1DBTableView1LIDO: TcxGridDBColumn;
    cxGrid1DBTableView1MENSAGEM: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    GridConsultaDBTableView1MENSAGEM: TcxGridDBColumn;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxImageListTreeList: TcxImageList;
    TimerUsuarioOnLine: TTimer;
    UCHist_Consulta: TUCHist_DataSet;
    PopupMais: TPopupMenu;
    poupMenuTodasasnolidas: TMenuItem;
    tcAcoesItem1: TdxTileControlItem;
    tcAcoesItem2: TdxTileControlItem;
    tcDataItem1: TdxTileControlItem;
    GridConsultaDBBandedTableView1: TcxGridDBBandedTableView;
    GridConsultaDBBandedTableView1CODIGO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODHISTORICO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODUSUARIO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1DT_LIDO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TEM_FAVORITO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1DT_ALTERACAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODPESSOA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1ATIVO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1FORM: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODIGOPK1: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1MENSAGEM_NOTIFICACAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1LIDO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1MODULO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CHAVE_PK1: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CHAVE_PK2: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CHAVE_PK3: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TABELA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODHISTORICO_SLA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1MENSAGEM: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TABELA_1: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1USUARIO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1RAZAOSOCIAL: TcxGridDBBandedColumn;
    EdgeBrowser1: TEdgeBrowser;
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure AbrirTela1Click(Sender: TObject);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure GridConsultaDBTableView1DblClick(Sender: TObject);
    procedure MarcaLido;
    procedure GridConsultaDBTableView1Column1PropertiesEditValueChanged(
      Sender: TObject);
    procedure VerificarIntegrantes1Click(Sender: TObject);
    procedure GridConsultaDBTableView1MENSAGEMPropertiesURLClick(
      Sender: TcxCustomRichEdit; const URLText: string; Button: TMouseButton);
    procedure GridConsultaDBTableView1MouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure splFlipRotateCanResize(Sender: TObject;
      AItem: TdxCustomLayoutItem; var ANewSize: Integer; var AAccept: Boolean);
    procedure TimerUsuarioOnLineTimer(Sender: TObject);
    procedure GridConsultaDBTableView1TEM_FAVORITOPropertiesEditValueChanged(
      Sender: TObject);
    procedure GridConsultaDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure pnlFlipRotateEnter(Sender: TObject);
    procedure pnlFlipRotateExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure tcAcoesItem1Click(Sender: TdxTileControlItem);
    procedure tcAcoesItem2Click(Sender: TdxTileControlItem);
    procedure SubGridBeforeOpen(DataSet: TDataSet);
    procedure GridSubGridViewFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FrameEnter(Sender: TObject);
  private
    { Private declarations }
//    Abrindo : Boolean;
//    MemTreeListClone : TFDMemTable;
//    UsuariosLogados : TArray
 public
    FFrameHistorico: TFrameHistorico;
//    FFrameHistoricoNotificacao: TFrameHistoricoNotificacao;
//    procedure CarregaTreeList;
//    procedure AddTreeList(ACodigo, AParent, AImageIndex: Integer; ADescricao, AModulo: string;
//          ATabela, AChave_PK1, AChave_PK2,AChave_PK3, AQuant : Variant);
    { Public declarations }
     constructor Create(AOwner: TComponent); override;
  end;

var
  Frame_ConsuMensagens: TFrame_ConsuMensagens;
  QuantNotificacaoTela:Integer;
implementation

{$R *.dfm}

Uses
  Base, wrFuncoes, UnitFuncoes, StrUtils, wrForms, CadM, System.Math,
  Principal, Agenda, CadCentro_Trabalho, Tag.Form;

constructor TFrame_ConsuMensagens.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  QuantNotificacaoTela:=QuantNotificacao;
  GridConsultaDBTableView1.OptionsView.GroupByBox:=False;
  Consulta.MasterSource:=DSSubGrid;
  SubGrid.Close;
  SubGrid.Open;
//  DisableAero := True; // bosta não consegui ativer isso aqui, ele deixa a tela mais bonita sem os risco do layoutControl
end;

procedure TFrame_ConsuMensagens.AbrirTela1Click(Sender: TObject);
var
  FForm : TFormClass;
begin
  inherited;
  if MatchStr(Consulta.FieldByName('TABELA').AsString , ['USUARIO','CENTRO_TRABALHO']) then    // Menssagens Diretas não tem tela.
  begin
//    MemTreeList.Locate('TABELA;CHAVE_PK1', varArrayOf(['USUARIO', Consulta.FieldByName('CHAVE_PK1').AsString]), []);
    Exit;
  end;
  FForm := TFormClass(GetClass('TFrm'+Consulta.FieldByName('TABELA').AsString));
  if (FForm <> nil) then
  begin
    if Consulta.FieldByName('TABELA').AsString = 'AGENDA' then    // Menssagens Diretas não tem tela.
      TFrmAgenda.AbreFrame(FrmAgenda, maAgenda)  // Codigo do usuario, e Chave (Fazer essa rotina)
//      CadastroModalChave(FForm, Consulta.FieldByName('CHAVE_PK2').Value );  // Abre Agenda Selecionando
    else begin
      if MatchStr(Consulta.FieldByName('TABELA').AsString, ['VENDA','NF_ENTRADA']) then
        CadastroModalChave(FForm, Consulta.FieldByName('CHAVE_PK2').Value )
      else
        CadastroModalChave(FForm, Consulta.FieldByName('CHAVE_PK1').Value );
    end;
  end;
end;

procedure TFrame_ConsuMensagens.FormDestroy(Sender: TObject);
begin
  inherited;
  try
    FreeAndNil(FFrameHistorico);
  except  end;
end;

procedure TFrame_ConsuMensagens.FrameEnter(Sender: TObject);
begin
  inherited;
//  EdgeBrowser1.Navigate('https://antoine92190.github.io/vue-advanced-chat/');
//  WebBrowser1.Navigate('http://192.168.0.103/supportboard/admin.php');
//  WebBrowser1.Navigate('https://sandbox.tinode.co/');
//  WebBrowser1.Navigate('https://www.google.com.br/');
  EdgeBrowser1.Navigate('https://open.rocket.chat/channel/general?layout=embedded');
//  ChromiumWindow1.LoadURL('https://open.rocket.chat/channel/general?layout=embedded');
//  EdgeBrowser1.Navigate('https://sandbox.tinode.co/');

//  EdgeBrowser1.Navigate('https://antoine92190.github.io/vue-advanced-chat/');
//  EdgeBrowser1.Navigate('http://192.168.0.103/supportboard/admin.php');
end;

procedure TFrame_ConsuMensagens.MarcaLido;
begin
  if Consulta.FieldByName('LIDO').AsString <> '1' then
  begin
    Consulta.FieldByName('DT_LIDO').AsDateTime := DataHoraSys;
    Consulta.FieldByName('LIDO').AsString := '1';
  end;
end;

procedure TFrame_ConsuMensagens.pnlFlipRotateEnter(Sender: TObject);
begin
  inherited;
  TimerUsuarioOnLine.Enabled:=False;
end;

procedure TFrame_ConsuMensagens.pnlFlipRotateExit(Sender: TObject);
begin
  inherited;
  TimerUsuarioOnLine.Enabled:=True;
end;

{
procedure TFrame_ConsuMensagens.AddTreeList(ACodigo, AParent, AImageIndex: Integer; ADescricao, AModulo: string;
   ATabela, AChave_PK1, AChave_PK2,AChave_PK3, AQuant : Variant);
begin
  MemTreeList.Insert;
  MemTreeList.FieldByName('CODIGO').AsInteger     := ACodigo;
  MemTreeList.FieldByName('DESCRICAO').AsString   := ADescricao;
  MemTreeList.FieldByName('PARENT').AsInteger     := AParent;
  MemTreeList.FieldByName('IMAGEINDEX').AsInteger := AImageIndex;
  MemTreeList.FieldByName('TABELA').Value         := ATabela;
  MemTreeList.FieldByName('MODULO').Value         := AModulo;
  MemTreeList.FieldByName('CHAVE_PK1').Value      := AChave_PK1;
  MemTreeList.FieldByName('CHAVE_PK2').Value      := AChave_PK2;
  MemTreeList.FieldByName('CHAVE_PK3').Value      := AChave_PK3;
  if AQuant = 0 then
    MemTreeList.FieldByName('QUANT').Clear
  else
    MemTreeList.FieldByName('QUANT').Value        := AQuant;
  MemTreeList.Post;
end;   }

procedure TFrame_ConsuMensagens.splFlipRotateCanResize(Sender: TObject;
  AItem: TdxCustomLayoutItem; var ANewSize: Integer; var AAccept: Boolean);
begin
  inherited;
  LipnlFlipRotate.ControlOptions.OriginalWidth:= ANewSize;
end;

procedure TFrame_ConsuMensagens.SubGridBeforeOpen(DataSet: TDataSet);
begin
//  inherited;
  SubGrid.SQL.text:= ' select M.Descricao, M.CODIGO, MAX(ML.DT_ALTERACAO) AS DT_ALTERACAO, Count(1) AS QUANT '+
                     ' from MENSAGEM_CONTATO M '+
                     ' left join MENSAGEM_ASSUNTO MA ON M.CODIGO = MA.CODMENSAGEM_CONTATO '+
                     ' left join MENSAGEM_LIDO ML ON ML.CODIGO = MA.CODMENSAGEM_CONTATO '+
//                     ' left join pessoas p on p.codigo = h.CODPESSOA  '+
//                     ' left join USUARIO U on u.codigo = h.codusuario' +
//                     ' where (H.CodUsuario = '+Usuario.Codigo.ToString+') '+     //Ativar isso para a pessoa poder ver apenas as conversas que ela faz parte
                     ' group by 1,2 '+
                     ' order by 3 desc ';
end;

procedure TFrame_ConsuMensagens.tcAcoesItem1Click(Sender: TdxTileControlItem);
begin
  inherited;
  if (FrmPrincipal.actProducao_Equipe.Enabled) then
  begin
    CadastroModalChave(TFrmCentro_Trabalho,'');
//    FrmPrincipal.actProducao_Equipe.Execute;
  end;
end;

procedure TFrame_ConsuMensagens.tcAcoesItem2Click(Sender: TdxTileControlItem);
begin
  inherited;
  PopupMais.PopupOnMouse;
end;

procedure TFrame_ConsuMensagens.TimerUsuarioOnLineTimer(Sender: TObject);
begin
  inherited;
  if QuantNotificacao = QuantNotificacaoTela then
    Exit;
//  TimerUsuarioOnLine.Enable:=False;   // Vou usar isso dentro do CaregaTrelist para não pular na hora que esta escrevendo
  if LiGridConsulta.Visible then
    cxStatusKeeperConsulta.SaveState;
//  CarregaTreeList;
  if LiGridConsulta.Visible then
    try
      cxStatusKeeperConsulta.LoadState;
    except end;
  QuantNotificacaoTela:=QuantNotificacao;
//  TimerUsuarioOnLine.Enable:=False;
end;
  {
procedure TFrame_ConsuMensagens.CarregaTreeList;
var
  QuerX: TFDQuery;
  ACod, AImagem: Integer;
  AQuant:Variant;
  ADescricaoSelecionada:String;
begin
  inherited;
 { TimerUsuarioOnLine.Enabled:=False;
  QuerX := GeraFDQuery(Transa);
  TreeListUsuarios.BeginUpdate;
  try
   if MemTreeList.FieldByName('DESCRICAO').AsString<>'' then
     ADescricaoSelecionada := MemTreeList.FieldByName('DESCRICAO').Value 
   else
     ADescricaoSelecionada := 'Itens salvos';
   TreeListUsuarios.DataController.DataSource:=nil;
//    if not Assigned(MemTreeListClone) then
//      MemTreeListClone:= TFDMemTable.Create(self)
//    else
//      MemTreeListClone.Close;
//    MemTreeList.Close;
    MemTreeList.Open;
    if Not MemTreeList.IsEmpty then
     MemTreeList.EmptyDataSet;
//    MemTreeListClone.CloneCursor(MemTreeList, False, False);

// MODELO >>>>> AddTreeList(ACodigo, AParent, AImageIndex: Integer; ADescricao: string; ATabela, AChave : Variant);

    if poupMenuTodasasnolidas.Checked then// Só aparece em raros os casos melhor dividir em assuntos APPs, menos peso para carregar e conceitos diferentes. Venda, Leads, Cobrança, essa divisão é importante
      AddTreeList(1, -2, 5, 'Todas as não lidas', '', Null, Null, Null, Null, Null);

    AddTreeList(2, -1, 6, 'Itens salvos', '', Null, Null, Null, Null, Null);
    AddTreeList(3, -1, 12, 'Mais', '', Null, Null, Null, Null, Null);

    ACod := 1000;
    AddTreeList(10, 0, 2, 'Grupo de Trabalho', '', Null, Null, Null, Null, Null);    // Sem Imagem

    QuerX.SQL.Text := ' select CT.CODIGO, CT.DESCRICAO, CT.PRIVADO, '+
                      ' (Select Count(1) from HISTORICO_NOTIFICACAO H where (H.TABELA = ''CENTRO_TRABALHO'')and(H.CodUsuario = '+Usuario.Codigo.ToString+')and(CT.CODIGO = H.CHAVE_PK1)and(H.DT_LIDO IS NULL))as Quant '+
                      ' from CENTRO_TRABALHO CT WHERE CT.ATIVO = ''S'' ' +
                      ' order by CT.DESCRICAO ';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AImagem:= ifthen(QuerX.FieldByName('PRIVADO').AsString = 'S', 1, 0);
      AddTreeList(ACod + QuerX.FieldByName('CODIGO').AsInteger, 10, AImagem,
        QuerX.FieldByName('DESCRICAO').AsString, 'NOTIFICACAO', 'CENTRO_TRABALHO', QuerX.FieldByName('CODIGO').AsInteger, Null, Null,
        QuerX.FieldByName('Quant').Value);
      QuerX.Next;
    end;
    if FrmPrincipal.actProducao_Equipe.Enabled then
      AddTreeList(2999, 10, 7, 'Adicionar grupo', '', Null, NULL, Null, Null, Null);     // Imagem de Pasta 2
    Inc(ACod, 3000);

    // Adiciona todos os usuários, sem divisão por setor
    AddTreeList(20, 0, 2, 'Mensagens Diretas','', Null, NULL, Null, Null, Null);     // Imagem de Pasta 2


    QuerX.SQL.Text := ' select U.CODIGO, U.USUARIO, (select Count(1) from USUARIO_LOGADO UL where (UL.USUARIO = U.CODIGO))as OnLine, '+
                      ' (Select Count(1) from HISTORICO_NOTIFICACAO H where (H.TABELA = ''USUARIO'')and(U.CODIGO = H.CHAVE_PK1)and(H.CodUsuario = '+Usuario.Codigo.ToString+')and(H.DT_LIDO IS NULL))as Quant '+
                      ' from USUARIO U where (U.INATIVO = 0) order by U.USUARIO asc';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AImagem:=ifthen(QuerX.FieldByName('OnLine').AsInteger < 1, 3, 4);
      AddTreeList(ACod+QuerX.FieldByName('CODIGO').AsInteger, 20, AImagem, QuerX.FieldByName('USUARIO').AsString, 'USUARIO', 'USUARIO',
        QuerX.FieldByName('CODIGO').AsInteger, Null, Null, QuerX.FieldByName('QUANT').Value);
      QuerX.Next;
    end;
    if FrmPrincipal.Action_Usuario.Enabled then
      AddTreeList(4000, 20, 7, 'Adicionar usuários', '', Null, NULL, Null, Null, Null);
                   // Muita atenção no item 4 abaixo se tiver outro nde usar um númeiro maior
    AddTreeList(30, 4, 2, 'Apps', '', Null, Null, Null, Null, Null);

   QuerX.SQL.Text := ' select H.MODULO, H.TABELA, Count(1) as Quant '+
                     ' from HISTORICO_NOTIFICACAO H where NOT(H.TABELA = ''USUARIO'')AND NOT(H.TABELA = ''CENTRO_TRABALHO'') '+
                     '  and(H.CodUsuario = '+Usuario.Codigo.ToString+')and(H.DT_LIDO IS NULL) '+
                     ' group by H.MODULO, H.TABELA ';
    QuerX.Open;

    AQuant:=null;
    if QuerX.locate('MODULO;TABELA', varArrayOf(['AGENDA','AGENDA']),[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(5, 30, 8, 'CRM', 'CRM', 'AGENDA', Null, Null, Null, AQuant);

    AQuant:=null;
    if QuerX.locate('MODULO;TABELA', varArrayOf(['PRODUCAO','PRODUCAO']),[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(6, 30, 9, 'Produção', 'PRODUCAO',  'PRODUCAO', Null, Null, Null, AQuant);

    AQuant:=null;
    if QuerX.locate('MODULO;TABELA', varArrayOf(['VENDA','VENDA']),[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(7, 30, 10,'Venda', 'VENDA', 'VENDA', Null, Null, Null, AQuant);

    AQuant:=null;
    if QuerX.locate('MODULO;TABELA', varArrayOf(['COMPRA','NF_ENTRADA']),[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(7, 30, 11,'Compra', 'COMPRA', 'NF_ENTRADA', Null, Null, Null, AQuant);

//    MemTreeList.Locate('TABELA;CODIGOPK1', varArrayOf(['USUARIO',USUARIO.Codigo]),[]);

  finally
    QuerX.Free;
    TreeListUsuarios.DataController.DataSource:=DSMemTreeList;
    MemTreeList.Locate('DESCRICAO', ADescricaoSelecionada,[]);
    TreeListUsuarios.FullExpand;
    TreeListUsuarios.EndUpdate;
    TimerUsuarioOnLine.Enabled:=True;
  end;
end;   }

procedure TFrame_ConsuMensagens.dxTileControl1Item1Click(Sender: TdxTileControlItem);
var
  QuerX : TFDQuery;
begin
  Consulta.DisableControls;
  if TransaDragAndDrop.Active then
    showMessage('transacao ativa');
  TransaDragAndDrop.StartTransaction;

  QuerX := GeraFDQuery(TransaDragAndDrop);
  try
    QuerX.SQL.Text := ' update HISTORICO_NOTIFICACAO set Lido = ''1'',' +
                      ' DT_LIDO = current_timestamp ' +
                      ' where (CODUSUARIO = :Cod)';
    QuerX.ParamByName('Cod').AsInteger   := Usuario.Codigo;
    try
      QuerX.ExecSQL;
      TransaDragAndDrop.Commit;
    except
      TransaDragAndDrop.Rollback;
      raise;
    end;
  finally
    QuerX.Free;
  end;
  Consulta.Refresh;
  Consulta.EnableControls;
end;

procedure TFrame_ConsuMensagens.VerificarIntegrantes1Click(
  Sender: TObject);
begin
  inherited;
  Historico_Notificacao.Close;
  Historico_Notificacao.ParamByName('CODIGO').Value := Consulta.FieldByName('CODHISTORICO').Value;
  Historico_Notificacao.Open;
  ShowPanelForm(PnlHistorico_Notificacao, bsSingle);
end;

procedure TFrame_ConsuMensagens.GridConsultaDBTableView1Column1PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  IF Consulta.Command.State = csOpen then Exit;
//  MostrarAguarde;
//  while Not(Consulta.State in [dsInactive, dsBrowse]) do
//    Application.ProcessMessages;

  if (Consulta.State in dsEditModes) then
  begin
//    MarcaLido;
    if Consulta.FieldByName('LIDO').AsString = '1' then
    begin
      Consulta.FieldByName('DT_LIDO').AsDateTime := DataHoraSys;
//      Consulta.FieldByName('LIDO').AsString := '1';
      Consulta.Post;
    end else
      if Consulta.FieldByName('DT_LIDO').AsDateTime >= 0 then
      begin
        Consulta.FieldByName('DT_LIDO').Clear;
        Consulta.Post;
      end else
        Consulta.Cancel;
  end;
end;

procedure TFrame_ConsuMensagens.GridConsultaDBTableView1DblClick(
  Sender: TObject);
begin
//  inherited;
  AbrirTela1.Click;
end;

procedure TFrame_ConsuMensagens.GridConsultaDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  // Fechar e abrir com as informação da tela selecionada
//  if Not SplitSubGrid.Visible or
//   (Consulta.FieldByName('DESCRICAO').AsString = 'Itens salvos' ) then Exit;
  if (AFocusedRecord<> nil)and(Consulta.RecordCount>0) then
  begin
    UCHist_Consulta.Tabela   := Consulta.FieldByName('TABELA').AsString;
    UCHist_Consulta.Modulo   := Consulta.FieldByName('MODULO').AsString;

    UCHist_Consulta.CampoPK1:='';
    UCHist_Consulta.CampoPK2:='';
    UCHist_Consulta.CampoPK3:='';
    if Consulta.FieldByName('TABELA').AsString = 'AGENDA'  then
      UCHist_Consulta.CampoPK2:='CHAVE_PK2'
    else
    if Consulta.FieldByName('TABELA').AsString = 'NF_ENTRADA'  then
      UCHist_Consulta.CampoPK2:='CHAVE_PK2'
    else
    if Consulta.FieldByName('TABELA').AsString = 'VENDA'  then
      UCHist_Consulta.CampoPK2:='CHAVE_PK2'
    else
      UCHist_Consulta.CampoPK1:='CHAVE_PK1';  // se tiver chave estranha bota acima

//    IF Consulta.Command.State = csOpen then Exit;
//    while Not(Consulta.State in [dsInactive, dsBrowse]) do
//      Application.ProcessMessages;

    Try
      TFrameHistorico.CarregaFrame(FFrameHistorico, pnlFlipRotate,  UCHist_Consulta, nil);
    Except End;
    dxLayoutControl1.BeginUpdate;
    splFlipRotate.Visible   := True;
    GrupoFlip.Visible       := True;
    LipnlFlipRotate.Visible := True;
    dxLayoutControl1.EndUpdate;
  end;
end;

procedure TFrame_ConsuMensagens.GridConsultaDBTableView1MENSAGEMPropertiesURLClick(
  Sender: TcxCustomRichEdit; const URLText: string; Button: TMouseButton);
var
  TextoLimpo, Chave:String;
  TextoArray,TelaChaveArray: TArray<string>;
  FForm :TFormClass;
begin
  inherited;
  TextoArray := URLText.Split([':']);
  if MatchStr(TextoArray[0],['Form', 'Usuario']) then
  begin
    TelaChaveArray:= TextoArray[1].Split(['/']);
    TextoLimpo := TelaChaveArray[0];
    if Length(TelaChaveArray)>1 then
      Chave := TelaChaveArray[1];
  end;
//   locate para achar o chat do Usuario


  FForm := TFormClass(GetClass(TextoLimpo));
  if FForm <> nil then
    CadastroModalChave(FForm, Chave);
end;

procedure TFrame_ConsuMensagens.GridConsultaDBTableView1MouseWheelDown(
  Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
//  inherited;
end;

procedure TFrame_ConsuMensagens.GridConsultaDBTableView1TEM_FAVORITOPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if (Consulta.State in dsEditModes) then
    Consulta.Post;
end;

procedure TFrame_ConsuMensagens.GridSubGridViewFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
//  Consulta.Close;
//  Consulta.Open;
end;

procedure TFrame_ConsuMensagens.WREventosConsultaGetFiltrosConsulta(
  Sender: TObject);
begin
//  inherited;
//  SQLWhere.AddAnd(' HN.codusuario = '+Usuario.Codigo.ToString);   //Isso define para ele ler apenas as messagens para o usuário ativo
//  Historico_Notificacao.ParamByName('Tabela').AsString := UpperCase(MemTreeList.FieldByName('Tabela').AsString);

  SQLWhere.Text:='where (HN.codusuario = '+Usuario.Codigo.ToString+')';   //Isso define para ele ler apenas as messagens para o usuário ativo

{  if MemTreeList.FieldByName('DESCRICAO').AsString = 'Todas as não lidas' then
    SQLWhere.AddAnd(' HN.LIDO is null');
  if MemTreeList.FieldByName('DESCRICAO').AsString = 'Itens salvos' then
    SQLWhere.AddAnd(' HN.TEM_FAVORITO = 1');
                                                  }
  SQLWhere.AddAnd('((HN.CODPESSOA = :Codigo) or ((:Codigo is Null) and (HN.CODPESSOA IS NULL)))');
  SQLWhere.Text:= SQLWhere.Text+' Order by HN.DT_ALTERACAO desc';
//  ShowMessage(SQLWhere.Text);
//  SplitSubGrid.Visible:=True;
  LiGridSubGrid.Width:=360;
end;

procedure TFrame_ConsuMensagens.WREventosConsultaSQLTrataNomes(
  Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, 'ATIVO', 'HN.ATIVO');
end;

initialization
  RegisterFrameCon(Tag_Mensagens, TFrame_ConsuMensagens);

end.
