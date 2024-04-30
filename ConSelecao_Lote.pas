unit ConSelecao_Lote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCurrencyEdit, cxDBEdit, cxMaskEdit, cxButtonEdit,
  cxLabel, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, ACBrBase, ACBrETQ, System.ImageList,
  Vcl.ImgList, dxLayoutLookAndFeels, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, IBX.IBCustomDataSet,
  IBX.IBDatabase, IBX.IBQuery, Vcl.ExtCtrls, uControleWR, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrmSelecao_Lote = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    GrupoCliente: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    LblCliente: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    btnConfirmar: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    EdtLoteÎProduto_Lote: TcxButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    LblLoteÎProduto_LoteÎREFERENCIA: TcxLabel;
    dxLayoutItem3: TdxLayoutItem;
    LblLoteÎProduto_LoteÎDESCRICAO: TcxLabel;
    dxLayoutItem5: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    EdtResponsavelRazaoSocial: TcxLabel;
    dxLayoutItem6: TdxLayoutItem;
    EdtResponsavel: TcxButtonEdit;
    procedure FormCreate(Sender: TObject);
    procedure EdtLoteÎProduto_LotePropertiesChange(Sender: TObject);
    procedure EdtResponsavelÎPessoasPropertiesChange(Sender: TObject);
    procedure EdtLoteOnBeforeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState; var ADone: Boolean);
    procedure FormShow(Sender: TObject);
  private
    FControleWR: TControleWR;
    FCodProduto: string;
    FCodCliente: string;
  protected
    property CodProduto: string read FCodProduto write FCodProduto;
    property CodCliente: string read FCodCliente write FCodCliente;
  public
    class function AbreSelecaoLote(const ACodProduto, ACodCliente: string): string;
  end;

implementation

{$R *.dfm}

uses 
  UnitFuncoes, ConProduto_lote, CadProduto_Lote, Principal, StrUtils, wrFuncoes;

class function TFrmSelecao_Lote.AbreSelecaoLote(const ACodProduto, ACodCliente: string): string;
var
  AForm: TFrmSelecao_Lote;
begin
  AForm := TFrmSelecao_Lote.Create(nil);
  try
    AForm.CodProduto := ACodProduto;
    AForm.CodCliente := ACodCliente;
    if AForm.ShowModal = mrOk then
      Result := AForm.EdtLoteÎProduto_Lote.Text
    else
      Result := '';
  finally
    AForm.Free;
  end;
end;

procedure TFrmSelecao_Lote.EdtLoteOnBeforeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState; var ADone: Boolean);
var
  ACod: Integer;
begin
  case Key of
    VK_F2:
    begin
      ACod := TConsuProduto_Lote.ConsultaForm(FCodProduto, FCodCliente);
      EdtLoteÎProduto_Lote.Text := IfThen(ACod <> 0, IntToStr(ACod), '');
    end;
    VK_F3: EdtLoteÎProduto_Lote.Text := Consulta(TFrmProduto_Lote, Self);
  end;
  ADone := True;
end;

procedure TFrmSelecao_Lote.EdtLoteÎProduto_LotePropertiesChange(Sender: TObject);
var
  QuerX: TFDQuery;
  ACodLote: Integer;
begin
  ACodLote := StrToIntDef(EdtLoteÎProduto_Lote.Text, 0);
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select CODPRODUTO, PESSOA_CLIENTE_CODIGO ' +
                      'from PRODUTO_LOTE ' +
                      'where (CODIGO = ?)';
    QuerX.Params[0].AsInteger := ACodLote;
    QuerX.Open;
    EdtResponsavel.Text := QuerX.FieldByName('PESSOA_CLIENTE_CODIGO').AsString;
    if (QuerX.FieldByName('CODPRODUTO').AsString <> FCodProduto) then
    begin
      btnConfirmar.Enabled := False;
      ShowMessageWR('Esse Lote não está disponível para esse produto, favor ajustar o Lote.', MB_ICONWARNING);
    end else
      btnConfirmar.Enabled := True;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmSelecao_Lote.EdtResponsavelÎPessoasPropertiesChange(Sender: TObject);
begin
  EdtResponsavelRazaoSocial.Caption := Procura('RAZAOSOCIAL', 'PESSOAS', EdtResponsavel.Text);
end;

procedure TFrmSelecao_Lote.FormCreate(Sender: TObject);
begin
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
  FControleWR.FindComponente(EdtLoteÎProduto_Lote).OnBeforeKeyDown := EdtLoteOnBeforeKeyDown;
end;

procedure TFrmSelecao_Lote.FormShow(Sender: TObject);
begin
  EdtResponsavel.Text := FCodCliente;
end;

end.
