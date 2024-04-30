unit Controller.Principal;

interface

uses Classes.APP, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, Frame_CadProduto_Mestre,
  System.SysUtils, System.Classes;

  procedure ControllerPrincipal_AplicaModulosAtivos(ACNPJCPF_Empresa: String);
  procedure ControllerPrincipal_AfterLogin;
  procedure ControllerPrincipal_Carrega_WREventosCadastro;
  procedure ControllerPrincipal_MessagensNovas(ADataSet: TDataset);
implementation

Uses UnitFuncoes,
  Tag.Valor_Inicial, Tag.Componente, Tag.Filtro, Tag.Agrupador, Tag.Form, Tag.WREventosCadastro,
  Tag.Modulo, Tag.APP, Tag.Config, Tag.Condicao, Tag.Permissao,
  Controller.WR_Form, Controller.WR_Agrupador, Controller.WR_Filtro, Controller.WR_Componente, Controller.WR_Valor_Inicial, Controller.WR_Controle,
  Controller.WR_Config, Controller.WR_Obrigatorio, Controller.WR_Modulo, Controller.WR_APP, Controller.WR_Condicao, Controller.WR_Permissao;

procedure ControllerPrincipal_AplicaModulosAtivos(ACNPJCPF_Empresa: String);
begin
  TModuloGerenciador.GetModulosAtivos(ACNPJCPF_Empresa);
end;

procedure ControllerPrincipal_AfterLogin;
Var
  ARefazer_WR_Controle:Boolean;
begin
  ARefazer_WR_Controle:=False;
  ControllerWR_modulo_Salvar(ARefazer_WR_Controle);                     // Conferido
  ControllerWR_APP_Salvar(ARefazer_WR_Controle);                        // Conferido
  ControllerWR_Form_Salvar(ARefazer_WR_Controle);                       // Conferido
  ControllerWR_Agrupador_Salvar(ARefazer_WR_Controle);                  // Conferido
  ControllerWR_Filtro_Salvar(ARefazer_WR_Controle);                     // Conferido

  ControllerWR_Valor_Inicial_Salvar(ARefazer_WR_Controle);              // Conferido
  ControllerWR_Componente_Salvar(ARefazer_WR_Controle);                 // Conferido
  ControllerWR_Config_Salvar(ARefazer_WR_Controle);                     // Conferido

  ControllerWR_Obrigatorio_Salvar(ARefazer_WR_Controle);                //
  ControllerWR_Condicao_Salvar(ARefazer_WR_Controle);                   //
  ControllerWR_Permissao_Salvar(ARefazer_WR_Controle);                  //


  // Depois de colocar tudo nos Objetos Fazer os controles
  if ARefazer_WR_Controle then
    ControllerWR_Controle_Salvar;

  ControllerPrincipal_Carrega_WREventosCadastro; // Rotina importantisima, para desempenho do sistema

// Carregar s Configurações customizadas pelo cliente, Otimizar para pegar apenas as Padrão <> S
// Todas as cofigurções devem ser atualizadaas. Se o Cliente  pode configurar então tem que carregar tudo, e aplicar no create dos cadastros e consultas

end;

procedure ControllerPrincipal_Carrega_WREventosCadastro;
//var
//  I, J: integer;
begin
 {  for I := 1 to Length(AWREventosCadastro)  do
  begin
    if not Assigned(AWREventosCadastro[I]) then Continue;

    for J := 0 to Length(AWR_Valor_Inicial) -1 do
    begin
     with AWR_Campo_Valor_Inicial[J] do
      begin
        if Ativo then
          AWREventosCadastro[I].AddTagChavePrimaria(Codigo, TagCampo, Valor);
      end;
      with AWR_Campo_Duplicado[J] do
      begin
        if Ativo then
          AWREventosCadastro[I].AddTagCampo_Duplicado(Codigo, TagCampo, Valor);
      end;
      with AWR_Campo_Obrigatorio[J] do
      begin
        if Ativo then
          AWREventosCadastro[I].AddTagCampo_Obrigatorio(Codigo, TagCampo, Valor);
      end;
    end;
  end;   }
end;

procedure ControllerPrincipal_MessagensNovas(ADataSet: TDataset);
var
  AMailBoxID, AMailID: Integer;
  AMailFrom, AMailSubject: string;
  AContent: TMemoryStream;
begin
  AContent := TMemoryStream.Create;
  try
    AMailBoxID   := ADataSet.FieldByName('Codigo').Value;
    AMailFrom    := ADataSet.FieldByName('From').AsString;
    AMailSubject := ADataSet.FieldByName('Subject').AsString;
//    ADataSet.FieldByName('Content').SaveToStream(AContent);
//    AMailID := AddMail(AMailFrom, AMailSubject, True, -1, ADataSet.FieldByName('Priority').Value, AMailBoxID,
//      clNewMailsAttachmentID.Value, Now, AContent);
//    UnreadMailsOffset(AMailBoxID, 1);
//    CreateAlert(AMailFrom, AMailSubject, AMailBoxID, AMailID);
  finally
    AContent.Free;
  end;
end;

end.
