unit frFrameAnexosProducao;

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
  dxLayoutcxEditAdapters, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;

type
  TFrameAnexosProducao = class(TFrameAnexos)
    tiPessoas: TdxTileControlItem;
    tcMenuAnexoGroup1: TdxTileControlGroup;
    tiVenda: TdxTileControlItem;
    tiProduto: TdxTileControlItem;
    tiProducao: TdxTileControlItem;
    dxLayoutItem3: TdxLayoutItem;
    btnMigraFotos: TcxButton;
    Producao_Arquivo_Antigas: TFDQuery;
    tiVendaProduto: TdxTileControlItem;
    procedure tiPessoasClick(Sender: TdxTileControlItem);
    procedure tiVendaClick(Sender: TdxTileControlItem);
    procedure tiProdutoClick(Sender: TdxTileControlItem);
    procedure tiProducaoClick(Sender: TdxTileControlItem);
    procedure AnexosBeforeOpen(DataSet: TDataSet);
    procedure wrFrameEventosInicializar(Sender: TObject);
    procedure btnMigraFotosClick(Sender: TObject);
    procedure tiVendaProdutoClick(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure CarregaFrame1(var AFrame: TFrameAnexosProducao; AParent: TWinControl; ADataSource: TDataSource; AUCHist_Cadastro: TUCHist_DataSet);
  end;

var
  FrameAnexosProducao: TFrameAnexosProducao;

implementation

Uses UnitFuncoes, wrFuncoes, Aguarde;

{$R *.dfm}

procedure TFrameAnexosProducao.btnMigraFotosClick(Sender: TObject);
var
  QuerX, Producao_Arquivo_Antigas: TFDQuery;
  f: TSearchRec;
  ADir_Origem, ADir_Destino, ACaminhoBase: string;
  AFrmAguarde: TFrmAguarde;
  {
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
  end;   }

begin
  inherited;
  AFrmAguarde := TFrmAguarde.Create(Self);
  Producao_Arquivo_Antigas := GeraFDQuery;
  try
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Anexando arquivo...';

    Producao_Arquivo_Antigas.SQL.Text := 'select Codigo ,PROTOCOLO, CODPRODUTO, CODVENDA, CODVENDA_PRODUTO from PRODUCAO ';
    Producao_Arquivo_Antigas.Open;
    Producao_Arquivo_Antigas.FetchAll;
    AFrmAguarde.ProgressoMaximo := Producao_Arquivo_Antigas.RecordCount;
    while not Producao_Arquivo_Antigas.Eof do
    begin
      if Producao_Arquivo_Antigas.FieldByName('CODVENDA').AsString  = '' then
        Continue;

      //  D:\WR Sistema\Fotos\115441-1\998 [1]\foto.jpg
      //  \115441-1\998 [1]\foto.jpg
      //  \Codigo Venda\Codigo Produto[Cod.Produto Venda]\Foto
      ADir_Origem  := CaminhoGED +Producao_Arquivo_Antigas.FieldByName('CODVENDA').AsString+'\'+
                                     Producao_Arquivo_Antigas.FieldByName('CODPRODUTO').AsString+
                               ' ['+Producao_Arquivo_Antigas.FieldByName('CODVENDA_PRODUTO').AsString+']\';

      ADir_Destino := GetCaminhoGED_Producao_Protocolo(Producao_Arquivo_Antigas.FieldByName('PROTOCOLO').AsString);

      if DirectoryExists(ADir_Origem) then
      begin
        ForceDirectories(ADir_Destino);
        FileMode := 0;
        if FindFirst(ADir_Origem + '*.*', faAnyFile, f) = 0 then
        begin
          repeat
            try
              if (f.Attr and faDirectory) < $00000008 then
              begin
//                GravaNoBanco(ADir + '\' + f.Name, Producao_Arquivo_Antigas.FieldByName('CODIGO').Value);
                MoveFile(PWideChar(ADir_Origem+f.Name),PWideChar(ADir_Destino+f.Name));
                { QuerX := GeraFDQuery(AnexosFD);
                  try
                  QuerX.SQL.Text := 'select ARQUIVO ' +
                  'from ARQUIVOS ' +
                  'where (CODIGO = :Cod)';
                  QuerX.Params[0].AsInteger := QuerPessoas.FieldByName('CODIGO').AsInteger;
                  QuerX.Open;
                  TBlobField(QuerX.Fields[0]).SaveToFile(Dir+'\'+f.Name);
                  finally
                  QuerX.Free;
                  end; }
//                DeleteFile(PChar(ADir_Origem + f.Name));
              end;
            except
              on E: exception do
                ShowMessage(E.Message);
            end;
          until FindNext(f) <> 0;
          FindClose(f);
        end;
      end;
      Producao_Arquivo_Antigas.Next;
      AFrmAguarde.AvancarProgresso;
    end;
  finally
    Producao_Arquivo_Antigas.Free;
    AFrmAguarde.Free;
  end;

{  btnMigraFotos.Enabled:=False;
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
  PnlAguarde.Visible:=False;    }
end;

class procedure TFrameAnexosProducao.CarregaFrame1(var AFrame: TFrameAnexosProducao; AParent: TWinControl; ADataSource: TDataSource;
  AUCHist_Cadastro: TUCHist_DataSet);
begin
  if AFrame = nil then
  begin
    AFrame := TFrameAnexosProducao.Create(AParent, ADataSource);
    AFrame.Name:= 'FrameAnexosProducao';
    AFrame.FTipoArquivo := 'ANEXO_PRODUCAO_PROTOCOLO';
    AFrame.FTabela := 'PRODUCAO';
    AFrame.FTela := 'PRODUCAO';
    AFrame.Anexos.MasterFields := 'PROTOCOLO_PRINCIPAL';
    AFrame.UCHist_Cadastro := AUCHist_Cadastro;
    AFrame.FIndex := 3;
    AFrame.EdtProtocolo.DataField := 'PROTOCOLO_PRINCIPAL';
    AFrame.lblMensagemCabecalho.Style.Font.Size := 7;
//    AFrame.wrFrameEventos.DoOnInicializar;
    AFrame.tiProducao.Click;
  end;
  if AFrame.lblSelecionado.Caption = 'Venda Produto' then
    AFrame.TrocaPasta(GetCaminhoGED_Venda_Produto(AFrame.EdtProtocolo.Text, AFrame.DS.DataSet.FieldByName('CODVENDA_PRODUTO').AsString), 'ANEXO_VENDA_PRODUCAO',AFrame.tiVendaProduto);
end;

procedure TFrameAnexosProducao.wrFrameEventosInicializar(Sender: TObject);
begin
  inherited;
  tiPessoas.Visible:= (DS.DataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString <> '');
  tiProduto.Visible:= (DS.DataSet.FieldByName('CODPRODUTO').AsString <> '');
  tiVenda.Visible  := (DS.DataSet.FieldByName('CODVENDA').AsString <> '');
end;

procedure TFrameAnexosProducao.AnexosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  LimpaSQLWhere(Anexos);
  Anexos.SQL.Add('Where (CODTABELA = '+QuotedStr(EdtProtocolo.Text)+') and (TIPO = '+QuotedStr(FTipoArquivo)+')');
end;

procedure TFrameAnexosProducao.tiVendaClick(Sender: TdxTileControlItem);
begin
  inherited;
  EdtProtocolo.DataField := 'CODVENDA';
  lblMensagemCabecalho.Caption := 'Arquivos da venda.';
  TrocaPasta(GetCaminhoGED_Venda_Producao(EdtProtocolo.Text), 'ANEXO_VENDA_PRODUCAO', Sender);
end;

procedure TFrameAnexosProducao.tiVendaProdutoClick(Sender: TdxTileControlItem);
begin
  inherited;
  EdtProtocolo.DataField := 'PROTOCOLO_PRINCIPAL';
  lblMensagemCabecalho.Caption := 'Arquivos dos Produtos da venda.';
  TrocaPasta(GetCaminhoGED_Venda_Produto(DS.DataSet.FieldByName('CODVENDA').AsString, DS.DataSet.FieldByName('CODVENDA_PRODUTO').AsString), 'ANEXO_VENDA_PRODUCAO', Sender);
end;

procedure TFrameAnexosProducao.tiPessoasClick(Sender: TdxTileControlItem);
begin
  inherited;
  EdtProtocolo.DataField := 'PESSOA_RESPONSAVEL_CODIGO';
  lblMensagemCabecalho.Caption := 'Cadastro de pessoas.';
  TrocaPasta(GetCaminhoGED_Pessoa_Producao(EdtProtocolo.Text), 'ANEXO_PESSOA_PRODUCAO', Sender);
end;

procedure TFrameAnexosProducao.tiProducaoClick(Sender: TdxTileControlItem);
begin
  inherited;
  EdtProtocolo.DataField := 'PROTOCOLO_PRINCIPAL';
  lblMensagemCabecalho.Caption := 'Protocolo de Produção.';
  TrocaPasta(GetCaminhoGED_Producao_Protocolo(EdtProtocolo.Text), 'ANEXO_PRODUCAO_PROTOCOLO', Sender);
end;

procedure TFrameAnexosProducao.tiProdutoClick(Sender: TdxTileControlItem);
begin
  inherited;
  EdtProtocolo.DataField := 'CODPRODUTO';
  lblMensagemCabecalho.Caption := 'Cadastro do Produto.';
  TrocaPasta(GetCaminhoGED_Produto_Producao(EdtProtocolo.Text), 'ANEXO_PRODUTO_PRODUCAO', Sender);
end;

end.
