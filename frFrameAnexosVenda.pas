unit frFrameAnexosVenda;

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
  dxLayoutcxEditAdapters, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;

type
  TFrameAnexosVenda = class(TFrameAnexos)
    tiAnexo: TdxTileControlItem;
    tgVenda: TdxTileControlGroup;
    tiProducao: TdxTileControlItem;
    tgProdutos: TdxTileControlGroup;
    tiPorduto1: TdxTileControlItem;
    procedure AnexosBeforeOpen(DataSet: TDataSet);
    procedure tiAnexoClick(Sender: TdxTileControlItem);
    procedure tiProducaoClick(Sender: TdxTileControlItem);
    procedure FrameEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure CarregaFrame1(var AFrame: TFrameAnexosVenda; AParent: TWinControl; ADataSource: TDataSource;
      AUCHist_Cadastro: TUCHist_DataSet);
  end;

var
  FrameAnexosVenda: TFrameAnexosVenda;

implementation

{$R *.dfm}
uses UnitFuncoes, wrFuncoes, Base, Tag.APP;

class procedure TFrameAnexosVenda.CarregaFrame1(var AFrame: TFrameAnexosVenda; AParent: TWinControl; ADataSource: TDataSource;
  AUCHist_Cadastro: TUCHist_DataSet);
begin
  if AFrame = nil then
  begin
    AFrame := TFrameAnexosVenda.Create(AParent, ADataSource);
    AFrame.Name:= 'FrameAnexosVenda';
    AFrame.FTipoArquivo := 'ANEXO_VENDA';
    AFrame.FTabela := 'VENDA';
    AFrame.FTela := 'VENDA';
    AFrame.Anexos.MasterFields := 'CODIGO';
    AFrame.UCHist_Cadastro := AUCHist_Cadastro;
    AFrame.wrFrameEventos.DoOnInicializar;
    AFrame.EdtProtocolo.DataField := 'CODIGO';
  end;
  with AFrame do
  begin
    if ds.DataSet.FieldByName('DT_FATURAMENTO').AsString <> '' then      // TODO : Esse código esta errado pois a regra se pode editar ou não só pode vir do Ds.Autoedit
    begin                                                              // E esse código deve ficar dentro do Frame, vale pro sistema inteiro
      AFrame.GridAnexosDBTableView1.OptionsData.Deleting  := False;
      AFrame.GridAnexosDBTableView1.OptionsData.Inserting := False;
      AFrame.MenuGrid.AutoPopup := False;
    end else
    begin
      AFrame.GridAnexosDBTableView1.OptionsData.Deleting  := True;
      AFrame.GridAnexosDBTableView1.OptionsData.Inserting := True;
      AFrame.MenuGrid.AutoPopup := True;
    end;
  end;
//  AFrame.tgExplorer.Visible:= AFrame.LiExplorer.Visible;
//  AFrame.tgBanco.Visible:= AFrame.liGrid.Visible;
end;

procedure TFrameAnexosVenda.FrameEnter(Sender: TObject);
begin
  inherited;
  tiProducao.Visible := AWR_APP[TagAPP_Ordem_Producao].Ativo;
end;

procedure TFrameAnexosVenda.AnexosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  LimpaSQLWhere(Anexos);
  Anexos.SQL.Add('Where (CODTABELA = '+QuotedStr(EdtProtocolo.Text)+') and (TIPO = '+QuotedStr(FTipoArquivo)+')');
//  Anexos.SQL.Add('Where (CODTABELA = :Codigo) and (TIPO = '+QuotedStr(FTipoArquivo)+')');
end;

procedure TFrameAnexosVenda.tiAnexoClick(Sender: TdxTileControlItem);
begin
  inherited;
  EdtProtocolo.DataField := 'CODIGO';
  lblMensagemCabecalho.Caption := 'Os arquivos serão compartilhados entre todos os anexos específicos para esta venda.';
  TrocaPasta(GetCaminhoGED_Venda_Anexos(EdtProtocolo.Text), 'ANEXO_VENDA', Sender);
end;

procedure TFrameAnexosVenda.tiProducaoClick(Sender: TdxTileControlItem);
begin
  inherited;
  EdtProtocolo.DataField := 'CODIGO';
  lblMensagemCabecalho.Caption := 'Os arquivos desta pasta serão compartilhados com os protocolos de produção desta Venda.';
  TrocaPasta(GetCaminhoGED_Venda_Producao(EdtProtocolo.Text), 'ANEXO_VENDA_PRODUCAO', Sender);
end;

end.
