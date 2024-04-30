unit Controller.Obrigatorio.NFe;

interface

uses
  Winapi.Windows, Winapi.Messages, SysUtils, Variants, Classes, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.Async, FireDAC.DApt, System.Generics.Collections, WREventos, System.StrUtils, ACBrUtil, cxMemo;

procedure TrataErrosNFe(AFDMensagem: TFDMemTable; ANF_Erros: TFDQuery; AMemoMensagem: TcxMemo);

implementation

uses UnitFuncoes, Classes.WR;

procedure TrataErrosNFe(AFDMensagem: TFDMemTable; ANF_Erros: TFDQuery; AMemoMensagem: TcxMemo);
var
  i, ALinha_fim: integer;
  AStrings: TArray<string>;

  // TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.     NFSe é Diferente, Tem que deixar elas iguais

  // O Formato da mensagem de erro pode ser alterado pelo usuario alterando-se a property FFormatoAlerta: onde;
  // %TAGNIVEL%  : Representa o Nivel da TAG; ex: <transp><vol><lacres>
  // %TAG%       : Representa a TAG; ex: <nLacre>
  // %ID%        : Representa a ID da TAG; ex X34
  // %MSG%       : Representa a mensagem de alerta
  // %DESCRICAO% : Representa a Descrição da TAG

  procedure SplitErroShemas(ATexto:String);
  begin
     AStrings := ATexto.Split(['§']);
     AFDMensagem.FieldByName('TagNivel').Value  := AStrings[0];      // <dest><enderDest>
     AFDMensagem.FieldByName('ERRO').Value      := AStrings[1];      // §E07
     AFDMensagem.FieldByName('Tag').Value       := AStrings[2];      // §nro
     AFDMensagem.FieldByName('Label').Value     := AStrings[3];      // §Número
     AFDMensagem.FieldByName('DESCRICAO').AsString := AStrings[4];   // §Nenhum valor informado

     if AFDMensagem.FieldByName('TagNivel').Value = '<det nItem="' then
     begin
       AFDMensagem.FieldByName('NITEM').AsString:= OnlyNumber(AFDMensagem.FieldByName('TagNivel').asstring);
     end;

  end;
  procedure SplitErroValidacao(ATexto:String);  // §E07§nro§Número§Nenhum valor informado
  begin
     AFDMensagem.FieldByName('TagNivel').Value  := ATexto;
     AFDMensagem.FieldByName('ERRO').Value      := Copy(ATexto, 1 , Pos('-', ATexto));
//     AFDMensagem.FieldByName('Tag').Value       := AStrings[2];
     AFDMensagem.FieldByName('Label').Value     := 'Nome do Campo';
     AFDMensagem.FieldByName('DESCRICAO').AsString := Copy(ATexto, Pos('-', ATexto)+1 , ATexto.Length );

     if Pos( '[nItem="', AFDMensagem.FieldByName('DESCRICAO').Value)>0  then
     begin
       AFDMensagem.FieldByName('NITEM').AsString:= OnlyNumber(Copy(ATexto, Pos('[nItem="', ATexto), ATexto.Length ));
       AFDMensagem.FieldByName('TagNivel').Value := Copy(ATexto, 1, Pos('[nItem="', ATexto ));
     end;

  end;
  procedure SplitErroNotaNaoConfirmada(ATexto:String);  // §E07§nro§Número§Nenhum valor informado
  begin
//     AFDMensagem.FieldByName('TagNivel').Value  := ATexto;
//     AFDMensagem.FieldByName('Tag').Value       := AStrings[2];
     AFDMensagem.FieldByName('Label').Value        := 'Retorno da SEFAZ';
     AFDMensagem.FieldByName('DESCRICAO').AsString := Copy(ATexto, Pos('->', ATexto)+2 , ATexto.Length );
     AFDMensagem.FieldByName('ERRO').Value         := Copy(AFDMensagem.FieldByName('DESCRICAO').AsString, 1 , Pos('-', AFDMensagem.FieldByName('DESCRICAO').AsString)-1);
     if Pos( '[nItem="', AFDMensagem.FieldByName('DESCRICAO').Value)>0  then
     begin
       AFDMensagem.FieldByName('NITEM').AsString:= OnlyNumber(Copy(ATexto, Pos('[nItem="', ATexto), ATexto.Length ));
       AFDMensagem.FieldByName('TagNivel').Value := Copy(ATexto, 1, Pos('[nItem="', ATexto ));
     end;

  end;
  procedure SplitErroElementAtomicType(ATexto:String);  // §E07§nro§Número§Nenhum valor informado
  begin
