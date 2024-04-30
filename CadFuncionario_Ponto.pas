unit CadFuncionario_Ponto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ExtCtrls, DB,
  IBX.IBCustomDataSet, IBX.IBDatabase, uControleWR, IBX.IBQuery, cxDropDownEdit, ComCtrls, cxCalendar, cxLabel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, Vcl.Menus, cxButtons, UnitFuncoes, Principal;

type
  TFrmFuncionario_Ponto = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Funcionario_Ponto: TIBDataSet;
    MemoObservacao: TMemo;
    Transa: TIBTransaction;
    Timer1: TTimer;
    GroupBox3: TGroupBox;
    EdtCodPonto: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LbDataHora: TLabel;
    LbNumero: TLabel;
    LbNome: TLabel;
    cbxSelecao: TcxComboBox;
    cbxDataReferencia: TcxDateEdit;
    lblDataReferencia: TcxLabel;
    Funcionario_Ponto_Arquivo: TIBDataSet;
    Funcionario_Ponto_ArquivoCODIGO: TIntegerField;
    Funcionario_Ponto_ArquivoIDENTIFICADOR: TIBStringField;
    Funcionario_Ponto_ArquivoCODPESSOA_FUNCIONARIO: TIBStringField;
    Funcionario_Ponto_ArquivoNSR: TIBStringField;
    Funcionario_Ponto_ArquivoTIPO_REGISTRO: TIntegerField;
    Funcionario_Ponto_ArquivoTIPO_IDENTICADOR_EMPREGADOR: TIntegerField;
    Funcionario_Ponto_ArquivoCNPJ_CPF_EMPREGADOR: TIBStringField;
    Funcionario_Ponto_ArquivoCEI_EMPREGADOR: TIBStringField;
    Funcionario_Ponto_ArquivoSERIAL_REP: TIBStringField;
    Funcionario_Ponto_ArquivoDATA_INICIAL: TDateTimeField;
    Funcionario_Ponto_ArquivoDATA_FINAL: TDateTimeField;
    Funcionario_Ponto_ArquivoDATA_GERACAO_ARQUIVO: TDateTimeField;
    Funcionario_Ponto_ArquivoDATA_HORARIO_MARCACAO: TDateTimeField;
    Funcionario_Ponto_ArquivoRAZAOSOCIAL_EMPREGADOR: TIBStringField;
    Funcionario_Ponto_ArquivoLOCAL_PRESTACAO_SERVICO: TIBStringField;
    Funcionario_Ponto_ArquivoPIS: TIBStringField;
    Funcionario_Ponto_ArquivoTIPO_OPERACAO: TIBStringField;
    Funcionario_Ponto_ArquivoQTD_REGISTRO_2: TIntegerField;
    Funcionario_Ponto_ArquivoQTD_REGISTRO_3: TIntegerField;
    Funcionario_Ponto_ArquivoQTD_REGISTRO_4: TIntegerField;
    Funcionario_Ponto_ArquivoQTD_REGISTRO_5: TIntegerField;
    Funcionario_Ponto_ArquivoNOME_FUNCIONARIO: TIBStringField;
    Funcionario_Ponto_ArquivoOCORRENCIA: TIBStringField;
    btnMenuConfig: TcxButton;
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbxSelecaoPropertiesChange(Sender: TObject);
    procedure btnMenuConfigClick(Sender: TObject);
  private
    { Private declarations }
    FControleWR : TControleWR;
    function GetCampoPonto(ACodFuncionario: string; AData: TDateTime): string;
  public
    { Public declarations }
  end;

var
  FrmFuncionario_Ponto: TFrmFuncionario_Ponto;

implementation

uses
  StrUtils, DateUtils, wrFuncoes, ConfiguracoesM, Classes.WR;

{$R *.dfm}

procedure TFrmFuncionario_Ponto.btnMenuConfigClick(Sender: TObject);
begin
  TFrmConfiguracoesM.MostrarConfiguracoes(Self);
end;

procedure TFrmFuncionario_Ponto.cbxSelecaoPropertiesChange(Sender: TObject);
var
  ADataAtual : TDateTime;
begin
  ADataAtual := DataHoraSys;
  (*
  // Comentado pois agora pega pela data de Hoje ao invés de Data Referência
  // Se quiser lançar retroativo, lança pelo funcionário.
  cbxDataReferencia.Visible := (cbxSelecao.ItemIndex <> 0);
  cbxDataReferencia.date    := Dateof(ADataAtual);
  lblDataReferencia.Visible := (cbxSelecao.ItemIndex <> 0);
  *)
end;

