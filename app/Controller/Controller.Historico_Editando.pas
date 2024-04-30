unit Controller.Historico_Editando;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;


function ControllerHistorico_Editando(ADataSet: TDataSet; ATabela, ADescricao: String; ACampoPK1, ACampoPK2, ACampoPK3: String): String;


implementation

Uses UnitFuncoes, FrmRegistroAviso;

function ControllerHistorico_Editando(ADataSet: TDataSet; ATabela, ADescricao: String; ACampoPK1, ACampoPK2, ACampoPK3: String): String;
var
  MemTableDragDrop : TFDMemTable;
  QuerX: TFDQuery;
begin
//  WRLog('Inicia da nova remessa');       // Deveria ter o Cogio ou nome do arquivo e infrmar qual rotina que parou , se criar muito logs o log se perde cad procedimento tem ter 1 log só

  ///////////////////////INICIO Isso pode se tornoar uma Função mestre, para ser usada em uma linha em todos os lugares;
  QuerX := GeraFDQuery;
  MemTableDragDrop := TFDMemTable.Create(nil);
  try
    with MemTableDragDrop.FieldDefs do
    begin
      with AddFieldDef do
      begin
        Name := 'CODIGO';
        DataType := ftInteger;
      end;

      with AddFieldDef do
      begin
        Name := 'DESCRICAO';
        DataType := ftString;
      end;

      with AddFieldDef do
      begin
        Name := 'Usuario';
        DataType := ftString;
      end;
    end;
    MemTableDragDrop.Open;

    QuerX.SQL.Text := 'select H.*, U.USUARIO from HISTORICO_EDITANDO H ' +
                      'left join USUARIO U on U.CODIGO = H.CODUSUARIO ' +
                      'where (H.TABELA = :Tabela) and (H.EVENTO = :Evento) and (DT_FECHAMENTO Is Null) ';

    if not (ACampoPK1 = '') then
      QuerX.SQL.Text:= QuerX.sql.Text  + ' and(H.CHAVE_PK1 = :CHAVE1)';
    if not (ACampoPK2 = '') then
      QuerX.sql.Text:= QuerX.sql.Text  + ' and(H.CHAVE_PK2 = :CHAVE2)';
    if not (ACampoPK3 = '') then
      QuerX.sql.Text:= QuerX.sql.Text  + ' and(H.CHAVE_PK3 = :CHAVE3)';
    QuerX.ParamByName('Tabela').AsString := ATabela;
    QuerX.ParamByName('Evento').AsString := 'Utilizando';
    QuerX.ParamByName('CHAVE1').Value    := ADataSet.FieldByName(ACampoPK1).Value;
    QuerX.ParamByName('CHAVE2').Value    := ADataSet.FieldByName(ACampoPK2).Value;
    QuerX.ParamByName('CHAVE3').Value    := ADataSet.FieldByName(ACampoPK3).Value;
    QuerX.Open;
    if QuerX.RecordCount > 0 then
    begin
      MemTableDragDrop.Insert;
      MemTableDragDrop.FieldByName('CODIGO').AsInteger   := ADataSet.FieldByName('CODIGO').AsInteger;
      MemTableDragDrop.FieldByName('DESCRICAO').AsString := ADescricao;
      MemTableDragDrop.FieldByName('Usuario').AsString   := QuerX.FieldByName('USUARIO').AsString;
      MemTableDragDrop.Post;
    end;

    if MemTableDragDrop <> nil then
    begin
      if MemTableDragDrop.RecordCount > 0 then
      begin
        TFormRegistroAviso.Abrir(MemTableDragDrop, 'O Registro: ' +ADescricao+ '. Está sendo editada por: ' +QuerX.FieldByName('USUARIO').AsString+ ', favor concluir a operação antes de continuar.');
        exit;
      end;
    end;
  finally
    QuerX.Free;
    MemTableDragDrop.Free;
  end;
  ///////////////////////FIM Isso pode se tornoar uma Função mestre, para ser usada em uma linha em todos os lugares;
end;


end.
