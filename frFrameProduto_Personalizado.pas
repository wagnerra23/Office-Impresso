unit frFrameProduto_Personalizado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrFrameMestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  uWRFormataCamposDataSet, uWRFrameEventos, Data.DB, cxClasses, dxLayoutLookAndFeels, UCBase, System.ImageList, Vcl.ImgList, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxCustomTileControl, dxTileControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFrmFrameProduto_Personalizado = class(TFrmFrameMestre)
    tcMenu: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    tciAdcionar: TdxTileControlItem;
    tcExcluir: TdxTileControlItem;
    tiAlterar: TdxTileControlItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure CarregaFrame(var AFrame: TFrmFrameProduto_Personalizado; ATileSender: TdxTileControlItem;
      ADSProduto: TDataSource);
  end;

var
  FrmFrameProduto_Personalizado: TFrmFrameProduto_Personalizado;

implementation

{$R *.dfm}

{ TFrmFrameProduto_Personalizado }

class procedure TFrmFrameProduto_Personalizado.CarregaFrame(var AFrame: TFrmFrameProduto_Personalizado; ATileSender: TdxTileControlItem; ADSProduto: TDataSource);
begin
 if AFrame = nil then
  begin
    AFrame := TFrmFrameProduto_Personalizado.Create(TWinControl(ATileSender.Owner), ADSProduto);
//    AFrame.DSProduto.DataSet := ADSProduto.DataSet;
//    AFrame.DSProduto_Grade.DataSet := ADSProduto_Grade.DataSet;
//    AFrame.DSProduto_Preco.DataSet := ADSProduto_Preco.DataSet;
    AFrame.wrFrameEventos.DoOnInicializar;
    ATileSender.DetailOptions.DetailControl:=AFrame;
  end;
//  AFrame.DSProduto.AutoEdit := ADSProduto.AutoEdit;
  AFrame.DS.AutoEdit        := ADSProduto.AutoEdit;
end;

end.