//     AFDMensagem.FieldByName('TagNivel').Value  := ATexto;
//     AFDMensagem.FieldByName('Tag').Value       := AStrings[2];
     AFDMensagem.FieldByName('Label').Value        := 'Retorno da SEFAZ';
     AFDMensagem.FieldByName('DESCRICAO').AsString := 'Campo ' + Copy(ATexto, Pos('}', ATexto)+1, Pos(':',ATexto, 30) - Pos('}',ATexto)-2) + ' inválido.';
     AFDMensagem.FieldByName('ERRO').Value         := Copy(ATexto, 0, Pos(' ', ATexto));
//     if Pos( '[nItem="', AFDMensagem.FieldByName('DESCRICAO').Value)>0  then
//     begin
//       AFDMensagem.FieldByName('NITEM').AsString:= OnlyNumber(Copy(ATexto, Pos('[nItem="', ATexto), ATexto.Length ));
//       AFDMensagem.FieldByName('TagNivel').Value := Copy(ATexto, 1, Pos('[nItem="', ATexto ));
//     end;

  end;

begin
  if (pos('Erro Interno:', AMemoMensagem.Lines[0])>0)then
    raise EWRException.Create('Erro Interno');

  if Not(pos('Falha na validação dos dados da nota:', AMemoMensagem.Lines[0])>0)and
     Not(pos('Erro(s) nas Regras de negócios da nota:', AMemoMensagem.Lines[0])>0)and
     Not(pos('Nota(s) não confirmadas:', AMemoMensagem.Lines[0])>0)
  then
    raise EWRException.Create('Erro não Catalogado');

  AFDMensagem.Close;
  AFDMensagem.Open;
  AFDMensagem.EmptyDataSet;
  if Not ANF_Erros.Active then
    ANF_Erros.Open;
  ALinha_fim:=2;
  if (pos('Nota(s) não confirmadas:', AMemoMensagem.Lines[0])>0)
  or (pos('Falha na validação dos dados da nota:', AMemoMensagem.Lines[0])>0)
  then
    ALinha_fim:=1;
  for i := 1 to AMemoMensagem.Lines.Count - ALinha_fim do
  begin
     AFDMensagem.Insert;
     if (AMemoMensagem.Lines[i] = '') then
       Continue;
     try
       if (pos('http://www.portalfiscal.inf.br/nfe', AMemoMensagem.Lines[i]) > 0) then
         SplitErroElementAtomicType(AMemoMensagem.Lines[i])
       else if (pos('Falha na validação dos dados da nota:', AMemoMensagem.Lines[0])>0) then
         SplitErroShemas(AMemoMensagem.Lines[i])
       else if pos('Erro(s) nas Regras de negócios da nota:', AMemoMensagem.Lines[0])>0 then
         SplitErroValidacao(AMemoMensagem.Lines[i])
       else if pos('Nota(s) não confirmadas:', AMemoMensagem.Lines[0])>0 then
         SplitErroNotaNaoConfirmada(AMemoMensagem.Lines[i])
       else
        AFDMensagem.FieldByName('DESCRICAO').AsString := AMemoMensagem.Lines[i];

       // Tratamento de Mensagem que o cliente nunca entende.
       if AFDMensagem.FieldByName('ERRO').AsString = '728' then
         AFDMensagem.FieldByName('DESCRICAO').AsString := '728-Rejeicao: Inscrição Estadual do Destinatário não informada';

       if AFDMensagem.FieldByName('ERRO').AsString = 'N12a' then
         AFDMensagem.FieldByName('DESCRICAO').AsString := 'CST informado incorreto, verifique a tributação do seu produto.' + sLineBreak + 'Simples Nacional = 3 dígitos / Regime Normal = 2 dígitos.';

       if ANF_Erros.Locate('ERRO', AFDMensagem.FieldByName('ERRO').Value, []) then
       begin
         AFDMensagem.FieldByName('Campo').Value        := ANF_Erros.FieldByName('Campo').Value;
         AFDMensagem.FieldByName('Tela').Value         := ANF_Erros.FieldByName('Tela').Value;
         AFDMensagem.FieldByName('Componente').Value   := ANF_Erros.FieldByName('Componente').Value;
         AFDMensagem.FieldByName('Link').Value         := ANF_Erros.FieldByName('Link').Value;
         AFDMensagem.FieldByName('OBSERVACAO').Value   := ANF_Erros.FieldByName('OBSERVACAO').Value;
         AFDMensagem.FieldByName('VALIDACAO').AsString := 'Erro';
         AFDMensagem.FieldByName('ACAO').AsString      := 'NFe';

         // AFDMensagem.FieldByName('TIPO_DOCUMENTO').AsString:= '';
         // AFDMensagem.FieldByName('ALERTA').AsString := 'Alerta';// [Alerta,Erro]
       end else
       begin
//          ShowMessage('Não Achou e Vai Cadastrar');
          // Aqui deve Cadastrar os erros.
       end;
       AFDMensagem.post;
     except
       AFDMensagem.Cancel;
     end;
  end;
end;

end.
