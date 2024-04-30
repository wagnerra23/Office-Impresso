unit Frame_BI_Acoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Painel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxContainer, Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxCheckBox, cxLabel, cxButtonEdit,
  cxMaskEdit, cxDropDownEdit, cxTextEdit, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxLayoutControl, Vcl.ExtCtrls, Frame_Acao_Configuracao,
  dxScrollbarAnnotations, Base, dxCustomTileControl, dxTileControl, UCHistDataset,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxGDIPlusClasses,
  cxImage;

type
  TFrmFrame_BI_Acoes = class(TFrmBase)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    btnRemover: TcxButton;
    btnAdicionar: TcxButton;
    libtnAdicionarAcao: TdxLayoutItem;
    libtnRemoverAcao: TdxLayoutItem;
    liGridAcoes: TdxLayoutItem;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    GrupoCabecalhoAcoes: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    LbTitulo: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    btnFechar: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    pnlAcaoConfiguracao: TPanel;
    MemTableAcoes: TFDMemTable;
    DSAcoes: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    FFrmFrame_Acao_Configuracao: TFrmFrame_Acao_Configuracao;
  public
    FGridTableView: TcxGridDBTableView;
//    FGridLayoutView: TcxGridDBLayoutView;
    FUCHist: TUCHist_DataSet;
    procedure AtualizarAcoes;
  end;

var
  FrmFrame_BI_Acoes: TFrmFrame_BI_Acoes;

implementation

uses Principal, Frame_Con, Classes.Acoes, Tag.Form;

{$R *.dfm}

procedure TFrmFrame_BI_Acoes.btnAdicionarClick(Sender: TObject);
var
  Form: TFrmFrame_Acao_Configuracao;
begin
  Form := TFrmFrame_Acao_Configuracao(ABaseClass_Normal[Tag_Acoes_Configuracao].Create(FrmPrincipal));
  Form.FAcao.Tabela := FUCHist.Tabela;
  Form.FAcao.Modulo := FUCHist.Modulo;

//  if Assigned(FGridTableView) then
//    Form.VincularDataSetNoFiltro(FGridTableView);
//  else
//    Form.VincularDataSetNoFiltro(FGridLayoutView);

  Form.FEditando := False;
  Form.FIndice := 0;
  Form.ShowConsultaModalItem(Tag_Acoes_Configuracao);
  AtualizarAcoes;
end;

procedure TFrmFrame_BI_Acoes.AtualizarAcoes;
var
  I: integer;
  AMensagem: String;
begin
  MemTableAcoes.Close;
  MemTableAcoes.Open;

  if not Assigned(Acoes_Sistema) then
    Exit;

  for I := 0 to Acoes_Sistema.Count - 1 do
  begin
    if Assigned(Acoes_Sistema[I]) and
       (Acoes_Sistema[I].Modulo = FUCHist.Modulo) and
       (Acoes_Sistema[I].Tabela = FUCHist.Tabela)
    then
    begin
      MemTableAcoes.Insert;
      MemTableAcoes.FieldByName('Index').AsInteger := I;
      MemTableAcoes.FieldByName('Descricao').AsString := Acoes_Sistema[I].Descricao;
      MemTableAcoes.Post;
    end;
  end;

end;

procedure TFrmFrame_BI_Acoes.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrmFrame_BI_Acoes.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  Form: TFrmFrame_Acao_Configuracao;
begin
  inherited;
  Form := TFrmFrame_Acao_Configuracao(ABaseClass_Normal[Tag_Acoes_Configuracao].Create(FrmPrincipal));
  Form.FAcao := Acoes_Sistema[MemTableAcoes.FieldByName('INDEX').AsInteger];
  Form.VincularDataSetNoFiltro(FGridTableView);
  Form.FEditando := True;
  Form.FIndice := MemTableAcoes.FieldByName('INDEX').AsInteger;
  Form.Carregar;
//  Form.VincularDataSetNoFiltro(nil);
//  Form.VincularDataSetNoFiltro(FGridTableView);
  Form.ShowConsultaModalItem(Tag_Acoes_Configuracao);
  AtualizarAcoes;
end;

initialization
  RegisterBase_Normal(Tag_BI_Acoes, TFrmFrame_BI_Acoes);

end.
