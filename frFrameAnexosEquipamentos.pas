unit frFrameAnexosEquipamentos;

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
  TFrameAnexosEquipamentos = class(TFrameAnexos)
    tiFotos: TdxTileControlItem;
    tcMenuAnexoGroup1: TdxTileControlGroup;
    procedure tiFotosClick(Sender: TdxTileControlItem);
  private
    procedure AnexosBeforeOpen(DataSet: TDataSet);
    { Private declarations }
  public
    class procedure CarregaFrame1(var AFrame: TFrameAnexosEquipamentos;
    AParent: TWinControl; ADataSource: TDataSource;
    AUCHist_Cadastro: TUCHist_DataSet); static;
  end;

var
  FrameAnexosEquipamentos: TFrameAnexosEquipamentos;

implementation

Uses UnitFuncoes, Classes.WR, wrFuncoes;

{$R *.dfm}

class procedure TFrameAnexosEquipamentos.CarregaFrame1(var AFrame: TFrameAnexosEquipamentos; AParent: TWinControl; ADataSource: TDataSource;
  AUCHist_Cadastro: TUCHist_DataSet);
begin
  if AFrame = nil then
  begin
    AFrame := TFrameAnexosEquipamentos.Create(AParent, ADataSource);
    AFrame.Name:= 'FrameAnexosEquipamentos';
    AFrame.FTipoArquivo := 'ANEXO_PESSOA';
    AFrame.FTabela := 'EQUIPAMENTO';
    AFrame.FTela := 'EQUIPAMENTO';
    AFrame.Anexos.MasterFields := 'PLACA';
    AFrame.UCHist_Cadastro := AUCHist_Cadastro;
    AFrame.cxShellListView.ViewStyle := vsIcon;
    AFrame.cxShellListView.ThumbnailOptions.Height := 96;
    AFrame.cxShellListView.ThumbnailOptions.Width := 96;
    AFrame.wrFrameEventos.DoOnInicializar;
    AFrame.EdtProtocolo.DataField := 'PLACA';   // Da chage fica por último
  end;
end;

procedure TFrameAnexosEquipamentos.AnexosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  LimpaSQLWhere(Anexos);
  Anexos.SQL.Add('Where (CODTABELA = '+QuotedStr(EdtProtocolo.Text)+') and (TIPO = '+QuotedStr(FTipoArquivo)+')');
end;

procedure TFrameAnexosEquipamentos.tiFotosClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  lblMensagemCabecalho.Caption := 'Estas são as Vistorias. Fotos para saber como o caminhão estava quando entrou na associação.';
  TrocaPasta(GetCaminhoGED_Equipamento(EdtProtocolo.Text), 'ANEXO_EQUIPAMENTOS', Sender);
end;

end.
