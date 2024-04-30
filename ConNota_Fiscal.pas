unit ConNota_Fiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, WREventos,
  UCHistDataset, frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxPSCore,
  dxPScxCommon, cxClasses, dxStatusBar, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView,
  cxGridDBLayoutView, dxTokenEdit, cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutControl, ACBrBase, ACBrDFe, ACBrNFe, wrConversao, DataModuleBanco, dxRibbonSkins,
  dxRibbonCustomizationForm, dxOfficeSearchBox, dxBar, cxBarEditItem, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon, dxRibbonStatusBar,
  System.Generics.Collections, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, cxCustomStatusKeeper,
  cxStatusKeeper, dxPSRichEditControlLnk;

type
  TConsuNota_Fiscal = class(TConsuM)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1CODEMPRESA: TcxGridDBColumn;
    GridConsultaDBTableView1CODVENDA: TcxGridDBColumn;
    GridConsultaDBTableView1NF_DT_EMISSAO: TcxGridDBColumn;
    GridConsultaDBTableView1NF_NATUREZA_OPERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1NF_NUMERO: TcxGridDBColumn;
    GridConsultaDBTableView1NF_CHAVE: TcxGridDBColumn;
    GridConsultaDBTableView1NF_PROTOCOLO: TcxGridDBColumn;
    GridConsultaDBTableView1AmbienteStr: TcxGridDBColumn;
    GridConsultaDBTableView1NF_PROTOCOLO_CANCELAMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1NF_DT_CANCELAMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1MOTIVO_CANCELAMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1NF_MOTIVO_STATUS: TcxGridDBColumn;
    GridConsultaDBTableView1TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1NF_RAZAOSOCIAL: TcxGridDBColumn;
    GridConsultaDBTableView1NF_SITUACAO: TcxGridDBColumn;
    GridConsultaDBTableView1NF_SEQUENCIA_EVENTO: TcxGridDBColumn;
    GridConsultaDBTableView1NF_CNPJCPF_DESTINO: TcxGridDBColumn;
    GridConsultaDBTableView1SERIE: TcxGridDBColumn;
    GridConsultaDBTableView1NF_MODELO: TcxGridDBColumn;
    GridConsultaDBTableView1NF_CNPJ: TcxGridDBColumn;
    GridConsultaDBTableView1NF_NUM_LOTE: TcxGridDBColumn;
    dxLayoutItem1: TdxLayoutItem;
    WRButtonFlat1: TWRButtonFlat;
    dxLayoutItem2: TdxLayoutItem;
    WRButtonFlat2: TWRButtonFlat;
    dxLayoutItem3: TdxLayoutItem;
    WRButtonFlat3: TWRButtonFlat;
    ActNFEnviarPorEmail: TAction;
    ActNFVisualizar: TAction;
    dxLayoutItem7: TdxLayoutItem;
    WRButtonFlat7: TWRButtonFlat;
    MenuOutrasAcoes: TPopupMenu;
    ActNFVisualizarXML: TAction;
    VisualizarXML1: TMenuItem;
    ActNFSalvarPDF: TAction;
    ActNFExportarXML: TAction;
    ActNFVisualizarDanfeSemValidacoes: TAction;
    ActNFExportarXML1: TMenuItem;
    VisualizarDANFeSemValidaes1: TMenuItem;
    dxLayoutItem8: TdxLayoutItem;
    WRButtonFlat8: TWRButtonFlat;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    SdlArquivoXML: TSaveDialog;
    ActFiltroGrupoTipo: TAction;
    ActFiltroGrupoSituacao: TAction;
    dxLayoutItem4: TdxLayoutItem;
    WRButtonFlat4: TWRButtonFlat;
    Nota_FiscalEventos: TFDQuery;
    DSNota_FiscalEventos: TDataSource;
    GridConsultaDBTableView1TipoStr: TcxGridDBColumn;
    ActFiltroGrupoEntradaSaida: TAction;
    dxLayoutItem5: TdxLayoutItem;
    WRButtonFlat5: TWRButtonFlat;
    ActNFEnviarContabilidade: TAction;
    NotaFiscalInutilizada: TFDQuery;
    dxLayoutItem6: TdxLayoutItem;
    WRButtonFlat6: TWRButtonFlat;
    ActFiltroAmbienteProducao: TAction;
    ActFiltroAmbienteHomologacao: TAction;
    ActFiltroAmbienteTodos: TAction;
    ConsultaAmbienteStr: TStringField;
    ActNFSalvarZip: TAction;
    Salvarnotasemarquivocompactado1: TMenuItem;
    SdlArquivoZip: TSaveDialog;
    Visualizar1: TMenuItem;
    SalvaremPDF1: TMenuItem;
    GridConsultaDBTableView1TOTAL: TcxGridDBColumn;
    GridConsultaDBTableView1NF_VPIS: TcxGridDBColumn;
    GridConsultaDBTableView1NF_VCOFINS: TcxGridDBColumn;
    GridConsultaDBTableView1NF_VST: TcxGridDBColumn;
    procedure ActNFVisualizarXMLExecute(Sender: TObject);
    procedure ActNFVisualizarExecute(Sender: TObject);
    procedure ActNFSalvarPDFExecute(Sender: TObject);
    procedure ActNFExportarXMLExecute(Sender: TObject);
    procedure ActNFEnviarPorEmailExecute(Sender: TObject);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure GridConsultaDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ActFiltrosGrupoExecute(Sender: TObject);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ActNFEnviarContabilidadeExecute(Sender: TObject);
    procedure ConsultaCalcFields(DataSet: TDataSet);
    procedure ActNFSalvarZipExecute(Sender: TObject);
  private
    procedure AbrirNotaSelecionada(ATipoAbertura: TNotaFiscalTipoAbertura);
    function GerarZipNotas(const ACaminhoArquivo: string): Boolean;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  NFe, CadNotaFiscal, StrUtils, DataModuleSat, UnitFuncoes, wrFuncoes, pcnConversao, DateUtils, Email;