procedure TFrmFuncionario_Ponto.Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  QuerX: TIBQuery;
  ACod: Integer;
  AFuncionario, ACodFuncionario, ACampo, ACampoSelecao, ACampoAvaliado : String;
  AAno, AMes, ADia : Word;
  ADataAtual: TDateTime;

  function GetProximoCodigo : Integer;
  var
    QuerCod : TIBQuery;
  begin
    QuerCod := GeraQuery(Transa);
    try
      QuerCod.SQL.Text := 'select max(FA.CODIGO) as COD from FUNCIONARIO_PONTO_ARQUIVO FA';
      QuerCod.Open;
      Result := QuerCod.Fields[0].AsInteger + 1;
    finally
      QuerCod.Free;
    end;
  end;

begin
  if Key = VK_RETURN then
  begin
    EdtCodPonto.Text := Trim(EdtCodPonto.Text);
    ACodFuncionario  := FControleWR.GetCodPessoa('FUN', StrToIntDef(EdtCodPonto.Text, 0));
    AFuncionario     := Procura('RAZAOSOCIAL', 'PESSOAS', ACodFuncionario);
    if AFuncionario = '' then
      Exit;
    LbNome.Caption   := AFuncionario;
    LbNumero.Caption := EdtCodPonto.Text;
    ADataAtual       := DataHoraSys;
    DecodeDate(ADataAtual, AAno, AMes, ADia);
    LbDataHora.Caption := FormatDateTime('DD/MM/YYYY hh:mm:ss', ADataAtual);

    case TModeloPonto.GetFromCodigo(TConfig.ReadInteger('PONTO_MODELO')) of
        mpSistemaNormal : begin
                            Funcionario_Ponto.Close;
                            Funcionario_Ponto.ParamByName('CODIGO').AsString := ACodFuncionario;
                            Funcionario_Ponto.Open;
                        //      ACampoAvaliado := GetCampoPonto(ACodFuncionario, ADataAtual);
                            {ACampo := 'ENTRADA1';
                            if (Funcionario_Ponto.FieldByName(ACampo).AsString <> '') then
                              ACampo := 'ENTRADA1';
                            if (Funcionario_Ponto.FieldByName(ACampo).AsString <> '') then
                              ACampo := 'SAIDA1';
                            if (Funcionario_Ponto.FieldByName(ACampo).AsString <> '') then
                              ACampo := 'ENTRADA2';
                            if (Funcionario_Ponto.FieldByName(ACampo).AsString <> '') then
                              ACampo := 'SAIDA2';
                            if (Funcionario_Ponto.FieldByName(ACampo).AsString <> '') or Funcionario_Ponto.IsEmpty then
                              ACampo := 'INSERT';}
                            if cbxSelecao.ItemIndex = 0 then
                            begin
                              ACampo := GetCampoPonto(ACodFuncionario, ADataAtual);
                            end else
                            begin
                              Funcionario_Ponto.Close;
                              Funcionario_Ponto.SelectSQL[2] := 'where (CODFUNCIONARIO = :Codigo) and (DIA_REFERENCIA = :DiaReferencia)';
                              Funcionario_Ponto.ParamByName('DiaReferencia').AsDateTime := Dateof(DataHoraSys);//cbxDataReferencia.Date;
                              Funcionario_Ponto.ParamByName('Codigo').AsString          := ACodFuncionario;
                              Funcionario_Ponto.Open;
                              ACampo := ReplaceText(AnsiUpperCase(ComboBoxGetItemSelecionado(cbxSelecao)), 'Í', 'I');
                              if (Funcionario_Ponto.FieldByName(ACampo).AsString <> '') then
                              begin
                                ShowMessageWR('Ponto já preenchido!', MB_ICONWARNING);
                                Abort;
                              end;
                            end;

                            if Funcionario_Ponto.IsEmpty then
                            begin
                              ACampoSelecao := ACampo;
                              ACampo := 'INSERT';
                            end;

                            if (ACampo = 'SAIDA2') and (HoursBetween(ADataAtual, Funcionario_Ponto.FieldByName('ENTRADA2').AsDateTime) > 8) then
                            begin
                              ACampo := 'INSERT';
                              ShowMessageWR('Ponto de SAIDA2 do dia anterior não foi registrado. Entre em contato com o ' +
                                            'administrador para regularizar seu ponto.', MB_ICONWARNING);
                            end;

                            if ACampo <> 'INSERT' then
                            begin
                              Funcionario_Ponto.Edit;
                              Funcionario_Ponto.FieldByName(ACampo).AsDateTime     := ADataAtual;
                              Funcionario_Ponto.FieldByName('OBSERVACAO').AsString := Funcionario_Ponto.FieldByName('OBSERVACAO').AsString + MemoObservacao.Text;
                              Funcionario_Ponto.Post;
                              LbDataHora.Caption := LbDataHora.Caption + ' ' + ACampo;
                            end else if not IsSameDay(ADataAtual, Funcionario_Ponto.FieldByName('ENTRADA1').AsDateTime) then
                            begin
                              QuerX := GeraQuery(Transa);
                              try
                                QuerX.SQL.Text := 'select max(CODIGO) as MAXCODIGO from FUNCIONARIO_PONTO';
                                QuerX.Open;
                                ACod := QuerX.FieldByName('MAXCODIGO').AsInteger + 1;
                              finally
                                QuerX.Free;
                              end;
                              if cbxSelecao.ItemIndex = 0 then
                                ACod := Funcionario_Ponto.FieldByName('CODIGO').AsInteger + 1;
                              Funcionario_Ponto.Insert;
                              Funcionario_Ponto.FieldByName('CODIGO').AsInteger        := ACod;
                              Funcionario_Ponto.FieldByName('CODFUNCIONARIO').AsString := ACodFuncionario;
                              if cbxSelecao.ItemIndex =  0 then
                                Funcionario_Ponto.FieldByName('ENTRADA1').AsDateTime     := ADataAtual
                              else
                                Funcionario_Ponto.FieldByName(ACampoSelecao).AsDateTime  := ADataAtual;
                              Funcionario_Ponto.FieldByName('DIA_REFERENCIA').AsDateTime := Dateof(DataHoraSys);//cbxDataReferencia.Date;
                              Funcionario_Ponto.FieldByName('OBSERVACAO').AsString       := MemoObservacao.Text;
                              Funcionario_Ponto.Post;
                              LbDataHora.Caption := LbDataHora.Caption + ' ENTRADA1';
                            end else
                            begin
                              LbDataHora.Caption := 'Terceiro turno não permitido!';
                              LbNumero.Caption   := 'Ponto não registrado.';
                              LbNome.Caption     := 'Entre em contato com o administrador.';
                              Transa.RollbackRetaining;
                            end;
                            Transa.Commit;
                            EdtCodPonto.Clear;
                            MemoObservacao.Lines.Clear;
                            cbxSelecao.ItemIndex := 0;
                            Funcionario_Ponto.SelectSQL[2] := 'where (CODFUNCIONARIO = :Codigo)';
                          end;
      mpSistemaContinuo : begin
                            Funcionario_Ponto_Arquivo.Open;
                            Funcionario_Ponto_Arquivo.Insert;
                            Funcionario_Ponto_ArquivoCODIGO.AsInteger                 := GetProximoCodigo;
                            Funcionario_Ponto_ArquivoIDENTIFICADOR.AsString           := 'PONTO_SIS';
                            Funcionario_Ponto_ArquivoOCORRENCIA.AsString              := 'N';
                            Funcionario_Ponto_ArquivoCODPESSOA_FUNCIONARIO.AsString   := ACodFuncionario;
                            Funcionario_Ponto_ArquivoDATA_HORARIO_MARCACAO.AsDateTime := ADataAtual;
                            //Funcionario_Ponto_ArquivoNSR.AsString                     := ACBrPonto1.Ponto_AFD.Registro3.Items[i].Campo01.Trim;
                            Funcionario_Ponto_ArquivoTIPO_REGISTRO.AsInteger          := 3; //ACBrPonto1.Ponto_AFD.Registro3.Items[i].Campo02.ToInteger;
                            Funcionario_Ponto_ArquivoPIS.AsString                     := OnlyNumberWR(Procura('PROFISSIONAL_PIS', 'PESSOAS', ACodFuncionario)); //ACBrPonto1.Ponto_AFD.Registro3.Items[i].Campo05.Trim;
                            //Funcionario_Ponto_ArquivoDATA_GERACAO_ARQUIVO.Value  := StrToDateTime(AData); //pegar data do registro 1
                            Funcionario_Ponto_Arquivo.Post;
                            Transa.Commit;
                            EdtCodPonto.Clear;
                            MemoObservacao.Lines.Clear
                          end;
    end;
  end;
