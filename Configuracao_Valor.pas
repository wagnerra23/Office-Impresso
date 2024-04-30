unit Configuracao_Valor;

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
  cxImageComboBox, cxDBEdit, cxCurrencyEdit, cxButtonEdit, uControleWR, cxMemo, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmConfiguracao_Valor = class(TForm)
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
    ImgProduto_Tipo16x16: TcxImageList;
    edtText: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edtCurrency: TcxCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    liedtConsulta: TdxLayoutItem;
    edtConsulta: TcxButtonEdit;
    cbCombo: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cbLookup: TcxLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    GrupoConsulta: TdxLayoutGroup;
    edtConsultaÎ: TcxLabel;
    dxLayoutItem9: TdxLayoutItem;
    GrupoCurrency: TdxLayoutGroup;
    GrupoText: TdxLayoutGroup;
    GrupoCombo: TdxLayoutGroup;
    GrupoLookup: TdxLayoutGroup;
    cxLabel1: TcxLabel;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    liMemHelp: TdxLayoutItem;
    MemHelp: TcxMemo;
    liedtDica: TdxLayoutItem;
    edtDica: TcxLabel;
    dxLayoutItem8: TdxLayoutItem;
    edtPathCaminho: TcxTextEdit;
    btnSelecionarCaminho: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    GrupoPath: TdxLayoutGroup;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure btnSelecionarCaminhoClick(Sender: TObject);
  private
    procedure AlterarVisibilidadeDosComponentes(ATipo, ADica: string; ATag: integer);
  protected
    FControleWR: TControleWR;
    FNomeCampo: string;
  public
    { Public declarations }
    class function GetValor(ATipo, AValor, ADica: string; ATag: integer): Variant;
  end;

implementation

{$R *.dfm}

uses
  CadVenda_Tipo, UnitFuncoes, wrFuncoes, Principal, wrForms,
  CadProduto_Tipo, wrPreencheLookup, Base, uOpenFolderDialog, Tag.Config;

{ TFrmVendaTipoSelecao }

procedure TFrmConfiguracao_Valor.AlterarVisibilidadeDosComponentes(ATipo, ADica: string; ATag: integer);
begin
  GrupoCombo.Visible    := False;
  GrupoConsulta.Visible := False;
  GrupoCurrency.Visible := False;
  GrupoLookup.Visible   := False;
  GrupoText.Visible     := False;
  GrupoPath.Visible     := False;

  if ATipo = 'CONTAS' then
  begin

    FNomeCampo := edtConsulta.Name + 'ÎCONTAS';
    edtConsulta.Name  := FNomeCampo;
    edtConsultaÎ.Name := FNomeCampo + 'ÎDESCRICAO';
    GrupoConsulta.Visible := True;
  end;

  if ATipo = 'PESSOAS' then
  begin
    FNomeCampo :=  edtConsulta.Name + 'ÎPESSOAS';
    edtConsulta.Name  := FNomeCampo;
    edtConsultaÎ.Name := FNomeCampo + 'ÎRAZAOSOCIAL';
    GrupoConsulta.Visible := True;
  end;

  if ATipo = 'PLANO DE CONTAS' then
  begin
    FNomeCampo :=  edtConsulta.Name + 'ÎPLANOCONTAS';
    edtConsulta.Name  := FNomeCampo;
    edtConsultaÎ.Name := FNomeCampo + 'ÎDESCRICAO';
    GrupoConsulta.Visible := True;
  end;

  if ATipo = 'CENTRO_TRABALHO' then
  begin
    FNomeCampo :=  edtConsulta.Name + 'ÎCENTRO_TRABALHO';
    edtConsulta.Name  := FNomeCampo;
    edtConsultaÎ.Name := FNomeCampo + 'ÎDESCRICAO';
    GrupoConsulta.Visible := True;
  end;

  if ATipo = 'currency' then
  begin
    FNomeCampo := 'edtCurrency';
    GrupoCurrency.Visible := True;
  end;

  if ATipo = 'text' then
  begin
    FNomeCampo := 'edtText';
    GrupoText.Visible     := True;
  end;

  if ATipo = 'combobox' then
  begin
    FNomeCampo := 'cbCombo';
    GrupoCombo.Visible    := True;
  end;

  if ATipo = 'lookup' then
  begin
    FNomeCampo := 'cbLookup';
    GrupoLookup.Visible   := True;
  end;

  if ATipo = 'path' then
  begin
    FNomeCampo := 'edtPathCaminho';
    GrupoPath.Visible   := True;
  end;

  if (ATag = Tag_Config_VENDA_NOME_ARQUIVO_PDF) then  // Impressão da venda
  begin
    liMemHelp.Visible := True;
    Self.Height := 300;
  end;

  if ADica <> '' then
  begin
    liedtDica.Visible := True;
    edtDica.Caption := ADica;
  end;
end;

procedure TFrmConfiguracao_Valor.BtnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmConfiguracao_Valor.BtnConfirmarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFrmConfiguracao_Valor.btnSelecionarCaminhoClick(Sender: TObject);
var
  AOpenDialog: TOpenFolderDialog;
begin
  inherited;
  AOpenDialog := TOpenFolderDialog.Create(nil);
  try
//    AOpenDialog.Options := [fdoPickFolders, fdoPathMustExist, fdoForceFileSystem];
    AOpenDialog.Title      := 'Selecione a Pasta';
    if not AOpenDialog.Execute then
      Exit;

    edtPathCaminho.Text := AOpenDialog.FolderName;

  finally
    AOpenDialog.Free;
  end;
end;

class function TFrmConfiguracao_Valor.GetValor(ATipo, AValor, ADica: string; ATag: integer): Variant;
var
  AFrm: TFrmConfiguracao_Valor;
begin
  Result := False;
  AFrm := TFrmConfiguracao_Valor.Create(nil);
  try
    AFrm.AlterarVisibilidadeDosComponentes(ATipo, ADica, ATag);
    AFrm.FControleWR := TControleWR.Create;
    AFrm.FControleWR.Inicializar(AFrm);

    TCustomEdit(AFrm.FindComponent(AFrm.FNomeCampo)).Text := AValor;
    AFrm.edtText.Text := AValor;
    AFrm.edtCurrency.Text := AValor;
    AFrm.cbCombo.EditText := AValor;
    AFrm.edtPathCaminho.Text := AValor;
    if (AFrm.ShowModal = mrOk) then
    begin
      OutputDebugString(StringToOleStr(AFrm.FindComponent(AFrm.FNomeCampo).ClassName));
      OutputDebugString(StringToOleStr(TCustomEdit(AFrm.FindComponent(AFrm.FNomeCampo)).Text));
      Result := TCustomEdit(AFrm.FindComponent(AFrm.FNomeCampo)).Text;
    end
    else
      Result := AValor;
  finally
    AFrm.Free;
  end;
end;

end.
