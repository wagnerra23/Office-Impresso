unit AgendaHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ConMestre, DB, IBCustomDataSet,
  ExtCtrls, ComCtrls, StdCtrls, cxButtons, cxSpinEdit, cxDBEdit, cxTimeEdit, cxCheckBox, cxGroupBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Buttons, Menus, IBDatabase, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxMemo, cxButtonEdit, Datasnap.DBClient, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  dxPSCore, dxPScxCommon, cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxCurrencyEdit,
  dxGDIPlusClasses, cxImage, cxTextEdit, cxLabel, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Gradient;

type
  TFrmAgendaHistorico = class(TConsuMestre)
    Panel2: TPanel;
    pnlButtons: TPanel;
    pnlThreeButtons: TPanel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    btnDelete: TcxButton;
    pnlRecurrence: TPanel;
    btnRecurrence: TcxButton;
    Panel3: TPanel;
    btnFaturar_Cancela: TcxButton;
    cxButton1: TcxButton;
    btnFaturar: TcxButton;
    pnlInformation: TPanel;
    Bevel6: TBevel;
    LbDVD: TLabel;
    btnFindTime: TcxButton;
    cxGroupBox1: TcxGroupBox;
    lbInformation: TLabel;
    pnlCaption: TPanel;
    lbSubject: TLabel;
    lbLocation: TLabel;
    lbLabel: TLabel;
    SpeedButton1: TSpeedButton;
    pnlTime: TPanel;
    Bevel4: TBevel;
    lbStartTime: TLabel;
    lbEndTime: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    cbAllDayEvent: TcxCheckBox;
    teStart: TcxTimeEdit;
    teEnd: TcxTimeEdit;
    pnlRecurrenceInfo: TPanel;
    Bevel7: TBevel;
    lbRecurrence: TLabel;
    lbRecurrencePattern: TLabel;
    pnlPlaceHolder: TPanel;
    pnlReminder: TPanel;
    cbReminder: TcxCheckBox;
    Panel4: TPanel;
    Bevel3: TBevel;
    pnlShowTimeAs: TPanel;
    lbShowTimeAs: TLabel;
    cxButton2: TcxButton;
    pnlMessage: TPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    AlterarPreco: TLabel;
    pnlResource: TPanel;
    lbResource: TLabel;
    Bevel5: TBevel;
    pnlTaskComplete: TPanel;
    Bevel8: TBevel;
    lbTaskComplete: TLabel;
    lbTaskStatus: TLabel;
    seTaskComplete: TcxSpinEdit;
    Nome_Medico: TLabel;
    Panel11: TPanel;
    Label1: TLabel;
    Bevel9: TBevel;
    Label2: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Agenda_Historico: TIBDataSet;
    cxButtonEdit3: TcxDBButtonEdit;
    cxButtonEdit4: TcxDBButtonEdit;
    cxButtonEdit5: TcxDBButtonEdit;
    cxButtonEdit1: TcxDBButtonEdit;
    teSubject: TcxDBTextEdit;
    teLocation: TcxDBTextEdit;
    Edit_Medico: TcxDBTextEdit;
    Edit_Convenio: TcxDBTextEdit;
    Edit_Exame: TcxDBTextEdit;
    cxTextEdit1: TcxDBTextEdit;
    cxCurrencyEdit_Valor: TcxDBTextEdit;
    meMessage: TcxDBMemo;
    Edit_CodLaudo: TcxDBTextEdit;
    Edit_CodFinanceiro: TcxDBTextEdit;
    Edit_Usuario: TcxDBTextEdit;
    Edit_CodEmpresa: TcxDBTextEdit;
    cbxTaskStatus: TcxDBComboBox;
    deStart: TcxDBComboBox;
    deEnd: TcxDBComboBox;
    DateEdit_Fatura: TcxDBComboBox;
    icbLabel: TcxDBComboBox;
    icbShowTimeAs: TcxDBComboBox;
    cbReminderMinutesBeforeStart: TcxDBComboBox;
    cbResources: TcxDBComboBox;
    Agenda_HistoricoCODIGO: TIBStringField;
    Agenda_HistoricoPARENTID: TBlobField;
    Agenda_HistoricoCODAGENDA_TITULO: TIntegerField;
    Agenda_HistoricoCAPTION: TIBStringField;
    Agenda_HistoricoDT_INICIO: TDateTimeField;
    Agenda_HistoricoDT_FIM: TDateTimeField;
    Agenda_HistoricoIMAGEMINDEX: TIntegerField;
    Agenda_HistoricoCOLOR: TIntegerField;
    Agenda_HistoricoIMAGE: TIntegerField;
    Agenda_HistoricoTAREFA_COMPLETA: TIntegerField;
    Agenda_HistoricoTAREFA_INDEX: TIntegerField;
    Agenda_HistoricoSTATUS: TIntegerField;
    Agenda_HistoricoEVENTO_TIPO: TIntegerField;
    Agenda_HistoricoRECURRENCE_INDEX: TIntegerField;
    Agenda_HistoricoREMINDER_DATE: TDateTimeField;
    Agenda_HistoricoREMINDER_MINUTES_BEFORE_START: TFloatField;
    Agenda_HistoricoREMINDER_RESOURCES_DATA: TDateTimeField;
    Agenda_HistoricoOPTIONS: TIntegerField;
    Agenda_HistoricoLOCATION: TIBStringField;
    Agenda_HistoricoRECURRENCE_INFO: TMemoField;
    Agenda_HistoricoTELEFONE: TIBStringField;
    Agenda_HistoricoTAREFA_STATUS: TIntegerField;
    Agenda_HistoricoTAREFA_LINK: TBlobField;
    Agenda_HistoricoVALOR: TFloatField;
    Agenda_HistoricoCODFINANCEIRO: TIBStringField;
    Agenda_HistoricoCODEMPRESA: TIBStringField;
    Agenda_HistoricoDT_FATURAMENTO: TDateTimeField;
    Agenda_HistoricoCODUSUARIO: TIBStringField;
    Agenda_HistoricoCODAGENDA: TIntegerField;
    Agenda_HistoricoDT_ALTERACAO: TDateTimeField;
    cxGrid1DBTableView1CAPTION: TcxGridDBColumn;
    cxGrid1DBTableView1CODCLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    SpeedButton2: TSpeedButton;
    ibstrngfldAgenda_HistoricoFUNCIONARIO: TIBStringField;
    ibstrngfldAgenda_HistoricoSOLICITANTE: TIBStringField;
    ibstrngfldAgenda_HistoricoCODVENDA: TIBStringField;
    Agenda_HistoricoUSUARIO: TIBStringField;
    ibstrngfldAgenda_HistoricoCODAGENDA_FAQ: TIBStringField;
    ibstrngfldAgenda_HistoricoAGENDA_FAQ: TIBStringField;
    ibstrngfldAgenda_HistoricoCODEQUIPAMENTO: TIBStringField;
    ibstrngfldAgenda_HistoricoEQUIPAMENTO: TIBStringField;
    ibstrngfldAgenda_HistoricoOCORRENCIA: TIBStringField;
    Agenda_HistoricoPESSOA_CLIENTE_CODIGO: TIBStringField;
    Agenda_HistoricoPESSOA_CLIENTE_TIPO: TIBStringField;
    Agenda_HistoricoPESSOA_CLIENTE_SEQUENCIA: TIntegerField;
    Agenda_HistoricoPESSOA_FUNCIONARIO_CODIGO: TIBStringField;
    Agenda_HistoricoPESSOA_FUNCIONARIO_TIPO: TIBStringField;
    Agenda_HistoricoPESSOA_FUNCIONARIO_SEQUENCIA: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgendaHistorico: TFrmAgendaHistorico;

implementation

{$R *.dfm}

procedure TFrmAgendaHistorico.Edit1Change(Sender: TObject);
begin
//  inherited;
end;

procedure TFrmAgendaHistorico.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;
  If Key=38 Then cxGrid1DBTableView1.Controller.GoToPrev(True,True);
  If Key=40 Then cxGrid1DBTableView1.Controller.GoToNext(True,True);
  if Key=VK_F1 then SpeedButton2.OnClick(nil);
end;

procedure TFrmAgendaHistorico.FormCreate(Sender: TObject);
begin
//  inherited;
end;

procedure TFrmAgendaHistorico.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Agenda_Historico.Close;
  Agenda_Historico.SelectSQL[3]:=' Where (CAPTION like '''+'%'+UpperCase(Edit1.Text)+'%'+''')'+
                                  'OR (CODCLIENTE like '''+'%'+UpperCase(Edit1.Text)+'%'+''')';
  Agenda_Historico.Open;
end;

end.
