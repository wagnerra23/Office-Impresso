unit CadNF_Provedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  fs_iinterpreter, dxUIAdorners, cxClasses, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, WREventos, UCBase,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl, CadNF_Erros, cxMemo,
  cxRichEdit, cxDBRichEdit, uWeb, cxLabel, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxHyperLinkEdit, cxCheckBox, System.Generics.Collections,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, WRButtonsEditAdd;

type
  TFrmNF_Provedor = class(TFrmCadM)
    edtMemo: TcxDBRichEdit;
    LiedtMemo: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    LibtnAtualizar: TdxLayoutItem;
    btnAtualizar: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    btnLerProvedor: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    edtTipoRPS: TcxDBComboBox;
    OpenDialog1: TOpenDialog;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    LiedtLC116_Servico: TdxLayoutItem;
    edtLC116_Servico: TcxDBComboBox;
    LiedtCNAE_Obrigatorio: TdxLayoutItem;
    edtCNAE_Obrigatorio: TcxDBComboBox;
    LiedtLC116_Codigo_Tributavel_Municipio: TdxLayoutItem;
    edtLC116_Codigo_Tributavel_Municipio: TcxDBComboBox;
    dxLayoutItem17: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutGroup5: TdxLayoutGroup;
    edtLink: TcxDBHyperLinkEdit;
    LiedtLink: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    chkUsaCertificadoPeloExplorer: TcxDBCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutItem11: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    cxDBCheckBox5: TcxDBCheckBox;
    dxLayoutItem19: TdxLayoutItem;
    cxDBCheckBox6: TcxDBCheckBox;
    dxLayoutItem12: TdxLayoutItem;
    cxDBCheckBox7: TcxDBCheckBox;
    dxLayoutItem15: TdxLayoutItem;
    cxDBCheckBox8: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem13: TdxLayoutItem;
    cxDBCheckBox9: TcxDBCheckBox;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem14: TdxLayoutItem;
    cxDBCheckBox10: TcxDBCheckBox;
    dxLayoutItem16: TdxLayoutItem;
    cxDBCheckBox11: TcxDBCheckBox;
    dxLayoutItem20: TdxLayoutItem;
    cxDBCheckBox12: TcxDBCheckBox;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem21: TdxLayoutItem;
    cxDBCheckBox13: TcxDBCheckBox;
    dxLayoutItem22: TdxLayoutItem;
    cxDBCheckBox14: TcxDBCheckBox;
    dxLayoutItem23: TdxLayoutItem;
    edtMetodo_Envio: TcxDBComboBox;
    dxLayoutItem24: TdxLayoutItem;
    cxDBCheckBox15: TcxDBCheckBox;
    edtQuebraDeLinha: TcxDBTextEdit;
    LiedtQuebraDeLinha: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    cxDBCheckBox16: TcxDBCheckBox;
    dxLayoutItem26: TdxLayoutItem;
    cxDBCheckBox17: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem27: TdxLayoutItem;
    chkTem_Impressao_Betha: TcxDBCheckBox;
    dxLayoutGroup10: TdxLayoutGroup;
    LichkTem_Multiplos_Servico: TdxLayoutItem;
    chkTem_Multiplos_Servico: TcxDBCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    cxDBCheckBox20: TcxDBCheckBox;
    dxLayoutItem9: TdxLayoutItem;
    edtCompetencia: TcxDBComboBox;
    dxLayoutItem28: TdxLayoutItem;
    cxDBCheckBox21: TcxDBCheckBox;
    dxLayoutItem10: TdxLayoutItem;
    cxDBCheckBox18: TcxDBCheckBox;
    LichkTem_Consulta_Apos_Envio: TdxLayoutItem;
    chkTem_Consulta_Apos_Envio: TcxDBCheckBox;
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnLerProvedorClick(Sender: TObject);
    procedure edtDescricaoPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure edtLinkClick(Sender: TObject);
    procedure cxDBComboBox1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxDBCheckBox18PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

Uses UnitFuncoes, IniFiles, StrUtils, ConsM, wrPreencheLookup, ShellAPI,
  ConNF_Provedor;

procedure TFrmNF_Provedor.btnAtualizarClick(Sender: TObject);
Var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery(TransaFD);
  QuerX.SQL.Text := ' Select * '+
                    ' from NF_Provedor ';
  if (GetKeyState(VK_CONTROL) < 0) then
  begin
    TWRFTP.UploadArquivoVersionado('ArqINI','NF_Provedor', 'CODIGO', QuerX );
  end
  else begin
    TWRFTP.DownloadArquivoVersionado('ArqINI', 'NF_Provedor', 'CODIGO', QuerX, False );
    TransaFD.Commit;
  end;
  QuerX.Free;
