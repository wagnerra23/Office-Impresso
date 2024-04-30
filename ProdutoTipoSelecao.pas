unit ProdutoTipoSelecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxClasses, dxLayoutContainer, dxLayoutControl, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  dxLayoutLookAndFeels, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, wrConversao, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar, System.ImageList, Vcl.ImgList, cxImageList,
  cxImageComboBox, cxDBEdit, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmProdutoTipoSelecao = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    BtnConfirmar: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    BtnCancelar: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    Produto_Tipo: TFDQuery;
    DSProduto_Tipo: TDataSource;
    Produto_TipoCODIGO: TIntegerField;
    Produto_TipoDESCRICAO: TStringField;
    dxLayoutItem3: TdxLayoutItem;
    edtProdutoTipo: TcxLookupComboBox;
    cbClassificacaoProduto: TcxImageComboBox;
    dxLayoutItem5: TdxLayoutItem;
    ImgProduto_Tipo16x16: TcxImageList;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure Produto_TipoBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cbProdutoTipoPropertiesEditValueChanged(Sender: TObject);
  private
    FProdutoTipoModelo: TFormClass;
    procedure SetVendaTipoModelo(const Value: TFormClass);
    { Private declarations }
  protected
    property ProdutoTipoModelo: TFormClass read FProdutoTipoModelo write SetVendaTipoModelo;
    procedure RefreshDataSet;
  public
    { Public declarations }
    class function GetProdutoTipo(var ATag, ACodProdutoClassificacaoSelecionado: Integer): Boolean;
  end;

implementation

{$R *.dfm}

uses
  CadVenda_Tipo, UnitFuncoes, wrFuncoes, Principal, wrForms, CadProduto_Tipo, wrPreencheLookup;

{ TFrmVendaTipoSelecao }

procedure TFrmProdutoTipoSelecao.BtnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmProdutoTipoSelecao.BtnConfirmarClick(Sender: TObject);
begin
  if VarIsNull(cbClassificacaoProduto.EditValue) then
  begin
    ShowMessageWR('Escolha um Tipo de produto');
    cbClassificacaoProduto.SetFocusWR;
    Exit;
  end;
  if VarIsNull(edtProdutoTipo.EditValue) then
  begin
//    ShowMessageWR('Defina uma Data Válida de Competencia');
//    edtProdutoTipo.SetFocusWR;
//    Exit;
  end;

  ModalResult := mrOk;
end;

procedure TFrmProdutoTipoSelecao.cbProdutoTipoPropertiesEditValueChanged(
  Sender: TObject);
begin
  Produto_Tipo.Close;
  Produto_Tipo.ParamByName('CLASSIFICACAO').AsString := cbClassificacaoProduto.EditValue;
  Produto_Tipo.Open;
end;

procedure TFrmProdutoTipoSelecao.FormCreate(Sender: TObject);
begin
//  PreencheLookupVenda_Estagio(cbxEstagio.Properties);
//  PreencheLookupVenda_Situacao(cbxSituacao.Properties);
end;

procedure TFrmProdutoTipoSelecao.FormShow(Sender: TObject);
begin
  cbClassificacaoProduto.SetFocusWR;
end;

class function TFrmProdutoTipoSelecao.GetProdutoTipo(var ATag, ACodProdutoClassificacaoSelecionado: Integer): Boolean;
var
  AFrm: TFrmProdutoTipoSelecao;
begin
  Result := False;
  AFrm := TFrmProdutoTipoSelecao.Create(nil);
  try
    PreencheImageComboBoxProduto_TipoClassificacao(AFrm.cbClassificacaoProduto.Properties);
    if (AFrm.ShowModal = mrOk) then
    begin
      ATag                                 := AFrm.cbClassificacaoProduto.SelectedItem;
      ACodProdutoClassificacaoSelecionado  := VarToIntDef(AFrm.edtProdutoTipo.EditValue,0);
      Result := True;
    end;
  finally
    AFrm.Free;
  end;
//    repeat
//      if AFrm.Produto_Tipo.IsEmpty then
//      begin
//        if ShowMessageWR('Não existe nenhum Tipo de Produto cadastrado que seja do modelo "' +
//                         {VendaTipoModeloToDescricao(AFiltroModelo) +} '". Deseja cadastrar um agora?', MB_ICONQUESTION) <> mrYes then
//          Exit;
//        CadastroModalChave(TFrmProduto_Tipo, null );
//        AFrm.RefreshDataSet;
//      end else
//        Break;
//    until False;
//
//    if (AFrm.Produto_Tipo.RecordCount = 1) or (AFrm.ShowModal = mrOk) then
//    begin
//      Result := True;
//      AVendaTipoSelecionado := AFrm.Produto_TipoDESCRICAO.AsString;
//    end;
//  finally
//    AFrm.Free;
//  end;
end;

procedure TFrmProdutoTipoSelecao.RefreshDataSet;
begin
  Produto_Tipo.Close;
  Produto_Tipo.Open;
end;

procedure TFrmProdutoTipoSelecao.SetVendaTipoModelo(const Value: TFormClass);
begin
  FProdutoTipoModelo := Value;
  RefreshDataSet;
end;

procedure TFrmProdutoTipoSelecao.Produto_TipoBeforeOpen(DataSet: TDataSet);
begin
//  if FProdutoTipoModelo = TFrmOrcamento then
//    Produto_Tipo.ParamByName('Modelo').AsString := 'ORCAMENTO';
//  if FProdutoTipoModelo = TFrmVenda then
//    Produto_Tipo.ParamByName('Modelo').AsString := 'VENDA';
//  if FVendaTipoModelo is TFrmNotaFiscal then
//    Venda_Tipo.ParamByName('Modelo').AsString := 'NOTA FISCAL';
//         vtmVenda: Result := 'VENDA';
//     vtmOrcamento: Result := 'ORCAMENTO';
//    vtmNotaFiscal: Result := 'NOTA FISCAL';
end;

end.
