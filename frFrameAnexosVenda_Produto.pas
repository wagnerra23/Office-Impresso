unit frFrameAnexosVenda_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frFrameAnexos, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxTextEdit, cxImage, Vcl.ComCtrls, Winapi.ShlObj, cxShellCommon,
  dxLayoutControlAdapters, dxLayoutContainer, cxContainer, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, cxImageList,
  UCHistDataset, FireDAC.Comp.Client, System.Actions, Vcl.ActnList,
  FireDAC.Comp.DataSet, uWRFormataCamposDataSet, uWRFrameEventos,
  dxLayoutLookAndFeels, cxClasses, UCBase, System.ImageList, Vcl.ImgList,
  dxStatusBar, cxProgressBar, cxLabel, Vcl.ExtCtrls, dxCustomTileControl,
  dxTileControl, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxListView,
  cxShellListView, cxGridLevel, cxGridWinExplorerView, cxGridDBWinExplorerView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, dxSkinsCore,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TFrameAnexosVenda_Produto = class(TFrameAnexos)
    tiAnexo: TdxTileControlItem;
    tcMenuAnexoGroup1: TdxTileControlGroup;
    tiVenda: TdxTileControlItem;
    tiProduto: TdxTileControlItem;
    procedure tiProdutoClick(Sender: TdxTileControlItem);
    procedure AnexosBeforeOpen(DataSet: TDataSet);
    procedure tiAnexoClick(Sender: TdxTileControlItem);
    procedure tiVendaClick(Sender: TdxTileControlItem);
  private

  public
    class procedure CarregaFrame1(var AFrame: TFrameAnexosVenda_Produto;
      AParent: TWinControl; ADataSource: TDataSource;
      AUCHist_Cadastro: TUCHist_DataSet); static;

  end;

var
  FrameAnexosVenda_Produto: TFrameAnexosVenda_Produto;

implementation

Uses UnitFuncoes, Classes.WR, wrFuncoes;

{$R *.dfm}
class procedure TFrameAnexosVenda_Produto.CarregaFrame1(var AFrame: TFrameAnexosVenda_Produto; AParent: TWinControl; ADataSource: TDataSource;
  AUCHist_Cadastro: TUCHist_DataSet);
begin
  if AFrame = nil then
  begin
    AFrame := TFrameAnexosVenda_Produto.Create(AParent, ADataSource);
    AFrame.Name:= 'FrameAnexosProduto';
    AFrame.FTipoArquivo := 'ANEXO_PRODUTO_ANEXO';
    AFrame.FTabela := 'PRODUTO';
    AFrame.FTela := 'PRODUTO';
    AFrame.Anexos.MasterFields := 'CODIGO';
    AFrame.UCHist_Cadastro := AUCHist_Cadastro;
    AFrame.wrFrameEventos.DoOnInicializar;
    AFrame.EdtProtocolo.DataField := 'CODIGO';  // Depois do inicializar, ultimalinha
  end;
end;

procedure TFrameAnexosVenda_Produto.AnexosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  LimpaSQLWhere(Anexos);
  Anexos.SQL.Add('Where (CODPESSOA = :Codigo) and (TIPO = '+QuotedStr(FTipoArquivo)+')');
end;

procedure TFrameAnexosVenda_Produto.tiAnexoClick(Sender: TdxTileControlItem);
begin
  inherited;
  EdtProtocolo.DataField := 'CODIGO';
  lblMensagemCabecalho.Caption := 'Os arquivos desta pasta serão únicos para este item da venda e serão compartilhados com o protocolo de Produção deste item.';
  TrocaPasta(GetCaminhoGED_Venda_Produto(DS.Dataset.FieldByName('CODVENDA').AsString, EdtProtocolo.Text), 'ANEXO_VENDA_PRODUTO', Sender);
end;

procedure TFrameAnexosVenda_Produto.tiProdutoClick(Sender: TdxTileControlItem);
begin
  inherited;
  EdtProtocolo.DataField := 'CODPRODUTO';
  lblMensagemCabecalho.Caption := 'Estes arquivos são oriundos do cadastro deste produto.';
  TrocaPasta(GetCaminhoGED_Produto_Venda(EdtProtocolo.Text), 'ANEXO_PRODUTO_VENDA', Sender);
end;

procedure TFrameAnexosVenda_Produto.tiVendaClick(Sender: TdxTileControlItem);
begin
  inherited;
  EdtProtocolo.DataField := 'CODVENDA';
  lblMensagemCabecalho.Caption := 'Os arquivos serão compartilhados entre todos os anexos específicos para esta venda.';
  TrocaPasta(GetCaminhoGED_Venda_Anexos(EdtProtocolo.Text), 'ANEXO_VENDA', Sender);
end;

end.