end;

procedure TFrmNF_Provedor.btnLerProvedorClick(Sender: TObject);
var
  ACaminhoArquivo : string;
  AIni: TIniFile;
//  AStream: TStringStream;
begin
  inherited;
  // Buscar a Configuração do Provedor No Arquivo proverdor.Ini
  OpenDialog1.Title := 'Selecione o arquivo INI do Provedor';
  OpenDialog1.DefaultExt := '*.ini';
  OpenDialog1.Filter := 'Arquivos INI (*.ini)|*.ini|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir :=  IncludeTrailingPathDelimiter(Empresa.FieldByName('NFE_PATH').AsString)+'Schemas\NFSe';
  if OpenDialog1.Execute then
    ACaminhoArquivo:= OpenDialog1.FileName;
  AIni := TIniFile.Create(ACaminhoArquivo);
  try
    {As definições abaixo foram feitas de acordo com a documentação do ACBr disponível no seguinte link:
     https://www.projetoacbr.com.br/forum/topic/51528-ao-enviar-um-rps-ou-lote-posso-usar-qualquer-m%C3%A9todo-de-envio/



    Para documentação, Tem as referencias atualizadas das cidades e suas configurações
     >>>>>>>  https://atendimento.tecnospeed.com.br/hc/pt-br/articles/360006926973-Lista-de-munic%C3%ADpios-homologados-Tecnospeed


    Para saber os serviços oferecidos pelo provedor basta olharmos para as seções:
    [Recepcionar] => Responsável por montar o envelope de Envio assíncrono, se consta a definição do envelope significa que este serviço esta disponível.
    [ConsSit] => Responsável por montar o envelope de Consulta a Situação do Lote, se consta a definição do envelope significa que este serviço esta disponível.
    [ConsLote] => Responsável por montar o envelope de Consulta ao Lote, se consta a definição do envelope significa que este serviço esta disponível.
    [ConsNFSeRps] => Responsável por montar o envelope de Consulta NFSe por RPS, se consta a definição do envelope significa que este serviço esta disponível.
    [ConsNFSe] => Responsável por montar o envelope de Consulta NFSe, se consta a definição do envelope significa que este serviço esta disponível.
    [Cancelar] => Responsável por montar o envelope de Cancelar NFSe, se consta a definição do envelope significa que este serviço esta disponível.
    [Gerar] => Responsável por montar o envelope de Gerar NFSe, se consta a definição do envelope significa que este serviço esta disponível.
    [RecSincrono] => Responsável por montar o envelope de Envio síncrono, se consta a definição do envelope significa que este serviço esta disponível.
    [Substituir] => Responsável por montar o envelope de Substituir NFSe, se consta a definição do envelope significa que este serviço esta disponível.

    //Código provisório... fazer algo dinâmico, que acesse algum local para obter o link
    pro4R:            AID := '13362'; // http://office.wr2.com.br/web#id=13362&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
    proAbaco:         AID := '13206'; // http://office.wr2.com.br/web#id=13206&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
    proBHISS:         AID := '15748'; // http://office.wr2.com.br/web#id=15748&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
    proBetha,
    proBethav2:       AID := '13133'; // http://office.wr2.com.br/web#id=13133&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
    proEquiplano:     AID := '13083'; // http://office.wr2.com.br/web#id=13083&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
    proGINFES:        AID := '12887'; // http://office.wr2.com.br/web#id=12887&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
    proISSe:          AID := '13089'; // http://office.wr2.com.br/web#id=13089&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
    proLexsom:        AID := '12805'; // http://office.wr2.com.br/web#id=12805&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
    proMetropolisWeb: AID := '12923'; // http://office.wr2.com.br/web#id=12923&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
    proPublica:       AID := '13109'; // http://office.wr2.com.br/web#id=13109&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
    proTiplan,
    proTiplanv2:      AID := '13095'; // http://office.wr2.com.br/web#id=13095&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537

     }

    Cadastro.Edit;
    //Faz a leitura dos recursos do provedor para identificar se tem suporte

    // Métodos Suportados
    Cadastro.FieldByName('TEM_RECSINCRONO').AsString := ifthen((AIni.ReadString('SoapAction','RecSincrono' , '')<>''),'S','N');
    Cadastro.FieldByName('TEM_RECEPCIONAR').AsString := ifthen((AIni.ReadString('SoapAction','Recepcionar' , '')<>''),'S','N');
    Cadastro.FieldByName('TEM_GERAR').AsString       := ifthen((AIni.ReadString('SoapAction','Gerar'       , '')<>''),'S','N');
    Cadastro.FieldByName('TEM_CANCELAR').AsString    := ifthen((AIni.ReadString('SoapAction','Cancelar'    , '')<>''),'S','N');
    Cadastro.FieldByName('TEM_CONSNFSE').AsString    := ifthen((AIni.ReadString('SoapAction','ConsNFSe'    , '')<>''),'S','N');
    Cadastro.FieldByName('TEM_CONSNFSERPS').AsString := ifthen((AIni.ReadString('SoapAction','ConsNFSeRps' , '')<>''),'S','N');
    Cadastro.FieldByName('TEM_CONSLOTE').AsString    := ifthen((AIni.ReadString('SoapAction','ConsLote'    , '')<>''),'S','N');
    Cadastro.FieldByName('TEM_CONSSIT').AsString     := ifthen((AIni.ReadString('SoapAction','ConsSit'     , '')<>''),'S','N');
    Cadastro.FieldByName('TEM_SUBSTITUIR').AsString  := ifthen((AIni.ReadString('SoapAction','Substituir'  , '')<>''),'S','N');

    // Geral
    Cadastro.FieldByName('QUEBRADELINHA').AsString := AIni.ReadString('Geral', 'QuebradeLinha', '');
    Cadastro.FieldByName('TEM_CERTIFICADO_DIGITAL').AsString :=  ifthen((AIni.ReadString('Geral', 'UseCertificado', '0') = '1' ),'S','N');

    //Remover
    Cadastro.FieldByName('TEM_QUEBRADELINHARETORNO').AsString := ifthen((AIni.ReadString('Remover', 'QuebradeLinhaRetorno', '0') = '1' ),'S','N');
    Cadastro.FieldByName('TEM_ECOMERCIAL').AsString           := ifthen((AIni.ReadString('Remover', 'EComercial', '0') = '1' ),'S','N');
    Cadastro.FieldByName('TEM_TABULACAO').AsString            := ifthen((AIni.ReadString('Remover', 'Tabulacao', '0') = '1' ),'S','N');
    Cadastro.FieldByName('TEM_TAGQUEBRADELINHAUNICA').AsString:= ifthen((AIni.ReadString('Remover', 'TagQuebradeLinhaUnica', '0') = '1' ),'S','N');

    if Cadastro.FieldByName('METODO_ENVIO').AsString = '' then
    begin
      if Cadastro.FieldByName('TEM_RECSINCRONO').AsString = 'S' then
        Cadastro.FieldByName('METODO_ENVIO').AsString := 'Sincrono'
      else
      if Cadastro.FieldByName('TEM_RECEPCIONAR').AsString = 'S' then
        Cadastro.FieldByName('METODO_ENVIO').AsString := 'Assíncrono'
      else
        Cadastro.FieldByName('METODO_ENVIO').AsString := 'Gerar';
    end;

    if edtDescricao.Text = 'proGovDigital' then
    begin

    end;
    if edtDescricao.Text = 'proISSNET' then
    begin

    end;
