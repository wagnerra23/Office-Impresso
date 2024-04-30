unit FrmDataCentroCusto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxLabel, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxClasses, dxLayoutControl;

type
  TFormDataCentroCusto = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDateEdit1: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxDateEdit2: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    labelmensagem: TcxLabel;
    dxLayoutItem5: TdxLayoutItem;
  private
    { Private declarations }
  public
    class procedure Abrir(ASender: TWinControl; var ADT_Inicio,
      ADT_Fim: TDateTime); static;
    { Public declarations }
  end;

var
  FormDataCentroCusto: TFormDataCentroCusto;

implementation

{$R *.dfm}

class procedure TFormDataCentroCusto.Abrir(ASender: TWinControl; Var ADT_Inicio, ADT_Fim: TDateTime);
var
  AFormDataCentroCusto: TFormDataCentroCusto;
begin
  AFormDataCentroCusto:= TFormDataCentroCusto.Create(ASender.Owner);
  try
    AFormDataCentroCusto.PopupMode := pmAuto;
//    PosicionarControleAbaixoDe(AFormDataCentroCusto, ASender);
    AFormDataCentroCusto.ShowModal;
    if AFormDataCentroCusto.ModalResult = mrOk then
    begin
      ADT_Inicio := AFormDataCentroCusto.cxDateEdit1.Date;
      ADT_Fim := AFormDataCentroCusto.cxDateEdit2.Date;
    end;
  finally
    AFormDataCentroCusto.Free;
  end;
end;

end.
