unit FrFrameProdutoVariacaoTabela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrFrameMestre, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxDBLookupComboBox, cxCurrencyEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxTextEdit, cxDBLabel, cxLabel, cxCheckBox,
  cxDBEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
  uWRFormataCamposDataSet, uWRFrameEventos, cxClasses, dxLayoutLookAndFeels,
  UCBase, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, uWRCalculaConfiguracoes, wrConversao, UnitFuncoes,
  wrFuncoes, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TFrmProdutoVariacaoTabela = class(TFrmFrameMestre)
    GridPrecos: TcxGrid;
    GridPrecosDBTableView2: TcxGridDBTableView;
    GridPrecosDBTableView2Column1: TcxGridDBColumn;
    GridPrecosDBTableView2TIPO: TcxGridDBColumn;
    GridPrecosDBTableView2QUANT: TcxGridDBColumn;
    GridPrecosDBTableView2PERC_LUCRO_DESEJADO: TcxGridDBColumn;
    GridPrecosDBTableView2MARKUP: TcxGridDBColumn;
    GridPrecosDBTableView2PORCENTAGEM: TcxGridDBColumn;
    GridPrecosDBTableView2Valor: TcxGridDBColumn;
    GridPrecosLevel1: TcxGridLevel;
    chkTem_Tabela_Preco_Fixo: TcxDBCheckBox;
    cxLabel19: TcxLabel;
    lblUnidade: TcxDBLabel;
    edtTabelaPrecoDe: TcxCurrencyEdit;
    cbxTabelaPrecoTipo: TcxLookupComboBox;
    edtTabelaPrecoQuant: TcxCurrencyEdit;
    edtTabelaPrecoDesconto: TcxCurrencyEdit;
    edtTabelaPrecoValor: TcxCurrencyEdit;
    btnAdicionaTabelaPreco: TcxButton;
    btnRemoverTabelaPreco: TcxButton;
    chkTem_Tabela_Preco_QTDADePeca: TcxDBCheckBox;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem116: TdxLayoutItem;
    dxLayoutSeparatorItem21: TdxLayoutSeparatorItem;
    dxLayoutGroup36: TdxLayoutGroup;
    dxLayoutGroup31: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    liedtTabelaPrecoDe: TdxLayoutItem;
    licbxTabelaPrecoTipo: TdxLayoutItem;
    liedtTabelaPrecoQuant: TdxLayoutItem;
    lilblUnidade: TdxLayoutItem;
    liedtTabelaPrecoDesconto: TdxLayoutItem;
    liedtTabelaPrecoValor: TdxLayoutItem;
    libtnAdicionaTabelaPreco: TdxLayoutItem;
    libtnRemoverTabelaPreco: TdxLayoutItem;
    dxLayoutControl8Item1: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    lichkTem_Tabela_Preco_Fixo: TdxLayoutItem;
    lichkTem_Tabela_Preco_QTDADePeca: TdxLayoutItem;
    WRCalc: TWRCalculaConfiguracoes;
    DSProdutoPreco: TDataSource;
    procedure btnAdicionaTabelaPrecoClick(Sender: TObject);
    procedure btnRemoverTabelaPrecoClick(Sender: TObject);
    procedure cbxTabelaPrecoTipoPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    class procedure CarregaFrame(var AFrame: TFrmProdutoVariacaoTabela; AParent: TWinControl;
      AWRCalc: TWRCalculaConfiguracoes; ADSProdutoPreco: TDataSource);
  end;

implementation

{$R *.dfm}

uses Produto_Preco, Principal, Math;

class procedure TFrmProdutoVariacaoTabela.CarregaFrame(var AFrame: TFrmProdutoVariacaoTabela; AParent: TWinControl;
  AWRCalc: TWRCalculaConfiguracoes; ADSProdutoPreco: TDataSource);                         // Por tem dois Eventos?
begin
  if AFrame = nil then  // Create
  begin
    AFrame := TFrmProdutoVariacaoTabela.Create(AParent, AWRCalc.DSProduto);
    AFrame.WRCalc  := AWRCalc;
    AFrame.DSProdutoPreco := ADSProdutoPreco;
    AFrame.wrFrameEventos.DoOnInicializar;         // Essa bosta é chamada o seguno evento
  end;
end;
procedure TFrmProdutoVariacaoTabela.btnAdicionaTabelaPrecoClick(Sender: TObject);
var
  ATipoAdicionando, ATipoExistente: TTipoTabelaPreco;
  APoint: TBookmark;
  AConflito: Boolean;
  ARangeAdicionando, ARangeExiste: TWRRange;