//    Salvar o INI no Banco de Dados
//    AStream := TStringStream.Create;
    try
//      AIni.ReadBinaryStream(Empresa.FieldByName('CNPJCPF').AsString + 'Email', 'Mensagem', AStream);
      TBlobField(Cadastro.FieldByName('INI')).LoadFromFile(ACaminhoArquivo);
//      Cadastro.FieldByName('NF_EMAIL_MENSAGEM').AsString := AStream.DataString;
    finally
//      AStream.Free;
    end;
    Cadastro.Post;
  finally
    AIni.Free;
  end;

end;

procedure TFrmNF_Provedor.cxButton1Click(Sender: TObject);
var
  ACaminhoArquivo : string;
  AIni: TIniFile;
//  AStream: TStringStream;
begin
  inherited;
  // Buscar a Configuração do Provedor No Arquivo proverdor.Ini
  if Not Assigned(FConsulta) then
    FConsulta := TConsuNF_Provedor.Create(self);
  with TConsuM(FConsulta) do
  begin
    Consulta.first;
    while Not Consulta.Eof do
    begin
      ACaminhoArquivo :=IncludeTrailingPathDelimiter(Empresa.FieldByName('NFE_PATH').AsString)+'Schemas\NFSe\'+ Consulta.FieldByName('Descricao').AsString+'.ini';
      AIni := TIniFile.Create(ACaminhoArquivo);
      try
        {As definições abaixo foram feitas de acordo com a documentação do ACBr disponível no seguinte link:
         https://www.projetoacbr.com.br/forum/topic/51528-ao-enviar-um-rps-ou-lote-posso-usar-qualquer-m%C3%A9todo-de-envio/

        Para saber os serviços oferecidos pelo provedor basta olharmos para as seções:
        [Recepcionar] => Responsável por montar o envelope de Envio assíncrono, se consta a definição do envelope significa que este serviço esta disponível.
        [ConsSit] => Responsável por montar o envelope de Consulta a Situação do Lote, se consta a definição do envelope significa que este serviço esta disponível.
        [ConsLote] => Responsável por montar o envelope de Consulta ao Lote, se consta a definição do envelope significa que este serviço esta disponível.
        [ConsNFSeRps] => Responsável por montar o envelope de Consulta NFSe por RPS, se consta a definição do envelope significa que este serviço esta disponível.
        [ConsNFSe] => Responsável por montar o envelope de Consulta NFSe, se consta a definição do envelope significa que este serviço esta disponível.
        [Cancelar] => Responsável por montar o envelope de Cancelar NFSe, se consta a definição do envelope significa que este serviço esta disponível.
        [Gerar] => Responsável por montar o envelope de Gerar NFSe, se consta a definição do envelope significa que este serviço esta disponível.
        [RecSincrono] => Responsável por montar o envelope de Envio síncrono, se consta a definição do envelope significa que este serviço esta disponível.
        [Substituir] => Responsável por montar o envelope de Substituir NFSe, se consta a definição do envelope significa que este serviço esta disponível.

        //Código provisório... fazer algo dinâmico, que acesse algum local para obter o link
        pro4R:            AID := '13362'; // http://office.wr2.com.br/web#id=13362&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
        proAbaco:         AID := '13206'; // http://office.wr2.com.br/web#id=13206&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
        proBHISS:         AID := '15748'; // http://office.wr2.com.br/web#id=15748&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
        proBetha,
        proBethav2:       AID := '13133'; // http://office.wr2.com.br/web#id=13133&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
        proEquiplano:     AID := '13083'; // http://office.wr2.com.br/web#id=13083&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
        proGINFES:        AID := '12887'; // http://office.wr2.com.br/web#id=12887&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
        proISSe:          AID := '13089'; // http://office.wr2.com.br/web#id=13089&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
        proLexsom:        AID := '12805'; // http://office.wr2.com.br/web#id=12805&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
        proMetropolisWeb: AID := '12923'; // http://office.wr2.com.br/web#id=12923&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
        proPublica:       AID := '13109'; // http://office.wr2.com.br/web#id=13109&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537
        proTiplan,
        proTiplanv2:      AID := '13095'; // http://office.wr2.com.br/web#id=13095&view_type=form&model=helpdesk.t&action=780&active_id=2&menu_id=537

         }

        Cadastro.Edit;
        //Faz a leitura dos recursos do provedor para identificar se tem suporte

        // Métodos Suportados
        Cadastro.FieldByName('TEM_RECSINCRONO').AsString := ifthen((AIni.ReadString('SoapAction','RecSincrono' , '')<>''),'S','N');
        Cadastro.FieldByName('TEM_RECEPCIONAR').AsString := ifthen((AIni.ReadString('SoapAction','Recepcionar' , '')<>''),'S','N');
        Cadastro.FieldByName('TEM_GERAR').AsString       := ifthen((AIni.ReadString('SoapAction','Gerar'       , '')<>''),'S','N');
        Cadastro.FieldByName('TEM_CANCELAR').AsString    := ifthen((AIni.ReadString('SoapAction','Cancelar'    , '')<>''),'S','N');
        Cadastro.FieldByName('TEM_CONSNFSE').AsString    := ifthen((AIni.ReadString('SoapAction','ConsNFSe'    , '')<>''),'S','N');
        Cadastro.FieldByName('TEM_CONSNFSERPS').AsString := ifthen((AIni.ReadString('SoapAction','ConsNFSeRps' , '')<>''),'S','N');
        Cadastro.FieldByName('TEM_CONSLOTE').AsString    := ifthen((AIni.ReadString('SoapAction','ConsLote'    , '')<>''),'S','N');
        Cadastro.FieldByName('TEM_CONSSIT').AsString     := ifthen((AIni.ReadString('SoapAction','ConsSit'     , '')<>''),'S','N');
        Cadastro.FieldByName('TEM_SUBSTITUIR').AsString  := ifthen((AIni.ReadString('SoapAction','Substituir'  , '')<>''),'S','N');

        // Geral
        Cadastro.FieldByName('QUEBRADELINHA').AsString := AIni.ReadString('Geral', 'QuebradeLinha', '');
        Cadastro.FieldByName('TEM_CERTIFICADO_DIGITAL').AsString :=  ifthen((AIni.ReadString('Geral', 'UseCertificado', '0') = '1' ),'S','N');

        //Remover
        Cadastro.FieldByName('TEM_QUEBRADELINHARETORNO').AsString := ifthen((AIni.ReadString('Remover', 'QuebradeLinhaRetorno', '0') = '1' ),'S','N');
        Cadastro.FieldByName('TEM_ECOMERCIAL').AsString           := ifthen((AIni.ReadString('Remover', 'EComercial', '0') = '1' ),'S','N');
        Cadastro.FieldByName('TEM_TABULACAO').AsString            := ifthen((AIni.ReadString('Remover', 'Tabulacao', '0') = '1' ),'S','N');
        Cadastro.FieldByName('TEM_TAGQUEBRADELINHAUNICA').AsString:= ifthen((AIni.ReadString('Remover', 'TagQuebradeLinhaUnica', '0') = '1' ),'S','N');

        if Cadastro.FieldByName('METODO_ENVIO').AsString = '' then
        begin
          if Cadastro.FieldByName('TEM_RECSINCRONO').AsString = 'S' then
            Cadastro.FieldByName('METODO_ENVIO').AsString := 'Sincrono'
          else
          if Cadastro.FieldByName('TEM_RECEPCIONAR').AsString = 'S' then
            Cadastro.FieldByName('METODO_ENVIO').AsString := 'Assíncrono'
          else
            Cadastro.FieldByName('METODO_ENVIO').AsString := 'Gerar';
        end;

        if edtDescricao.Text = 'proGovDigital' then
        begin

        end;
        if edtDescricao.Text = 'proISSNET' then
        begin

        end;
        if edtDescricao.Text = 'GeisWeb' then    // Cajamar/SP 3509205
        begin                                    // Itatiniga/SP 3523503
                                                 // Pardinho/SP 3536109
        end;                                     // tietê/SP 3554508
        if edtDescricao.Text = 'Fiorilli' then
        begin

        end;
    //    Salvar o INI no Banco de Dados
    //    AStream := TStringStream.Create;
        try
    //      AIni.ReadBinaryStream(Empresa.FieldByName('CNPJCPF').AsString + 'Email', 'Mensagem', AStream);
          TBlobField(Cadastro.FieldByName('INI')).LoadFromFile(ACaminhoArquivo);
    //      Cadastro.FieldByName('NF_EMAIL_MENSAGEM').AsString := AStream.DataString;
        finally
    //      AStream.Free;
        end;
        Cadastro.Post;
      finally
        AIni.Free;
      end;
      Consulta.Next;
    end;
  end;
