unit CadProduto_Markup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, dxLayoutControlAdapters, dxLayoutContainer, dxLayoutcxEditAdapters,
  UCBase, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList,
  IBX.IBCustomDataSet, IBX.IBStoredProc, IBX.IBDatabase, Vcl.ExtCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxDBEdit,
  cxDBNavigator, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxStatusBar, dxSkinsCore, dxDateRanges, UCHistDataset,
  WREventos, Cad, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, cxMaskEdit, cxDropDownEdit, dxUIAdorners, cxButtonEdit, fs_iinterpreter,
  System.Generics.Collections, cxLabel;

type
  TFrmProduto_Markup = class(TFrmCadM)
    edtPerc_Custo_Fixo: TcxDBTextEdit;
    liedtPerc_Custo_Fixo: TdxLayoutItem;
    liedtPerc_Custo_Financeiro: TdxLayoutItem;
    edtPerc_Custo_Financeiro: TcxDBTextEdit;
    liedtPerc_Lucro_Desejado: TdxLayoutItem;
    edtPerc_Lucro_Desejado: TcxDBTextEdit;
    liedtPerc_Custo_Variavel: TdxLayoutItem;
    edtPerc_Custo_Variavel: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    btnMenu: TcxButton;
    popMenu: TPopupMenu;
    Realocaresteslanamentos1: TMenuItem;
    AplicarClassificaodaDRE1: TMenuItem;
    N3: TMenuItem;
    GrupoIndices: TdxLayoutGroup;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    procedure btnMenuClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UnitFuncoes, StrUtils, FrFrameMarkupDashBoard;

//procedure TFrmProduto_Markup.btnAnalizarFinanceiroClick(Sender: TObject);
//var
//  QuerX, QuerY :TFDQuery;
//begin
//  inherited;
//  QuerX := GeraFDQuery(TransaFD);
//  QuerY := GeraFDQuery(TransaFD);
//
//  QuerX.sql.text := 'select sum(f.valor), pc.tipo_custo from financeiro f' + #13#10 +
//                     'left join planocontas pc on pc.codigo = f.codplanocontas' + #13#10 +
//                     'where f.status like ''ATIVO%'' and f.tipo in (''PAGA'', ''A PAGAR'') and (f.emissao between :D1 and :D2)' + #13#10 +
//                     'group by 2';
//
//
//  QuerY.sql.text := 'select P.CODPRODUTO_GRUPO, PG.DESCRICAO, sum(VP.QUANT) as VENDAS, ' +
//                             'sum((VP.VALOR * VP.QUANT) - coalesce(VP.VDESC, 0) + coalesce(VP.VOUTRO, 0)) as Total, ' +
//                             'sum(v.total) as TotalVenda ' +
//                      'from VENDA V ' +
//                      'left join VENDA_PRODUTO VP on (V.CODIGO = VP.CODVENDA) ' +
//                      'left join PRODUTO P on (P.CODIGO = VP.CODPRODUTO) ' +
//                      'left join PRODUTO_GRUPO PG on (P.CODPRODUTO_GRUPO = PG.CODIGO) and (PG.CODNF_NATUREZA_OPERACAO = 0) ' +
//                      'where V.STATUS like ''ATIVO%'' ' +
//                            'and (V.DT_FATURAMENTO is not null) ' +
//                            'and (VP.PARENT is null) ' +
//                            'and (V.DT_EMISSAO between :DTINICIO and :DTFIM) ' +
//                            'group by 1, 2 order by 4 DESC ';
//
//
//  QuerX.ParamByName('D1').Value :=
//  QuerX.ParamByName('D2').Value :=
//
//  QuerX.Open;
//  QuerY.Open;
//
//  VerificaSePodeAlteraDataSet(Cadastro);
//  while not QuerX.Eof do
//  begin
//    case AnsiIndexStr(QuerX.FieldByName('TIPO_CUSTO').AsString,['FIXO', 'VARIAVEL']) of
//      0:  Cadastro.FieldByName('PERC_CUSTO_FIXO').AsFloat := ((QuerX.FieldByName('VALOR').AsFloat / QuerY.FieldByName('TotalVenda').AsFloat)*100);
//
//      1:  Cadastro.FieldByName('PERC_CUSTO_VARIAVEL').AsFloat := ((QuerX.FieldByName('VALOR').AsFloat / QuerY.FieldByName('TotalVenda').AsFloat)*100);
//
//    end;
//    QuerX.Post;
//    QuerX.Next;
//  end;
//end;

procedure TFrmProduto_Markup.btnMenuClick(Sender: TObject);
begin
  inherited;
  popMenu.PopupOnMouse;
end;

procedure TFrmProduto_Markup.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFrmMarkupDashBoard.Abrir(TWinControl(Sender));
end;

initialization
  RegisterClass(TFrmProduto_Markup);

end.
