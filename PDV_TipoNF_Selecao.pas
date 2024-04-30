unit PDV_TipoNF_Selecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxClasses, dxLayoutContainer, dxLayoutControl, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  dxLayoutLookAndFeels, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, wrConversao, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar, dxCustomTileControl, dxTileControl,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Math, FundoTransparente;

type
  TFrmPDV_TipoNF_Selecao = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    Venda_Tipo: TFDQuery;
    DSVenda_Tipo: TDataSource;
    Venda_TipoCODIGO: TIntegerField;
    Venda_TipoDESCRICAO: TStringField;
    dxLayoutItem1: TdxLayoutItem;
    tcEscolheNF: TdxTileControl;
    dxTileControlGroup2: TdxTileControlGroup;
    tiEscolheNFe: TdxTileControlItem;
    tiEscolheNFCe: TdxTileControlItem;
    tiEscolheNFSe: TdxTileControlItem;
    tiEscolheSemNota: TdxTileControlItem;
    cxLabel1: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    tcEscolheNFSimples: TdxTileControlItem;
    procedure tiEscolheSemNotaClick(Sender: TdxTileControlItem);
    procedure tcEscolheNFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
  FTag: integer;
  protected
  public
    { Public declarations }
    class function GetOpcaoNF_Selecionada(tcNotaFiscal: TdxTileControl; AConfiguracaoNF_SemTef: string; ATemTef: Boolean; AParent: TForm): integer;
  end;

implementation

{$R *.dfm}

uses
  CadVenda_Tipo, UnitFuncoes, wrFuncoes, Principal, wrForms;

{ TFrmVendaTipoSelecao }


class function TFrmPDV_TipoNF_Selecao.GetOpcaoNF_Selecionada(tcNotaFiscal: TdxTileControl; AConfiguracaoNF_SemTef: string; ATemTef: Boolean; AParent: TForm): integer;
var
  AFrm: TFrmPDV_TipoNF_Selecao;
  AFundoTransparente : TFundoTransparente;
  I: integer;
begin
  AFundoTransparente := TFundoTransparente.CarregaFundo(AParent, AParent);
  AFrm := TFrmPDV_TipoNF_Selecao.Create(AFundoTransparente);
  AFrm.tiEscolheSemNota.Visible := not ATemTef and (AConfiguracaoNF_SemTef = 'Pergunta');
  for I := 0 to tcNotaFiscal.Items.Count - 1 do
  begin
    if (tcNotaFiscal.items[I].Tag = 0) and (tcNotaFiscal.items[I].Visible) then AFrm.tiEscolheNFe.Visible := True;
    if (tcNotaFiscal.items[I].Tag = 1) and (tcNotaFiscal.items[I].Visible) then AFrm.tiEscolheNFCe.Visible := True;
    if (tcNotaFiscal.items[I].Tag = 2) and (tcNotaFiscal.items[I].Visible) then AFrm.tiEscolheNFSe.Visible := True;
  end;

  AFrm.Left := Trunc((AFrm.dxLayoutControl1.Width - AFundoTransparente.Width)/2);
  AFrm.Top := Trunc((AFrm.dxLayoutControl1.Height - AFundoTransparente.Height)/2);
  try
    AFundoTransparente.Show;
    if (AFrm.ShowModal = mrOk) then
    begin
      Result := AFrm.FTag;
    end
    else
      Result := 99;

  finally
    AFundoTransparente.Free;
  end;

end;

procedure TFrmPDV_TipoNF_Selecao.tcEscolheNFKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 96) and tiEscolheSemNota.Visible then
    tiEscolheSemNota.Click;

  if (Key = 97) and tiEscolheNFe.Visible then
    tiEscolheNFe.Click;

  if (Key = 98) and tiEscolheNFCe.Visible then
    tiEscolheNFCe.Click;

  if (Key = 99) and tiEscolheNFCe.Visible then
    tiEscolheNFSe.Click;

  if (Key = 27) then //Esc
    ModalResult := mrClose;
end;

procedure TFrmPDV_TipoNF_Selecao.tiEscolheSemNotaClick(
  Sender: TdxTileControlItem);
begin
  FTag := Sender.Tag;
  ModalResult := mrOk;
end;

end.
