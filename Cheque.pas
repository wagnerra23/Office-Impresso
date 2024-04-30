unit Cheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, IBX.IBDatabase, DB, cxButtonEdit,
  IBX.IBCustomDataSet, StdCtrls, Buttons, cxLabel, cxDBEdit, cxTextEdit, DBCtrls, ExtCtrls, Gradient, IBX.IBQuery,
  cxDBLabel, cxDropDownEdit, Mask, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, cxMaskEdit, cxCalendar, Vcl.ComCtrls, dxCore, cxDateUtils, uControleWR;

type
  TFrmCheque = class(TForm)
    Gradient8: TGradient;
    Bevel1: TBevel;
    Label42: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label52: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label44: TLabel;
    Label60: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBDateEdit8: TcxDBDateEdit;
    DBDateEdit4: TcxDBDateEdit;
    EdtBancoÎBancos: TcxDBButtonEdit;
    cxLabel2: TcxLabel;
    BtnConfirmar: TBitBtn;
    Gradient1: TGradient;
    Cheque: TIBDataSet;
    DSCheque: TDataSource;
    BtnCancelar: TBitBtn;
    ChequeFinanceiro: TIBQuery;
    DSFinanceiro: TDataSource;
    ChequeFinanceiroVALOR: TFloatField;
    ChequeFinanceiroConta: TStringField;
    cxDBLabel1: TcxDBLabel;
    cxNumero: TcxTextEdit;
    ChequeFinanceiroCODCONTA: TIntegerField;
    ChequeFinanceiroJUROS: TFloatField;
    ChequeFinanceiroDESCONTO: TFloatField;
    ChequeFinanceiroCHEQUE_NUMERO: TIBStringField;
    ChequeFinanceiroTotal: TFloatField;
    ChequeFinanceiroPREVISAO: TFloatField;
    ChequeFinanceiroDT_PREVISAO: TDateTimeField;
    ChequeCODIGO: TIntegerField;
    ChequeCODPEDIDO: TIBStringField;
    ChequeCODEMPRESA: TIBStringField;
    ChequeCODBANCO: TIntegerField;
    ChequeBANCO: TIBStringField;
    ChequeNOME: TIBStringField;
    ChequeREPASSADO: TIBStringField;
    ChequeCNPJCPF: TIBStringField;
    ChequeSTATUS: TIBStringField;
    ChequeCOMPE: TIntegerField;
    ChequeAGENCIA: TIntegerField;
    ChequeC1: TIBStringField;
    ChequeCONTA: TIBStringField;
    ChequeC2: TIBStringField;
    ChequeC3: TIBStringField;
    ChequeDT_CADASTRO: TDateTimeField;
    ChequeDT_REPASSADO: TDateTimeField;
    ChequeTIPO: TIBStringField;
    ChequeDEVOLVIDO: TIBStringField;
    ChequeMOTIVO: TIBStringField;
    ChequeDT_ALTERACAO: TDateTimeField;
    EdtDtPrevisao: TcxDateEdit;
    EdtBancoÎBancosÎDESCRICAO: TcxDBTextEdit;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure ChequeAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ChequeFinanceiroCalcFields(DataSet: TDataSet);
    procedure ChequeBeforeOpen(DataSet: TDataSet);
    procedure ChequeFinanceiroBeforeOpen(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ChequeBeforePost(DataSet: TDataSet);
    procedure ChequeAfterInsert(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private
    FDataSourceFinanceiro: TDataSource;
    FControleWR: TControleWR;
    function Financeiro: TIBDataSet;
  protected
    property DataSourceFinanceiro: TDataSource read FDataSourceFinanceiro write FDataSourceFinanceiro;
  public
    class procedure Abrir(ADataSourceFinanceiro: TDataSource);
  end;

implementation

uses
  UnitFuncoes, ConContas, ConBancos, ConCheque, wrConstantes;

{$R *.dfm}

procedure TFrmCheque.BtnConfirmarClick(Sender: TObject);
var
  APoint: TBookmark;
  AOldStateFinanceiro: TDataSetState;
begin
  Cheque.Post;
  AOldStateFinanceiro := Financeiro.State;
  AlteraDataSet(Financeiro);
  Financeiro.FieldByName('CHEQUE_NUMERO').AsString := cxNumero.Text;
  Financeiro.FieldByName('DT_PREVISAO').Value      := EdtDtPrevisao.EditValue;

  {Se já estava em edição, apenas fecha esta tela, senão comita}
  if not (AOldStateFinanceiro in dsEditModes) then
  begin
    Financeiro.Post;
    APoint := Financeiro.GetBookmark;
    Financeiro.Transaction.Commit;
    Financeiro.Open;
    if not Financeiro.IsEmpty and (APoint <> nil) then
      Financeiro.GotoBookmark(APoint);
  end;
  ModalResult := mrOk;
end;

class procedure TFrmCheque.Abrir(ADataSourceFinanceiro: TDataSource);
var
  AForm: TFrmCheque;
begin
  AForm := TFrmCheque.Create(nil);
  try
    AForm.DataSourceFinanceiro := ADataSourceFinanceiro;
    AForm.PopupParent          := GetParentFormWR(ADataSourceFinanceiro);
    if AForm.ShowModal <> mrOk then
      AForm.Cheque.Cancel;
  finally
    AForm.Free;
  end;
end;

procedure TFrmCheque.ChequeAfterInsert(DataSet: TDataSet);
begin
  Cheque.FieldByName('CODIGO').AsInteger    := Financeiro.FieldByName('CODIGO').AsInteger;
  Cheque.FieldByName('CODPEDIDO').AsString  := Financeiro.FieldByName('CODPEDIDO').AsString;
  Cheque.FieldByName('CODEMPRESA').AsString := Financeiro.FieldByName('CODEMPRESA').AsString;
end;

procedure TFrmCheque.ChequeAfterOpen(DataSet: TDataSet);
begin
  ChequeFinanceiro.Open;
end;

procedure TFrmCheque.ChequeBeforeOpen(DataSet: TDataSet);
begin
  Cheque.ParamByName('CODIGO').AsInteger    := Financeiro.FieldByName('CODIGO').AsInteger;
  Cheque.ParamByName('CODPEDIDO').AsString  := Financeiro.FieldByName('CODPEDIDO').AsString;
  Cheque.ParamByName('CODEMPRESA').AsString := Financeiro.FieldByName('CODEMPRESA').AsString;
end;

procedure TFrmCheque.ChequeBeforePost(DataSet: TDataSet);
begin
  AtualizaDtAlteracao(Cheque);
end;

procedure TFrmCheque.ChequeFinanceiroBeforeOpen(DataSet: TDataSet);
begin
  ChequeFinanceiro.ParamByName('CODIGO').AsInteger    := Financeiro.FieldByName('CODIGO').AsInteger;
  ChequeFinanceiro.ParamByName('CODPEDIDO').AsString  := Financeiro.FieldByName('CODPEDIDO').AsString;
  ChequeFinanceiro.ParamByName('CODEMPRESA').AsString := Financeiro.FieldByName('CODEMPRESA').AsString;
end;

procedure TFrmCheque.ChequeFinanceiroCalcFields(DataSet: TDataSet);
begin
  ChequeFinanceiroConta.AsString := Procura('DESCRICAO', 'CONTAS', ChequeFinanceiroCODCONTA.AsString);
  ChequeFinanceiroTotal.AsCurrency := ChequeFinanceiroVALOR.AsCurrency + ChequeFinanceiroJUROS.AsCurrency - ChequeFinanceiroDESCONTO.AsCurrency;
end;

function TFrmCheque.Financeiro: TIBDataSet;
begin
  Result := (FDataSourceFinanceiro.DataSet as TIBDataSet);
end;

procedure TFrmCheque.FormCreate(Sender: TObject);
begin
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
  ChequeFinanceiroTotal.DisplayFormat := DECIMAL_2M;
end;

procedure TFrmCheque.FormDestroy(Sender: TObject);
begin
  FControleWR.Free;
end;

procedure TFrmCheque.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_RETURN, VK_DOWN] then
    Perform(WM_NEXTDLGCTL, 0, 0);
  if Key = VK_F12 then
    Consulta(TConsuCheque, Self);
end;

procedure TFrmCheque.FormShow(Sender: TObject);
begin
  Cheque.Transaction           := Financeiro.Transaction;
  ChequeFinanceiro.Transaction := Financeiro.Transaction;
  cxNumero.Text                := Financeiro.FieldByName('CHEQUE_NUMERO').AsString;
  EdtDtPrevisao.EditValue      := Financeiro.FieldByName('DT_PREVISAO').Value;
  Cheque.Open;
  AlteraDataSet(Cheque); //Insere caso o registro de cheque para este financeiro ainda não exista
  ChequeFinanceiroVALOR.DisplayFormat := DecimalFinanceiro;
end;

end.
