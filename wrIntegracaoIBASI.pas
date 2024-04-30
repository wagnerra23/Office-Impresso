unit wrIntegracaoIBASI;

interface

uses
  Classes, SysUtils, IBX.IBDatabase, DB, IniFiles, ACBrUtil, UnitFuncoes, ShellApi,
  IBX.IBQuery, ExtCtrls, Aguarde, wrFuncoes, Classes.WR;

type
  TIntegracaoIBASI = class
  private
  public
    class function Pessoa(DS: TDataSource) : Boolean;
    class function Venda(DS, DsFinanceiro: TDataSource): Boolean;
    class function VendaExclusao(DS, DsFinanceiro: TDataSource): Boolean;
  end;
type
  TEventHandlers = class
    procedure OnTimerTick(Sender : TObject);
  end;

var
  Timer : TTimer;
  EventHandlers : TEventHandlers;
  
implementation

{ TIBASI }

procedure TEventHandlers.OnTimerTick(Sender : TObject);
begin
  Timer.Enabled :=False;
end;

class function TIntegracaoIBASI.Pessoa( DS: TDataSource): Boolean;
Var
  ATexto : TStringList;
  MS: TStream;
  LinhaCodigo, LinhaValor: String;
  I :Integer;
  Continua :Boolean;
  QuerX : TIBQuery;
