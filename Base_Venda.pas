unit Base_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  cxCustomData, cxStyles, cxTL, cxImageComboBox, cxMaskEdit, cxLabel,
  cxButtonEdit, cxTextEdit, cxDropDownEdit, cxCurrencyEdit, cxCalendar,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxContainer, cxEdit, dxGDIPlusClasses, cxImage;

type
  TFrmVenda_Base = class(TFrmBase)
    tiPDV: TdxTileControlItem;
    tiPedido: TdxTileControlItem;
    tiOrcamento: TdxTileControlItem;
    tiNotaFiscal: TdxTileControlItem;
    tiOImpresso: TdxTileControlItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Class function FrameDuplicaVendaBase(ATag: Integer;  ADatasetVenda, ADataSetFinanceiro, ADataSetProduto: TDataSet;
      AGridProdutoTree: TcxDBTreeList; AVinculaVenda: Boolean): TFrmVenda_Base;
    class function FrameDuplicaApenasVendaBase(ATag: Integer; ADatasetVenda,
      ADataSetFinanceiro, ADataSetProduto: TDataSet;
      AGridProdutoTree: TcxDBTreeList; AVinculaVenda: Boolean): TFrmVenda_Base;
  end;

var
  FrmVenda_Base: TFrmVenda_Base;

implementation

{$R *.dfm}

Uses Frame_CadVenda_Mestre, Principal, Frame_VendaTipoSelecao, UnitFuncoes, DataModule, Tag.APP, Tag.Form;

{ TFrmVenda_Base }

procedure TFrmVenda_Base.FormCreate(Sender: TObject);
begin
  tiBasePadrao.Index   := 2;
  tiOrcamento.Visible  :=AWR_APP[TagAPP_Propostas].Ativo;
  tiBasePadrao.Visible :=AWR_APP[TagAPP_Venda].Ativo;
  tiPedido.Visible     :=AWR_APP[TagAPP_Venda_Pedido].Ativo;
  tiNotaFiscal.Visible :=AWR_APP[TagAPP_Nfe].Ativo or AWR_APP[TagAPP_NFCe].Ativo or AWR_APP[TagAPP_NFSe].Ativo;
  tiPDV.Visible        :=AWR_APP[TagAPP_Venda_PDV].Ativo;
  tiOImpresso.Visible  :=AWR_APP[TagAPP_Integracao_OImpresso].Ativo;
  inherited;
end;

procedure TFrmVenda_Base.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Tipo_de_tela = 'Cadastro' then
  begin
    with TFrame_Venda_Mestre(FrameCadastro) do
    begin
//      if FrameCadastro.classname = 'TFrame_Venda_PDV' then
//      begin
      ////////////////////////TEF\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
        if (key in [VK_F1,VK_F6,VK_F7,VK_F9]) or ((IsAltGRPressed) and (key in [67,68,70,86,88])) then
          AbrePDV(key);
//      end;

      case Key of
        VK_ESCAPE : FrameKeyDown(VK_ESCAPE);
        VK_F10    : FrameKeyDown(VK_F10);
        VK_F12    : AdicionaProduto;
        VK_F8     : AbrirObservacao;
      end;
    end;
  end;
end;

procedure TFrmVenda_Base.FormShow(Sender: TObject);
begin
  inherited;
//  tiOrcamento.Visible:=FListaPermissoesActions[Tag_Orcamento].Active;   Tem que saber se esta ativo
end;

class function TFrmVenda_Base.FrameDuplicaVendaBase(ATag: Integer;
  ADatasetVenda, ADataSetFinanceiro, ADataSetProduto: TDataSet;
  AGridProdutoTree: TcxDBTreeList; AVinculaVenda: Boolean): TFrmVenda_Base;
var
  AFrmVendaBase : TFrmVenda_Base;
  AFrame_Venda_Mestre: TFrame_Venda_Mestre;
  AEstagio :String;
  ASituacao :String;
  AVendaTipo :String;
  ADataCompetencia :TDateTime;
begin
//  PodeEditarHitorico_Editando(FCodigoHistorico);
  AFrmVendaBase := TFrmVenda_Base.Create(Nil);
  AFrmVendaBase.ShowCadastroItem(ATag, null);
  AFrame_Venda_Mestre :=TFrame_Venda_Mestre(AFrmVendaBase.FrameCadastro);
  with AFrame_Venda_Mestre do
  begin
    FrameCopiarVendaEFinanceiro(AFrame_Venda_Mestre, ADatasetVenda, ADataSetFinanceiro, ADataSetProduto, '');
    FrameCopiarVendaComProduto(ATag, ADataSetProduto, AGridProdutoTree, AVinculaVenda, AFrame_Venda_Mestre);

    AVendaTipo:= ADatasetVenda.FieldByName('VENDA_TIPO').AsString;
    AEstagio  := ADatasetVenda.FieldByName('VENDA_ESTAGIO').AsString;
    ASituacao := ADatasetVenda.FieldByName('SITUACAO').AsString;
    ADataCompetencia := DataHoraSys;//ADatasetVenda.FieldByName('DT_COMPETENCIA').AsDateTime;

    TFrameVendaTipoSelecao.GetVendaEstagio(ATag, AVendaTipo, AEstagio, ASituacao, ADataCompetencia);
    Cadastro.FieldByName('VENDA_TIPO').AsString       := AVendaTipo;
    Cadastro.FieldByName('VENDA_ESTAGIO').AsString    := AEstagio;
    if Cadastro.FieldByName('VENDA_ESTAGIO').AsString = '' then
      Cadastro.FieldByName('VENDA_ESTAGIO').Clear;
    Cadastro.FieldByName('SITUACAO').AsString         := ASituacao;
    Cadastro.FieldByName('DT_COMPETENCIA').AsDateTime := ADataCompetencia;

    if (Cadastro.FieldByName('SEQUENCIA').AsString = '') then
      Cadastro.FieldByName('SEQUENCIA').AsInteger   := SQLVendaMaxSequencia(TransaFD, Cadastro.FieldByName('VENDA_TIPO').AsString);

    if AVinculaVenda then
    begin
      Cadastro.FieldByName('CODVENDA').AsString := ADatasetVenda.FieldByName('CODIGO').AsString;
      Cadastro.FieldByName('OBSERVACAO').AsString := Cadastro.FieldByName('OBSERVACAO').AsString;
    end else
    begin
      Cadastro.FieldByName('OBSERVACAO').AsString := Cadastro.FieldByName('OBSERVACAO').AsString + sLineBreak + 'Pedido Duplicado: ' + ADatasetVenda.FieldByName('CODIGO').AsString;
                                                                                               // Cadastro.FieldByName('OBSERVACAO').AsString;
    end;

