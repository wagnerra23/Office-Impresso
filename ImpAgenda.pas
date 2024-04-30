unit ImpAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, frxClass, DB, IBX.IBCustomDataSet,
  IBX.IBQuery, frxDBSet, cxGraphics, cxLookAndFeelPainters, Menus, StdCtrls, cxButtons, cxCalendar, ExtCtrls,
  UnitFuncoes, cxCheckListBox, Buttons, UCBase, ComCtrls, cxControls, cxLookAndFeels, cxContainer, cxEdit, dxCore,
  cxDateUtils, dxSkinsCore, cxTextEdit, cxMaskEdit, cxDropDownEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxDateProfileButton, cxCustomListBox, wrConversao, cxCheckBox, WREventos, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, System.Generics.Collections;

type
  TImpriAgenda = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    QuerAgenda: TIBQuery;
    GroupBox1: TGroupBox;
    EdtDtInicio: TcxDateEdit;
    EdtDtFim: TcxDateEdit;
    Label1: TLabel;
    BtnImprimir: TcxButton;
    Bevel1: TBevel;
    QuerAgendaCODIGO: TIBStringField;
    QuerAgendaPROTOCOLO: TIBStringField;
    QuerAgendaSEQUENCIA: TIntegerField;
    QuerAgendaCODAGENDA_TITULO: TIntegerField;
    QuerAgendaCAPTION: TIBStringField;
    QuerAgendaDT_INICIO: TDateTimeField;
    QuerAgendaDT_FIM: TDateTimeField;
    QuerAgendaIMAGEMINDEX: TIntegerField;
    QuerAgendaCOLOR: TIntegerField;
    QuerAgendaIMAGE: TIntegerField;
    QuerAgendaTAREFA_COMPLETA: TIntegerField;
    QuerAgendaTAREFA_INDEX: TIntegerField;
    QuerAgendaSTATUS: TIntegerField;
    QuerAgendaEVENTO_TIPO: TIntegerField;
    QuerAgendaRECURRENCE_INDEX: TIntegerField;
    QuerAgendaREMINDER_DATE: TDateTimeField;
    QuerAgendaOPTIONS: TIntegerField;
    QuerAgendaLOCATION: TIBStringField;
    QuerAgendaRECURRENCE_INFO: TBlobField;
    QuerAgendaTELEFONE: TIBStringField;
    QuerAgendaTAREFA_STATUS: TIntegerField;
    QuerAgendaTAREFA_LINK: TBlobField;
    QuerAgendaCODFINANCEIRO: TIBStringField;
    QuerAgendaCODEMPRESA: TIBStringField;
    QuerAgendaDT_FATURAMENTO: TDateTimeField;
    QuerAgendaBLOQUEIO: TIBStringField;
    QuerAgendaFUNCIONARIO: TIBStringField;
    QuerAgendaCODEQUIPAMENTO: TIBStringField;
    QuerAgendaEQUIPAMENTO: TIBStringField;
    QuerAgendaSOLICITANTE: TIBStringField;
    QuerAgendaCODVENDA: TIBStringField;
    QuerAgendaOCORRENCIA: TIBStringField;
    QuerAgendaVALOR: TFloatField;
    QuerAgendaDT_EMISSAO: TDateTimeField;
    QuerAgendaPRIORIDADE: TIntegerField;
    QuerAgendaDT_ALTERACAO: TDateTimeField;
    QuerAgendaCODVENDA_PRODUTO: TIntegerField;
    QuerAgendaCODPRODUTO_GRUPO_WORKFLOW: TIntegerField;
    QuerAgendaOBS_FINALIZACAO: TIBStringField;
    QuerAgendaATIVO: TIBStringField;
    QuerAgendaCODSETOR: TIntegerField;
    QuerAgendaLIDO: TSmallintField;
    QuerAgendaCODUSUARIO_RESPONSAVEL: TIntegerField;
    QuerAgendaCODPRODUTO: TIBStringField;
    QuerAgendaPRODUTO: TIBStringField;
    QuerAgendaCODUSUARIO_CRIADOR: TIntegerField;
    QuerAgendaCODUSUARIO_ALTERADO: TIntegerField;
    QuerAgendaPARENT_ID: TIBStringField;
    QuerAgendaREMINDER_MINUTES: TIntegerField;
    QuerAgendaGROUP_ID: TIBStringField;
    QuerAgendaREMINDER_RESOURCES_DATA: TBlobField;
    QuerAgendaCODAGENDA_COMPOSICAO: TIBStringField;
    QuerAgendaQUANT: TFloatField;
    QuerAgendaLARG: TFloatField;
    QuerAgendaCOMP: TFloatField;
    QuerAgendaESPESSURA: TFloatField;
    QuerAgendaQTDADEPECA: TFloatField;
    QuerAgendaCODCOMPOSICAO: TIntegerField;
    QuerAgendaCOMPOSICAO: TIBStringField;
    QuerAgendaPATH: TIBStringField;
    QuerAgendaCODSTATUS: TIntegerField;
    QuerAgendaLOCAL: TIBStringField;
    QuerAgendaMENSALIDADE: TFloatField;
    QuerAgendaCODCONDICAOPAGTO: TIntegerField;
    QuerAgendaTIPO_AGENDAMENTO: TSmallintField;
    QuerAgendaRAZAOSOCIAL: TIBStringField;
    QuerAgendaFANTASIA: TIBStringField;
    QuerAgendaTIPO: TIBStringField;
    QuerAgendaFONE1: TIBStringField;
    QuerAgendaEMAIL: TIBStringField;
    QuerAgendaCONDICAOPAGTO: TIBStringField;
    QuerAgendaNomeCor: TStringField;
    BtnPCDesmarcarTodos: TBitBtn;
    BtnPCMarcarTodos: TBitBtn;
    BtnRespNone: TBitBtn;
    BtnRespAll: TBitBtn;
    GroupBox2: TGroupBox;
    LstCores: TcxCheckListBox;
    GroupBox3: TGroupBox;
    LstResponsaveis: TcxCheckListBox;
    frxDBDataset2: TfrxDBDataset;
    QuerGrafico: TIBQuery;
    QuerGraficoSUM: TFloatField;
    QuerGraficoCOLOR: TIntegerField;
    QuerGraficoCODUSUARIO_RESPONSAVEL: TIntegerField;
    BtnFechar: TcxButton;
    QuerGraficoNomeCor: TStringField;
    QuerGrafico2: TIBQuery;
    frxDBDataset3: TfrxDBDataset;
    QuerGrafico2USUARIO: TIBStringField;
    QuerGrafico2VALOR: TFloatField;
    UCControls1: TUCControls;
    LbUCResponsavel: TLabel;
    MenuImpressao: TPopupMenu;
    Simplificado1: TMenuItem;
    Completo1: TMenuItem;
    QuerAgendaPESSOA_CLIENTE_CODIGO: TIBStringField;
    QuerAgendaPESSOA_CLIENTE_TIPO: TIBStringField;
    QuerAgendaPESSOA_CLIENTE_SEQUENCIA: TIntegerField;
    QuerAgendaPESSOA_FUNCIONARIO_CODIGO: TIBStringField;
    QuerAgendaPESSOA_FUNCIONARIO_TIPO: TIBStringField;
    QuerAgendaPESSOA_FUNCIONARIO_SEQUENCIA: TIntegerField;
    QuerAgendaACTUAL_START: TIntegerField;
    QuerAgendaACTUAL_FINISH: TIntegerField;
    QuerAgendaGANTT_DT_INICIO: TDateTimeField;
    QuerAgendaGANTT_DT_FIM: TDateTimeField;
    QuerAgendaGANTT_ACTUAL_START: TIntegerField;
    QuerAgendaGANTT_ACTUAL_FINISH: TIntegerField;
    MTCores: TFDMemTable;
    frxDBCores: TfrxDBDataset;
    MTCoresDESCRICAO: TStringField;
    MTCoresCODIGO: TIntegerField;
    MTCoresTOTAL: TIntegerField;
    cxDateProfileButton1: TcxDateProfileButton;
    WREventosCadastro1: TWREventosCadastro;
    procedure FormCreate(Sender: TObject);
    procedure QuerAgendaCalcFields(DataSet: TDataSet);
    procedure LstCoresDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure BtnPCMarcarTodosClick(Sender: TObject);
    procedure BtnPCDesmarcarTodosClick(Sender: TObject);
    procedure BtnRespAllClick(Sender: TObject);
    procedure BtnRespNoneClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure QuerGraficoCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Simplificado1Click(Sender: TObject);
    procedure Completo1Click(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure QuerAgendaBeforeOpen(DataSet: TDataSet);
    procedure QuerGraficoBeforeOpen(DataSet: TDataSet);
    procedure QuerGrafico2BeforeOpen(DataSet: TDataSet);
    procedure QuerAgendaAfterOpen(DataSet: TDataSet);
    procedure WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
  private
    { Private declarations }
    procedure InicializaCores;
    procedure InicializaResponsaveis;
    procedure MudaChecked(ACheckListBox: TcxCheckListBox; AState: TcxCheckBoxState);
    function GetNomeCor(ACor: TColor): String;
    procedure Imprimir(ACompleto: Boolean);
  public
    { Public declarations }
  end;

var
  ImpriAgenda: TImpriAgenda;

implementation

{$R *.dfm}

uses
  cxSchedulerUtils, DateUtils, DataModuleImpressao;

procedure TImpriAgenda.BtnRespNoneClick(Sender: TObject);
begin
  MudaChecked(LstResponsaveis, cbsUnchecked);
end;

procedure TImpriAgenda.Completo1Click(Sender: TObject);
begin
  Imprimir(True);
end;

procedure TImpriAgenda.BtnRespAllClick(Sender: TObject);
begin
  MudaChecked(LstResponsaveis, cbsChecked);
end;

procedure TImpriAgenda.BtnImprimirClick(Sender: TObject);
begin
  Imprimir(False);
end;

procedure TImpriAgenda.BtnPCDesmarcarTodosClick(Sender: TObject);
begin
  MudaChecked(LstCores, cbsUnchecked);
end;

procedure TImpriAgenda.BtnPCMarcarTodosClick(Sender: TObject);
begin
  MudaChecked(LstCores, cbsChecked);
end;

procedure TImpriAgenda.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TImpriAgenda.FormCreate(Sender: TObject);
begin
  InicializaCores;
  InicializaResponsaveis;
  EdtDtInicio.Date := StartOfTheMonth(Now);
  EdtDtFim.Date    := EndOfTheMonth(EdtDtInicio.Date);
  BtnPCMarcarTodosClick(nil);
end;

procedure TImpriAgenda.FormShow(Sender: TObject);
begin
  LstResponsaveis.ReadOnly := not LbUCResponsavel.Enabled;
  BtnRespNone.Enabled      := LbUCResponsavel.Enabled;
  BtnRespAll.Enabled       := LbUCResponsavel.Enabled;
  LbUCResponsavel.Visible  := False;
end;

function TImpriAgenda.GetNomeCor(ACor: TColor): String;
var
  I : Integer;
begin
  for I := 0 to EventLabels.Count - 1 do
  begin
    if ACor = EventLabels[I].Color then
    begin
      Result := EventLabels[I].Caption;
      if not MTCores.Locate('CODIGO', EventLabels[I].Color, []) then
      begin
        MTCores.Insert;
        MTCoresCODIGO.AsInteger   := EventLabels[I].Color;
        MTCoresDESCRICAO.AsString := EventLabels[I].Caption;
        MTCoresTOTAL.AsInteger    := 0;
        MTCores.Post;
      end;
      Break;
    end;
  end;
end;

procedure TImpriAgenda.Imprimir(ACompleto: Boolean);
var
  I : Integer;
  ASQL, AListaCor, AListaResponsavel : String;
begin
  try
    BtnImprimir.Enabled := False;
    ASQL := 'null';
    for I := 0 to LstCores.Items.Count - 1 do
    begin
      if LstCores.Items[i].State = cbsChecked then
        ASQL := ASQL + ', ' + IntToStr(Integer(LstCores.Items[i].ItemObject));
    end;
    QuerAgenda.SQL[7] := 'and (A.COLOR in (' + ASQL + '))';

    ASQL := 'null';
    for I := 0 to LstResponsaveis.Items.Count - 1 do
    begin
      if LstResponsaveis.Items[i].State = cbsChecked then
        ASQL := ASQL + ', ' + IntToStr(Integer(LstResponsaveis.Items[i].ItemObject));
    end;
    QuerAgenda.SQL[8]  := 'and (CODUSUARIO_RESPONSAVEL in (' + ASQL + '))';
    {$IFDEF WR2}
    QuerAgenda.SQL[11] := 'order by A.COLOR, A.CAPTION';
    {$ELSE}
    QuerAgenda.SQL[11] := 'order by A.DT_EMISSAO';
    {$ENDIF}

    QuerAgenda.ParamByName('DtInicio').AsDateTime := StartOfTheDay(EdtDtInicio.Date);
    QuerAgenda.ParamByName('DtFim').AsDateTime    := EndOfTheDay(EdtDtFim.Date);
    QuerAgenda.Open;

    QuerGrafico.SQL[4] := QuerAgenda.SQL[7];
    QuerGrafico.SQL[5] := QuerAgenda.SQL[8];
    QuerGrafico.ParamByName('DtInicio').AsDateTime := StartOfTheDay(EdtDtInicio.Date);
    QuerGrafico.ParamByName('DtFim').AsDateTime    := EndOfTheDay(EdtDtFim.Date);
    QuerGrafico.Open;

    QuerGrafico2.SQL[5] := QuerAgenda.SQL[7];
    QuerGrafico2.SQL[6] := QuerAgenda.SQL[8];
    QuerGrafico2.ParamByName('DtInicio').AsDateTime := StartOfTheDay(EdtDtInicio.Date);
    QuerGrafico2.ParamByName('DtFim').AsDateTime    := EndOfTheDay(EdtDtFim.Date);
    QuerGrafico2.Open;
    if ACompleto then
      DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0023'))
    else
      DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0024'));
  finally
    QuerGrafico.Close;
    QuerGrafico2.Close;
    QuerAgenda.Close;
    QuerAgenda.SQL[8] := '';
    QuerAgenda.SQL[7] := '';
    BtnImprimir.Enabled := True;
    MTCores.EmptyDataSet;
  end;
end;

procedure TImpriAgenda.InicializaCores;
var
  I: Integer;
  AItem : TcxCheckListBoxItem;
begin
  for I := 0 to EventLabels.Count - 1 do
  begin
    AItem := LstCores.Items.Add;
    AItem.Text := EventLabels[I].Caption;
    //Usado a propriedade ItemObject que armazena um objeto para cada item para armazenar a cor como integer
    AItem.ItemObject := TObject(Integer(EventLabels[I].Color));
  end;
end;

procedure TImpriAgenda.InicializaResponsaveis;
var
  QuerX : TIBQuery;
  AItem : TcxCheckListBoxItem;
begin
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select CODIGO, USUARIO from USUARIO where (INATIVO = 0) order by USUARIO';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      if LbUCResponsavel.Enabled or (QuerX.FieldByName('CODIGO').AsInteger = CodigoUsuario) then
      begin
        AItem := LstResponsaveis.Items.Add;
        AItem.Text       := QuerX.FieldByName('USUARIO').AsString;
        AItem.ItemObject := TObject(QuerX.FieldByName('CODIGO').AsInteger);
        if QuerX.FieldByName('CODIGO').AsInteger = CodigoUsuario then
          AItem.State := cbsChecked;
      end;
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TImpriAgenda.LstCoresDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  ACanvas: TcxCanvas;
  AText: string;
  ATextRect: TRect;
  AListBox: TcxCheckListBox;
begin
  if (EventLabels[Index].Color <> clNone) and (EventLabels[Index].Color <> clDefault) then
  begin
    AListBox := (Control as TcxCheckListBox);
    ACanvas  := AListBox.InnerCheckListBox.Canvas;
    ACanvas.Brush.Color := EventLabels[Index].Color;
    ATextRect  := Rect;
    InflateRect(Rect, -1, -1);
    ACanvas.FillRect(Rect);
    AText          := AListBox.Items[Index].Text;
    ATextRect      := Rect;
    ATextRect.Left := ATextRect.Left + 2;
    ACanvas.DrawTexT(AText, ATextRect, 0);
  end;
end;

procedure TImpriAgenda.MudaChecked(ACheckListBox: TcxCheckListBox; AState: TcxCheckBoxState);
var
  I : Integer;
begin
  for I := 0 to ACheckListBox.Items.Count - 1 do
    ACheckListBox.Items[i].State := AState;
end;

procedure TImpriAgenda.QuerAgendaAfterOpen(DataSet: TDataSet);
begin
  QuerAgenda.First;
  while not QuerAgenda.Eof do
  begin
    if MTCores.Locate('CODIGO', QuerAgendaCOLOR.AsInteger, [])  then
    begin
      MTCores.Edit;
      MTCoresTOTAL.AsInteger := MTCoresTOTAL.AsInteger + 1;
      MTCores.Post;
    end;
    QuerAgenda.Next;
  end;
end;

procedure TImpriAgenda.QuerAgendaBeforeOpen(DataSet: TDataSet);
begin
  QuerAgenda.ParamByName('TipoAgendamento').AsInteger := EventoTipoToStr(etAgendamento);
  {$IFDEF DEBUG}
  StringToFile('D:\SQL.sql', QuerAgenda.SQL.Text);
  {$ENDIF}
end;

procedure TImpriAgenda.QuerAgendaCalcFields(DataSet: TDataSet);
begin
  QuerAgenda.FieldByName('NomeCor').AsString := GetNomeCor(QuerAgenda.FieldByName('COLOR').AsInteger);
end;

procedure TImpriAgenda.QuerGrafico2BeforeOpen(DataSet: TDataSet);
begin
  QuerGrafico2.ParamByName('TipoAgendamento').AsInteger := EventoTipoToStr(etAgendamento);
end;

procedure TImpriAgenda.QuerGraficoBeforeOpen(DataSet: TDataSet);
begin
  QuerGrafico.ParamByName('TipoAgendamento').AsInteger := EventoTipoToStr(etAgendamento);
end;

procedure TImpriAgenda.QuerGraficoCalcFields(DataSet: TDataSet);
begin
  QuerGrafico.FieldByName('NomeCor').AsString := GetNomeCor(QuerGrafico.FieldByName('COLOR').AsInteger);
end;

procedure TImpriAgenda.Simplificado1Click(Sender: TObject);
begin
  Imprimir(False);
end;

procedure TImpriAgenda.WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
begin
  WREventosCadastro1.Impressao.Report.Variables['DtInicio'] := DateOf(QuerAgenda.ParamByName('DtInicio').AsDateTime);
  WREventosCadastro1.Impressao.Report.Variables['DtFim']    := DateOf(QuerAgenda.ParamByName('DtFim').AsDateTime);
end;

initialization
  RegisterClass(TImpriAgenda);

end.
