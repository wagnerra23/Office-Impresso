unit FrmBaixa_Requisicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxCustomTileControl, dxTileBar,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxCurrencyEdit, cxLabel, cxCheckBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, dxSkinsCore,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxMemo;

type
  TFormBaixa_Requisicao = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtQuantUtilizada: TcxCurrencyEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtQuantPrevista: TcxCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxbFuncionario: TcxLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cbxEquipe: TcxLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    dxTileBar1: TdxTileBar;
    dxTileBar1dxTileBarItem1: TdxTileBarItem;
    dxTileBar1Group1: TdxTileControlGroup;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    lblProduto: TcxLabel;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    cxLookupComboBox1: TcxLookupComboBox;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutItem8: TdxLayoutItem;
    lblTipo_Movimentacao: TcxLabel;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cbxStatus: TcxComboBox;
    licbxStatus: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cbxMotivo: TcxLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxTileBar1dxTileBarItem3: TdxTileBarItem;
    dxLayoutItem9: TdxLayoutItem;
    edtSaldoEstoque: TcxCurrencyEdit;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cxCheckBox1: TcxCheckBox;
    dxLayoutItem10: TdxLayoutItem;
    FDQuery1: TFDQuery;
    cxLabel1: TcxLabel;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    cxMemo1: TcxMemo;
    dxLayoutItem12: TdxLayoutItem;
    procedure dxTileBar1dxTileBarItem1Click(Sender: TdxTileControlItem);
    procedure dxTileBar1dxTileBarItem2Click(Sender: TdxTileControlItem);
    procedure FormShow(Sender: TObject);
  private
    procedure DefineStatus;

    { Private declarations }
  public
    class function AbreFormBaixa_Requisicao(ASender: TWinControl; var AQuant, AQuantPrevista: Double;
      var ACodProduto, AProduto, AEntradaSaida, ANomeEstoque, AStatus: String; var ACodFuncionario, ACodCentroTrabalho, ACodMotivo: Integer; var AObservacao :String): String;
    { Public declarations }
  end;

var
  FormBaixa_Requisicao: TFormBaixa_Requisicao;

implementation

{$R *.dfm}

uses wrFuncoes, Classes.WR, Principal, UnitFuncoes;

class function TFormBaixa_Requisicao.AbreFormBaixa_Requisicao(ASender: TWinControl; Var AQuant, AQuantPrevista: Double; var ACodProduto, AProduto, AEntradaSaida, ANomeEstoque, AStatus: String;
  var ACodFuncionario, ACodCentroTrabalho, ACodMotivo: Integer; var AObservacao: String): String;
var
  AFormBaixa_Requisicao: TFormBaixa_Requisicao;
  QuerX :TFDQuery;
begin
  AFormBaixa_Requisicao := TFormBaixa_Requisicao.Create(ASender.Owner);
  QuerX := GeraFDQuery;
  try
    with AFormBaixa_Requisicao do
    begin

      QuerX.SQL.Text := 'select ' + ANomeEstoque + ' from produto_estoque pe where pe.CODPRODUTO = :CODPRODUTO';
      QuerX.ParamByName('CODPRODUTO').AsString := ACodProduto;
      QuerX.Open;
      if QuerX.RecordCount > 0 then
      begin
        if QuerX.FieldByName(ANomeEstoque).AsFloat - AQuantPrevista <= 0 then
        begin
          edtSaldoEstoque.Style.Font.Color := clRed;
          dxLayoutItem11.Visible := True;
        end
        else
        begin
          edtSaldoEstoque.Style.Font.Color := clWindowText;
          dxLayoutItem11.Visible := False;
        end;
        edtSaldoEstoque.value := QuerX.FieldByName(ANomeEstoque).AsFloat - AQuantPrevista;
      end;


      edtQuantPrevista.Value  := AQuantPrevista;
      edtQuantUtilizada.Value := AQuantPrevista;

      licbxStatus.Enabled := AQuantPrevista > 0; //AQUI DEVE SER CODVENDA

      if edtQuantUtilizada.Value > AQuantPrevista then
        cbxStatus.EditValue := 'Anormal' //ANORMAL
      else
        cbxStatus.EditValue := 'Normal';//NORMAL

      lblProduto.Caption      := AProduto;
      if AEntradaSaida = 'E' then
        lblTipo_Movimentacao.Caption := 'Entrada';
      if AEntradaSaida = 'S' then
        lblTipo_Movimentacao.Caption := 'Saída';
      ShowModal;
      if ModalResult = mrOk then
      begin
        Result := 'Consumir';
        AQuant             := edtQuantUtilizada.Value;
        ACodFuncionario    := VarToIntDef(cxbFuncionario.EditValue,0);
        ACodCentroTrabalho := VarToIntDef(cbxEquipe.EditValue,0);
        ACodMotivo         := VarToIntDef(cbxMotivo.EditValue,0);
        AStatus            := cbxStatus.Text;
        AObservacao        := cxMemo1.EditingText;
      end else
        Result := 'Concluir';
    end;

  finally
    QuerX.Free;
    AFormBaixa_Requisicao.Free;
  end;
end;

procedure TFormBaixa_Requisicao.dxTileBar1dxTileBarItem1Click(
  Sender: TdxTileControlItem);
begin
  if not(edtQuantUtilizada.Value > 0) then
  begin
    ShowMessage('Necessario informar a quantidade utilizada');
    Exit;
  end;
  if edtQuantUtilizada.Value > edtQuantPrevista.Value then
  begin
    if cxMemo1.EditingText = '' then
    begin
      ShowMessage('Necessario informar a observação quando a quantidade utilizada é maior que quantidade prevista');
      Exit;
    end;
  end;
    ModalResult := mrOk;
//    ModalResult := mr
end;

procedure TFormBaixa_Requisicao.dxTileBar1dxTileBarItem2Click(
  Sender: TdxTileControlItem);
begin
  ModalResult := mrCancel;
end;

procedure TFormBaixa_Requisicao.DefineStatus;
begin
  if edtQuantUtilizada.Value > edtQuantPrevista.Value then
    cbxStatus.EditValue := 'Anormal'
  else
    cbxStatus.EditValue := 'Normal';
end;

procedure TFormBaixa_Requisicao.FormShow(Sender: TObject);
begin
  preencheLookUpMotivo(cbxMotivo.Properties);
  PreencheLookupCentro_Trabalho(cbxEquipe.Properties);
  PreencheLookUpFuncionarios(cxbFuncionario.Properties);
end;

end.