begin
  ATipoAdicionando := TipoTabelaPrecoStrToEnum(VarToStrDef(CbxTabelaPrecoTipo.EditValue, ''));
  if (ATipoAdicionando = ttpAcimaDe) and DSProdutoPreco.DataSet.Locate('TIPO', TipoTabelaPrecoToStr(ttpAcimaDe), []) then
  begin
    ShowMessageWR('Só é possível adicionar um (01) valor do tipo "Acima De".');
    Exit;
  end;
  if (ATipoAdicionando = ttpAte) and
     (EdtTabelaPrecoQuant.Value < EdtTabelaPrecoDe.Value) then
  begin
    EdtTabelaPrecoQuant.SetFocusWR;
    FrmPrincipal.ActivateBalloonHint(EdtTabelaPrecoQuant, '', 'A Quantidade deve ser maior que o valor "DE".');
    Exit;
  end;
  if EdtTabelaPrecoQuant.Value = 0 then
  begin
    EdtTabelaPrecoQuant.SetFocusWR;
    FrmPrincipal.ActivateBalloonHint(EdtTabelaPrecoQuant, '', 'Informe a quantidade!');
    Exit;
  end;
  if EdtTabelaPrecoValor.Value = 0 then
  begin
    EdtTabelaPrecoValor.SetFocusWR;
    FrmPrincipal.ActivateBalloonHint(EdtTabelaPrecoValor, '', 'Informe o valor!');
    Exit;
  end;

  case ATipoAdicionando of
    ttpAte:     ARangeAdicionando := TWRRange.Create(EdtTabelaPrecoDe.Value, EdtTabelaPrecoQuant.Value);
    ttpAcimaDe: ARangeAdicionando := TWRRange.Create(EdtTabelaPrecoQuant.Value, MaxDouble);
  end;

  DSProdutoPreco.DataSet.DisableControls;
  try
    APoint := DSProdutoPreco.DataSet.GetBookmark;
    DSProdutoPreco.DataSet.First;
    while not DSProdutoPreco.DataSet.Eof do
    begin
      case ATipoAdicionando of
        ttpAte:
        begin
          ATipoExistente := TipoTabelaPrecoStrToEnum(DSProdutoPreco.DataSet.FieldByName('TIPO').AsString);
          case ATipoExistente of
            ttpAte:     ARangeExiste := TWRRange.Create(DSProdutoPreco.DataSet.FieldByName('DE').AsFloat, DSProdutoPreco.DataSet.FieldByName('QUANT').AsFloat);
            ttpAcimaDe: ARangeExiste := TWRRange.Create(DSProdutoPreco.DataSet.FieldByName('QUANT').AsFloat, MaxDouble);
          end;

          //Primeiro verifica se a faixa de quantidade não é conflitante
          AConflito := RangeConflictCheck(ARangeAdicionando, ARangeExiste);

          //Caso o item seja unitário na quantidade (De = Quant), verifica se já não se encaixa em alguma faixa
          //Se tiver um Acima De = 10 e o usuário quer inserir um "De 10 até 10", permitir...
          if ATipoExistente = ttpAte then
          begin
            AConflito := AConflito or (SameValue(EdtTabelaPrecoDe.Value, EdtTabelaPrecoQuant.Value) and
                        (SameValue(EdtTabelaPrecoDe.Value, DSProdutoPreco.DataSet.FieldByName('DE').AsFloat) or
                         SameValue(EdtTabelaPrecoDe.Value, DSProdutoPreco.DataSet.FieldByName('QUANT').AsFloat)));
          end;
          if AConflito then
          begin
            ShowMessageWR('Já existe uma especificação de preço para esta faixa de quantidade.');
            Exit;
          end;
        end;
        ttpAcimaDe:
        begin
          if DSProdutoPreco.DataSet.FieldByName('QUANT').AsFloat > EdtTabelaPrecoQuant.Value then
          begin
            ShowMessageWR('O tipo "Acima de" deve ter a quantidade igual ou maior que os itens do tipo "Até"');
            Exit;
          end;
        end;
      end;
      DSProdutoPreco.DataSet.Next;
    end;
  finally
    if DSProdutoPreco.DataSet.BookmarkValid(APoint) then
      DSProdutoPreco.DataSet.GotoBookmark(APoint);
    DSProdutoPreco.DataSet.EnableControls;
  end;

//  VerificaSePodeAlteraDataSet;

  DSProdutoPreco.DataSet.Insert;
  DSProdutoPreco.DataSet.FieldByName('TIPO').AsString       := TipoTabelaPrecoToStr(ATipoAdicionando);
  DSProdutoPreco.DataSet.FieldByName('PORCENTAGEM').AsFloat := EdtTabelaPrecoDesconto.Value;
  DSProdutoPreco.DataSet.FieldByName('QUANT').AsFloat       := EdtTabelaPrecoQuant.Value;
  if ATipoAdicionando = ttpAte then
    DSProdutoPreco.DataSet.FieldByName('DE').AsFloat := EdtTabelaPrecoDe.Value;
  DSProdutoPreco.DataSet.Post;
end;

procedure TFrmProdutoVariacaoTabela.btnRemoverTabelaPrecoClick(Sender: TObject);
begin
  inherited;
  if not DSProdutoPreco.DataSet.IsEmpty then
  begin
//    VerificaSePodeAlteraDataSet;
    DSProdutoPreco.DataSet.Delete;
  end;
end;

procedure TFrmProdutoVariacaoTabela.cbxTabelaPrecoTipoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if cbxTabelaPrecoTipo.Focused then
    LiEdtTabelaPrecoDe.Visible := (VarToStrDef(cbxTabelaPrecoTipo.EditValue, '') = TipoTabelaPrecoToStr(ttpAte));
end;

end.
