unit PDV_Pagamento_Incluir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData, cxContainer, dxLayoutContainer,
  dxLayoutcxEditAdapters, cxTextEdit, cxCurrencyEdit, Vcl.StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxLayoutControl, Vcl.ExtCtrls, dxLayoutControlAdapters, Vcl.Buttons;

type
  TFrmPDV_Pagamento_Incluir = class(TForm)
    pnlincluirPagamento: TPanel;
    dxLayoutControl6: TdxLayoutControl;
    GridFormaPagamento: TcxGrid;
    GridFormaPagamentoDBTableView1: TcxGridDBTableView;
    GridFormaPagamentoDBTableView1CODIGO: TcxGridDBColumn;
    GridFormaPagamentoDBTableView1DESCRICAO: TcxGridDBColumn;
    GridFormaPagamentoDBTableView1NF_TIPO_PAGTO: TcxGridDBColumn;
    GridFormaPagamentoDBTableView1CODNF_TIPO_PAGTO: TcxGridDBColumn;
    GridFormaPagamentoDBTableView1TEM_TEF: TcxGridDBColumn;
    GridFormaPagamentoDBTableView1OBRIGACAO_DOC_FISCAL: TcxGridDBColumn;
    GridFormaPagamentoDBTableView1TIPO_DOC_FISCAL: TcxGridDBColumn;
    GridFormaPagamentoLevel1: TcxGridLevel;
    Label1: TLabel;
    edtValor_Pagto: TcxCurrencyEdit;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup;
    Tipo_Pagamento: TFDQuery;
    Tipo_PagamentoCODIGO: TIntegerField;
    Tipo_PagamentoDESCRICAO: TStringField;
    Tipo_PagamentoNF_TIPO_PAGTO: TStringField;
    Tipo_PagamentoCODNF_TIPO_PAGTO: TStringField;
    Tipo_PagamentoTEM_TEF: TStringField;
    Tipo_PagamentoOBRIGACAO_DOC_FISCAL: TStringField;
    Tipo_PagamentoTIPO_DOC_FISCAL: TStringField;
    DSTipoPagamento: TDataSource;
    dxLayoutItem1: TdxLayoutItem;
    btCancelar: TBitBtn;
    dxLayoutItem2: TdxLayoutItem;
    btGravar: TBitBtn;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem3: TdxLayoutItem;
    Label2: TLabel;
    procedure edtValor_PagtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtValor_PagtoPropertiesEditValueChanged(Sender: TObject);
    procedure GridFormaPagamentoDBTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPDV_Pagamento_Incluir: TFrmPDV_Pagamento_Incluir;

implementation

{$R *.dfm}

procedure TFrmPDV_Pagamento_Incluir.edtValor_PagtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
  VK_RETURN: btGravar.Click;
      VK_UP: GridFormaPagamentoDBTableView1.Controller.GoToPrev(True, True);
    VK_DOWN: GridFormaPagamentoDBTableView1.Controller.GoToNext(True, True);
  end;
end;

procedure TFrmPDV_Pagamento_Incluir.edtValor_PagtoPropertiesEditValueChanged(Sender: TObject);
begin
  Label1.Caption := Tipo_Pagamento.FieldByName('DESCRICAO').AsString + ': ' + FormatFloat('#,###,##0.00####', edtValor_Pagto.Value);
  btGravar.Enabled := (edtValor_Pagto.Value > 0) and (Tipo_Pagamento.FieldByName('DESCRICAO').AsString <> '');
end;

procedure TFrmPDV_Pagamento_Incluir.FormShow(Sender: TObject);
begin
  edtValor_Pagto.SelectAll;
end;

procedure TFrmPDV_Pagamento_Incluir.GridFormaPagamentoDBTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  edtValor_PagtoPropertiesEditValueChanged(nil);
end;

end.