end;

procedure TFrmFuncionario_Ponto.FormCreate(Sender: TObject);
var
  ADataAtual : TDateTime;
begin
  btnMenuConfig.Enabled := Usuario.Privilegiado;
  ADataAtual := DataHoraSys;
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
  Timer1Timer(Self);

  (*
  // Comentado pois agora pega pela data de Hoje ao invés de Data Referência
  // Se quiser lançar retroativo, lança pelo funcionário.
  cbxDataReferencia.Visible := (cbxSelecao.ItemIndex <> 0);
  cbxDataReferencia.date    := Dateof(ADataAtual);
  lblDataReferencia.Visible := (cbxSelecao.ItemIndex <> 0);
  *)

  Funcionario_Ponto_Arquivo.Open;

  case TModeloPonto.GetFromCodigo(TConfig.ReadInteger('PONTO_MODELO')) of
             mpSistemaNormal: ;
           mpSistemaContinuo: begin
                                cbxSelecao.Enabled        := False;
                                cbxDataReferencia.Enabled := False;
                              end;
    mpPontoEletronicoArquivo: begin
                                cbxSelecao.Enabled        := False;
                                cbxDataReferencia.Enabled := False;
                                EdtCodPonto.Enabled       := False;
                                MemoObservacao.Enabled    := False;
                              end;
  end;
  btnMenuConfig.Enabled := FrmPrincipal.GetPermissaoAction(FrmPrincipal.Action_Parametros);
