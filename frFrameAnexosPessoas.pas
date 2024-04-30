unit frFrameAnexosPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frFrameAnexos, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxTextEdit, cxImage, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu,
  Vcl.ComCtrls, Winapi.ShlObj, cxShellCommon, dxLayoutControlAdapters, dxLayoutContainer, cxContainer, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, cxCustomStatusKeeper,
  cxStatusKeeper, cxImageList, UCHistDataset, System.Actions, Vcl.ActnList, FireDAC.Comp.DataSet, uWRFormataCamposDataSet, uWRFrameEventos,
  dxLayoutLookAndFeels, cxClasses, UCBase, System.ImageList, Vcl.ImgList, dxStatusBar, cxProgressBar, cxLabel, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, cxListView, cxShellListView, cxInplaceContainer, cxDBTL, cxTLData, cxGridLevel, cxGridWinExplorerView, cxGridDBWinExplorerView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxButtons, dxLayoutControl, dxCustomTileControl, dxTileControl,
  dxLayoutcxEditAdapters, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;

type
  TFrameAnexosPessoas = class(TFrameAnexos)
    tiProducao: TdxTileControlItem;
    tgExplorer: TdxTileControlGroup;
    tiPessoas: TdxTileControlItem;
    tcVenda: TdxTileControlItem;
    procedure tiPessoasClick(Sender: TdxTileControlItem);
    procedure tiProducaoClick(Sender: TdxTileControlItem);
    procedure AnexosBeforeOpen(DataSet: TDataSet);
    procedure wrFrameEventosInicializar(Sender: TObject);
    procedure tcVendaClick(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure CarregaFrame1(var AFrame: TFrameAnexosPessoas; AParent: TWinControl; ADataSource: TDataSource; AUCHist_Cadastro: TUCHist_DataSet);
  end;

var
  FrameAnexosPessoas: TFrameAnexosPessoas;

implementation

Uses UnitFuncoes, Classes.WR, wrFuncoes, Base, Tag.APP;

{$R *.dfm}

class procedure TFrameAnexosPessoas.CarregaFrame1(var AFrame: TFrameAnexosPessoas; AParent: TWinControl; ADataSource: TDataSource;
  AUCHist_Cadastro: TUCHist_DataSet);
begin
  if AFrame = nil then
  begin
    AFrame := TFrameAnexosPessoas.Create(AParent, ADataSource);
    AFrame.Name:= 'FrameAnexosPessoa';
    AFrame.FTipoArquivo := 'ANEXO_PESSOA';
    AFrame.FTabela := 'PESSOAS';
    AFrame.FTela := 'PESSOAS';
    AFrame.Anexos.MasterFields := 'CODIGO';
    Aframe.FIndex:= 0;
    AFrame.UCHist_Cadastro := AUCHist_Cadastro;
    AFrame.wrFrameEventos.DoOnInicializar;
    AFrame.EdtProtocolo.DataField := 'CODIGO';
  end;
end;

procedure TFrameAnexosPessoas.AnexosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  LimpaSQLWhere(Anexos);
  Anexos.SQL.Add('Where (CODTABELA = :Codigo) and (TIPO = '+QuotedStr(FTipoArquivo)+')');
end;

procedure TFrameAnexosPessoas.tcVendaClick(Sender: TdxTileControlItem);
begin
  inherited;
//  EdtProtocolo.DataField := 'CODIGO'; Coloquei na criação para ter desempenho
  lblMensagemCabecalho.Caption := 'Os arquivos desta pasta serão encaminhados para a Venda.';
  TrocaPasta(GetCaminhoGED_Pessoa_Venda(EdtProtocolo.Text), 'ANEXO_PESSOA_VENDA', Sender);
end;

procedure TFrameAnexosPessoas.tiPessoasClick(Sender: TdxTileControlItem);
begin
  inherited;
//  EdtProtocolo.DataField := 'CODIGO';
  lblMensagemCabecalho.Caption := 'Estes arquivos estão disponibilizados apenas neste cadastro.';
  TrocaPasta(GetCaminhoGED_Pessoa_Anexos(EdtProtocolo.Text), 'ANEXO_PESSOA', Sender);
end;

procedure TFrameAnexosPessoas.tiProducaoClick(Sender: TdxTileControlItem);
begin
//  EdtProtocolo.DataField := 'CODIGO';
  lblMensagemCabecalho.Caption := 'Estes arquivos serão encaminhados para os protocolos de Produção deste cliente.';
  TrocaPasta(GetCaminhoGED_Pessoa_Producao(EdtProtocolo.Text), 'ANEXO_PESSOA_PRODUCAO', Sender);
end;

procedure TFrameAnexosPessoas.wrFrameEventosInicializar(Sender: TObject);
begin
  inherited;
  //  Aqui deveria buscar o Root da Primeira pasta selecionada
  tiProducao.Visible := AWR_APP[TagAPP_Ordem_Producao].Ativo;
end;

end.
