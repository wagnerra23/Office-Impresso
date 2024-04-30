unit FrmProducaoFaturar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  dxLayoutContainer, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutControl, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxCurrencyEdit;

type
  TFormProducaoFaturar = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    ProducaoProduto: TFDQuery;
    DSProducaoProduto: TDataSource;
    ProducaoProdutoCODPRODUTO: TStringField;
    ProducaoProdutoDESCRICAO: TStringField;
    ProducaoProdutoQUANT_FATURAR: TSingleField;
    ProducaoProdutoQUANT_PREVISTA: TFloatField;
    cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1QUANT_FATURAR: TcxGridDBColumn;
    cxGrid1DBTableView1QUANT_PREVISTA: TcxGridDBColumn;
    ProducaoProdutoPRODUTOPRINCIPAL: TStringField;
    ProducaoProdutoPARENT: TIntegerField;
    cxGrid1DBTableView1PRODUTOPRINCIPAL: TcxGridDBColumn;
    cxGrid1DBTableView1PARENT: TcxGridDBColumn;
    ProducaoProdutoUSUARIO: TStringField;
    ProducaoProdutoOBSERVACAO: TStringField;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1OBSERVACAO: TcxGridDBColumn;
    procedure cxGrid1DBTableView1QUANT_FATURARValidateDrawValue(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      const AValue: Variant; AData: TcxEditValidateInfo);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure Abrir(ASender: TWinControl; ACodVenda :String);
  end;

var
  FormProducaoFaturar: TFormProducaoFaturar;

implementation

{$R *.dfm}

class procedure TFormProducaoFaturar.Abrir(ASender: TWinControl; ACodVenda :String);
var
  AFormProducaoFaturar: TFormProducaoFaturar;
begin
  AFormProducaoFaturar:= TFormProducaoFaturar.Create(ASender.Owner);
  try
    AFormProducaoFaturar.PopupMode := pmAuto;

//    PosicionarControleAbaixoDe(AFormMarkup, ASender);
    AFormProducaoFaturar.ProducaoProduto.ParamByName('CODVENDA').AsString := ACodVenda;
    AFormProducaoFaturar.ProducaoProduto.Open;
    AFormProducaoFaturar.ShowModal;

  finally
    AFormProducaoFaturar.Free;
  end;
end;

procedure TFormProducaoFaturar.cxGrid1DBTableView1QUANT_FATURARValidateDrawValue(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  const AValue: Variant; AData: TcxEditValidateInfo);
begin
  if AValue > 0 then
  begin
    AData.ErrorType := eetWarning;
    AData.ErrorText := 'Materiais a Faturar';
  end
end;

end.