end;

procedure TFrmFuncionario_Ponto.FormDestroy(Sender: TObject);
begin
  FControleWR.Free;
  Funcionario_Ponto_Arquivo.Close;
end;

procedure TFrmFuncionario_Ponto.Timer1Timer(Sender: TObject);
begin
  Label1.Caption := FormatDateTime('HH:MM:SS', Now);
end;

function TFrmFuncionario_Ponto.GetCampoPonto(ACodFuncionario: string; AData: TDateTime): string;
const
  DIA_SEMANA : Array[1..7] of string = ('DOMINGO', 'SEGUNDA', 'TERCA', 'QUARTA', 'QUINTA', 'SEXTA', 'SABADO');
var
  ADia, ACampo, ACampo1 : string;
  QuerX : TIBQuery;
  ASecs, ASai, AEnt, AHor, AHor1, AHor2 : Int64;

  procedure Avalia(ACampoAvalicao, ACampoRetorno: string);
  var
    ATemp : Int64;
  begin
    ATemp := SecondsBetween(TimeOf(AData), TimeOf(QuerX.FieldByName(ACampoAvalicao).AsDateTime));
    if ATemp < ASecs then
    begin
      ASecs := ATemp;
      Result := ACampoRetorno;
    end;
  end;
begin
  //Esta rotina determina o horário mais próximo entre a data em que o ponto foi batido e os horários configurados
  //na jornada de trabalho do funcionário.
  AHor := 0;
  AHor1 := 0;
  ADia := DIA_SEMANA[DayOfWeek(AData)];
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select * ' +
                      'from FUNCIONARIO_HORARIO ' +
                      'where (CODFUNCIONARIO = :Cod)';
    QuerX.Params[0].AsString := ACodFuncionario;
    QuerX.Open;
    ASecs := MaxInt;
    Avalia('MAT_' + ADia + '_INICIAL', 'ENTRADA1');
    Avalia('MAT_' + ADia + '_FINAL',   'SAIDA1');
    Avalia('VES_' + ADia + '_INICIAL', 'ENTRADA2');
    Avalia('VES_' + ADia + '_FINAL',   'SAIDA2');
    //
    ACampo := 'VES_' + ADia + '_FINAL';
    ACampo1 := 'MAT_' + ADia + '_INICIAL';
    ASai := SecondsBetween(TimeOf(AData), TimeOf(QuerX.FieldByName(ACampo).AsDateTime));
    AEnt := SecondsBetween(TimeOf(AData), TimeOf(QuerX.FieldByName(ACampo1).AsDateTime));


    if (ASai < AEnt) and not (Funcionario_Ponto.IsEmpty) then
    begin
      if Funcionario_Ponto.FieldByName(Result).AsString <> '' then
      begin
        ShowMessageWR('Ponto já Preenchido (' + Result + ')' + sLineBreak +
                      'ou usuário esqueceu de bater o ponto anterior.'  + sLineBreak +
                      'Escolha manualmente qual turno deseja apontar.');
        Abort;
      end
    end
    else if (Funcionario_Ponto.FieldByName('ENTRADA2').AsString <> '') or (Funcionario_Ponto.FieldByName('SAIDA1').AsString <> '') or (Funcionario_Ponto.IsEmpty) then
    begin
      if Funcionario_Ponto.FieldByName('SAIDA1').AsDateTime > 0 then
        AHor := HoursBetween(AData,Funcionario_Ponto.FieldByName('SAIDA1').AsDateTime);
      if Funcionario_Ponto.FieldByName('ENTRADA2').AsDateTime > 0 then
        AHor1 := HoursBetween(AData,Funcionario_Ponto.FieldByName('ENTRADA2').AsDateTime);
      if (AHor > 12) or (AHor1 > 12) or Funcionario_Ponto.IsEmpty then
        Result := 'INSERT';
    end;
    //
    if Result <> 'INSERT' then
    begin
      if (Funcionario_Ponto.FieldByName(Result).AsString <> '') then
      begin
        ShowMessageWR('Ponto já Preenchido! (' + Result + ')');
        Abort;
      end;
    end;
  finally
    QuerX.Free;
  end;
end;

end.