procedure TConsuNota_Fiscal.ActFiltrosGrupoExecute(Sender: TObject);
begin
  inherited;
  //Evento vinculado a todas as actions de filtros de grupos
  RefreshConsulta;
end;

procedure TConsuNota_Fiscal.ActNFEnviarContabilidadeExecute(Sender: TObject);
var
  AArquivoZip: string;
begin
  AArquivoZip := GetDirSistema + 'NFe\' + OnlyNumberWR(Empresa.FieldByName('CNPJCPF').AsString) + '\Notas Ficais XML ' + FormatDateTime('yyyy-mm', EdtDataInicio.Date) + '.zip';
  AArquivoZip := GetProximoNomeArquivo(AArquivoZip);
  if not ForceDirectories(ExtractFileDir(AArquivoZip)) then
  begin
    ShowMessageWR('Não foi possível criar o diretório: ' + AArquivoZip);
    Exit;
  end;

  if GerarZipNotas(AArquivoZip) then
    TFrmEMail.GerarEmail(Self, Empresa.FieldByName('CONTADOR_EMAIL').AsString, 'Notas Fiscais Referentes à ' +
                        PrimeirasMaiusculas(FormatDateTime('MMMM ''de'' YYYY', EdtDataInicio.Date)) + '.',
                        Empresa.FieldByName('RAZAOSOCIAL').AsString, AArquivoZip);
end;

function TConsuNota_Fiscal.GerarZipNotas(const ACaminhoArquivo: string): Boolean;
begin
  NotaFiscalInutilizada.ParamByName('DtInicio').AsDateTime := StartOfTheDay(EdtDataInicio.Date);
  NotaFiscalInutilizada.ParamByName('DtFim').AsDateTime    := EndOfTheDay(EdtDataFim.Date);
  NotaFiscalInutilizada.ParamByName('Ambiente').AsInteger  := Consulta.FieldByName('NF_AMBIENTE').AsInteger;
  NotaFiscalInutilizada.Open;

  Result := NotaFiscalGerarZipNotas(Consulta, Nota_FiscalEventos, NotaFiscalInutilizada, ACaminhoArquivo);

  NotaFiscalInutilizada.Close;
end;

procedure TConsuNota_Fiscal.ActNFEnviarPorEmailExecute(Sender: TObject);
var
  AEnderecosEmail: TStringList;
  AEmail: string;
  AACBrNFe: TACBrNFe;
begin
  if Consulta.IsEmpty then
  begin
    ShowMessageWR('Nenhuma nota selecionada para envio por email.', MB_ICONWARNING);
    Exit;
  end;

  AEnderecosEmail := TStringList.Create;
  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
  try
    NotaFiscalSQLBuscaEmailDestinatario(Consulta.FieldByName('NF_CNPJCPF_DESTINO').AsString, AEnderecosEmail);

    NotaFiscalConfiguraModeloDF(AACBrNFe, Consulta);
    AACBrNFe.NotasFiscais.Clear;
    AACBrNFe.NotasFiscais.LoadFromString(Consulta.FieldByName('ARQUIVO_XML').AsString);

    NotaFiscalEnviarEmail(AACBrNFe, False, AEnderecosEmail.Text, Consulta.FieldByName('CODVENDA').AsString,
      Procura('PEDIDO_COMPRA', 'VENDA', Consulta.FieldByName('CODVENDA').AsString));
  finally
    AEnderecosEmail.Free;
    AACBrNFe.Free;
  end;
end;

procedure TConsuNota_Fiscal.ActNFExportarXMLExecute(Sender: TObject);
begin
  inherited;
  if not Consulta.IsEmpty then
  begin
    SdlArquivoXML.FileName := NotaFiscalGetNomeArquivo(Consulta);
    if SdlArquivoXML.Execute then
      TBlobField(Consulta.FieldByName('ARQUIVO_XML')).SaveToFile(SdlArquivoXML.FileName);
  end;
end;