begin
  {$REGION 'Manual 4.2'}
  {Tabela 1: Envio de solicitação de um cliente
//  CABEÇALHO
  00-00 = CLIENTE 00-01 = D
  ‘D’ = Detalhado
  ‘R’ = Resumido. INFORMAÇÃO
  01-00 = 12370359000130 CPF/CNPJ do Cliente.

  Tabela 2: Retorno de sucesso detalhado
//  CABEÇALHO
  00-00 = CLIENTE
  00-01 = OK Retorno do Serviço.
//  INFORMAÇÃO
  01-00 = 12370359000130 CPF/CNPJ.
  02-00 = Razão Social LTDA ME Razão social.
  03-00 = Fantasia modas Nome fantasia.
  04-00 = Av. Getulio Vargas Logradouro.
  05-00 = 1012 Número.
  06-00 = Complemento Complemento.
  07-00 = 88900000 CEP.
  08-00 = Centro Bairro.
  09-00 = Araranguá Cidade.
  10-00 = SC Estado.
  11-00 = 4835270544 Telefone.
  12-00 = 4899999999 Celular.
  13-00 = 123123123 Inscrição Estadual.
  14-00 = email@lojista.com.br Email.
  15-00 =  Observação da comanda.
  16-00 = 28 Código da Agência (Guia) na Administração.
  17-00 = Sim Pode comprar com cheques?
  18-00 = 01102011 Data da Autorização para compra - DDMMAAAA
  19-00 = 500000 Limite disponível - sem ponto e/ou virgula.
  20-00 =
  20-01 = **
  20-02 = ** Quantidade de documentos autorizados Documentos autorizados para compra.** Exemplo na Tabela 4
  21-00 = S
  21-00 = Pendências Financeiras Restrição de compra. (S ou N) Motivo da restrição caso resposta "21-00 = S".
  22-00 = 420140 Código IBGE da cidade do cliente.
//  RODAPÉ
  99-99 = 021 Rodapé com nº de linhas de INFORMAÇÃO.   }
  {$ENDREGION}
  Result:=False;
  if not (ds.State in [dsEdit,dsInsert]) then
    Exit;
  Timer := TTimer.create(nil);   
  Timer.OnTimer := EventHandlers.OnTimerTick;
  Timer.Interval:=30000;
  Timer.Enabled :=True;
{  FrmAguarde := TFrmAguarde.Create(nil);
  try
    FrmAguarde.Mensagem := 'Consultando Shopping. Aguarde...';
    FrmAguarde.ProgressoMaximo := 20;
    FrmAguarde.Show;  }
    ATexto := TStringList.Create;
    try
      ATexto.Add('00-00 = CLIENTE');
      ATexto.Add('00-01 = D');
      ATexto.Add('01-00 = '+ OnlyNumber(ds.DataSet.FieldByName('CNPJCPF').Text));
    finally
      if DirectoryExists('C:\iBASi\iShopp\bin\',True) then
        ATexto.SaveToFile('C:\iBASi\iShopp\bin\ISHOPP.ENV');
      ATexto.Free;
    end;
    Try
    if FileExists('C:\iBASi\iShopp\bin\ISHOPP.RET') then
      TryDeleteFile('C:\iBASi\iShopp\bin\ISHOPP.RET',1000);
    except  End;
    ShellExecute( Handle_Num , 'OPEN', 'C:\iBASi\iShopp\bin\iShoppClient.jar', nil, nil, 1); //SW_SHOWNORMAL
    try
      Continua:= True;
      while Continua and Timer.Enabled do
        if FileExists('C:\iBASi\iShopp\bin\ISHOPP.RET')and(not FileIsReadOnly('C:\iBASi\iShopp\bin\ISHOPP.RET')) then
        begin
          ATexto := TStringList.Create;
          try
            MS := TFileStream.Create('C:\iBASi\iShopp\bin\ISHOPP.RET', fmShareDenyNone);
            ATexto.LoadFromStream(MS);
          finally
            MS.Destroy;
          end;
          for I := 0 to ATexto.Count -1 do
          begin
            LinhaCodigo := Copy(ATexto[i],1, 8);
            LinhaValor  := Trim(Copy(ATexto[i],9, LENGTH(ATexto[i])));
            if LinhaCodigo  = '00-00 = '  then
              if LinhaValor <> 'CLIENTE' then
              begin
                ShowMessageWR('Arquivo de retorno é diferente do esperado');
                Continua:=False;
              end;
            if LinhaCodigo  = '00-01 = '  then
              if LinhaValor <> 'OK' then
              begin
                ShowMessageWR('Não conseguiu fazer a Consulta.');
                Continua:=False;
              end;
  //          if LinhaCodigo  = '01-00 = '  then
  //            ds.DataSet.FieldByName('CNPJCPF').AsString    := LinhaValor;
            if LinhaCodigo  = '02-00 = '  then
              ds.DataSet.FieldByName('RAZAOSOCIAL').AsString:= LinhaValor;
            if LinhaCodigo  = '03-00 = '  then
              ds.DataSet.FieldByName('FANTASIA').AsString   := LinhaValor;
            if LinhaCodigo  = '04-00 = '  then
            begin
              ds.DataSet.FieldByName('ENDERECO').AsString   := LinhaValor;
              ds.DataSet.FieldByName('NUMERO').AsString     := OnlyNumber(LinhaValor);
            end;
            if LinhaCodigo  = '05-00 = '  then
            begin
              if StrToIntDef(OnlyNumber(LinhaValor),0) > 0 then
                ds.DataSet.FieldByName('NUMERO').AsString   := LinhaValor;
            end;
            if LinhaCodigo  = '06-00 = '  then
              ds.DataSet.FieldByName('COMPLEMENTO').AsString:= LinhaValor;
            if LinhaCodigo  = '07-00 = '  then
              ds.DataSet.FieldByName('CEP').AsString        := LinhaValor;
            if LinhaCodigo  = '08-00 = '  then
              ds.DataSet.FieldByName('BAIRRO').AsString     := LinhaValor;
  //          if LinhaCodigo  = '09-00 = '  then
  //            ds.DataSet.FieldByName('CIDADE').AsString     := LinhaValor;
            if LinhaCodigo  = '10-00 = '  then
              ds.DataSet.FieldByName('UF').AsString         := Copy(LinhaValor,1,2);
            if LinhaCodigo  = '11-00 = '  then
              ds.DataSet.FieldByName('FONE1').AsString      := LinhaValor;
            if LinhaCodigo  = '12-00 = '  then
              ds.DataSet.FieldByName('FONE2').AsString      := LinhaValor;
            if LinhaCodigo  = '13-00 = '  then
              ds.DataSet.FieldByName('INSCIDENT').AsString  := LinhaValor;
            if LinhaCodigo  = '14-00 = '  then
              ds.DataSet.FieldByName('EMAIL').AsString      := LinhaValor;
            if LinhaCodigo  = '15-00 = '  then
              ds.DataSet.FieldByName('OBSERVACAO').AsString := LinhaValor;
            if LinhaCodigo  = '16-00 = '  then
              ds.DataSet.FieldByName('CODIGO_DO_GUIA').AsString := LinhaValor; //Código da Agência (Guia) na Administração.
            if LinhaCodigo  = '17-00 = '  then
              ds.DataSet.FieldByName('PODE_COMPRAR_COM_CHEQUE').AsString := LinhaValor;
            if LinhaCodigo  = '18-00 = '  then
              ds.DataSet.FieldByName('DT_AUTORIZACAO_COMPRA').AsString := Copy(LinhaValor,1,2)+'/'+Copy(LinhaValor,3,2)+'/'+Copy(LinhaValor,5,4);//,'DDMMAAAA');  //Data da Autorização para compra - DDMMAAAA

            if (Copy(LinhaCodigo,1,3) = '20-')and(not(LinhaCodigo = '20-00 = ')) then // É Cheque  Documentos autorizados para compra.
            begin
               try
                 QuerX := GeraQuery(TIBQuery(DS.DataSet).Transaction);
                 QuerX.SQL.Text:='update or INSERT INTO PESSOAS_CHEQUES_AUTORIZADOS (CODIGO, CODPESSOA, DOCUMENTO, TITULAR, RESTRICAO)'+
                                                                           ' VALUES (:CODIGO, :CODPESSOA, :DOCUMENTO, :TITULAR, :RESTRICAO) '+
                                                                           ' MATCHING (CODIGO, CODPESSOA)' ;
                 QuerX.ParamByName('CODIGO').AsString   := Copy(LinhaCodigo,4,2);
                 QuerX.ParamByName('CODPESSOA').AsString:= DS.DataSet.FieldByName('CODIGO').AsString;
                 QuerX.ParamByName('DOCUMENTO').AsString:= Trim(Copy(LinhaValor,1,14));
                 QuerX.ParamByName('TITULAR').AsString  := Trim(Copy(LinhaValor,15,60));
                 QuerX.ParamByName('RESTRICAO').AsString := Trim(Copy(LinhaValor,75,1));
                 QuerX.ExecSQL;
               Except
  //               QuerX.Cancel;
               end;
               QuerX.Free;
            end;

            if LinhaCodigo  = '19-00 = '  then
              ds.DataSet.FieldByName('LIMITECREDITO').AsFloat := StrToCurrDef(LinhaValor,0)/100;
            if LinhaCodigo  = '21-00 = '  then
            begin
              ds.DataSet.FieldByName('MOTIVO').AsString    := 'Pendências Financeiras';
              ds.DataSet.FieldByName('BLOQUEADO').AsString := LinhaValor;
            end;
            if (LinhaCodigo  = '22-00 = ') then
            begin
  //            CriarSQL com inicio do TEXTO
              QuerX := GeraQuery;
              QuerX.SQL.Text:= 'select * from cidades where codigo STARTING WITH :Codigo';
              QuerX.ParamByName('Codigo').AsString := LinhaValor;
              QuerX.Open;
              if QuerX.RecordCount> 0 then
                ds.DataSet.FieldByName('CODCIDADE').AsString := QuerX.FieldByName('CODIGO').AsString
              else
                ds.DataSet.FieldByName('CODCIDADE').AsString := LinhaValor;
              QuerX.Free;
            end;
            if (LinhaCodigo  = '99-99 = ' )or (I >= ATexto.Count - 1)  then
            begin
              Continua:=False;
              Result:=True;
            end;
          end;
        end;
    finally
      ATexto.Free;
      Try
      if FileExists('C:\iBASi\iShopp\bin\ISHOPP.RET') then
        TryDeleteFile('C:\iBASi\iShopp\bin\ISHOPP.RET',10000);
      except End;
    Timer.Free;
    end;
 { finally
    FrmAguarde.Free;
  end;    }
end;

class function TIntegracaoIBASI.Venda(DS, DsFinanceiro: TDataSource): Boolean;
Var
  ATexto : TStringList;
  MS: TStream;
  LinhaCodigo, LinhaValor: String;
  I :Integer;
  Continua :Boolean;
  QuerX : TIBQuery;
  Dinheiro, Cartao, Cheque :Real;
begin
  {$REGION 'Manual 4.2'}
  {$ENDREGION}
  if not (ds.State in [dsEdit,dsInsert])or
     not (ds.DataSet.FieldByName('VENDA_ATENTICAR').AsString = 'S') then
    Exit;
  Timer := TTimer.create(nil);   
  Timer.OnTimer := EventHandlers.OnTimerTick;
  Timer.Interval:=30000;
  Timer.Enabled :=True;
  ATexto := TStringList.Create;
  try
    ATexto.Add('00-00 = VENDA');                                                        //Serviço
    ATexto.Add('01-00 = '+ TConfig.ReadString('UTILIZA_CONSULTA_IBASE_CODIGO_LOJA'));   //Código da loja
    ATexto.Add('02-00 = '+ Procura('LOGIN','USUARIO', IntToStr(CodigoUsuario)));
    if not(ds.DataSet.FieldByName('VENDA_ATENTICADA').AsString = 'S') then   // Verificar como vou saber se ja Atenticou no shopping
      ATexto.Add('03-00 = 0')
    else
      ATexto.Add('03-00 = '+OnlyNumberWR(ds.DataSet.FieldByName('Codigo').AsString));
    ATexto.Add('04-00 = '+ OnlyNumber(Procura('CNPJCPF','PESSOAS', ds.DataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString)));
    ATexto.Add('05-00 = '+ FormatDateTime('DDMMYYYY',ds.DataSet.FieldByName('DT_EMISSAO').AsDateTime));

  //    Somar as Formas de pagamento são possíveis 3 DINHEIRO - CARTÂO - CHEQUE
    ATexto.Add('06-00 = '+ FormatFloat('0',ds.DataSet.FieldByName('TOTAL').AsFloat*100));    //Valor total da venda - sem ponto e/ou vírgula.

    Dinheiro:=0;
    Cartao  :=0;
    Cheque  :=0;
    DsFinanceiro.DataSet.First;
    While not DsFinanceiro.DataSet.Eof do
    begin
      if Pos(DsFinanceiro.DataSet.FieldByName('TIPOPAGTO').AsString, 'CHEQUE')>0 then
        Cheque:= Cheque+ DsFinanceiro.DataSet.FieldByName('VALOR').AsFloat
      else if Pos(DsFinanceiro.DataSet.FieldByName('TIPOPAGTO').AsString, 'CARTÃO')>0 then
        Cartao:= Cartao+ DsFinanceiro.DataSet.FieldByName('VALOR').AsFloat
      else
        Dinheiro:= Dinheiro+ DsFinanceiro.DataSet.FieldByName('VALOR').AsFloat;
      DsFinanceiro.DataSet.Next;
    end;
    if Dinheiro > 0 then
      ATexto.Add('07-00 = '+ FormatFloat('0', Dinheiro*100)); //Valor em dinheiro - sem ponto e/ou vírgula.
    if Cheque > 0 then
    begin
      ATexto.Add('08-00 = '+ FormatFloat('0', Cheque*100));   //Valor em cheque(s) - sem ponto e/ou vírgula

      I:=1;
      DsFinanceiro.DataSet.First;
      While Not DsFinanceiro.DataSet.Eof do
      begin
        //Dado(s) do(s) cheque(s) exemplo a baixo **(tabela 7)
        // 09-01 = 237123412345678901234560000010000JOAO DA SILVA                         00552556870   10112011
        // 09-02 = 001045600002394870056750000010000FABRICA DA LOJA LTDA.ME               1237035900013010122011
        // 09-03 = 237123412345678901234580000010000JOAO DA SILVA                         08503640145   10012012
        ATexto.Add('09-'+FormatFloat('00',i)+' = '+
                   PadLeft(DsFinanceiro.DataSet.FieldByName('CHEQUE_CODBANCO').AsString,3,'0')+     //Banco do cheque emitido
                   PadLeft(DsFinanceiro.DataSet.FieldByName('CHEQUE_AGENCIA').AsString,4,'0')+   //Agência do cheque emitido.
                   PadLeft(DsFinanceiro.DataSet.FieldByName('CHEQUE_CONTA').AsString,10,'0')+    //Conta corrente do cheque emitido.
                   PadLeft(DsFinanceiro.DataSet.FieldByName('CHEQUE_NUMERO').AsString,6,'0')+    //Numero do Cheque emitido
                   FormatFloat('0000000000',DsFinanceiro.DataSet.FieldByName('VALOR').AsFloat*100)+//Valor do cheque - sem ponto e/ou vírgula.
                   PadRight(DsFinanceiro.DataSet.FieldByName('CHEQUE_NOME').AsString,40,' ')+     //Titular do Cheque emitido
                   PadRight(DsFinanceiro.DataSet.FieldByName('CHEQUE_CNPJCPF').AsString,14,' ')+  //Documento do titular do chequwe
                   FormatDateTime('DDMMYYYY',DsFinanceiro.DataSet.FieldByName('CHEQUE_DT_BOM_PARA').AsDateTime)); //Pré-data do cheque - DDMMAAAA
        Inc(I);
        DsFinanceiro.DataSet.Next;
      end;
    end;
    if Cartao > 0 then
      ATexto.Add('10-00 = '+ FormatFloat('0', Cartao*100));   //Valor em Cartão(s) - sem ponto e/ou vírgula
    ATexto.Add('11-00 = '+ OnlyNumberWR( ds.DataSet.FieldByName('CODIGO').AsString));
  finally
    if DirectoryExists('C:\iBASi\iShopp\bin\',True) then
      ATexto.SaveToFile('C:\iBASi\iShopp\bin\ISHOPP.ENV');
    ATexto.Free;
  end;
  ShellExecute( Handle_Num , 'OPEN', 'C:\iBASi\iShopp\bin\iShoppClient.jar', nil, nil, 1); //SW_SHOWNORMAL
  try
    ds.DataSet.FieldByName('VENDA_ATENTICADA').AsString := 'N';  
    Continua:= True;
    while Continua and Timer.Enabled do
      if FileExists('C:\iBASi\iShopp\bin\ISHOPP.RET')and(not FileIsReadOnly('C:\iBASi\iShopp\bin\ISHOPP.RET')) then
      begin
        ATexto := TStringList.Create;
        try
          MS := TFileStream.Create('C:\iBASi\iShopp\bin\ISHOPP.RET', fmShareDenyNone);
          ATexto.LoadFromStream(MS);
        finally
          MS.Destroy;
        end;
        if  ATexto.Count> 2 then
        begin
          if Copy(ATexto[0],1, 8)  = '00-00 = '  then
            if Trim(Copy(ATexto[0],9, LENGTH(ATexto[0]))) <> 'VENDA' then
            begin
              ShowMessageWR('Arquivo de retorno é diferente do esperado'+LineBreakWR+
                            Trim(Copy(ATexto[2],9, LENGTH(ATexto[2]))));
              Continua:=False;
            end;
          if Copy(ATexto[1],1, 8)  = '00-01 = '  then
            if Trim(Copy(ATexto[1],9, LENGTH(ATexto[1]))) <> 'OK' then
            begin
              ShowMessageWR('Não conseguiu Incluir a Venda.'+LineBreakWR+
                            Trim(Copy(ATexto[2],9, LENGTH(ATexto[2]))));
              ds.DataSet.FieldByName('VENDA_ATENTICADA').AsString := 'N';
            end else
              ds.DataSet.FieldByName('VENDA_ATENTICADA').AsString := 'S';
          Continua:=False;              
        end else
          Continua:=True;
      end;
  finally
    ATexto.Free;
    Try
    if FileExists('C:\iBASi\iShopp\bin\ISHOPP.RET') then
      TryDeleteFile('C:\iBASi\iShopp\bin\ISHOPP.RET',10000);
    except End;
    Timer.Free;
  end;
end;

class function TIntegracaoIBASI.VendaExclusao(DS, DsFinanceiro: TDataSource): Boolean;
Var
  ATexto : TStringList;
  MS: TStream;
  LinhaCodigo, LinhaValor: String;
  I :Integer;
  Continua :Boolean;
  QuerX : TIBQuery;
  Dinheiro, Cartao, Cheque :Real;
begin
  {$REGION 'Manual 4.2'}
  {$ENDREGION}
  if (not (ds.State in [dsEdit,dsInsert])or
     not (ds.DataSet.FieldByName('VENDA_ATENTICAR').AsString = 'S'))and(ds.DataSet.FieldByName('VENDA_ATENTICADA').AsString <> 'S') then
    Exit;
  Timer := TTimer.create(nil);
  Timer.OnTimer := EventHandlers.OnTimerTick;
  Timer.Interval:=30000;
  Timer.Enabled :=True;
  ATexto := TStringList.Create;
  try
    ATexto.Add('00-00 = VENDA');                                                        //Serviço
    ATexto.Add('01-00 = '+ TConfig.ReadString('UTILIZA_CONSULTA_IBASE_CODIGO_LOJA'));   //Código da loja
    ATexto.Add('03-00 = -'+OnlyNumberWR(ds.DataSet.FieldByName('Codigo').AsString));
    ATexto.Add('04-00 = '+ OnlyNumber(Procura('CNPJCPF','PESSOAS', ds.DataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString)));
    ATexto.Add('05-00 = '+ FormatDateTime('DDMMYYYY',ds.DataSet.FieldByName('DT_EMISSAO').AsDateTime));

  //    Somar as Formas de pagamento são possíveis 3 DINHEIRO - CARTÂO - CHEQUE
    ATexto.Add('06-00 = '+ FormatFloat('0',ds.DataSet.FieldByName('TOTAL').AsFloat*100));    //Valor total da venda - sem ponto e/ou vírgula.

    Dinheiro:=0;
    Cartao  :=0;
    Cheque  :=0;
    DsFinanceiro.DataSet.First;
    While not DsFinanceiro.DataSet.Eof do
    begin
      if Pos(DsFinanceiro.DataSet.FieldByName('TIPOPAGTO').AsString, 'CHEQUE')>0 then
        Cheque:= Cheque+ DsFinanceiro.DataSet.FieldByName('VALOR').AsFloat
      else if Pos(DsFinanceiro.DataSet.FieldByName('TIPOPAGTO').AsString, 'CARTÃO')>0 then
        Cartao:= Cartao+ DsFinanceiro.DataSet.FieldByName('VALOR').AsFloat
      else
        Dinheiro:= Dinheiro+ DsFinanceiro.DataSet.FieldByName('VALOR').AsFloat;
      DsFinanceiro.DataSet.Next;
    end;
    if Dinheiro > 0 then
      ATexto.Add('07-00 = '+ FormatFloat('0', Dinheiro*100)); //Valor em dinheiro - sem ponto e/ou vírgula.
    if Cheque > 0 then
    begin
      ATexto.Add('08-00 = '+ FormatFloat('0', Cheque*100));   //Valor em cheque(s) - sem ponto e/ou vírgula

      I:=1;
      DsFinanceiro.DataSet.First;
      While Not DsFinanceiro.DataSet.Eof do
      begin
        //Dado(s) do(s) cheque(s) exemplo a baixo **(tabela 7)
        // 09-01 = 237123412345678901234560000010000JOAO DA SILVA                         00552556870   10112011
        // 09-02 = 001045600002394870056750000010000FABRICA DA LOJA LTDA.ME               1237035900013010122011
        // 09-03 = 237123412345678901234580000010000JOAO DA SILVA                         08503640145   10012012
        ATexto.Add('09-'+FormatFloat('00',i)+' = '+
                   PadLeft(DsFinanceiro.DataSet.FieldByName('CHEQUE_CODBANCO').AsString,3,'0')+     //Banco do cheque emitido
                   PadLeft(DsFinanceiro.DataSet.FieldByName('CHEQUE_AGENCIA').AsString,4,'0')+   //Agência do cheque emitido.
                   PadLeft(DsFinanceiro.DataSet.FieldByName('CHEQUE_CONTA').AsString,10,'0')+    //Conta corrente do cheque emitido.
                   PadLeft(DsFinanceiro.DataSet.FieldByName('CHEQUE_NUMERO').AsString,6,'0')+    //Numero do Cheque emitido
                   FormatFloat('0000000000',DsFinanceiro.DataSet.FieldByName('VALOR').AsFloat*100)+//Valor do cheque - sem ponto e/ou vírgula.
                   PadRight(DsFinanceiro.DataSet.FieldByName('CHEQUE_NOME').AsString,40,' ')+     //Titular do Cheque emitido
                   PadRight(DsFinanceiro.DataSet.FieldByName('CHEQUE_CNPJCPF').AsString,14,' ')+  //Documento do titular do chequwe
                   FormatDateTime('DDMMYYYY',DsFinanceiro.DataSet.FieldByName('CHEQUE_DT_BOM_PARA').AsDateTime)); //Pré-data do cheque - DDMMAAAA
        Inc(I);
        DsFinanceiro.DataSet.Next;
      end;
    end;
    if Cartao > 0 then
      ATexto.Add('10-00 = '+ FormatFloat('0', Cartao*100));   //Valor em Cartão(s) - sem ponto e/ou vírgula
    ATexto.Add('11-00 = '+ OnlyNumberWR( ds.DataSet.FieldByName('CODIGO').AsString));
  finally
    if DirectoryExists('C:\iBASi\iShopp\bin\',True) then
      ATexto.SaveToFile('C:\iBASi\iShopp\bin\ISHOPP.ENV');
    ATexto.Free;
  end;
  ShellExecute( Handle_Num , 'OPEN', 'C:\iBASi\iShopp\bin\iShoppClient.jar', nil, nil, 1); //SW_SHOWNORMAL
  try
    ds.DataSet.FieldByName('VENDA_ATENTICADA').AsString := 'N';
    Continua:= True;
    while Continua and Timer.Enabled do
      if FileExists('C:\iBASi\iShopp\bin\ISHOPP.RET')and(not FileIsReadOnly('C:\iBASi\iShopp\bin\ISHOPP.RET')) then
      begin
        ATexto := TStringList.Create;
        try
          MS := TFileStream.Create('C:\iBASi\iShopp\bin\ISHOPP.RET', fmShareDenyNone);
          ATexto.LoadFromStream(MS);
        finally
          MS.Destroy;
        end;
        if  ATexto.Count> 2 then
        begin
          if Copy(ATexto[0],1, 8)  = '00-00 = '  then
            if Trim(Copy(ATexto[0],9, LENGTH(ATexto[0]))) <> 'VENDA' then
            begin
              ShowMessageWR('Arquivo de retorno é diferente do esperado'+LineBreakWR+
                            Trim(Copy(ATexto[2],9, LENGTH(ATexto[2]))));
              Continua:=False;
            end;
          if Copy(ATexto[1],1, 8)  = '00-01 = '  then
            if Trim(Copy(ATexto[1],9, LENGTH(ATexto[1]))) <> 'OK' then
            begin
              ShowMessageWR('Não conseguiu Incluir a Venda.'+LineBreakWR+
                            Trim(Copy(ATexto[2],9, LENGTH(ATexto[2]))));
              ds.DataSet.FieldByName('VENDA_ATENTICADA').AsString := 'N';
            end else
              ds.DataSet.FieldByName('VENDA_ATENTICADA').AsString := 'S';
          Continua:=False;
        end else
          Continua:=True;
      end;
  finally
    ATexto.Free;
    Try
    if FileExists('C:\iBASi\iShopp\bin\ISHOPP.RET') then
      TryDeleteFile('C:\iBASi\iShopp\bin\ISHOPP.RET',10000);
    except End;
    Timer.Free;
  end;
end;

end.
