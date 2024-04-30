unit frFrameAnexosAgenda;

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
  TFrameAnexosAgenda = class(TFrameAnexos)
    tiAnexos: TdxTileControlItem;
    tcMenuAnexoGroup1: TdxTileControlGroup;
    procedure AnexosBeforeOpen(DataSet: TDataSet);
    procedure tiAnexosClick(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    class procedure CarregaFrame1(var AFrame: TFrameAnexosAgenda; AParent: TWinControl; ADataSource: TDataSource;
      AUCHist_Cadastro: TUCHist_DataSet);
  end;

var
  FFrameAnexosAgenda: TFrameAnexosAgenda;

implementation

Uses UnitFuncoes, Classes.WR, wrFuncoes;

{$R *.dfm}

class procedure TFrameAnexosAgenda.CarregaFrame1(var AFrame: TFrameAnexosAgenda; AParent: TWinControl; ADataSource: TDataSource;
  AUCHist_Cadastro: TUCHist_DataSet);
begin
  if AFrame = nil then
  begin
    AFrame := TFrameAnexosAgenda.Create(AParent, ADataSource);
    AFrame.Name:= 'FrameAnexosAgenda';
    AFrame.FTipoArquivo := 'ANEXO_PRODUCAO_PROTOCOLO';
    AFrame.FTabela := 'AGENDA';
    AFrame.FTela := 'AGENDA';
    AFrame.Anexos.MasterFields := 'CODIGO';
    AFrame.UCHist_Cadastro := AUCHist_Cadastro;
    AFrame.lblMensagemCabecalho.Style.Font.Size := 7;
    AFrame.wrFrameEventos.DoOnInicializar;
    AFrame.EdtProtocolo.DataField := 'CODIGO';
  end;
  AFrame.Parent := AParent;
end;

procedure TFrameAnexosAgenda.AnexosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  LimpaSQLWhere(Anexos);
  Anexos.SQL.Add('Where (CODTABELA = '+QuotedStr(EdtProtocolo.Text)+') and (TIPO = '+QuotedStr(FTipoArquivo)+')');
end;

procedure TFrameAnexosAgenda.tiAnexosClick(Sender: TdxTileControlItem);
begin
  inherited;
  EdtProtocolo.DataField := 'CODIGO';
  lblMensagemCabecalho.Caption := 'Arquivos do Agendamento.';
  TrocaPasta(GetCaminhoGED_Agenda(EdtProtocolo.Text), 'ANEXO_AGENDA', Sender);
end;

end.