procedure TConsuNota_Fiscal.ActNFSalvarPDFExecute(Sender: TObject);
begin
  inherited;
  AbrirNotaSelecionada(anSalvarPDF);
end;

procedure TConsuNota_Fiscal.ActNFSalvarZipExecute(Sender: TObject);
begin
  inherited;
  if SdlArquivoZip.Execute then
    GerarZipNotas(SdlArquivoZip.FileName);
end;

procedure TConsuNota_Fiscal.ActNFVisualizarExecute(Sender: TObject);
begin
  AbrirNotaSelecionada(anVisualizar);
end;

procedure TConsuNota_Fiscal.AbrirNotaSelecionada(ATipoAbertura: TNotaFiscalTipoAbertura);
var
  AACBrNFe: TACBrNFe;
  ATipo: TNotaFiscalTipoRegistro;
begin
  ATipo := NotaFiscalTipoRegistroStrToEnum(Consulta.FieldByName('TIPO').AsString);
  if ATipo in [nftrNFe, nftrNFCe] then
  begin
    AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
    try
      TFrmNFe.CarregaNota(Consulta, AACBrNFe);
      if AACBrNFe.NotasFiscais.Count > 0 then
      begin
        if AACBrNFe.CstatCancelada(Consulta.FieldByName('NF_CSTAT').AsInteger) and
           (ShowMessageWR('Deseja imprimir a Nota Fiscal cancelada? N: ' + Consulta.FieldByName('NF_NUMERO').AsString, MB_ICONQUESTION) <> mrYes) then
          Exit
        else if AnsiSameText(Consulta.FieldByName('NF_SITUACAO').AsString, 'Denegada') and
           (ShowMessageWR('Deseja imprimir a Nota Fiscal denegada? N: ' + Consulta.FieldByName('NF_NUMERO').AsString, MB_ICONQUESTION) <> mrYes) then
          Exit;

        TFrmNFe.ImprimirNota(AACBrNFe, ATipoAbertura);
      end;
    finally
      AACBrNFe.Free;
    end;
  end
  else if ATipo = nftrSAT then
    TDMSat.ImprimirNota(Consulta.FieldByName('CODIGO').AsInteger, ATipoAbertura)
{  else if ATipo = nftrNFSe then
    TDMNFSe.VisualizarNFSe(Consulta.FieldByName('CODIGO').AsInteger);  }
end;

procedure TConsuNota_Fiscal.ActNFVisualizarXMLExecute(Sender: TObject);
begin
  inherited;
  NotaFiscalVisualizarXML(Consulta);
end;

procedure TConsuNota_Fiscal.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Nota_FiscalEventos.Open;
end;

procedure TConsuNota_Fiscal.ConsultaCalcFields(DataSet: TDataSet);
var
  AOk: Boolean;
begin
  inherited;
  Consulta.FieldByName('AmbienteStr').AsString := TipoAmbienteToDescricao(StrToTpAmb(AOk, Consulta.FieldByName('NF_AMBIENTE').AsString));
end;

procedure TConsuNota_Fiscal.GridConsultaDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ATexto: string;
begin
  if AViewInfo.Item = GridConsultaDBTableView1NF_SITUACAO then
  begin
    ATexto := AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1NF_SITUACAO.Index];
    if MatchText(ATexto, ['Confirmada', 'Autorizada']) then
    begin
      ACanvas.Font.Color  := clWhite;
      ACanvas.Brush.Color := clGreen;
    end
    else if MatchText(ATexto, ['Cancelada', 'Denegada', 'Duplicada']) then
    begin
      ACanvas.Font.Color  := clWhite;
      ACanvas.Brush.Color := clRed;
    end
    else if MatchText(ATexto, ['Desconhecida', 'Não Autorizada']) then
    begin
      ACanvas.Font.Color  := clBlack;
      ACanvas.Brush.Color := $0095FFFF;
    end;
  end;
end;

procedure TConsuNota_Fiscal.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
  //Filtros
  SQLWhere.AddAnd('TIPO in (' + NotaFiscalTipoRegistroToSQL([nftrNFe, nftrNFSe, nftrNFCe, nftrSAT]) + ')');
  if ActFiltroAmbienteProducao.Checked then
    SQLWhere.AddAnd('NF_AMBIENTE = ' + TpAmbToStr(taProducao));
  if ActFiltroAmbienteHomologacao.Checked then
    SQLWhere.AddAnd('NF_AMBIENTE = ' + TpAmbToStr(taHomologacao));

  //SubGrid
  if ActFiltroGrupoTipo.Checked then
    AgrupaSubGrid('TIPO', 'TIPO', 'TIPO = :Codigo');
  if ActFiltroGrupoSituacao.Checked then
    AgrupaSubGrid('NF_SITUACAO', 'NF_SITUACAO', 'NF_SITUACAO = :Codigo');
  if ActFiltroGrupoEntradaSaida.Checked then
    AgrupaSubGrid('NF_TIPO', 'TipoStr', 'NF_TIPO = :Codigo');
end;

initialization
  RegisterClass(TConsuNota_Fiscal);

end.

