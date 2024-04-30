unit FrFrameMarkupDashBoard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  dxLayoutContainer, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl, cxGridChartView,
  cxGridDBChartView;

type
  TFrmMarkupDashBoard = class(TForm)
    DSFinanceiro1Mes: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    Financeiro1Mes: TFDQuery;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1DBChartView1DataGroup1: TcxGridDBChartDataGroup;
    dxLayoutItem2: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGridDBChartView1: TcxGridDBChartView;
    cxGridDBChartDataGroup1: TcxGridDBChartDataGroup;
    cxGridDBChartSeries1: TcxGridDBChartSeries;
    cxGridLevel1: TcxGridLevel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Financeiro1MesBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  class procedure Abrir(ASender: TWinControl);
  end;

var
  FrmMarkupDashBoard: TFrmMarkupDashBoard;

implementation

{$R *.dfm}

uses
  DateUtils, UnitFuncoes;

class procedure TFrmMarkupDashBoard.Abrir(ASender: TWinControl);
var
  AFormMarkupDashBoard: TFrmMarkupDashBoard;
begin
  AFormMarkupDashBoard:= TFrmMarkupDashBoard.Create(ASender.Owner);
  try
    AFormMarkupDashBoard.PopupMode := pmAuto;
    PosicionarControleAbaixoDe(AFormMarkupDashBoard, ASender);
    AFormMarkupDashBoard.ShowModal;
  finally
    AFormMarkupDashBoard.Free;
  end;
end;


procedure TFrmMarkupDashBoard.Financeiro1MesBeforeOpen(DataSet: TDataSet);
begin
  Financeiro1Mes.ParamByName('D1').Value := StartOfTheMonth(IncMonth(Now, -1));
  Financeiro1Mes.ParamByName('D2').Value := StartOfTheMonth(Now);
end;

procedure TFrmMarkupDashBoard.FormCreate(Sender: TObject);
begin
  Financeiro1Mes.Open;
end;

end.
