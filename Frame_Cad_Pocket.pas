unit Frame_Cad_Pocket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Cad, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  System.Generics.Collections, WREventos, UCBase, cxClasses,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxCustomTileControl, dxTileControl, dxStatusBar, dxLayoutContainer,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, Vcl.StdCtrls, cxButtons, cxTextEdit,
  dxLayoutControl, dxUIAdorners, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmCad_Frame_Pocket = class(TFrmCad_Frame)
    procedure dxTileControlItem17Click(Sender: TdxTileControlItem);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure CreateDaTelaCarregaDataSets(Sender: TObject);
  private
    procedure SetarCorTilePocket(ACor: TColor);
  public
    { Public declarations }
  end;

var
  FrmCad_Frame_Pocket: TFrmCad_Frame_Pocket;

implementation

{$R *.dfm}

procedure TFrmCad_Frame_Pocket.CreateDaTelaCarregaDataSets(Sender: TObject);
begin
  inherited;
  SetarCorTilePocket(clWhite);
end;

procedure TFrmCad_Frame_Pocket.SetarCorTilePocket(ACor: TColor);
begin
  tiSLA.Style.BorderColor                 :=  ACor;
  tiSLA.Style.GradientBeginColor          :=  ACor;
  tiSLA.Style.GradientEndColor            :=  ACor;
  tiSeguidores.Style.BorderColor          :=  ACor;
  tiSeguidores.Style.GradientBeginColor   :=  ACor;
  tiSeguidores.Style.GradientEndColor     :=  ACor;
  tiConfig.Style.BorderColor              :=  ACor;
  tiConfig.Style.GradientBeginColor       :=  ACor;
  tiConfig.Style.GradientEndColor         :=  ACor;
end;

procedure TFrmCad_Frame_Pocket.dxTileControlItem17Click(
  Sender: TdxTileControlItem);
begin
  inherited;
  TForm(Self.Owner).Close;
end;

procedure TFrmCad_Frame_Pocket.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
//
end;

end.
