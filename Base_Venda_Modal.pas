unit Base_Venda_Modal;

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
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxContainer, cxEdit, dxGDIPlusClasses, cxImage,
  Base_Venda;
type
  TFrmVenda_Modal = class(TFrmVenda_Base)
  private
    { Private declarations }
  public
    class function FrameDuplicaApenasVendaBaseSilent(ATag: Integer;
      ADatasetVenda, ADataSetFinanceiro, ADataSetProduto: TDataSet;
      AGridProdutoTree: TcxDBTreeList; AVinculaVenda: Boolean): TFrmVenda_Modal;
  end;

var
  FrmVenda_Modal: TFrmVenda_Modal;

implementation

{$R *.dfm}

Uses Frame_CadVenda_Mestre, Principal, Frame_VendaTipoSelecao, UnitFuncoes, DataModule, Tag.APP, Tag.Form;

class function TFrmVenda_Modal.FrameDuplicaApenasVendaBaseSilent(ATag: Integer;
  ADatasetVenda, ADataSetFinanceiro, ADataSetProduto: TDataSet;
  AGridProdutoTree: TcxDBTreeList; AVinculaVenda: Boolean): TFrmVenda_Modal;
var
  AFrmVendaBase : TFrmVenda_Modal;
  AFrame_Venda_Mestre: TFrame_Venda_Mestre;
  AEstagio :String;
  ASituacao :String;
  AVendaTipo :String;
  ADataCompetencia :TDateTime;
begin
//      if Not Assigned(AFrame_Venda_Mestre) then
//        AFrame_Venda_Mestre:= TFrame_Venda_Mestre.Create(nil);
//
//      with AFrame_Venda_Mestre do
//      try
//        Hide;
////          AFrame_Venda_Mestre.Cadastro.Transaction := ATransa;
//        CloseOpen_AbrirRegistro(null);
//      finally
//
//      end;

////  PodeEditarHitorico_Editando(FCodigoHistorico);
  AFrmVendaBase := TFrmVenda_Modal.Create(Nil);
  AFrmVendaBase.ShowCadastroItem(ATag, null);
///  AFrmVendaBase.CloseOpen_AbrirRegistro(null);
  AFrame_Venda_Mestre := TFrame_Venda_Mestre(AFrmVendaBase.FrameCadastro);
//  AFrame_Venda_Mestre.CloseOpen_AbrirRegistro(null);
  with AFrame_Venda_Mestre do
  begin
    FrameCopiarVendaEFinanceiro(AFrame_Venda_Mestre, ADatasetVenda, ADataSetFinanceiro, ADataSetProduto, '');
//    FrameCopiarVendaComProduto(ATag, ADataSetProduto, AGridProdutoTree, AVinculaVenda, AFrame_Venda_Mestre);

    AVendaTipo:= ADatasetVenda.FieldByName('VENDA_TIPO').AsString;
    AEstagio  := ADatasetVenda.FieldByName('VENDA_ESTAGIO').AsString;
    ASituacao := ADatasetVenda.FieldByName('SITUACAO').AsString;
    ADataCompetencia := ADatasetVenda.FieldByName('DT_COMPETENCIA').AsDateTime;

//    TFrameVendaTipoSelecao.GetVendaEstagio(ATag, AVendaTipo, AEstagio, ASituacao, ADataCompetencia);
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
  RegisterClass(TFrmVenda_Modal);
  RegisterBase_Normal(Tag_Venda, TFrmVenda_Modal);

end.
