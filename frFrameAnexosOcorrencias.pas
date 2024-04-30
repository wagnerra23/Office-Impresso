unit frFrameAnexosOcorrencias;

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
  TFrameAnexosOcorrencias = class(TFrameAnexos)
    tiAnexos: TdxTileControlItem;
    tcMenuAnexoGroup1: TdxTileControlGroup;
    procedure tiAnexosClick(Sender: TdxTileControlItem);
  private
    procedure AnexosBeforeOpen(DataSet: TDataSet);
    { Private declarations }
  public
    class procedure CarregaFrame1(var AFrame: TFrameAnexosOcorrencias;
      AParent: TWinControl; ADataSource: TDataSource;
      AUCHist_Cadastro: TUCHist_DataSet); static;
  end;

var
  FrameAnexosOcorrencias: TFrameAnexosOcorrencias;

implementation

Uses UnitFuncoes, Classes.WR, wrFuncoes;

{$R *.dfm}

class procedure TFrameAnexosOcorrencias.CarregaFrame1(var AFrame: TFrameAnexosOcorrencias; AParent: TWinControl; ADataSource: TDataSource;
  AUCHist_Cadastro: TUCHist_DataSet);
begin
  if AFrame = nil then
  begin
    AFrame := TFrameAnexosOcorrencias.Create(AParent, ADataSource);
    AFrame.Name:= 'FrameAnexosOcorrencias';
    AFrame.FTipoArquivo := 'ANEXO_OCORRENCIA';
    AFrame.FTabela := 'OCORRENCIA';
    AFrame.FTela := 'OCORRENCIA';
    AFrame.Anexos.MasterFields := 'REFERENCIA';
    AFrame.UCHist_Cadastro := AUCHist_Cadastro;
    AFrame.cxShellListView.ViewStyle := vsIcon;
    AFrame.cxShellListView.ThumbnailOptions.Height := 64;
    AFrame.cxShellListView.ThumbnailOptions.Width := 64;
    AFrame.wrFrameEventos.DoOnInicializar;
    AFrame.EdtProtocolo.DataField := 'REFERENCIA';
  end;
end;

procedure TFrameAnexosOcorrencias.tiAnexosClick(Sender: TdxTileControlItem);
var
  AFormatacaoPadraoPasta: String;
begin
  inherited;
  AFormatacaoPadraoPasta := Copy(EdtProtocolo.Text, 0, 5) + '.' + Copy(EdtProtocolo.Text, 7, 3);
  lblMensagemCabecalho.Caption := 'Estes são os anexos da ocorrência selecionada.';
  TrocaPasta(GetCaminhoGED_Ocorrencia(AFormatacaoPadraoPasta), 'ANEXO_OCORRENCIAS', Sender);
end;

procedure TFrameAnexosOcorrencias.AnexosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  LimpaSQLWhere(Anexos);
  Anexos.SQL.Add('Where (CODTABELA = '+QuotedStr(EdtProtocolo.Text)+') and (TIPO = '+QuotedStr(FTipoArquivo)+')');
end;

end.
