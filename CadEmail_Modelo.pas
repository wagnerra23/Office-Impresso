unit CadEmail_Modelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxLayoutControlAdapters, FireDAC.DApt,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, dxLayoutContainer, dxLayoutcxEditAdapters,
  cxMemo, cxRichEdit, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, IBX.IBCustomDataSet,
  IBX.IBStoredProc, IBX.IBDatabase, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxDBEdit, cxDBNavigator, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxStatusBar,
  cxDBRichEdit, dxSkinsCore, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, dxCoreClasses, dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.NativeApi, dxRichEdit.Types,
  dxRichEdit.Options, dxRichEdit.Control, dxRichEdit.Control.SpellChecker, dxRichEdit.Dialogs.EventArgs,
  dxHttpIndyRequest, dxBarBuiltInMenu, dxRichEdit.Platform.Win.Control, dxRichEdit.Control.Core, WREventos, Cad,
  dxDateRanges, UCHistDataset, frxClass, frxDBSet, cxMaskEdit, cxDropDownEdit, fs_iinterpreter, dxUIAdorners,
  System.Generics.Collections, cxLabel, WRButtonsEditAdd;

type
  TFrmEmail_Modelo = class(TFrmCadM)
    MemDados: TFDMemTable;
    dxLayoutItem1: TdxLayoutItem;
    RichEmail: TdxRichEditControl;
    DSDados: TDataSource;
    dxLayoutItem3: TdxLayoutItem;
    cxbForm: TcxDBComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    LiedtAssunto: TdxLayoutItem;
    edtAssunto: TcxDBTextEdit;
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure CarregaDadosModelo;
  public

  end;

implementation

uses
  UnitFuncoes, wrFuncoes;

{$R *.dfm}

procedure TFrmEmail_Modelo.btnConfirmarClick(Sender: TObject);
var
  QuerX: TFDQuery;
  AStream: TMemoryStream;
begin
  if Cadastro.FieldByName('PADRAO').AsString = 'S' then
  begin
    QuerX := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'update EMAIL_MODELO set PADRAO = null ' +
                        'where (FORM = :Form)and Not(CODIGO = :Codigo)';
      QuerX.ParamByName('Form').AsString    := cxbForm.Text;
      QuerX.ParamByName('Codigo').AsInteger := Cadastro.FieldByName('Codigo').AsInteger;
      QuerX.ExecSQL;
    finally
      QuerX.Free;
    end;
  end;
  AStream := TMemoryStream.Create;
  try
    RichEmail.DocumentModel.SaveDocument(AStream, TdxRichEditDocumentFormat.Rtf);
    AStream.Position := 0;
    TBlobField(Cadastro.FieldByName('MODELO')).LoadFromStream(AStream);
  finally
    AStream.Free;
  end;
  inherited;
end;

procedure TFrmEmail_Modelo.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CarregaDadosModelo;
end;

procedure TFrmEmail_Modelo.CarregaDadosModelo;
var
  AStream: TMemoryStream;
begin
  AStream := TMemoryStream.Create;
  try
    TBlobField(Cadastro.FieldByName('MODELO')).SaveToStream(AStream);
    AStream.Position := 0;
    RichEmail.LoadDocument(AStream, TdxRichEditDocumentFormat.Rtf);
  finally
    AStream.Free;
  end;
end;

procedure TFrmEmail_Modelo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

initialization
  RegisterClass(TFrmEmail_Modelo);

end.

