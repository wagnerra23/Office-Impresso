unit frFrameAnexosFuncionario;

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
  frFrameAnexosPessoas, dxLayoutcxEditAdapters;

type
  TFrameAnexosFuncionario = class(TFrameAnexosPessoas)
    tiFuncionario: TdxTileControlItem;
    procedure tiFuncionarioClick(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure CarregaFrame1(var AFrame: TFrameAnexosFuncionario; AParent: TWinControl; ADataSource: TDataSource; AUCHist_Cadastro: TUCHist_DataSet);
  end;

var
  FrameAnexosFuncionario: TFrameAnexosFuncionario;

implementation

Uses UnitFuncoes, wrFuncoes;

{$R *.dfm}

class procedure TFrameAnexosFuncionario.CarregaFrame1(var AFrame: TFrameAnexosFuncionario; AParent: TWinControl; ADataSource: TDataSource;
  AUCHist_Cadastro: TUCHist_DataSet);
begin
  if AFrame = nil then
  begin
    AFrame := TFrameAnexosFuncionario.Create(AParent, ADataSource);
    AFrame.Name:= 'FrameAnexosFuncionario';
    AFrame.FTipoArquivo := 'ANEXO_FUNCIONARIO';
    AFrame.FTabela := 'PESSOAS_FUNCIONARIO';
    AFrame.FTela := 'PESSOAS';
    AFrame.Anexos.MasterFields := 'CODIGO';
    AFrame.UCHist_Cadastro := AUCHist_Cadastro;
    AFrame.EdtProtocolo.DataField := 'CODIGO';
    AFrame.wrFrameEventos.DoOnInicializar;
  end;
end;

procedure TFrameAnexosFuncionario.tiFuncionarioClick(Sender: TdxTileControlItem);
Var
  APastinha : String;
begin
  inherited;
  if Not LiExplorerPastas.Visible then  // Banco  { TConfig.ReadInteger('TIPO_ANEXO') = 1 }
  begin
    Anexos.Close;
    FTipoArquivo:='ANEXO_FUNCIONARIO';
    Anexos.Open;
  end else
  begin
    APastinha:= GetCaminhoGED_Funcionario(EdtProtocolo.Text);
    if CriaPasta(APastinha) then
      cxShellListView.Root.CustomPath := APastinha;
  end;
//  tiPessoas.Text2.Value := dxStatusBar1.Panels[0].Text;
end;

end.
