unit frFrameAnexosRateio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frFrameAnexos, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxTextEdit, cxImage, Vcl.ComCtrls, Winapi.ShlObj, cxShellCommon,
  cxContainer, dxLayoutControlAdapters, dxLayoutContainer,
  dxLayoutcxEditAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, cxImageList, UCHistDataset,
  FireDAC.Comp.Client, System.Actions, Vcl.ActnList, FireDAC.Comp.DataSet,
  uWRFormataCamposDataSet, uWRFrameEventos, dxLayoutLookAndFeels, cxClasses,
  UCBase, System.ImageList, Vcl.ImgList, dxStatusBar, cxProgressBar,
  Vcl.ExtCtrls, cxLabel, dxCustomTileControl, dxTileControl, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, cxListView, cxShellListView, cxGridLevel,
  cxGridWinExplorerView, cxGridDBWinExplorerView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxButtons,
  dxLayoutControl;

type
  TFrameAnexosRateio = class(TFrameAnexos)
    tiAnexos: TdxTileControlItem;
    tcMenuAnexoGroup1: TdxTileControlGroup;
    procedure tiAnexosClick(Sender: TdxTileControlItem);
  private
    procedure AnexosBeforeOpen(DataSet: TDataSet);
    { Private declarations }
  public
    class procedure CarregaFrame1(var AFrame: TFrameAnexosRateio;
      AParent: TWinControl; ADataSource: TDataSource;
      AUCHist_Cadastro: TUCHist_DataSet); static;
    function BuscaCaminhoRateioOuExclusao(AReferencia, ATipo: String): String;
  end;

var
  FrameAnexosRateio: TFrameAnexosRateio;

implementation

Uses UnitFuncoes, Classes.WR, wrFuncoes;

{$R *.dfm}

class procedure TFrameAnexosRateio.CarregaFrame1(var AFrame: TFrameAnexosRateio; AParent: TWinControl; ADataSource: TDataSource;
  AUCHist_Cadastro: TUCHist_DataSet);
begin
  if AFrame = nil then
  begin
    AFrame := TFrameAnexosRateio.Create(AParent, ADataSource);
    AFrame.Name:= 'FrameAnexosRateio';
    AFrame.FTipoArquivo := 'ANEXO_RATEIO_ARQUIVOS';
    AFrame.FTabela := 'RATEIO';
    AFrame.FTela := 'RATEIO';
    AFrame.UCHist_Cadastro := AUCHist_Cadastro;
    AFrame.wrFrameEventos.DoOnInicializar;
    if AFrame.Owner.ClassName = 'TFrmRateio' then
    begin
      AFrame.EdtProtocolo.DataField := 'REFERENCIA';
      AFrame.Anexos.MasterFields := 'REFERENCIA';
    end;
  end;
end;

procedure TFrameAnexosRateio.tiAnexosClick(Sender: TdxTileControlItem);
begin
  inherited;
  lblMensagemCabecalho.Caption := 'Estes são os anexos do Rateio Selecionado.';
  TrocaPasta(BuscaCaminhoRateioOuExclusao(EdtProtocolo.Text, DS.Dataset.FieldByName('TIPO').AsString), FTipoArquivo, Sender);
end;

procedure TFrameAnexosRateio.AnexosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  LimpaSQLWhere(Anexos);
  Anexos.SQL.Add('Where (CODTABELA = '+QuotedStr(EdtProtocolo.Text)+') and (TIPO = '+QuotedStr(FTipoArquivo)+')');
end;

function TFrameAnexosRateio.BuscaCaminhoRateioOuExclusao(AReferencia, ATipo: String): String;
begin
  if ATipo = 'RATEIO' then
  begin
    FTipoArquivo := 'ANEXO_RATEIO_ARQUIVOS';
    Result := GetCaminhoGED_Rateio_Anexos(AReferencia);
  end
  else if ATipo = 'EXCLUSAO' then
  begin
    FTipoArquivo := 'ANEXO_RATEIO_EXCLUSAO';
    Result := GetCaminhoGED_Rateio_Exclusao(AReferencia);
  end;
end;

end.
