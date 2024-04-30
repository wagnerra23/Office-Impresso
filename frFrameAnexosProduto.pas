unit frFrameAnexosProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frFrameAnexos, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxTextEdit, cxImage, Vcl.ComCtrls, Winapi.ShlObj, cxShellCommon,
  dxLayoutControlAdapters, dxLayoutContainer, cxContainer, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, cxImageList, UCHistDataset, FireDAC.Comp.Client, System.Actions, Vcl.ActnList, FireDAC.Comp.DataSet,
  uWRFormataCamposDataSet, uWRFrameEventos, dxLayoutLookAndFeels, cxClasses, UCBase, System.ImageList, Vcl.ImgList, dxStatusBar, cxProgressBar, cxLabel,
  Vcl.ExtCtrls, dxCustomTileControl, dxTileControl, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxListView, cxShellListView, cxGridLevel, cxGridWinExplorerView,
  cxGridDBWinExplorerView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters;

type
  TFrameAnexosProduto = class(TFrameAnexos)
    tcMenuAnexoGroup1: TdxTileControlGroup;
    tiAnexo: TdxTileControlItem;
    tiVenda: TdxTileControlItem;
    tiProducao: TdxTileControlItem;
    btnMigraFotos: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    Produto_FotosAntigas: TFDQuery;
    imgProduto: TcxImage;
    procedure AnexosBeforeOpen(DataSet: TDataSet);
    procedure tiAnexoClick(Sender: TdxTileControlItem);
    procedure tiVendaClick(Sender: TdxTileControlItem);
    procedure tiProducaoClick(Sender: TdxTileControlItem);
    procedure btnMigraFotosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure CarregaFrame1(var AFrame: TFrameAnexosProduto; AParent: TWinControl; ADataSource: TDataSource; AUCHist_Cadastro: TUCHist_DataSet);
  end;

var
  FrameAnexosProduto: TFrameAnexosProduto;

implementation

Uses UnitFuncoes, Classes.WR, wrFuncoes;

{$R *.dfm}

{ TFrameAnexosProduto }

class procedure TFrameAnexosProduto.CarregaFrame1(var AFrame: TFrameAnexosProduto; AParent: TWinControl; ADataSource: TDataSource;
  AUCHist_Cadastro: TUCHist_DataSet);
begin
  if AFrame = nil then
  begin
    AFrame := TFrameAnexosProduto.Create(AParent, ADataSource);
    AFrame.Name:= 'FrameAnexosProduto';
    AFrame.FTipoArquivo := 'ANEXO_PRODUTO_ANEXO';
    AFrame.FTabela := 'PRODUTO';
    AFrame.FTela := 'PRODUTO';
    AFrame.Anexos.MasterFields := 'CODIGO';
    AFrame.UCHist_Cadastro := AUCHist_Cadastro;
    AFrame.wrFrameEventos.DoOnInicializar;
    AFrame.EdtProtocolo.DataField := 'CODIGO';
  end;
end;

procedure TFrameAnexosProduto.btnMigraFotosClick(Sender: TObject);
Var I : Integer;
  procedure VerificaFoto(ACaminho: String);
  begin
     if FileExists(ACaminho) then
     begin
       imgProduto.Picture.LoadFromFile(ACaminho);
       SalvaFotosProduto(imgProduto.Picture , Produto_FotosAntigas.FieldByName('CODIGO').asString);
       DeleteFile(ACaminho);
       imgProduto.Clear;
     end;
  end;

begin
  inherited;
  btnMigraFotos.Enabled:=False;
  PnlAguarde.Visible:=True;
  Produto_FotosAntigas.Open;
  Produto_FotosAntigas.First;
  cxProgressBar1.Position:=0;
  cxProgressBar1.Properties.max:=Produto_FotosAntigas.RecordCount;
  while Not Produto_FotosAntigas.Eof do
  begin
    VerificaFoto(CaminhoGED+ Produto_FotosAntigas.FieldByName('CODFAMILIA').AsString + '-0.jpg');
    VerificaFoto(CaminhoGED+ Produto_FotosAntigas.FieldByName('CODFAMILIA').AsString + '-0.jpeg');
    VerificaFoto(CaminhoGED+ Produto_FotosAntigas.FieldByName('CODFAMILIA').AsString + '-0.gif');
    VerificaFoto(CaminhoGED+ Produto_FotosAntigas.FieldByName('CODFAMILIA').AsString + '-0.png');
    VerificaFoto(CaminhoGED+ Produto_FotosAntigas.FieldByName('CODFAMILIA').AsString + '-0.bmp');

    cxProgressBar1.Position:=cxProgressBar1.Position+i;
    Inc(i);
    Application.ProcessMessages;
    Produto_FotosAntigas.Next;
  end;
  btnMigraFotos.Enabled:=True;
  PnlAguarde.Visible:=False;

end;

procedure TFrameAnexosProduto.AnexosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  LimpaSQLWhere(Anexos);
  Anexos.SQL.Add('Where (CODPESSOA = :Codigo) and (TIPO = '+QuotedStr(FTipoArquivo)+')');
end;

procedure TFrameAnexosProduto.tiAnexoClick(Sender: TdxTileControlItem);
begin
  inherited;
  EdtProtocolo.DataField := 'CODIGO';
  lblMensagemCabecalho.Caption := 'Estes arquivos são específicos para o cadastro deste produto e não são vistos fora do cadastro.';
  TrocaPasta(GetCaminhoGED_Produto_Anexos(EdtProtocolo.Text), 'ANEXO_PRODUTO_ANEXO', Sender);
end;

procedure TFrameAnexosProduto.tiProducaoClick(Sender: TdxTileControlItem);
begin
  inherited;
  EdtProtocolo.DataField := 'CODIGO';
  lblMensagemCabecalho.Caption := 'Os arquivos desta pasta serão compartilhados com todos os protocolos de Produção onde este item é utilizado.';
  TrocaPasta(GetCaminhoGED_Produto_Producao(EdtProtocolo.Text), 'ANEXO_PRODUTO_PRODUCAO', Sender);
end;

procedure TFrameAnexosProduto.tiVendaClick(Sender: TdxTileControlItem);
begin
  inherited;
  EdtProtocolo.DataField := 'CODIGO';
  lblMensagemCabecalho.Caption := 'Os arquivos desta pasta serão compartilhados com a venda, sendo possível visualizá-los acessando o item específico.';
  TrocaPasta(GetCaminhoGED_Produto_Venda(EdtProtocolo.Text), 'ANEXO_PRODUTO_VENDA', Sender);
end;

end.