end;

procedure TFrmNF_Provedor.cxDBCheckBox18PropertiesChange(Sender: TObject);
begin
  inherited;
  LichkTem_Multiplos_Servico.Enabled:= Not chkTem_Impressao_Betha.Checked;
end;

procedure TFrmNF_Provedor.cxDBComboBox1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if DisplayValue = 'Assíncrono' then
  begin
    if Cadastro.FieldByName('TEM_RECEPCIONAR').AsString <> 'S' then
    begin
      ErrorText:='Método não Disponível para o Provedor, Marque a Opção: '+sLineBreak+' "Recepcionar" ';
      Error:=True;
    end;
  end;
  if DisplayValue = 'Síncrono' then
  begin
    if Cadastro.FieldByName('TEM_RECSINCRONO').AsString <> 'S' then
    begin
      ErrorText:='Método não Disponível para o Provedor, Marque a Opção: '+sLineBreak+'"Rec Sincronismo"';
      Error:=True;
    end;
  end;
  if DisplayValue = 'Gerar' then
  begin
    if Cadastro.FieldByName('TEM_GERAR').AsString <> 'S' then
    begin
      ErrorText:='Método não Disponível para o Provedor, Marque a Opção: '+sLineBreak+'"Gerar"';
      Error:=True;
    end;
  end;
end;

procedure TFrmNF_Provedor.edtDescricaoPropertiesChange(Sender: TObject);
begin
  inherited;
  btnLerProvedor.Caption:= 'Ler '+ edtDescricao.Text +'.INI';
end;

procedure TFrmNF_Provedor.edtLinkClick(Sender: TObject);
begin
  inherited;
  if edtLink.Text <> '' then
  begin
    ShellExecute(0, 'OPEN', PChar(edtLink.Text), nil, nil, SW_SHOWMAXIMIZED);
  end;
end;

initialization
  RegisterClass(TFrmNF_Provedor);

end.
