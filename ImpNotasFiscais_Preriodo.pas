unit ImpNotasFiscais_Preriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, DB, IBX.IBCustomDataSet, IBX.IBQuery, StdCtrls, Mask,
  Buttons, QRExport, QRPDFFilt, QRWebFilt, QuickRpt, ExtCtrls,
  ImpMestre, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxSkinsCore, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ComCtrls, dxCore,
  cxDateUtils;

type
  TImpriNotasFiscais_Periodo = class(TImpriMestre)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn12: TBitBtn;
    BitBtn8: TBitBtn;
    ComboBox1: TComboBox;
    NotaFiscal: TIBQuery;
    NotaFiscalDT_EMISSAO: TDateTimeField;
    NotaFiscalNATUREZAOPERACAO: TIBStringField;
    NotaFiscalCFOP: TIBStringField;
    NotaFiscalCLIENTE_DESCRICAO: TIBStringField;
    NotaFiscalOBSERVACAO: TIBStringField;
    NotaFiscalCODNOTAFISCAL: TIntegerField;
    NotaFiscalSTATUS: TIBStringField;
    NotaFiscalCODUSUARIO: TIntegerField;
    NotaFiscalTOTAL: TFloatField;
    NotaFiscalCODIGO: TIBStringField;
    NotaFiscalCODPEDIDO: TIBStringField;
    NotaFiscalCODCLIENTE: TIBStringField;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand3: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    DateEdit1: TcxDateEdit;
    DateEdit2: TcxDateEdit;
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure NotaFiscalBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    Function FunSoma:String;
  public
    { Public declarations }
  end;

var
  ImpriNotasFiscais_Periodo: TImpriNotasFiscais_Periodo;
  Total:Real;
implementation

Uses UnitFuncoes;

{$R *.dfm}

Function TImpriNotasFiscais_Periodo.FunSoma:String;
begin
  Total:=0;
  NotaFiscal.DisableControls;
  NotaFiscal.First;
  While not NotaFiscal.Eof Do
  begin
    Total:=Total+NotaFiscal.FieldByName('TOTAL').asFloat;
    NotaFiscal.Next;
  end;
  NotaFiscal.EnableControls;
  Result:=FormatFloat('##,##0.00',Total);
end;

procedure TImpriNotasFiscais_Periodo.BitBtn12Click(Sender: TObject);
begin
  inherited;
  If perm[Tag] in ['1'] then
  begin
    ShowMessage('Você não está autorizado a acessar este relatório');
    Close;
    Exit;
  end;
  NotaFiscal.Close;
  if ComboBox1.Text='TODAS' then
    NotaFiscal.SQL[1]:='WHERE (DT_EMISSAO between :Inicio AND :Fim)'
  else
    NotaFiscal.SQL[1]:='WHERE (STATUS='''+ComboBox1.Text+''')AND(DT_EMISSAO between :Inicio AND :Fim)';
  NotaFiscal.ParamByName('Inicio').AsDateTime:=DateEdit1.Date;
  NotaFiscal.ParamByName('Fim').AsDateTime   :=DateEdit2.Date;
  NotaFiscal.Open;
  QRLabel2.Caption:=FunSoma;
  QuickRep1.PreviewModal;
end;

procedure TImpriNotasFiscais_Periodo.BitBtn8Click(Sender: TObject);
begin
  inherited;
  If perm[Tag] in ['1'] then
  begin
    ShowMessage('Você não está autorizado a acessar este relatório');
    Close;
    Exit;
  end;
  NotaFiscal.Close;
  if ComboBox1.Text='TODOS' then
    NotaFiscal.SQL[1]:='WHERE (DT_EMISSAO between :Inicio AND :Fim)'
  else
    NotaFiscal.SQL[1]:='WHERE (STATUS='''+ComboBox1.Text+''')AND(DT_EMISSAO between :Inicio AND :Fim)';
  NotaFiscal.ParamByName('Inicio').AsDateTime:=DateEdit1.Date;
  NotaFiscal.ParamByName('Fim').AsDateTime   :=DateEdit2.Date;
  NotaFiscal.Open;
  QRLabel2.Caption:=FunSoma;
  QuickRep1.Print;
end;

procedure TImpriNotasFiscais_Periodo.NotaFiscalBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  If (MultiEmpresa) Then
  begin
      NotaFiscal.Sql[1]:=NotaFiscal.Sql[1]+'and (CODIGO LIKE :T)';
    NotaFiscal.ParamByName('T').asString:='%'+'-'+EmpresaAtiva;
    end;
end;

end.
