unit Frame_VendaTipoSelecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxClasses, dxLayoutContainer, dxLayoutControl, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  dxLayoutLookAndFeels, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, wrConversao, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrameVendaTipoSelecao = class(TForm)
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
    Venda_Tipo: TFDQuery;
    DSVenda_Tipo: TDataSource;
    CbVendaTipo: TcxLookupComboBox;
    liTipoDeVenda: TdxLayoutItem;
    Venda_TipoCODIGO: TIntegerField;
    Venda_TipoDESCRICAO: TStringField;
    licbxEstagio: TdxLayoutItem;
    cbxEstagio: TcxLookupComboBox;
    licbxSituacao: TdxLayoutItem;
    cbxSituacao: TcxLookupComboBox;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cbxDT_Competencia: TcxDateEdit;
    licbxDT_Competencia: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure Venda_TipoBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure RefreshDataSet;
  public
    { Public declarations }
    class function DefineVendaTipo(AFieldVendaTipo: TField; AFiltroModelo: TVendaTipoModelo): Boolean;
    class function GetVendaTipo(ATag: Integer; var AVendaTipoSelecionado: string): Boolean;
    class function GetVendaEstagio(ATag: Integer; var AVendaTipoSelecionado, AVendaEstagio, AVendaSituacao: string; var ADataCompetencia: TDateTime): Boolean;
  end;

implementation

{$R *.dfm}

uses
  Base, CadVenda_Tipo, UnitFuncoes, wrFuncoes, Principal, wrForms, Tag.Form;

{ TFrmVendaTipoSelecao }

procedure TFrameVendaTipoSelecao.BtnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrameVendaTipoSelecao.BtnConfirmarClick(Sender: TObject);
begin
  if VarIsNull(CbVendaTipo.EditValue) then
  begin
    ShowMessageWR('Escolha um Tipo de Venda');
    CbVendaTipo.SetFocusWR;
    Exit;
  end;
  if cbxDT_Competencia.EditValue = '00:00:00' then
  begin
    ShowMessageWR('Defina uma Data Válida de Competencia');
    CbVendaTipo.SetFocusWR;
    Exit;
  end;

  ModalResult := mrOk;
end;

class function TFrameVendaTipoSelecao.DefineVendaTipo(AFieldVendaTipo: TField; AFiltroModelo: TVendaTipoModelo): Boolean;
//var
//  AVendaTipoSelecionado: string;
begin
//  if GetVendaTipo(AFiltroModelo, AVendaTipoSelecionado) then
//  begin
//    if not (AFieldVendaTipo.DataSet.State in dsEditModes) then
//      AFieldVendaTipo.DataSet.Edit;
//    AFieldVendaTipo.AsString := AVendaTipoSelecionado;
//  end;
end;

procedure TFrameVendaTipoSelecao.FormCreate(Sender: TObject);
begin
  PreencheLookupVenda_Estagio(cbxEstagio.Properties);
  PreencheLookupVenda_Situacao(cbxSituacao.Properties);
end;

procedure TFrameVendaTipoSelecao.FormShow(Sender: TObject);
begin
  CbVendaTipo.SetFocusWR;
end;

class function TFrameVendaTipoSelecao.GetVendaEstagio(ATag: Integer;  var AVendaTipoSelecionado, AVendaEstagio, AVendaSituacao: string; var ADataCompetencia: TDateTime): Boolean;
var
  AFrm: TFrameVendaTipoSelecao;
begin
  Result := False;
  AFrm := TFrameVendaTipoSelecao.Create(nil);
  AFrm.Tag := ATag;
  AFrm.CbVendaTipo.Text:= AVendaTipoSelecionado;
  AFrm.cbxEstagio.Text := AVendaEstagio;
  AFrm.cbxSituacao.Text:= AVendaSituacao;
  AFrm.cbxDT_Competencia.Date := ADataCompetencia;
  AFrm.Caption := 'Selecione o Estágio de Venda';
  AFrm.RefreshDataSet;
  if (AFrm.ShowModal = mrOk) then
  begin
    try
      Result := True;
      AVendaTipoSelecionado := AFrm.CbVendaTipo.Text;
      AVendaEstagio         := AFrm.cbxEstagio.Text;
      AVendaSituacao        := AFrm.cbxSituacao.Text;
      ADataCompetencia      := AFrm.cbxDT_Competencia.Date;
    finally
      AFrm.Free;
    end;
  end;
end;

class function TFrameVendaTipoSelecao.GetVendaTipo(ATag: Integer; var AVendaTipoSelecionado: string): Boolean;
var
  AFrm: TFrameVendaTipoSelecao;
begin
  Result := False;
  AFrm := TFrameVendaTipoSelecao.Create(nil);
  AFrm.licbxEstagio.Visible  := False;
  AFrm.licbxSituacao.Visible := False;
  try
    AFrm.Tag := ATag;
    AFrm.RefreshDataSet;
    repeat
      if AFrm.Venda_Tipo.IsEmpty then
      begin
        if ShowMessageWR('Não existe nenhum Tipo de Venda cadastrado que seja do modelo "' +
                         {VendaTipoModeloToDescricao(AFiltroModelo) +} '". Deseja cadastrar um agora?', MB_ICONQUESTION) <> mrYes then
          Exit;
        CadastroModalChave(TFrmVenda_Tipo, null );
        AFrm.RefreshDataSet;
      end else
        Break;
    until False;

    if (AFrm.Venda_Tipo.RecordCount = 1) or (AFrm.ShowModal = mrOk) then
    begin
      Result := True;
      AVendaTipoSelecionado := AFrm.Venda_TipoDESCRICAO.AsString;
    end;
  finally
    AFrm.Free;
  end;
end;

procedure TFrameVendaTipoSelecao.RefreshDataSet;
begin
  Venda_Tipo.Close;
  Venda_Tipo.Open;
end;

procedure TFrameVendaTipoSelecao.Venda_TipoBeforeOpen(DataSet: TDataSet);
begin
  if Tag = Tag_Venda_Orcamento then
    Venda_Tipo.ParamByName('Modelo').AsString := 'ORCAMENTO';
  if Tag = Tag_Venda then
    Venda_Tipo.ParamByName('Modelo').AsString := 'VENDA';
  if Tag = Tag_Venda_NotaFiscal then
    Venda_Tipo.ParamByName('Modelo').AsString := 'NOTA FISCAL';
//         vtmVenda: Result := 'VENDA';
//     vtmOrcamento: Result := 'ORCAMENTO';
//    vtmNotaFiscal: Result := 'NOTA FISCAL';
end;

end.
