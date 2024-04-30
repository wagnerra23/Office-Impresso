unit FrmNFeventos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  dxLayoutContainer, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutControl, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxButtonEdit, dxLayoutLookAndFeels;

type
  TFormNFeventos = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    DS: TDataSource;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CODEMPRESA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1ARQUIVO_XML_ENVIO: TcxGridDBColumn;
    cxGrid1DBTableView1ARQUIVO_XML_RETORNO: TcxGridDBColumn;
    cxGrid1DBTableView1NF_CHAVE: TcxGridDBColumn;
    cxGrid1DBTableView1NF_NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1NF_SERIE: TcxGridDBColumn;
    cxGrid1DBTableView1NF_LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1NF_ID_NOTA: TcxGridDBColumn;
    cxGrid1DBTableView1NF_PROTOCOLO: TcxGridDBColumn;
    cxGrid1DBTableView1NF_TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1NF_LINK: TcxGridDBColumn;
    cxGrid1DBTableView1NF_CNPJCPF_EMITENTE: TcxGridDBColumn;
    cxGrid1DBTableView1NF_AMBIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1NF_RAZAOSOCIAL_EMITENTE: TcxGridDBColumn;
    cxGrid1DBTableView1NF_MANIFESTO: TcxGridDBColumn;
    cxGrid1DBTableView1NF_DT_EMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1NF_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1NF_SITUACAO: TcxGridDBColumn;
    cxGrid1DBTableView1NF_DESC_SITUACAO: TcxGridDBColumn;
    cxGrid1DBTableView1DT_RECEBIMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1SUCESSO: TcxGridDBColumn;
    cxGrid1DBTableView1NSU: TcxGridDBColumn;
    cxGrid1DBTableView1SCHEMA: TcxGridDBColumn;
    cxGrid1DBTableView1ATIVO: TcxGridDBColumn;
    cxGrid1DBTableView1CODVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_OPERACAO: TcxGridDBColumn;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    cxGrid1DBTableView1NF_ERRO: TcxGridDBColumn;
    cxGrid1DBTableView1NF_CODERRO: TcxGridDBColumn;
    cxGrid1DBTableView1NF_CORRECAO: TcxGridDBColumn;
    procedure cxGrid1DBTableView1ARQUIVO_XML_ENVIOPropertiesButtonClick
      (Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1ARQUIVO_XML_RETORNOPropertiesButtonClick
      (Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure Abrir(ASender: TWinControl; ANotaFiscalEventos: TFDQuery);
  end;

var
  FormNFeventos: TFormNFeventos;

implementation

uses
  wrFuncoes_Office, UnitFuncoes;
{$R *.dfm}

class procedure TFormNFeventos.Abrir(ASender: TWinControl;
  ANotaFiscalEventos: TFDQuery);
var
  AFormNFeventos: TFormNFeventos;
begin
  AFormNFeventos := TFormNFeventos.Create(ASender.Owner);
  try
    AFormNFeventos.PopupMode := pmAuto;
    AFormNFeventos.DS.DataSet := ANotaFiscalEventos;
    AFormNFeventos.DS.DataSet.Open;
    // AFormNFeventos.DS.AutoEdit:= AFormNFeventos.WRCalc.DSProduto.AutoEdit;
    PosicionarControleAbaixoDe(AFormNFeventos, ASender);
    AFormNFeventos.ShowModal;
  finally
    AFormNFeventos.Free;
  end;
end;

procedure TFormNFeventos.
  cxGrid1DBTableView1ARQUIVO_XML_ENVIOPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  AStream: TMemoryStream;
  ANome: String;
begin
  // AStream := TMemoryStream.Create;
  // try
  // TBlobField(ANotaFiscal.FieldByName('ARQUIVO_XML_ENVIO')).SaveToStream(AStream);
  // TFrmNFSe.LerXMLFormatoWRFromStream(ACBrNFSeX1, AStream);
  // finally
  // AStream.Free;
  // end;

  ANome := GetDirTemp + DS.DataSet.FieldByName('TIPO').AsString +
    DS.DataSet.FieldByName('NF_PROTOCOLO').AsString + '.xml';
  TBlobField(DS.DataSet.FieldByName('ARQUIVO_XML_ENVIO')).SaveToFile(ANome);
  AbrirArquivo(ANome);
end;

procedure TFormNFeventos.
  cxGrid1DBTableView1ARQUIVO_XML_RETORNOPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  ANome: String;
begin
  ANome := GetDirTemp + DS.DataSet.FieldByName('TIPO').AsString +
    DS.DataSet.FieldByName('NF_PROTOCOLO').AsString + '.xml';
  TBlobField(DS.DataSet.FieldByName('ARQUIVO_XML_RETORNO')).SaveToFile(ANome);
  AbrirArquivo(ANome);
end;

end.
