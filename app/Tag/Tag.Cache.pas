unit Tag.Cache;

interface

Uses
  Classes.APP, cxEdit, cxTextEdit, FireDAC.Comp.Client, FireDAC.Stan.Option;

const
  TagCache_Produto_First = 1;
  TagCache_First = TagCache_Produto_First;

  TagCache_VENDA = 2;
  TagCache_Last = TagCache_VENDA;


//procedure Registra_WR_Cache(ATagCache: Integer; ATabela: String);
procedure RegistraWR_Cache(ATagCache: Integer; ATabela, ACampos, ATabelas_left_Join: string; ARecsMax: Integer);

Var
  AWR_Cache: array [TagCache_First..TagCache_Last] of TWR_Cache;

//  AWR_Cache   : TList<TWR_Cache>;

implementation
     {
procedure Registra_WR_Cache(ATagCache: Integer; ATabela: String);
begin
  AWR_Cache[ATagCache] := TWR_Cache.Create;
  AWR_Cache[ATagCache].Codigo      := ATagCache;
  AWR_Cache[ATagCache].Tabela      := ATabela;
//    Codigo: Integer;
//    Tabela: string;
//    Campos: String;
//    ParaTudo : Boolean;
//    Cache_Carregada : Boolean;
//    Is_Carregando : Boolean;
//    RegAtual : Integer;
//    RecsMax: Integer;
//    Count: Integer;
//    Count_Alterados: Integer; // Alterados não última musca válida
//    Dt_Ultima_atualizacao: TDateTime;
//    Tabelas_left_Join : String;
//    MemTable : TFDMemTable;
//    MD5: String;
end;    }

procedure RegistraWR_Cache(ATagCache: Integer; ATabela, ACampos, ATabelas_left_Join: string; ARecsMax: Integer);
begin
  AWR_Cache[ATagCache] := TWR_Cache.Create();
  AWR_Cache[ATagCache].MemTable   := TFDMemTable.Create(nil);
  with AWR_Cache[ATagCache].MemTable do
  begin
    Name := ATabela;
    FetchOptions.AssignedValues := [evMode];
    FetchOptions.Mode := fmAll;
    ResourceOptions.AssignedValues := [rvSilentMode];
    ResourceOptions.SilentMode := True;
    UpdateOptions.AssignedValues := [uvCheckRequired];
    UpdateOptions.CheckRequired := False;
  end;
//  FTabela.MemTable.LocalSQL := DMBanco.FDLocalSQL1;
  AWR_Cache[ATagCache].Tabela   := ATabela;
  AWR_Cache[ATagCache].Campos   := ACampos;
  AWR_Cache[ATagCache].ParaTudo := False;
  AWR_Cache[ATagCache].RegAtual := 0;
  AWR_Cache[ATagCache].RecsMax  := ARecsMax;
  AWR_Cache[ATagCache].Tabelas_left_Join := ATabelas_left_Join;
end;

end.