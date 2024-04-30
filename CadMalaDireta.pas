unit CadMalaDireta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, CadMestre, Grids, DBGrids, Mask,
  StdCtrls, DB, IBCustomDataSet, IBStoredProc, IBDatabase, ExtCtrls, DBCtrls, BiDiDBNavigator, Buttons, Gradient,
  QuickRpt, QRCtrls, cxGraphics, cxControls, dxStatusBar, cxContainer, cxEdit, cxLabel, dxSkinsCore, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.ComCtrls, cxNavigator, cxDBNavigator;

type
  TFrmMalaDireta = class(TFrmCadMestre)
    Label11: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit3: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    MaskEdit1: TMaskEdit;
    DBGrid1: TDBGrid;
    BtnMalaDiretaRetrato: TBitBtn;
    BitBtn9: TBitBtn;
    MaskEdit2: TMaskEdit;
    Panel3: TPanel;
    BtnImpPaisagem: TBitBtn;
    Clientes: TIBDataSet;
    SpeedButton1: TSpeedButton;
    BitBtn11: TBitBtn;
    BtnImpRetrato: TBitBtn;
    BtnMalaDiretaPaisagem: TBitBtn;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn9Click(Sender: TObject);
    procedure BtnMalaDiretaRetratoClick(Sender: TObject);
    procedure BtnImpPaisagemClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMalaDireta: TFrmMalaDireta;

implementation

uses
  ImpEnvelope_QR, Printers, UnitFuncoes, wrFuncoes;

{$R *.dfm}

procedure TFrmMalaDireta.BtnImpPaisagemClick(Sender: TObject);
begin
  inherited;
  with TImpriEnvelope_QR.Create(nil) do
  try
    QRLabel1.Caption := Edit3.Text;
    QRLabel2.Caption := Edit1.Text;
    QRLabel3.Caption := Edit2.Text;
    QRLabel4.Caption := Edit4.Text;
    QRLabel5.Caption := Edit5.Text;
    QRLabel6.Caption := Edit6.Text;
    QRLabel7.Caption := MaskEdit1.Text;
    if TBitBtn(Sender).Name = 'BtnImpRetrato' then
    begin
      Qr.Page.Orientation := poPortrait;
      QRLabel1.Left := QRLabel1.Left - 200;
      QRLabel2.Left := QRLabel2.Left - 200;
      QRLabel3.Left := QRLabel3.Left - 200;
      QRLabel4.Left := QRLabel4.Left - 200;
      QRLabel5.Left := QRLabel5.Left - 200;
      QRLabel6.Left := QRLabel6.Left - 200;
      QRLabel7.Left := QRLabel7.Left - 200;

      QRLabel1.Top := QRLabel1.Top - 100;
      QRLabel2.Top := QRLabel2.Top - 100;
      QRLabel3.Top := QRLabel3.Top - 100;
      QRLabel4.Top := QRLabel4.Top - 100;
      QRLabel5.Top := QRLabel5.Top - 100;
      QRLabel6.Top := QRLabel6.Top - 100;
      QRLabel7.Top := QRLabel7.Top - 100;
    end;
    Qr.PreviewModal;
  Finally
    Destroy;
  end;
end;

procedure TFrmMalaDireta.BtnMalaDiretaRetratoClick(Sender: TObject);
var
  Contador : Integer;
begin
  inherited;
  with DBGrid1 do
  begin
    if Pred(SelectedRows.Count) = -1 then
    begin
      ShowMessageWR('Favor selecionar alguma linha');
      Exit;
    end;
    for Contador := 0 to Pred(SelectedRows.Count) do
    begin
      DataSource.DataSet.Bookmark := SelectedRows[Contador];
      Clientes.Edit;
      Clientes.FieldByName('ImpEnv').AsString := 'S';
      Clientes.Post;
      with TImpriEnvelope_QR.Create(nil) do
      try
        QRLabel1.Caption := Clientes.FieldByName('RAZAOSOCIAL').AsString;
        QRLabel2.Caption := Clientes.FieldByName('CorresEndereco').AsString;
        QRLabel3.Caption := Clientes.FieldByName('CorresComplemento').AsString;
        QRLabel4.Caption := Clientes.FieldByName('CorresBairro').AsString;
        QRLabel5.Caption := Clientes.FieldByName('Cidade').AsString;
        QRLabel6.Caption := Clientes.FieldByName('Uf1').AsString;
        QRLabel7.Caption := Clientes.FieldByName('CorresCep').AsString;
        if TBitBtn(Sender).Name = 'BtnMalaDiretaRetrato' then
        begin
          Qr.Page.Orientation := poPortrait;
          QRLabel1.Left := QRLabel1.Left - 200;
          QRLabel2.Left := QRLabel2.Left - 200;
          QRLabel3.Left := QRLabel3.Left - 200;
          QRLabel4.Left := QRLabel4.Left - 200;
          QRLabel5.Left := QRLabel5.Left - 200;
          QRLabel6.Left := QRLabel6.Left - 200;
          QRLabel7.Left := QRLabel7.Left - 200;

          QRLabel1.Top := QRLabel1.Top - 100;
          QRLabel2.Top := QRLabel2.Top - 100;
          QRLabel3.Top := QRLabel3.Top - 100;
          QRLabel4.Top := QRLabel4.Top - 100;
          QRLabel5.Top := QRLabel5.Top - 100;
          QRLabel6.Top := QRLabel6.Top - 100;
          QRLabel7.Top := QRLabel7.Top - 100;
        end;
        QR.Print;
      finally
        Destroy;
      end;
    end;
    BitBtn2Click(nil);
  end;
end;

procedure TFrmMalaDireta.BitBtn9Click(Sender: TObject);
begin
  inherited;
  if ShowMessageWR('Deseja limpar todos?', MB_ICONQUESTION) = mrYes then
  begin
    Clientes.DisableControls;
    try
      Clientes.First;
      while not Clientes.Eof Do
      begin
        Clientes.Edit;
        Clientes.FieldByName('ImpEnv').AsString := '';
        Clientes.Post;
        Clientes.Next;
      end;
      BitBtn2Click(nil);
    finally
      Clientes.EnableControls;
    end;
  end;
end;

procedure TFrmMalaDireta.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if Clientes.FieldByName('ImpEnv').AsString <> '' then
    DBGrid1.Canvas.Brush.Color := $00C7C7C7;
  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);
end;

procedure TFrmMalaDireta.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key in [VK_RETURN, VK_DOWN, VK_UP]) and DBGrid1.Focused then
    Exit;
  inherited;
end;

procedure TFrmMalaDireta.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    SpeedButton1Click(Nil);
end;

procedure TFrmMalaDireta.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Clientes.Close;
  Clientes.SelectSQL[4] := 'AND(A.DATACADASTRO<= '''+FormatDateTime('MM/DD/YYYY 23:59:59',StrToDate(MaskEdit2.text))+''')';
  Clientes.Open;
end;

end.
