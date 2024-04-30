unit SATImprimirCancelamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxClasses, dxLayoutContainer, dxLayoutControl, dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  Vcl.ExtCtrls, cxLabel, Vcl.StdCtrls, cxRadioGroup, Vcl.Menus, cxButtons;

type
  TFrmSATImprimir = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    RbCancelamento: TcxRadioButton;
    LiRbCancelamento: TdxLayoutItem;
    LiRbCupom: TdxLayoutItem;
    RbCupom: TcxRadioButton;
    LbPergunta: TcxLabel;
    LiLbTitulo: TdxLayoutItem;
    PnlTitulo: TPanel;
    LbTitulo: TcxLabel;
    BtnImprimir: TcxButton;
    LiBtnImprimir: TdxLayoutItem;
    LiBtnCancelar: TdxLayoutItem;
    BtnCancelar: TcxButton;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutGroup1: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
    class function Abrir(out AImprimirCancelamento: Boolean): Boolean;
  end;

implementation

{$R *.dfm}

{ TFrmSATImprimir }

class function TFrmSATImprimir.Abrir(out AImprimirCancelamento: Boolean): Boolean;
var
  AForm: TFrmSATImprimir;
begin
  AForm := TFrmSATImprimir.Create(nil);
  try
    Result := (AForm.ShowModal = mrOk);
    AImprimirCancelamento := AForm.RbCancelamento.Checked;
  finally
    AForm.Free;
  end;
end;

end.