//    FormStyle := fsMDIChild;
//    MainLayout.EndUpdate;
    Application.ProcessMessages;

  end;
  Result:=AFrmVendaBase;
//    ShowMessageWR('O pedido número ' + ACodVenda + ' foi duplicado com sucesso!' + sLineBreak +
//                  'Pedido gerado: ' + Cadastro.FieldByName('CODIGO').AsString);
end;


class function TFrmVenda_Base.FrameDuplicaApenasVendaBase(ATag: Integer;
  ADatasetVenda, ADataSetFinanceiro, ADataSetProduto: TDataSet;
  AGridProdutoTree: TcxDBTreeList; AVinculaVenda: Boolean): TFrmVenda_Base;
var
  AFrmVendaBase : TFrmVenda_Base;
  AFrame_Venda_Mestre: TFrame_Venda_Mestre;
  AEstagio :String;
  ASituacao :String;
  AVendaTipo :String;
  ADataCompetencia :TDateTime;
begin
//  PodeEditarHitorico_Editando(FCodigoHistorico);
  AFrmVendaBase := TFrmVenda_Base.Create(Nil);
  AFrmVendaBase.ShowCadastroItem(ATag, null);
  AFrame_Venda_Mestre :=TFrame_Venda_Mestre(AFrmVendaBase.FrameCadastro);
  with AFrame_Venda_Mestre do
  begin
    FrameCopiarVendaEFinanceiro(AFrame_Venda_Mestre, ADatasetVenda, ADataSetFinanceiro, ADataSetProduto, '');
//    FrameCopiarVendaComProduto(ATag, ADataSetProduto, AGridProdutoTree, AVinculaVenda, AFrame_Venda_Mestre);

    AVendaTipo:= ADatasetVenda.FieldByName('VENDA_TIPO').AsString;
    AEstagio  := ADatasetVenda.FieldByName('VENDA_ESTAGIO').AsString;
    ASituacao := ADatasetVenda.FieldByName('SITUACAO').AsString;
    ADataCompetencia := DataHoraSys;//ADatasetVenda.FieldByName('DT_COMPETENCIA').AsDateTime;

    TFrameVendaTipoSelecao.GetVendaEstagio(ATag, AVendaTipo, AEstagio, ASituacao, ADataCompetencia);
    Cadastro.FieldByName('VENDA_TIPO').AsString       := AVendaTipo;
    Cadastro.FieldByName('VENDA_ESTAGIO').AsString    := AEstagio;
    if Cadastro.FieldByName('VENDA_ESTAGIO').AsString = '' then
      Cadastro.FieldByName('VENDA_ESTAGIO').Clear;
    Cadastro.FieldByName('SITUACAO').AsString         := ASituacao;
    Cadastro.FieldByName('DT_COMPETENCIA').AsDateTime := ADataCompetencia;

    if (Cadastro.FieldByName('SEQUENCIA').AsString = '') then
      Cadastro.FieldByName('SEQUENCIA').AsInteger   := SQLVendaMaxSequencia(TransaFD, Cadastro.FieldByName('VENDA_TIPO').AsString);

    if AVinculaVenda then
    begin
      Cadastro.FieldByName('CODVENDA').AsString := ADatasetVenda.FieldByName('CODIGO').AsString;
      Cadastro.FieldByName('OBSERVACAO').AsString := Cadastro.FieldByName('OBSERVACAO').AsString;
    end else
    begin
      Cadastro.FieldByName('OBSERVACAO').AsString := Cadastro.FieldByName('OBSERVACAO').AsString + sLineBreak + 'Pedido Duplicado: ' + ADatasetVenda.FieldByName('CODIGO').AsString;
                                                                                               // Cadastro.FieldByName('OBSERVACAO').AsString;
    end;

//    FormStyle := fsMDIChild;
//    MainLayout.EndUpdate;
    Application.ProcessMessages;

  end;
  Result:=AFrmVendaBase;
//    ShowMessageWR('O pedido número ' + ACodVenda + ' foi duplicado com sucesso!' + sLineBreak +
//                  'Pedido gerado: ' + Cadastro.FieldByName('CODIGO').AsString);
end;



initialization
  RegisterClass(TFrmVenda_Base);
  RegisterBase_MidChild(Tag_Venda, TFrmVenda_Base);
end.
