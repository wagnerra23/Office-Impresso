unit Validacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.StdCtrls,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxButtons,
  cxNavigator, Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, dxLayoutControl,
  cxHyperLinkEdit, dxSkinsCore, dxSkinscxPCPainter, cxTextEdit, cxMemo, dxLayoutLookAndFeels, dxLayoutControlAdapters,
  Vcl.Menus, cxImage, Vcl.Imaging.pngimage, System.JSON,
  Vcl.ExtCtrls, cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges,
  System.ImageList, Vcl.ImgList, cxImageList, dxGDIPlusClasses,
  FireDAC.Stan.Async, FireDAC.DApt, Classes.WR, cxButtonEdit, cxImageComboBox,
  dxUIAdorners, System.Generics.Collections, WREventos, dxRatingControl,
  UCHistDataset, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations, Controller.Obrigatorio.NFe;

type
  TFrmValidacoes = class(TForm)
    LibtnFecharGroup_Root: TdxLayoutGroup;
    LibtnFechar: TdxLayoutControl;
    GridSolucoesDBTableView1: TcxGridDBTableView;
    GridSolucoesLevel1: TcxGridLevel;
    GridSolucoes: TcxGrid;
    LayoutItemGridSolucoes: TdxLayoutItem;
    DS: TDataSource;
    FDMensagem: TFDMemTable;
    FDMensagemLINK: TStringField;
    GridSolucoesDBTableView1MENSAGEM: TcxGridDBColumn;
    GridSolucoesDBTableView1LINK: TcxGridDBColumn;
    lblTopTitulo: TcxLabel;
    LibtnFecharItem3: TdxLayoutItem;
    MemoMensagem: TcxMemo;
    LayoutItemMensagemErro: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    btnFechar: TcxButton;
    LibtnFecharItem1: TdxLayoutItem;
    LibtnFecharSeparatorItem1: TdxLayoutSeparatorItem;
    cxLabel2: TcxLabel;
    LibtnFecharItem5: TdxLayoutItem;
    imgFolha: TcxImage;
    LibtnFecharItem6: TdxLayoutItem;
    LibtnFecharGroup1: TdxLayoutAutoCreatedGroup;
    LibtnFecharGroup2: TdxLayoutAutoCreatedGroup;
    MenuGridSolucoes: TPopupMenu;
    C1: TMenuItem;
    C2: TMenuItem;
    cxImageList1: TcxImageList;
    EstiloTitulos: TcxEditStyleController;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    EstiloSubtitulos: TcxEditStyleController;
    EstiloItens: TcxEditStyleController;
    EstiloImagens: TcxEditStyleController;
    dxLayoutItem1: TdxLayoutItem;
    BtnConfig: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    GridSolucoesDBTableView1Icone: TcxGridDBColumn;
    GridSolucoesDBTableView1TELA: TcxGridDBColumn;
    GridSolucoesDBTableView1COMPONENTE: TcxGridDBColumn;
    FDMensagemNITEM: TIntegerField;
    NF_Erros: TFDQuery;
    FDMensagemCAMPO: TStringField;
    FDMensagemTELA: TStringField;
    FDMensagemERRO: TStringField;
    FDMensagemTAG: TStringField;
    FDMensagemTagNivel: TStringField;
    FDMensagemLabel: TStringField;
    FDMensagemDESCRICAO: TStringField;
    FDMensagemCOMPONENTE: TStringField;
    FDMensagemOBSERVACAO: TStringField;
    GridSolucoesDBTableView1VALIDACAO: TcxGridDBColumn;
    GridSolucoesDBTableView1CAMPO: TcxGridDBColumn;
    GridSolucoesDBTableView1Label: TcxGridDBColumn;
    GridSolucoesDBTableView1Tag_Start: TcxGridDBColumn;
    N1: TMenuItem;
    AtualizarShemas1: TMenuItem;
    Transa: TFDTransaction;
    dxLayoutItem2: TdxLayoutItem;
    lblNumeroOcorencias: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    FDMensagemVALIDACAO: TStringField;
    RespositorioEstilos: TcxStyleRepository;
    EstiloGridLinha1: TcxStyle;
    EstiloGridLinha2: TcxStyle;
    EstiloGridHeader: TcxStyle;
    EstiloSegoeSB14: TcxStyle;
    EstiloSegoe12: TcxStyle;
    EstiloSegoe18: TcxStyle;
    EstiloSegoe8: TcxStyle;
    MostrarMenssagemcomoErro1: TMenuItem;
    LibtnRegras: TdxLayoutItem;
    btnRegras: TcxButton;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    MenuRegra_Acoes: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    GridSolucoesDBTableView1ACAO: TcxGridDBColumn;
    FDMensagemACAO: TStringField;
    LIbtnContinuar: TdxLayoutItem;
    btnContinuar: TcxButton;
    amValidacao: TdxUIAdornerManager;
    bdgValidacao: TdxBadge;
    bdgConfirmar: TdxBadge;
    bdgImprimir: TdxBadge;
    bdgExcluir: TdxBadge;
    bdgAtencao: TdxBadge;
    amValidacaoGuide1: TdxGuide;
    GridSolucoesDBTableView1Desbloquear: TcxGridDBColumn;
    TransaConfiguracao: TFDTransaction;
    DSConfiguracao_Componente: TDataSource;
    Configuracao_Componente: TFDQuery;
    UCHistConfiguracao_Acoes_Regra: TUCHist_DataSet;
    Configuracao_Acoes_Regra: TFDQuery;
    DSConfiguracao_Acoes_Regra: TDataSource;
    procedure GridSolucoesDBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure C1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure AtualizarShemas1Click(Sender: TObject);
    procedure BtnConfigClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MostrarMenssagemcomoErro1Click(Sender: TObject);
    procedure btnRegrasClick(Sender: TObject);
    procedure amValidacaoGuide1GetCalloutPopupControl(
      AManager: TdxUIAdornerManager; AGuide: TdxGuide;
      var AControl: TWinControl);
    procedure amValidacaoGuide1Click(AManager: TdxUIAdornerManager;
      AAdorner: TdxCustomAdorner);
    procedure GridSolucoesDBTableView1Column1PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
    procedure PadraoErros(ATransaConfiguracao: TFDTransaction);
//    procedure TrataErros;
  public
    FFormCadastro : TForm;
    class function TrataErroNFe(AOwner: TForm; AMensagem : string): TModalResult;
    class function ValidacaoCampos(AOwner: TForm; AFDMenTable :TFDMemTable): TModalResult;//F
    procedure MostraGuides(AFormCadastro: TForm; AComponente:String; ADataSet :TDataSet);
  end;

Const
  Versao_Validacoes = 0;

implementation

uses
  Winapi.ShellAPI, Clipbrd, UnitFuncoes, AcbrUtil, wrFuncoes, System.StrUtils{,
  wrForms, CadM, NFe};


            //Se estava consultando e passou sem erros, trata o retorno da consulta
            //Aqui tem que verificar se o RPS consultado é o mesmo que está sendo emitido. Pode ocorrer de a emissão
            //informar um RPS que já havia sido utilizado em outra nota
            //TODO: TESTAR!
//            if AConsultar then
//            begin
//              try
//                WRLog('consultando e passou sem erros, trata o retorno da consulta');
//                AConsultar := False;
//                TrataRetornoConsultaNFSe(AACBrNFSe, ADataSetVenda.FieldByName('CODIGO').AsString);
//                WRLog('termina de tratar a consulta');
//              except
//                showmessage('Nao conseguiu tratar o retorno da consulta, mas vai continuar a emitir a nota');
//              end
//            end;
//           except
            {Aqui são tratados os erros relativos a ações que podem ser corrigidas automaticamente e o sistema
             vai ficar tentando até finalizar a emissão, seja TimeOut, erros de conexão, consultas para saber se a
             nota foi emitida, etc...
             Erros que não são corrigidos automaticamente devem ser relançados com "raise" para que o tratamento de
             exceção geral mais abaixo capture e trate}

//            on E:Exception do
//            begin
//              Application.ProcessMessages;
              {Aqui verificamos se deu erro. Caso sim, tenta novamente...
               MAS....
               Este erro pode ocorrer em qualquer etapa da emissão, então não sabemos se depois do erro a nota já
               foi emitida ou não. Então para isso temos que consultar o RPS antes de tentar emitir de novo...
               Porém (como nem tudo são flores) alguns provedores não possuem método de consulta de RPS, então ajoelha
               e reza pois o problema é mais em baixo...
               Tem que ver se é mais interessante tratar o retorno da consulta ou já listar os provedores diretamente
               que não tem consulta, mas de qualquer forma, o que fazer neste caso?
              WRLog(' se entrou aqui são tratados os erros relativos a ações que podem ser corrigidas automaticamente e o sistema' + #13#10 +
               'vai ficar tentando até finalizar a emissão, seja TimeOut, erros de conexão, consultas para saber se a' + #13#10 +
               'nota foi emitida, etc... ');
              if not AFrmAguarde.Cancelado then
              begin
                if AConsultar then
                begin
                  //O código aqui dentro ta meio repetido mas é pra ficar mais claro e didático o que deve acontecer
                  //em cada situação

                  //Se consultou e não existe esse RPS, então vamos emitir de novo a nota
                  if AnsiContainsText(E.Message, 'Pesquisa sem retorno') then
                  begin
                    WRLog('Se consultou e não existe esse RPS, então vamos emitir de novo a nota');
                    AConsultar       := False;
                    ATentarNovamente := True;
                  end
                   else if AnsiContainsText(E.Message, 'TimeOut') then
                  begin
                    WRLog('Erro de timeout, tenta de novo!');
                    //Erro de timeout, tenta de novo!
                    AConsultar       := True;
                    ATentarNovamente := True;
                  end
                  else if AnsiContainsText(E.Message, 'Erro Interno') then
                  begin
                    WRLog('Se deu erro interno, não adianta tentar de novo, fica em um looping infinito de tentativas');
                    //Se deu erro interno, não adianta tentar de novo, fica em um looping infinito de tentativas
                    raise;
                  end
                  else if AnsiContainsText(E.Message, 'nfse.xsd') then
                  begin
                    WRLog('Erro de XSD tem que corrigir os dados que estão sendo enviados ao WS, então não adianta tentar de novo');
                    //Erro de XSD tem que corrigir os dados que estão sendo enviados ao WS, então não adianta tentar de novo
                    raise;
                  end
                  else if AnsiContainsText(E.Message, 'RPS ja informado.') then
                  begin
                    WRLog('entrou no tratamento de excacao onde o RPS ja foi informado e deu um raise');
                    raise;
                  end else
                  begin
                    WRLog('Se consultou, deu algum erro nao tratado e não foi erro de nota não encontrada... que erro poderia ser? conexão? Tentar novamente');
                    WRLog(E.Message);
                    //Se consultou, deu erro e não foi erro de nota não encontrada... que erro poderia ser? conexão?
                    //deve tentar de novo?
                    ATentarNovamente := True; //Vamos tentar de novo pra ver no que dá...
                    AConsultar       := True;
                  end
                end
                else if AnsiContainsText(E.Message, 'nfse.xsd') then   //coloquei o tratamento do XSD aqui porque o que
                begin
//                    TrataErro(E.Message);                                           //estava dentro das exceções nunca iria cair, ai um
                  raise
                end                                                 //erro qualquer de digitação entrava em loop
                else
                  //Se estava emitindo e deu erro, consulta pra saber o que houve
                begin
                  WRLog('Se estava emitindo e deu erro, consulta pra saber o que houve');
                  WRLog(E.Message);
                  AConsultar       := True;
                  ATentarNovamente := True;
                end;
              end else
                raise; }
//            end;
//          end;
//        until not ATentarNovamente;
//      finally
////        AFrmAguarde.Free;
//      end;
      {.$ELSE}
//          ShowMessageWR('MODO DEBUG: A nota não foi enviada, apenas teste de geração do XML!!!');
//          TFrmNFSe.VisualizarNFSe(ACodNota);
      {.$ENDIF}

      //TODO: SigISS - Fazer a consulta da nota depois de emitir, não retorna XML
{
      if TConfig.ReadBoolean('NFSE_WEBSERVICE_AJUSTAR_AGUARDE_AUTOMATICO') then
      begin
        //Manter a flag ativa. Está em teste para saber se manter ela ativa a nota para de dar erro de timeout
        //TConfig.SaveBoolean('NFSE_WEBSERVICE_AJUSTAR_AGUARDE_AUTOMATICO', False);
        TConfig.SaveInteger('NFSE_WEBSERVICE_AGUARDAR',   AACBrNFSe.Configuracoes.WebServices.AguardarConsultaRet);
        TConfig.SaveInteger('NFSE_WEBSERVICE_TENTATIVAS', AACBrNFSe.Configuracoes.WebServices.Tentativas);
        TConfig.SaveInteger('NFSE_WEBSERVICE_INTERVALO',  AACBrNFSe.Configuracoes.WebServices.IntervaloTentativas);
        TConfig.SaveInteger('NFSE_WEBSERVICE_TIMEOUT',    AACBrNFSe.Configuracoes.WebServices.TimeOut);
      end;      }


//          TFrmNFSe.VisualizarNFSe(ACodNota);
     { if FFrmNotaFiscal.FFrmNFe.rgEnviarEmail.ItemIndex = 1 then
        EnviarEmailNFSe(Email);     }

              {
      Exit;
      if Pos('.xsd', E.Message) > 0 then
        ShowMessageWR('Os seus arquivos de Schemas não foram localizados ou não estão atualizados.' + sLineBreak +
                      'Verifique o caminho, atualize seus Schemas e tente novamente.'+ sLineBreak + sLineBreak +
                      E.Message)
      else
      if (E.ClassName = 'EACBrNFSeException') then
        ShowMessageWR(E.Message)
      else if Pos('Lote já processado', E.Message) > 0 then
        ShowMessageWR('O número de lote de RPS já foi utilizado neste WebService.' + sLineBreak +
                      'Altere o valor nos Parâmetros e tente novamente.')
      else if Pos('RPS ja informado.', E.Message) > 0 then
        ShowMessageWR('O número de lote de RPS já foi utilizado neste WebService.' + sLineBreak +
                      'Altere o valor nos Parâmetros e tente novamente.')

      else
        ShowMessage(E.ClassName + ', ' + E.Message); }

{$R *.dfm}

{ TFrmValidacoes }

class function TFrmValidacoes.ValidacaoCampos(AOwner: TForm; AFDMenTable :TFDMemTable): TModalResult;
var
  AFrmValidacoes: TFrmValidacoes;
begin
  AFrmValidacoes := TFrmValidacoes.Create(AOwner);
  AFrmValidacoes.FDMensagem:= AFDMenTable;
  AFrmValidacoes.FFormCadastro := AOwner;
  AFrmValidacoes.DS.DataSet:= AFrmValidacoes.FDMensagem;
  AFrmValidacoes.FDMensagem.Open;
  AFrmValidacoes.FDMensagem.First;
  while Not AFrmValidacoes.FDMensagem.Eof do
  begin
    if AFrmValidacoes.FDMensagem.FieldByName('VALIDACAO').AsString = 'Erro' then
      AFrmValidacoes.LIbtnContinuar.Visible:=False;
    AFrmValidacoes.FDMensagem.Next;
  end;
  Result:= AFrmValidacoes.ShowModal;
  //O Free é feito pelo CloseAction
end;

class function TFrmValidacoes.TrataErroNFe(AOwner: TForm; AMensagem : string): TModalResult;
var
  AFrmValidacoes: TFrmValidacoes;
begin
  AFrmValidacoes := TFrmValidacoes.Create(AOwner);
  AFrmValidacoes.FFormCadastro := AOwner;
  AFrmValidacoes.MemoMensagem.Lines.Text := UTF8Encode(AMensagem);
//  AFrmValidacoes.TrataErros;
  try
    Controller.Obrigatorio.NFe.TrataErrosNFe(AFrmValidacoes.FDMensagem, AFrmValidacoes.NF_Erros, AFrmValidacoes.MemoMensagem);
    AFrmValidacoes.LayoutItemGridSolucoes.Visible:=True;
  Except
    on E:EWRException do
    begin
      if E.Message = 'Erro Interno' then
        ShowMessage(E.Message);

      if E.Message = 'Erro não Catalogado' then
      begin
        AFrmValidacoes.LayoutItemMensagemErro.Visible:=True;
        AFrmValidacoes.LayoutItemGridSolucoes.Visible:=False;
        AFrmValidacoes.lblTopTitulo.Caption:='Erro não Catalogado';
        AFrmValidacoes.lblNumeroOcorencias.Caption:= '  ';
      end;
    end;
  end;

  AFrmValidacoes.LibtnRegras.Visible:=False;
  Result:=AFrmValidacoes.ShowModal;
  //O Free é feito pelo CloseAction
end;

//class function TFrmValidacoes.TrataXMLNFe(AOwner: TForm; AXML : string): TModalResult;
//var
//  AFrmValidacoes: TFrmValidacoes;
//begin
//  AFrmValidacoes := TFrmValidacoes.Create(Self);
//  AFrmValidacoes.FFormCadastro := AOwner;
//  AFrmValidacoes.MemoMensagem.Lines.Text := AXML;
//  AFrmValidacoes.TrataErros;
//  AFrmValidacoes.LibtnRegras.Visible:=False;
//  Result:=AFrmValidacoes.ShowModal;
//  //O Free é feito pelo CloseAction
//end;

//procedure TFrmValidacoes.TrataXML(AStream: TStream);
//
//  function LGetValue(AParentNode: IXMLNode; const ANodeName: string): string;
//  var
//    ANode: IXMLNode;
//  begin
//    ANode := AParentNode.ChildNodes.FindNode(ANodeName);
//    if ANode = nil then
//      Result := ''
//    else
//      Result := ANode.Text;
//  end;
//
//var
//  ARoot, ATmpNode, ATmpNode2 :IXMLNode;
//  AXML: IXMLDocument;
//begin
//  AXML := TXMLDocument.Create(nil);
//  AStream.Position := 0;
//  AXML.LoadFromStream(AStream);
//  ARoot := AXML.ChildNodes.FindNode('RetornoConsultaLote');
//  if ARoot <> nil then
//  begin
//    ATmpNode := ARoot.ChildNodes.FindNode('Cabecalho');
//    if ATmpNode <> nil then
//    begin
//      ATmpNode2 := ATmpNode.ChildNodes.FindNode('Erros');
//      if ATmpNode2 <> nil then
//      begin
//        MenssagemErro := LGetValue(ATmpNode2, 'Erro');
//        TFrmValidacoes.TrataErroNFe(TForm(TFrmVenda), MenssagemErro);
//      end;
//    end;
//  end;
//end;

procedure TFrmValidacoes.PadraoErros(ATransaConfiguracao: TFDTransaction);
var
  QuerX : TFDQuery;

  procedure ErrosPadrao( ATela, AComponente, ACampo, ATag, ATagNivel : String);
  begin

  end;

begin
  tRY
    {$REGION 'Emitente'}
    ErrosPadrao('TFrmEmpresa', 'Componente', 'CNPJCPF',    'CNPJCPF', '<dest><enderDest>');  // Emit.CNPJCPF := OnlyNumberWR(FEmpresa.FieldByName('CnpjCpf').AsString);
    ErrosPadrao('TFrmEmpresa', 'Componente', 'INSCIDENT',  'IE', '<dest><enderDest>');       // Emit.IE      := AnsiReplaceText(FEmpresa.FieldByName('InscIdent').AsString,'.','');
    ErrosPadrao('TFrmEmpresa', 'Componente', 'RazaoSocial', '', '<dest><enderDest>');        // Emit.xNome   := FEmpresa.FieldByName('RazaoSocial').AsString;
    ErrosPadrao('TFrmEmpresa', 'Componente', 'Fantasia', '', '<dest><enderDest>');           // Emit.xFant   := FEmpresa.FieldByName('Fantasia').AsString;

    ErrosPadrao('TFrmEmpresa', 'Componente', 'CNPJCPF',    'CNPJCPF', '<dest><enderDest>');  // Emit.CNPJCPF := OnlyNumberWR(FEmpresa.FieldByName('CnpjCpf').AsString);
    ErrosPadrao('TFrmEmpresa', 'Componente', 'INSCIDENT',  'IE', '<dest><enderDest>');       // Emit.IE      := AnsiReplaceText(FEmpresa.FieldByName('InscIdent').AsString,'.','');
    ErrosPadrao('TFrmEmpresa', 'Componente', 'RazaoSocial', '', '<dest><enderDest>');        // Emit.xNome   := FEmpresa.FieldByName('RazaoSocial').AsString;
    ErrosPadrao('TFrmEmpresa', 'Componente', 'Fantasia', '', '<dest><enderDest>');           // Emit.xFant   := FEmpresa.FieldByName('Fantasia').AsString;
    ErrosPadrao('TFrmEmpresa', 'Componente', 'CRT', '', '<dest><enderDest>');                // Emit.CRT := StrToCRT(FOk, IntToSTr(AnsiIndexStr(UpperCase(FEmpresa.FieldByName('CRT').AsString), ['', 'SIMPLES NACIONAL', 'SIMPLES NACIONAL - EXCESSO', 'REGIME NORMAL'])));

    ErrosPadrao('TFrmEmpresa', 'Componente', 'Fone1', '', '<dest><enderDest>');              // Emit.EnderEmit.fone    := OnlyNumberWR(FEmpresa.FieldByName('Fone1').AsString);
    ErrosPadrao('TFrmEmpresa', 'Componente', 'CEP', '', '<dest><enderDest>');                // Emit.EnderEmit.CEP     := StrToIntDef(OnlyNumberWR(FEmpresa.FieldByName('CEP').AsString), 0);
    ErrosPadrao('TFrmEmpresa', 'Componente', 'Endereco', '', '<dest><enderDest>');           // Emit.EnderEmit.xLgr    := FEmpresa.FieldByName('Endereco').AsString;
    ErrosPadrao('TFrmEmpresa', 'Componente', 'NUMERO', '', '<dest><enderDest>');             // Emit.EnderEmit.nro     := FEmpresa.FieldByName('Numero').AsString;
    ErrosPadrao('TFrmEmpresa', 'Componente', 'BAIRRO', '', '<dest><enderDest>');             // Emit.EnderEmit.xBairro := FEmpresa.FieldByName('Bairro').AsString;
    ErrosPadrao('TFrmEmpresa', 'Componente', 'CodCidade', '', '<dest><enderDest>');          // Emit.EnderEmit.cMun    := FEmpresa.FieldByName('CodCidade').AsInteger;
    ErrosPadrao('TFrmEmpresa', 'Componente', 'Cidade', '', '<dest><enderDest>');             // Emit.EnderEmit.xMun    := FEmpresa.FieldByName('Cidade').AsString;
    ErrosPadrao('TFrmEmpresa', 'Componente', 'UF', '', '<dest><enderDest>');                 // Emit.EnderEmit.UF      := FEmpresa.FieldByName('UF').AsString;
    ErrosPadrao('TFrmEmpresa', 'Componente', 'CodPais', '', '<dest><enderDest>');            // Emit.EnderEmit.cPais   := FEmpresa.FieldByName('CodPais').AsInteger;
    ErrosPadrao('TFrmEmpresa', 'Componente', 'Pais', '', '<dest><enderDest>');               // Emit.EnderEmit.xPais   := FEmpresa.FieldByName('Pais').AsString;

    //if not (FNotaTipo = nftNFCe) then
    ErrosPadrao('TFrmEmpresa', 'Componente', 'IM', '', '<dest><enderDest>');                 // Emit.IM   := FEmpresa.FieldByName('IM').AsString; // Preencher no caso de existir serviços na nota
    ErrosPadrao('TFrmEmpresa', 'Componente', 'CNAE', '', '<dest><enderDest>');               // Emit.CNAE := FEmpresa.FieldByName('CNAE').AsString;// Verifique na cidade do emissor da NFe se é permitido
    ErrosPadrao('TFrmEmpresa', 'Componente', 'NF_IE_SUBST', '', '<dest><enderDest>');        // Emit.IEST := AnsiReplaceText(FWRCalc.DBVendaOuCompra.FieldByName('NF_IE_SUBST').AsString, '.', '');
{$ENDREGION}

    {$REGION 'Destinatário'}
    ErrosPadrao('TFrmPessoas', 'Componente', 'CNPJCPF',    'CNPJCPF', '<dest><enderDest>');  // Emit.CNPJCPF := OnlyNumberWR(FEmpresa.FieldByName('CnpjCpf').AsString);
    ErrosPadrao('TFrmPessoas', 'Componente', 'INSCIDENT',  'IE', '<dest><enderDest>');       // Emit.IE      := AnsiReplaceText(FEmpresa.FieldByName('InscIdent').AsString,'.','');
    ErrosPadrao('TFrmPessoas', 'Componente', 'RazaoSocial', '', '<dest><enderDest>');            // Emit.xNome   := FEmpresa.FieldByName('RazaoSocial').AsString;
    ErrosPadrao('TFrmPessoas', 'Componente', 'Fantasia', '', '<dest><enderDest>');               // Emit.xFant   := FEmpresa.FieldByName('Fantasia').AsString;

    ErrosPadrao('TFrmPessoas', 'Componente', 'Fone1', '', '<dest><enderDest>');
    ErrosPadrao('TFrmPessoas', 'Componente', 'CEP', '', '<dest><enderDest>');
    ErrosPadrao('TFrmPessoas', 'Componente', 'Endereco', '', '<dest><enderDest>');
    ErrosPadrao('TFrmPessoas', 'Componente', 'NUMERO', '', '<dest><enderDest>');
    ErrosPadrao('TFrmPessoas', 'Componente', 'BAIRRO', '', '<dest><enderDest>');
    ErrosPadrao('TFrmPessoas', 'Componente', 'CodCidade', '', '<dest><enderDest>');
    ErrosPadrao('TFrmPessoas', 'Componente', 'Cidade', '', '<dest><enderDest>');
    ErrosPadrao('TFrmPessoas', 'Componente', 'UF', '', '<dest><enderDest>');
    ErrosPadrao('TFrmPessoas', 'Componente', 'CodPais', '', '<dest><enderDest>');
    ErrosPadrao('TFrmPessoas', 'Componente', 'Pais', '', '<dest><enderDest>');
    ErrosPadrao('TFrmPessoas', 'Componente', 'IM', '', '<dest><enderDest>');
    ErrosPadrao('TFrmPessoas', 'Componente', 'CNAE', '', '<dest><enderDest>');
    ErrosPadrao('TFrmPessoas', 'Componente', 'NF_IE_SUBST', '', '<dest><enderDest>');
    ErrosPadrao('TFrmPessoas', 'Componente', 'CRT', '', '<dest><enderDest>');

    {$ENDREGION}

    {$REGION 'Endereço entrega'}
    // Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
  //  if (FNotaTipo = nftNFe) and (FWRCalc.DBVendaOuCompra.FieldByName('ENDERECO_ENTREGA').AsString <> '') then
  //  begin
    ErrosPadrao('TFrmVenda', 'Componente', 'ENTREGA_CNPJCPF',  'CNPJCPF', '<entrega><enderDest>');  //  Entrega.CNPJCPF := FWRCalc.DBVendaOuCompra.FieldByName('ENTREGA_CNPJCPF').AsString;
    ErrosPadrao('TFrmVenda', 'Componente', 'ENDERECO_ENTREGA', 'xLgr',    '<entrega><enderDest>');  //  Entrega.xLgr    := FWRCalc.DBVendaOuCompra.FieldByName('ENDERECO_ENTREGA').AsString;
    ErrosPadrao('TFrmVenda', 'Componente', 'CNPJCPF',          'nro',     '<entrega><enderDest>');  //  Entrega.nro     := FWRCalc.DBVendaOuCompra.FieldByName('NUMERO_ENTREGA').AsString;
    ErrosPadrao('TFrmVenda', 'Componente', 'CNPJCPF',          'xCpl',    '<entrega><enderDest>');  //  Entrega.xCpl    := FWRCalc.DBVendaOuCompra.FieldByName('COMPLEMENTO_ENTREGA').AsString;
    ErrosPadrao('TFrmVenda', 'Componente', 'CNPJCPF',          'xBairro', '<entrega><enderDest>');  //  Entrega.xBairro := FWRCalc.DBVendaOuCompra.FieldByName('BAIRRO_ENTREGA').AsString;
    ErrosPadrao('TFrmVenda', 'Componente', 'CNPJCPF',          'cMun',    '<entrega><enderDest>');  //  Entrega.cMun    := FWRCalc.DBVendaOuCompra.FieldByName('CODCIDADE_ENTREGA').AsInteger;
    ErrosPadrao('TFrmVenda', 'Componente', 'CNPJCPF',          'xMun',    '<entrega><enderDest>');  //  Entrega.xMun    := FWRCalc.DBVendaOuCompra.FieldByName('ENTREGA_CIDADE').AsString;
    ErrosPadrao('TFrmVenda', 'Componente', 'CNPJCPF',          'UF',      '<entrega><enderDest>');  //  Entrega.UF      := FWRCalc.DBVendaOuCompra.FieldByName('UF_ENTREGA').AsString;
    ErrosPadrao('TFrmVenda', 'Componente', 'CNPJCPF',          'xNome',   '<entrega><enderDest>');  //  Entrega.xNome   := FWRCalc.DBVendaOuCompra.FieldByName('ENTREGA_NOME').AsString;
    ErrosPadrao('TFrmVenda', 'Componente', 'CNPJCPF',          'CEP',     '<entrega><enderDest>');  //  Entrega.CEP     := StrToIntDef(OnlyNumberWR(FWRCalc.DBVendaOuCompra.FieldByName('CEP_ENTREGA').AsString), 0);
    ErrosPadrao('TFrmVenda', 'Componente', 'CNPJCPF',          'cPais',   '<entrega><enderDest>');  //  Entrega.cPais   := FWRCalc.DBVendaOuCompra.FieldByName('ENTREGA_CODPAIS').AsInteger;
    ErrosPadrao('TFrmVenda', 'Componente', 'CNPJCPF',          'xPais',   '<entrega><enderDest>');  //  Entrega.xPais   := FWRCalc.DBVendaOuCompra.FieldByName('ENTREGA_PAIS').AsString;
    ErrosPadrao('TFrmVenda', 'Componente', 'CNPJCPF',          'fone',    '<entrega><enderDest>');  //  Entrega.fone    := FWRCalc.DBVendaOuCompra.FieldByName('ENTREGA_FONE').AsString;
    ErrosPadrao('TFrmVenda', 'Componente', 'CNPJCPF',          'Email',   '<entrega><enderDest>');  //  Entrega.Email   := FWRCalc.DBVendaOuCompra.FieldByName('ENTREGA_EMAIL').AsString;
    ErrosPadrao('TFrmVenda', 'Componente', 'CNPJCPF',          'IE',      '<entrega><enderDest>');  //  Entrega.IE      := FWRCalc.DBVendaOuCompra.FieldByName('ENTREGA_IE').AsString;
  //  end;
    {$ENDREGION}

    {$REGION 'Produto/Serviço'}
    ErrosPadrao('TFrmProduto', 'SEQUENCIA', 'Componente', 'nItem', '<det nItem="%"><prod>');     // Prod.nItem := I; // Número sequencial, para cada item deve ser incrementado
    ErrosPadrao('TFrmProduto', 'CODIGO', 'Componente', 'cProd', '<det nItem="%"><prod>');        // Prod.cProd := FWRCalc.DBProduto.FieldByName('CODPRODUTO').AsString;
    ErrosPadrao('TFrmProduto', 'CODIGOEAN', 'Componente', 'cEAN', '<det nItem="%"><prod>');      // Prod.cEAN := FWRCalc.DBProduto.FieldByName('CODIGOEAN').AsString;
    ErrosPadrao('TFrmProduto', 'CODIGOEAN', 'Componente', 'cEANTrib', '<det nItem="%"><prod>');  // Prod.cEANTrib := FWRCalc.DBProduto.FieldByName('CODIGOEAN').AsString;

    ErrosPadrao('TFrmProduto', 'CODIGO', 'Componente', 'cProd', '<det nItem="%"><prod>');      // Prod.xProd := Copy(FWRCalc.DBProduto.FieldByName('DESCRICAO').AsString, 1, 120);
    ErrosPadrao('TFrmProduto', 'DESCRICAO_NFE', 'Componente', 'infAdProd', '<det nItem="%"><prod>');      // infAdProd := Copy(FWRCalc.DBProduto.FieldByName('DESCRICAO').AsString, 121, Length(FWRCalc.DBProduto.FieldByName('DESCRICAO').AsString));//Informação Adicional do Produto
    ErrosPadrao('TFrmProduto', 'CODNF_NCM', 'Componente', 'NCM', '<det nItem="%"><prod>');      // Prod.NCM := FWRCalc.DBProduto.FieldByName('CODNF_NCM').AsString;
    ErrosPadrao('TFrmProduto', 'NF_XPED', 'Componente', 'xPed', '<det nItem="%"><prod>');      // Prod.xPed     := IfThen(FWRCalc.DBProduto.FieldByName('NF_XPED').AsString.Trim <> '', FWRCalc.DBProduto.FieldByName('NF_XPED').AsString.Trim, FWRCalc.DBVendaOuCompra.FieldByName('PEDIDO_COMPRA').AsString.Trim);

    ErrosPadrao('TFrmProduto', 'NF_NITEMPED', 'Componente', 'nItemPed', '<det nItem="%"><prod>');      // Prod.nItemPed := FWRCalc.DBProduto.FieldByName('NF_NITEMPED').AsString;

    ErrosPadrao('TFrmProduto', 'EXTIPI', 'Componente', 'EXTIPI', '<det nItem="%"><prod>');      // Prod.EXTIPI := '';//FWRCalc.DBProduto.FieldByName('EXTIPI').AsString;
    ErrosPadrao('TFrmProduto', 'CODNF_CFOP', 'Componente', 'CFOP', '<det nItem="%"><prod>');      // Prod.CFOP   := FWRCalc.DBProduto.FieldByName('CODNF_CFOP').AsString;
    ErrosPadrao('TFrmProduto', 'UNIDADE', 'Componente', 'uCom', '<det nItem="%"><prod>');      // Prod.uCom   := FWRCalc.DBProduto.FieldByName('UNIDADE').AsString;
    ErrosPadrao('TFrmProduto', 'UNIDADE', 'Componente', 'uTrib', '<det nItem="%"><prod>');      //  Prod.uTrib  := FWRCalc.DBProduto.FieldByName('UNIDADE').AsString

    ErrosPadrao('TFrmProduto', 'TOTAL', 'Componente', 'vProd', '<det nItem="%"><prod>');      // Prod.vProd := StrToFloat(FormatFloat('0.00##', FPercDesconto * FWRCalc.DBProduto.FieldByName('TOTAL').AsFloat));

    {$ENDREGION}

    {$REGION 'Restante....'}
      (*
        Prod.qCom    := StrToFloatDef(FormatFloat('0.00####', FWRCalc.DBProduto.FieldByName('QUANT').AsFloat), 0);
        Prod.qTrib   := StrToFloatDef(FormatFloat('0.00####', FWRCalc.DBProduto.FieldByName('QUANT').AsFloat), 0);
        Prod.vUnCom  := FWRCalc.DBProduto.FieldByName('VALOR').AsFloat;
        Prod.vUnCom  := StrToFloatDef(FormatFloat('0.00########', FPercDesconto * Prod.vUnCom), 0);
        Prod.vUnTrib := Prod.vUnCom;

      Prod.cBenef := FWRCalc.DBProduto.FieldByName('NF_CBENEF').AsString;
      Prod.vDesc  := FPercDesconto * FWRCalc.DBProduto.FieldByName('VDESC').AsFloat;
      Prod.vOutro := FPercDesconto * FWRCalc.DBProduto.FieldByName('VOUTRO').AsFloat;
      if FNotaTipo = nftNFe then
      begin
        Prod.vSeg   := 0;//FWRCalc.DBProduto.FieldByName('Seg').AsFloat;
        Prod.vFrete := FWRCalc.DBProduto.FieldByName('NF_VFRETE').AsFloat;
      end;

      {$REGION 'Dados Adicionais IMPORTAÇÃO'}
      if FWRCalc.DBProduto.FieldByName('NF_NDI').AsString <> '' then
      begin
        with Prod.DI.New do
        begin
          nDi := FWRCalc.DBProduto.FieldByName('NF_NDI').AsString;
          dDi := FWRCalc.DBProduto.FieldByName('NF_DDI').AsDateTime;
  //                    if Ide.tpNF = tnEntrada then //verificar se precisa dessa linha
          begin
            xLocDesemb  := FWRCalc.DBProduto.FieldByName('NF_XLOCDESEMB').AsString;
            UFDesemb    := FWRCalc.DBProduto.FieldByName('NF_UFDESEMB').AsString;
            dDesemb     := FWRCalc.DBProduto.FieldByName('NF_DDESEMB').AsDateTime;
            cExportador := FWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
          end;
          //Imposto.II    :=  Venda.FieldByname('NF_II_VII').AsFloat;
          //Imposto.COFINS:= Venda.FieldByname('NF_COFINSST_VCOFINS').AsFloat;
          //Imposto.IPI   := Venda.FieldByname('NF_IPI_VIPI').AsFloat;
          with adi.New do // Declaração de Importação. Pode ser adicionada várias através do comando Prod.DI.Add
          begin
            nAdicao     := 1;
            nSeqAdi     := 1;
            cFabricante := '8875';
            vDescDI     := 0;
          end;
        end;
      end;
      //********* DADOS Adicionais IMPORTAÇÃO*******************************
    {  CriaSql_Com_End_Responsavel;
      if (QuerY.FieldByName('UF').AsString = 'EX') and (VENDA.FieldByName('NF_SAIDA_ENTRADA').AsInteger = 0) then
      begin
        Prod.DI.Add;
        with Prod.DI[0]  do //FWRCalc.DBProduto.FieldByName('CODIGO').AsInteger-1
        begin
          nDi         :=FWRCalc.DBProduto.FieldByName('NDI').AsString;
          if trim(FWRCalc.DBProduto.FieldByName('DDI').AsString) <> '' then
            DDI       := FWRCalc.DBProduto.FieldByName('DDI').AsDateTime;
          xLocDesemb  := FWRCalc.DBProduto.FieldByName('xLocDesemb').AsString;
          UFDesemb    :='RS';
          if trim(FWRCalc.DBProduto.FieldByName('dDesemb').AsString) <> '' then
            dDesemb   := FWRCalc.DBProduto.FieldByName('dDesemb').AsDateTime;
          cExportador:= FWRCalc.DBProduto.FieldByName('cExportador').AsString;
          // informações adicionais de importação
          adi.Add;                  //       Tag de Adições - <adi> - Ocorrência 1-N
          adi[0].nAdicao := 4;      // I26 - Numero da adição
          adi[0].nSeqAdi := 1;      // I27 - Numero seqüencial do item dentro da adição
          adi[0].cFabricante := '999'; // I28 - Código do fabricante estrangeiro
          adi[0].vDescDI := 0;
        end;
      end;
      QuerY.Free; }
      {$ENDREGION}

      {$REGION 'Veiculos'}
      // Campos para venda de veículos novos
      if FWRCalc.DBProduto.FieldByName('VEICULO_CHASSI').AsString <> '' then
      with Prod.veicProd do
      begin
        //tpOP    := toVendaConcessionaria;
        chassi  := FWRCalc.DBProduto.FieldByName('VEICULO_CHASSI').AsString;
        cCor    := FWRCalc.DBProduto.FieldByName('CODCOR').AsString;
        xCor    := FWRCalc.DBProduto.FieldByName('COR').AsString;
        pot     := FloatToStr(FWRCalc.DBProduto.FieldByName('VEICULO_HP').AsFloat);
        Cilin   := FloatToStr(FWRCalc.DBProduto.FieldByName('VEICULO_CILINDRADA').AsFloat);
        pesoL   := FloatToStr(FWRCalc.DBProduto.FieldByName('CALC_QPESO_LIQUIDO').AsFloat);
        pesoB   := FloatToStr(FWRCalc.DBProduto.FieldByName('CALC_QPESO_BRUTO').AsFloat);
        nSerie  := FWRCalc.DBProduto.FieldByName('VEICULO_NUMERO_SERIE').AsString;
        tpComb  := FWRCalc.DBProduto.FieldByName('VEICULO_COMBUSTIVEL').AsString;
        nMotor  := FWRCalc.DBProduto.FieldByName('VEICULO_MOTOR').AsString;
        CMT     := FWRCalc.DBProduto.FieldByName('VEICULO_CILINDRADA').AsString;
        dist    := FWRCalc.DBProduto.FieldByName('VEICULO_DIST').AsString;
  //              RENAVAM := FWRCalc.DBProduto.FieldByName('VEICULO_RENAVAN').AsString;
        anoMod  := StrToInt(FWRCalc.DBProduto.FieldByName('VEICULO_ANO_MODELO').AsString);
        anoFab  := StrToInt(FWRCalc.DBProduto.FieldByName('VEICULO_ANO_FABRICACAO').AsString);
        tpPint  := '1';
        //tpVeic  := StrtoInt(FWRCalc.DBProduto.FieldByName('VEICULO_TIPO').AsString);
        //espVeic := StrToInt(FWRCalc.DBProduto.FieldByName('VEICULO_CONDICAO_VEICULO').AsString);
        VIN     := 'N';
        //condVeic := cvAcabado;
        cMod    := FWRCalc.DBProduto.FieldByName('VEICULO_CMOD').AsString;
        cCorDENATRAN := FWRCalc.DBProduto.FieldByName('VEICULO_COR_DENATRAN').AsString;
      end;
      {$ENDREGION}

      {$REGION 'Impostos'}
    ErrosPadrao('TFrmProduto_Grupo', 'CFOP', 'cOMPONENTE', '', '<det nItem="%"><prod>');
    ErrosPadrao('TFrmProduto_Grupo', 'CFOP', 'cOMPONENTE', '', '<det nItem="%"><prod>');


      with Imposto do
      begin
        with ICMS do
        begin

          orig := StrToOrig(FOk, Copy(FWRCalc.DBProduto.FieldByName('CODNF_CST').AsString, 1, 1));
          case ANFe.Emit.CRT of
            crtRegimeNormal, crtSimplesExcessoReceita:
            begin
          {    if FWRCalc.DBProduto.FieldByName('CODNF_CST').AsString = '110' then
              begin
                modBC     := dbiMargemValorAgregado;                                                                    // N13 - Modalidade de determinação da BC do ICMS
                pRedBC    := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('pRedBC').AsFloat));         // N14 - Percentual da Redução de BC do ICMS
                vBC       := StrToFloat(FormatFloat('0.00',Porcentag
                em_desconto*FWRCalc.DBProduto.FieldByName('vBC').AsFloat));              // N15 - Valor da BC do ICMS
                pICMS     := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('pICMS').AsFloat));        // N16 - Alíquota do imposto
                vICMS     := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('vICMS').AsFloat));           // N17 - Valor do ICMS
                modBCST   := dbisMargemValorAgregado;                                                                   // N18 - Modalidade de determinação da BC do ICMS ST
                pMVAST    := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('pMVAST').AsFloat));       // N19 - Percentual da margem de valor Adicionado do ICMS ST
                pRedBCST  := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('pRedBCST').AsFloat));      // N20 - Percentual da Redução de BC do ICMS ST
                vBCST     := StrToFloat(FormatFloat('0.00',Porcentag
                em_desconto*FWRCalc.DBProduto.FieldByName('vBCST').AsFloat));           // N21 - Valor da BC do ICMS ST
                pICMSST   := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('pICMSST').AsFloat));     // N22 - Alíquota do imposto do ICMS ST
                vICMSST   := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('vICMSST').AsFloat));        // N23 - Valor do ICMS ST
                CriaSql_Com_End_Responsavel;
                if (QuerY.FieldByName('UF').AsString = 'EX') and (VENDA.FieldByName('NF_SAIDA_ENTRADA').AsInteger = 0) then
                begin
                  CST       := StrToCSTICMS(Booleana,'00');
                  pICMS     := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('pICMSST').AsFloat)); // 4,5%
                  vICMSST   :=0;
                  pICMSST   :=0;
                  vBCST     :=0;
                  pMVAST    :=0;
                  pRedBCST  :=0;
                end
                else CST    := StrToCSTICMS(Booleana,'10');
                orig := oeEstrangeiraImportacaoDireta; //produto importado
              end else
              begin  }
              CST  := StrToCSTICMS(FOk, Trim(Copy(FWRCalc.DBProduto.FieldByName('CODNF_CST').AsString,2,2)));
              case CST of
              cst00 :
                begin
                  modBC := TpcnDeterminacaoBaseIcms(FWRCalc.DBProduto.FieldByName('NF_ICMS_MODBC').AsInteger);                                  // N13 - Modalidade de determinação da BC do ICMS
                  vBC   := StrToFloat(FormatFloat('0.00',(FPercDesconto*(FWRCalc.DBProduto.FieldByName('NF_vBC').AsExtended))));         // N15 - Valor da BC do ICMS
                  pICMS := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pICMS').AsExtended));                                // N16 - Alíquota do imposto
                  vICMS := StrToFloat(FormatFloat('0.00',(FPercDesconto*(FWRCalc.DBProduto.FieldByName('NF_vICMS').AsExtended))));       // N17 - Valor do ICMS
                end;
              cst10 :
                begin
                  modBC     := TpcnDeterminacaoBaseIcms(FWRCalc.DBProduto.FieldByName('NF_ICMS_MODBC').AsInteger);                              // N13 - Modalidade de determinação da BC do ICMS
                  vBC       := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vBC').AsExtended));         // N15 - Valor da BC do ICMS
                  pICMS     := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pICMS').AsExtended));                            // N16 - Alíquota do imposto
                  vICMS     := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vICMS').AsExtended));       // N17 - Valor do ICMS
                  modBCST   := TpcnDeterminacaoBaseIcmsST(FWRCalc.DBProduto.FieldByName('NF_ICMS_MODBCST').AsInteger);                          // N18 - Modalidade de determinação da BC do ICMS ST
                  pMVAST    := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pMVAST').AsExtended));                           // N19 - Percentual da margem de valor Adicionado do ICMS ST
                  pRedBCST  := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pRedBCST').AsExtended));                         // N20 - Percentual da Redução de BC do ICMS ST
                  vBCST     := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vBCST').AsExtended));       // N21 - Valor da BC do ICMS ST
                  pICMSST   := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pICMSST').AsExtended));                          // N22 - Alíquota do imposto do ICMS ST
                  vICMSST   := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vICMSST').AsExtended));     // N23 - Valor do ICMS ST
                end;
              cst20 :
                begin
                  modBC   := TpcnDeterminacaoBaseIcms(FWRCalc.DBProduto.FieldByName('NF_ICMS_MODBC').AsInteger);                                // N13 - Modalidade de determinação da BC do ICMS
                  pRedBC  := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pRedBC').AsExtended));                             // N14 - Percentual da Redução de BC do ICMS
                  vBC     := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vBC').AsExtended));           // N15 - Valor da BC do ICMS
                  pICMS   := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pICMS').AsExtended));                              // N16 - Alíquota do imposto
                  vICMS   := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vICMS').AsExtended));         // N17 - Valor do ICMS
                end;
              cst30 :
                begin
                  modBCST   := TpcnDeterminacaoBaseIcmsST(FWRCalc.DBProduto.FieldByName('NF_ICMS_MODBCST').AsInteger);                          // N18 - Modalidade de determinação da BC do ICMS ST
                  pMVAST    := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pMVAST').AsExtended));                           // N19 - Percentual da margem de valor Adicionado do ICMS ST
                  pRedBCST  := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pRedBCST').AsExtended));                         // N20 - Percentual da Redução de BC do ICMS ST
                  vBCST     := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vBCST').AsExtended));       // N21 - Valor da BC do ICMS ST
                  pICMSST   := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pICMSST').AsExtended));                          // N22 - Alíquota do imposto do ICMS ST
                  vICMSST   := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vICMSST').AsExtended));     // N23 - Valor do ICMS ST
                end;
              cst40,
              cst41,
              cst50 :
                begin
                   //Esse bloco fica a critério de cada UF a obrigação das informações, conforme o manual
                  vICMS       := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vICMS').AsFloat));        // N17 - Valor do ICMS
                  motDesICMS  := mdiOutros;               // N28 - Motivo da desoneração do ICMS
                end;
              cst51 :
                begin
                   //Esse bloco fica a critério de cada UF a obrigação das informações, conforme o manual
                   modBC  := TpcnDeterminacaoBaseIcms(FWRCalc.DBProduto.FieldByName('NF_ICMS_MODBC').AsInteger);                                // N13 - Modalidade de determinação da BC do ICMS
                   pRedBC := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pRedBC').AsFloat));                                // N14 - Percentual da Redução de BC do ICMS
                   vBC    := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vBC').AsFloat));              // N15 - Valor da BC do ICMS
                   pICMS  := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pICMS').AsFloat));                                 // N16 - Alíquota do imposto
                   vICMS  := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vICMS').AsFloat));            // N17 - Valor do ICMS

                   if FWRCalc.DBProduto.FieldByName('NF_TEM_DIFERIMENTO').AsString = 'S' then
                   begin
                     pDif     := FWRCalc.DBProduto.FieldByName('NF_pDif').AsFloat;
                     vICMSDif := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vICMSDif').AsFloat));
                     vICMSOp  := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vICMSOp').AsFloat));
                   end;
                end;
              cst60 :
                begin
                   vBCSTRET   := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vBCSTRET').AsFloat));     // N26 - Valor da BC do ICMS ST retido
                   vICMSSTRET := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vICMSSTRET').AsFloat));   // N27 - Valor do ICMS ST retido
                end;
              cst70 :
                begin
                  modBC     := TpcnDeterminacaoBaseIcms(FWRCalc.DBProduto.FieldByName('NF_ICMS_MODBC').AsInteger);                              // N13 - Modalidade de determinação da BC do ICMS
                  pRedBC    := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pRedBC').AsFloat));                              // N14 - Percentual da Redução de BC do ICMS
                  vBC       := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vBC').AsFloat));            // N15 - Valor da BC do ICMS
                  pICMS     := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pICMS').AsFloat));                               // N16 - Alíquota do imposto
                  vICMS     := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vICMS').AsFloat));          // N17 - Valor do ICMS
                  modBCST   := TpcnDeterminacaoBaseIcmsST(FWRCalc.DBProduto.FieldByName('NF_ICMS_MODBCST').AsInteger);                          // N18 - Modalidade de determinação da BC do ICMS ST
                  pMVAST    := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pMVAST').AsFloat));                              // N19 - Percentual da margem de valor Adicionado do ICMS ST
                  pRedBCST  := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pRedBCST').AsFloat));                            // N20 - Percentual da Redução de BC do ICMS ST
                  vBCST     := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vBCST').AsFloat));          // N21 - Valor da BC do ICMS ST
                  pICMSST   := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pICMSST').AsFloat));                             // N22 - Alíquota do imposto do ICMS ST
                  vICMSST   := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vICMSST').AsFloat));        // N23 - Valor do ICMS ST
                end;
              cst90,
              cstPart10,
              cstPart90 :
                begin
                  modBC     := TpcnDeterminacaoBaseIcms(FWRCalc.DBProduto.FieldByName('NF_ICMS_MODBC').AsInteger);                              // N13 - Modalidade de determinação da BC do ICMS
                  pRedBC    := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pRedBC').AsFloat));                              // N14 - Percentual da Redução de BC do ICMS
                  vBC       := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vBC').AsFloat));            // N15 - Valor da BC do ICMS
                  pICMS     := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pICMS').AsFloat));                               // N16 - Alíquota do imposto
                  vICMS     := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_vICMS').AsFloat));                               // N17 - Valor do ICMS
                  modBCST   := TpcnDeterminacaoBaseIcmsST(FWRCalc.DBProduto.FieldByName('NF_ICMS_MODBCST').AsInteger);                          // N18 - Modalidade de determinação da BC do ICMS ST
                  pMVAST    := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pMVAST').AsFloat));                              // N19 - Percentual da margem de valor Adicionado do ICMS ST
                  pRedBCST  := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pRedBCST').AsFloat));                            // N20 - Percentual da Redução de BC do ICMS ST
                  vBCST     := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vBCST').AsFloat));          // N21 - Valor da BC do ICMS ST
                  pICMSST   := StrToFloat(FormatFloat('0.00',FWRCalc.DBProduto.FieldByName('NF_pICMSST').AsFloat));                             // N22 - Alíquota do imposto do ICMS ST
                  vICMSST   := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vICMSST').AsFloat));        // N23 - Valor do ICMS ST

                  if (CST = cstPart10) or (CST = cstPart90) then
                  begin
                    UFST  := '';                                                                                                         // N24  UF para qual é devido o ICMS ST
                    pBCOp := 0;                                                                                                          // N25  Percentual da BC operação própria
                  end;
                end;
              cstRep41 :
                begin
                  // ICMSST - Repasse
                  vBCSTRet    := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vBCSTRet').AsFloat));     // N26 - Valor da BC do ICMS ST retido
                  vICMSSTRet  := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vICMSSTRET').AsFloat));   // N27 - Valor do ICMS ST retido
                  vBCSTDest   := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vBCSTDest').AsFloat));    // N31 - Informar o valor da BC do ICMS ST da UF destino (v2.0)
                  vICMSSTDest := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('NF_vICMSSTDest').AsFloat));  // N32 - Informar o valor da BC do ICMS ST da UF destino (v2.0)
                end;
              end;
            end;
            crtSimplesNacional : //Grupo do Simples Nacional
            begin
              CSOSN := StrToCSOSNIcms(FOk, Trim(Copy(FWRCalc.DBProduto.FieldByName('CODNF_CST').AsString, 2, 3)));
              modBC       := TpcnDeterminacaoBaseIcms(FWRCalc.DBProduto.FieldByName('NF_ICMS_MODBC').AsInteger);                                                            // N13 - Modalidade de determinação da BC do ICMS
              pRedBC      := FWRCalc.DBProduto.FieldByName('NF_pRedBC').AsFloat;      // N14 - Percentual da Redução de BC do ICMS
              vBC         := FPercDesconto * FWRCalc.DBProduto.FieldByName('NF_vBC').AsFloat;            // N15 - Valor da BC do ICMS
              pICMS       := FWRCalc.DBProduto.FieldByName('NF_pICMS').AsFloat;      // N16 - Alíquota do imposto
              vICMS       := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBProduto.FieldByName('NF_vICMS').AsFloat));         // N17 - Valor do ICMS
              modBCST     := TpcnDeterminacaoBaseIcmsST(FWRCalc.DBProduto.FieldByName('NF_ICMS_MODBCST').AsInteger);                                                          // N18 - Modalidade de determinação da BC do ICMS ST
              pMVAST      := FWRCalc.DBProduto.FieldByName('NF_pMVAST').AsFloat;     // N19 - Percentual da margem de valor Adicionado do ICMS ST
              pRedBCST    := FWRCalc.DBProduto.FieldByName('NF_pRedBCST').AsFloat;    // N20 - Percentual da Redução de BC do ICMS ST
              vBCST       := FPercDesconto * FWRCalc.DBProduto.FieldByName('NF_vBCST').AsFloat;         // N21 - Valor da BC do ICMS ST
              pICMSST     := FWRCalc.DBProduto.FieldByName('NF_pICMSST').AsFloat;   // N22 - Alíquota do imposto do ICMS ST
              vICMSST     := FPercDesconto * FWRCalc.DBProduto.FieldByName('NF_vICMSST').AsFloat;      // N23 - Valor do ICMS ST
              pCredSN     := FWRCalc.DBProduto.FieldByName('NF_pCredSN').AsFloat;  // N29 - Alíquota aplicável de cálculo do crédito (Simples Nacional).
              vCredICMSSN := FPercDesconto * FWRCalc.DBProduto.FieldByName('NF_vCredICMSSN').AsFloat; // N30 - Valor crédito do ICMS que pode ser aproveitado nostermos do art. 23 da LC 123 (Simples Nacional)
              {$REGION 'Antigo '}
              *) (*
              case CSOSN of
                csosn101 :  // N12a
                  begin
                    pCredSN     := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('pCredSN').AsFloat));  // N29 - Alíquota aplicável de cálculo do crédito (Simples Nacional).
                    vCredICMSSN := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBProduto.FieldByName('vCredICMSSN').AsFloat)); // N30 - Valor crédito do ICMS que pode ser aproveitado nostermos do art. 23 da LC 123 (Simples Nacional)
                  end;
                csosn102,
                csosn103,
                csosn300,
                csosn400:  // N10d
                  begin
                     //Tags ORIG e CSON já criadas antes do case
                     //102 - Tributada pelo Simples Nacional sem permissão de crédito.
                     //103 – Isenção do ICMS no Simples Nacional para faixa de receita bruta.
                     //300 – Imune.
                     //400 – Não tributada pelo Simples Nacional (v.2.0) (v.2.0)
                  end;
                csosn201 :
                  begin  //n10e
                    modBCST     := dbisMargemValorAgregado;                                                                 // N18 - Modalidade de determinação da BC do ICMS ST
                    pMVAST      := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('pMVAST').AsFloat));     // N19 - Percentual da margem de valor Adicionado do ICMS ST
                    pRedBCST    := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('pRedBCST').AsFloat));    // N20 - Percentual da Redução de BC do ICMS ST
                    vBCST       := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBProduto.FieldByName('vBCST').AsFloat));         // N21 - Valor da BC do ICMS ST
                    pICMSST     := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('pICMSST').AsFloat));   // N22 - Alíquota do imposto do ICMS ST
                    vICMSST     := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBProduto.FieldByName('vICMSST').AsFloat));      // N23 - Valor do ICMS ST
                    pCredSN     := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('pCredSN').AsFloat));  // N29 - Alíquota aplicável de cálculo do crédito (Simples Nacional).
                    vCredICMSSN := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBProduto.FieldByName('vCredICMSSN').AsFloat)); // N30 - Valor crédito do ICMS que pode ser aproveitado nostermos do art. 23 da LC 123 (Simples Nacional)
                  end;
                csosn202,
                csosn203 :
                  begin   //n10f
                    modBCST     := TpcnDeterminacaoBaseIcmsST(FWRCalc.DBProduto.FieldByName('ICMS_MODBCST').AsInteger);   //dbisMargemValorAgregado;                                                                 // N18 - Modalidade de determinação da BC do ICMS ST
                    pMVAST      := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('pMVAST').AsFloat));     // N19 - Percentual da margem de valor Adicionado do ICMS ST
                    pRedBCST    := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('pRedBCST').AsFloat));    // N20 - Percentual da Redução de BC do ICMS ST
                    vBCST       := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBProduto.FieldByName('vBCST').AsFloat));         // N21 - Valor da BC do ICMS ST
                    pICMSST     := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('pICMSST').AsFloat));   // N22 - Alíquota do imposto do ICMS ST
                    vICMSST     := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBProduto.FieldByName('vICMSST').AsFloat));      // N23 - Valor do ICMS ST
                  end;
                csosn500 :
                  begin //10g
                    vBCSTRET   := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('vBCSTRet').AsFloat));      // N26 - Valor da BC do ICMS ST retido
                    vICMSSTRET := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBProduto.FieldByName('vICMSSTRET').AsFloat));         // N27 - Valor do ICMS ST retido
                  end;
                csosn900:
                  begin //10h     }
                    modBC       := TpcnDeterminacaoBaseIcms(FWRCalc.DBProduto.FieldByName('NF_ICMS_MODBC').AsInteger);                                                            // N13 - Modalidade de determinação da BC do ICMS
                    pRedBC      := FWRCalc.DBProduto.FieldByName('NF_pRedBC').AsFloat;      // N14 - Percentual da Redução de BC do ICMS
                    vBC         := FPercDesconto * FWRCalc.DBProduto.FieldByName('NF_vBC').AsFloat;            // N15 - Valor da BC do ICMS
                    pICMS       := FWRCalc.DBProduto.FieldByName('NF_pICMS').AsFloat;      // N16 - Alíquota do imposto
                    vICMS       := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBProduto.FieldByName('NF_vICMS').AsFloat));         // N17 - Valor do ICMS
                    modBCST     := TpcnDeterminacaoBaseIcmsST(FWRCalc.DBProduto.FieldByName('NF_ICMS_MODBCST').AsInteger);                                                          // N18 - Modalidade de determinação da BC do ICMS ST
                    pMVAST      := FWRCalc.DBProduto.FieldByName('NF_pMVAST').AsFloat;     // N19 - Percentual da margem de valor Adicionado do ICMS ST
                    pRedBCST    := FWRCalc.DBProduto.FieldByName('NF_pRedBCST').AsFloat;    // N20 - Percentual da Redução de BC do ICMS ST
                    vBCST       := FPercDesconto * FWRCalc.DBProduto.FieldByName('NF_vBCST').AsFloat;         // N21 - Valor da BC do ICMS ST
                    pICMSST     := FWRCalc.DBProduto.FieldByName('NF_pICMSST').AsFloat;   // N22 - Alíquota do imposto do ICMS ST
                    vICMSST     := FPercDesconto * FWRCalc.DBProduto.FieldByName('NF_vICMSST').AsFloat;      // N23 - Valor do ICMS ST
                    pCredSN     := FWRCalc.DBProduto.FieldByName('NF_pCredSN').AsFloat));  // N29 - Alíquota aplicável de cálculo do crédito (Simples Nacional).
                    vCredICMSSN := FPercDesconto * FWRCalc.DBProduto.FieldByName('NF_vCredICMSSN').AsFloat; // N30 - Valor crédito do ICMS que pode ser aproveitado nostermos do art. 23 da LC 123 (Simples Nacional)
                  end;     *)  (*
              {$ENDREGION}
              end;
            end;

          //Diferencial de Aliquota interestadual
          if (FNotaTipo = nftNFe) and (ANFe.Ide.indFinal = cfConsumidorFinal) and (ANFe.ide.idDest = doInterestadual) then
          begin
            with ICMSUFDest do
            begin
              vBCUFDest      := StrToFloat(FormatFloat('0.00', RoundTo(FPercDesconto * FWRCalc.DBProduto.FieldByName('NF_vBCUFDEST').AsFloat, -2)));
              pFCPUFDest     := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_pFCUFDEST').AsFloat));
              pICMSUFDest    := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_pICMSUFDEST').AsFloat));
              pICMSInter     := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_pICMSINTER').AsFloat));
              pICMSInterPart := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_pICMSINTERPART').AsFloat));
              vFCPUFDest     := StrToFloat(FormatFloat('0.00', RoundTo(FPercDesconto * FWRCalc.DBProduto.FieldByName('NF_VFCPUFDEST').AsFloat, -2)));
              vICMSUFDest    := StrToFloat(FormatFloat('0.00', RoundTo(FPercDesconto * FWRCalc.DBProduto.FieldByName('NF_VICMSUFDEST').AsFloat, -2)));
              vICMSUFRemet   := StrToFloat(FormatFloat('0.00', RoundTo(FPercDesconto * FWRCalc.DBProduto.FieldByName('NF_VICMSUFREMET').AsFloat, -2)));
            end;
          end else if (ANFe.Dest.EnderDest.UF <> ANFe.Emit.EnderEmit.UF) and (ANFe.Dest.EnderDest.UF = 'RJ') and
                      (vICMSST > 0) and (FWRCalc.DBProduto.FieldByName('NF_pFCUFDEST').AsCurrency > 0) then
            ICMSUFDest.pFCPUFDest := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_pFCUFDEST').AsFloat));
        end;
        if FNotaTipo = nftNFe then
        begin
          with IPI do
          begin
            CST      := StrToCSTIPI(FOk, FWRCalc.DBProduto.FieldByName('NF_IPI_ST').AsString);
            clEnq    := '';
            CNPJProd := '';
            cSelo    := '';
            qSelo    := 0;
            cEnq     := FWRCalc.DBProduto.FieldByName('NF_IPI_CENQ').AsString;

            qUnid := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_IPI_qUnid').AsFloat));
            vUnid := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_IPI_vUnid').AsFloat));
            if not (vUnid > 0) then
            begin
              vBC  := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_IPI_vBC').AsFloat));
              pIPI := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_IPI_pIPI').AsFloat));
            end;
            vIPI  := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_IPI_vIPI').AsFloat));
          end;
          with II do
          begin
            vBC      := FWRCalc.DBProduto.FieldByName('NF_II_vBc').AsFloat;
            vDespAdu := FWRCalc.DBProduto.FieldByName('NF_II_vDespAdu').AsFloat;
            vIOF     := FWRCalc.DBProduto.FieldByName('NF_II_vIOF').AsFloat;
            vII      := FWRCalc.DBProduto.FieldByName('NF_II_vII').AsFloat;
          end;
          with PIS do
          begin
            CST       := StrToCSTPIS(FOk, FWRCalc.DBProduto.FieldByName('NF_PIS_ST').AsString);
            vPIS      := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_PIS_vPIS').AsFloat));
            qBCprod   := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_PIS_qBCProd').AsFloat));
            vAliqProd := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_PIS_vAliqProd').AsFloat));
            if not (vAliqProd > 0) then
            begin
              vBC  := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_PIS_vBC').AsFloat));
              pPIS := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_PIS_pPIS').AsFloat));
            end;
          end;
          with PISST do
          begin
            vBC       := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_PISST_vBC').AsFloat));
            pPIS      := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_PISST_pPIS').AsFloat));
            qBCprod   := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_PISST_qBCProd').AsFloat));
            vAliqProd := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_PISST_vAliqProd').AsFloat));
            vPIS      := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_PISST_vPIS').AsFloat));
          end;
          with COFINS do
          begin
            CST       := StrToCSTCOFINS(FOk, FWRCalc.DBProduto.FieldByName('NF_COFINS_ST').AsString);
            vBC       := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_COFINS_vBC').AsFloat));
            pCOFINS   := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_COFINS_pCOFINS').AsFloat));
            vCOFINS   := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_COFINS_vCOFINS').AsFloat));
            qBCprod   := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_COFINS_vBCProd').AsFloat));
            vAliqProd := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_COFINS_vAliqProd').AsFloat));
          end;
          with COFINSST do
          begin
            vBC       := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_COFINSST_vBC').AsFloat));
            pCOFINS   := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_COFINSST_pCOFINS').AsFloat));
            qBCprod   := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_COFINSST_qBCProd').AsFloat));
            vAliqProd := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_COFINSST_vAliqProd').AsFloat));
            vCOFINS   := StrToFloat(FormatFloat('0.00', FWRCalc.DBProduto.FieldByName('NF_COFINSST_vCOFINS').AsFloat));
          end;
        end;
        if FWRCalc.DBProduto.FieldByName('NF_CALCULA_ISSQN').AsString = 'S' then
          with ISSQN do // Grupo para serviços
          begin
            cSitTrib  := TpcnISSQNcSitTrib(FWRCalc.DBProduto.FieldByName('NF_ISSQN_TIPOTRIBUTACAO').AsInteger);
            indIncentivo := TpcnindIncentivo(FWRCalc.DBProduto.FieldByName('NF_ISSQN_INCENTIVADOR_CULTURAL').AsInteger);
            vBC       := FWRCalc.DBProduto.FieldByName('NF_ISSQN_VBC').AsFloat;
            vAliq     := FWRCalc.DBProduto.FieldByName('NF_ISSQN_VALIQ').AsFloat;
            vISSQN    := FWRCalc.DBProduto.FieldByName('NF_ISSQN_VISSQN').AsFloat;
            vISSRet   := FWRCalc.DBProduto.FieldByName('NF_ISSQN_vISSRet').AsFloat;
            cMunFG    := FWRCalc.DBProduto.FieldByName('NF_ISSQN_CMUNFG').AsInteger;
            cListServ := FWRCalc.DBProduto.FieldByName('CODNF_NCM').AsString;
            Prod.NCM  := '00';
            //indISSRet <-- Não adianta preencher este campo, o ACBr desativou e não existe essa tag no XML da NFe!!!
            // Prod.indTot := itNaoSomaTotalNFe;
            // cListServ := '24.01';
            // Preencha este campo usando a tabela disponível
            // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
          end;
         if FWRCalc.DBProduto.FieldByName('CODNF_CEST').AsString <> '' then
           Prod.CEST :=  FormatFloat('0000000', FWRCalc.DBProduto.FieldByName('CODNF_CEST').AsInteger);
      end;
      {$ENDREGION}
    {$ENDREGION}

    {$REGION 'Total da Nota'}
    Total.ICMSTot.vBC   := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('NF_VBC').AsExtended));
    Total.ICMSTot.vICMS := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('NF_VICMS').AsExtended));
    if FNotaTipo = nftNFe then
    begin
      Total.ICMSTot.vBCST := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('NF_VBCST').AsExtended));
      Total.ICMSTot.vST   := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('NF_VICMSST').AsExtended));
    end;
    Total.ICMSTot.vProd := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('TOTAL_PRODUTOS').AsExtended));

    if FNotaTipo = nftNFe then
    begin
      Total.ICMSTot.vFCPUFDest   := StrToFloat(FormatFloat('0.00', RoundTo(FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('NF_VFCPUFDEST').AsExtended, -2)));
      Total.ICMSTot.vICMSUFDest  := StrToFloat(FormatFloat('0.00', RoundTo(FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('NF_VICMSUFDEST').AsExtended, -2)));
      Total.ICMSTot.vICMSUFRemet := StrToFloat(FormatFloat('0.00', RoundTo(FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('NF_VICMSUFREMET').AsExtended, -2)));
    end;
    //FrmNFe.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMSUFDest
    {----------------------------------------------------------------------------------------------------------------
     Acrescimo no frete foi feito para a Elmar, para não precisar ir na aba da nota para informar o valor do frete.
     Agora foi inserido um parametro para dizer se deseja incluir o acrescimo no valor do frete.
     Caso não esteja selecionado, o acrescimo será acrescentado nas Despesas acessórias (vOutro).
    ----------------------------------------------------------------------------------------------------------------}
    if FNotaTipo = nftNFe then
      Total.ICMSTot.vFrete := FWRCalc.DBVendaOuCompra.FieldByName('NF_VFRETE').AsFloat;

    {"NF-e/NFC-e não existe o conceito de dar desconto no Valor Total, o desconto total nada mais é que a soma de
     descontos de todos os itens da nota, ou seja, se a sua aplicação existe a opção de dar um Desconto no
     Valor Total, então você terá que ratear e somar esse desconto adicional nos seus itens, de modo que a soma
     de descontos dos seus itens dê o desconto total da nota.

     Na prática, do ponto de vista da nota, o desconto é só no item"

     Fonte: https://www.projetoacbr.com.br/forum/topic/22717-rateio-desconto-itens-nfe-e-nfce/}

    Total.ICMSTot.vSeg     := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('NF_VSEG').AsExtended));
    Total.ICMSTot.vDesc    := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('VDESC').AsExtended));
    Total.ICMSTot.vIPI     := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('NF_IPI_VIPI').AsExtended));
    Total.ICMSTot.vNF      := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('TOTAL').AsExtended));
    Total.ICMSTot.vTotTrib := FWRCalc.DBVendaOuCompra.FieldByName('VTOTTRIB').AsFloat;
    Total.ICMSTot.vII      := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('NF_II_VII').AsExtended));
    Total.ICMSTot.vPIS     := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('NF_PIS_VPIS').AsExtended));
    Total.ICMSTot.vCOFINS  := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('NF_COFINS_VCOFINS').AsExtended));
    Total.ICMSTot.vOutro   := StrToFloat(FormatFloat('0.00', FPercDesconto * FWRCalc.DBVendaOuCompra.FieldByName('VOUTRO').AsExtended));

    Total.ISSQNtot.vServ   := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBVendaOuCompra.FieldByName('TOTAL_SERVICOS').AsExtended));
    Total.ISSQNtot.vBC     := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBVendaOuCompra.FieldByName('TOTAL_SERVICOS').AsExtended));
    Total.ISSQNtot.vISS    := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBVendaOuCompra.FieldByName('NF_ISSQN_VISSQN').AsExtended));
    Total.ISSQNtot.vISSRet := StrToFloat(FormatFloat('0.00',FPercDesconto*FWRCalc.DBVendaOuCompra.FieldByName('NF_ISSQN_VISSRET').AsExtended));
   { if ACBrNFe1.Configuracoes.Geral.VersaoDF = ve310 then   }
      Total.ISSQNtot.dCompet := FWRCalc.DBVendaOuCompra.FieldByName('DT_COMPETENCIA').AsDateTime;
  //      Total.ISSQNtot.vBC   := StrToFloat(FormatFloat('0.00',FPercDesconto*Venda.FieldByName('NF_ISS_VBC').AsExtended));
  //      Total.ISSQNtot.vISS  := StrToFloat(FormatFloat('0.00',FPercDesconto*Venda.FieldByName('NF_VALOR_ISS_ALIQ').AsExtended));

    Total.retTrib.vRetPIS    := 0;
    Total.retTrib.vRetCOFINS := 0;
    Total.retTrib.vRetCSLL   := 0;
    Total.retTrib.vBCIRRF    := 0;
    Total.retTrib.vIRRF      := 0;
    Total.retTrib.vBCRetPrev := 0;
    Total.retTrib.vRetPrev   := 0;
    {$ENDREGION}

    {$REGION 'Transportadora'}
    if FNotaTipo = nftNFCe then
      Transp.modFrete := mfSemFrete
    else
      Transp.modFrete := StrTomodFrete(FOk, FWRCalc.DBVendaOuCompra.FieldByName('NF_FRETEPORCONTA').AsString);
    if FNotaTipo = nftNFe then
    begin
      if not FTransportadora.IsEmpty then
      begin
        Transp.Transporta.CNPJCPF := AnsiReplaceText(AnsiReplaceText(AnsiReplaceText(FTransportadora.FieldByName('CNPJCPF').AsString,'.',''),'/',''),'-','');
        if FTransportadora.FieldByName('RAZAOSOCIAL').AsString = '' then
          Transp.Transporta.xNome := FTransportadora.FieldByName('RAZAOSOCIAL').AsString  // Isso aqui deveria ficar junto na selecão de pessoas,
        else
          Transp.Transporta.xNome := FWRCalc.DBVendaOuCompra.FieldByName('NF_TRANSPORTADORA').AsString;//QuerY.FieldByName('RAZAOSOCIAL').AsString;
        Transp.Transporta.IE      := AnsiReplaceText(FTransportadora.FieldByName('INSCIDENT').AsString, '.', '');
        Transp.Transporta.xEnder  := FTransportadora.FieldByName('ENDERECO').AsString + ' , ' + FTransportadora.FieldByName('NUMERO').AsString + ' , ' + FTransportadora.FieldByName('COMPLEMENTO').AsString;
        Transp.Transporta.xMun    := FTransportadora.FieldByName('CIDADE').AsString;
        Transp.Transporta.UF      := FTransportadora.FieldByName('UF').AsString;
      end;

      Transp.retTransp.vServ    := 0;
      Transp.retTransp.vBCRet   := 0;
      Transp.retTransp.pICMSRet := 0;
      Transp.retTransp.vICMSRet := 0;
      Transp.retTransp.CFOP     := '';
      Transp.retTransp.cMunFG   := 0;
      if FWRCalc.DBVendaOuCompra.FieldByName('NF_TRANPORTADORA_PLACA').AsString <> '' then
      begin
        Transp.veicTransp.placa := FWRCalc.DBVendaOuCompra.FieldByName('NF_TRANPORTADORA_PLACA').AsString;
        Transp.veicTransp.UF    := FWRCalc.DBVendaOuCompra.FieldByName('NF_TRANSPORTADORA_UF').AsString;
        Transp.veicTransp.RNTC  := '';
      end;

      with Transp.Vol.New do
      begin
        qVol  := FWRCalc.DBVendaOuCompra.FieldByName('NF_TRANSP_QVOL').AsInteger;
        esp   := FWRCalc.DBVendaOuCompra.FieldByName('NF_ESPECIE').AsString;
        marca := FWRCalc.DBVendaOuCompra.FieldByName('NF_MARCA').AsString;
        nVol  := FWRCalc.DBVendaOuCompra.FieldByName('NF_NUMERO').AsString;
        pesoL := FWRCalc.DBVendaOuCompra.FieldByName('NF_PESO_LIQUIDO').AsFloat;
        pesoB := FWRCalc.DBVendaOuCompra.FieldByName('NF_PESO_BRUTO').AsFloat;

        // Lacres do volume. Pode ser adicionado vários
        // Lacres.Add.nLacre := '';
      end;
    end;
    {$ENDREGION}

    {$REGION 'Transportadora'}
    if FNotaTipo = nftNFCe then
      Transp.modFrete := mfSemFrete
    else
      Transp.modFrete := StrTomodFrete(FOk, FWRCalc.DBVendaOuCompra.FieldByName('NF_FRETEPORCONTA').AsString);
    if FNotaTipo = nftNFe then
    begin
      if not FTransportadora.IsEmpty then
      begin
        Transp.Transporta.CNPJCPF := AnsiReplaceText(AnsiReplaceText(AnsiReplaceText(FTransportadora.FieldByName('CNPJCPF').AsString,'.',''),'/',''),'-','');
        if FTransportadora.FieldByName('RAZAOSOCIAL').AsString = '' then
          Transp.Transporta.xNome := FTransportadora.FieldByName('RAZAOSOCIAL').AsString  // Isso aqui deveria ficar junto na selecão de pessoas,
        else
          Transp.Transporta.xNome := FWRCalc.DBVendaOuCompra.FieldByName('NF_TRANSPORTADORA').AsString;//QuerY.FieldByName('RAZAOSOCIAL').AsString;
        Transp.Transporta.IE      := AnsiReplaceText(FTransportadora.FieldByName('INSCIDENT').AsString, '.', '');
        Transp.Transporta.xEnder  := FTransportadora.FieldByName('ENDERECO').AsString + ' , ' + FTransportadora.FieldByName('NUMERO').AsString + ' , ' + FTransportadora.FieldByName('COMPLEMENTO').AsString;
        Transp.Transporta.xMun    := FTransportadora.FieldByName('CIDADE').AsString;
        Transp.Transporta.UF      := FTransportadora.FieldByName('UF').AsString;
      end;

      Transp.retTransp.vServ    := 0;
      Transp.retTransp.vBCRet   := 0;
      Transp.retTransp.pICMSRet := 0;
      Transp.retTransp.vICMSRet := 0;
      Transp.retTransp.CFOP     := '';
      Transp.retTransp.cMunFG   := 0;
      if FWRCalc.DBVendaOuCompra.FieldByName('NF_TRANPORTADORA_PLACA').AsString <> '' then
      begin
        Transp.veicTransp.placa := FWRCalc.DBVendaOuCompra.FieldByName('NF_TRANPORTADORA_PLACA').AsString;
        Transp.veicTransp.UF    := FWRCalc.DBVendaOuCompra.FieldByName('NF_TRANSPORTADORA_UF').AsString;
        Transp.veicTransp.RNTC  := '';
      end;

      with Transp.Vol.New do
      begin
        qVol  := FWRCalc.DBVendaOuCompra.FieldByName('NF_TRANSP_QVOL').AsInteger;
        esp   := FWRCalc.DBVendaOuCompra.FieldByName('NF_ESPECIE').AsString;
        marca := FWRCalc.DBVendaOuCompra.FieldByName('NF_MARCA').AsString;
        nVol  := FWRCalc.DBVendaOuCompra.FieldByName('NF_NUMERO').AsString;
        pesoL := FWRCalc.DBVendaOuCompra.FieldByName('NF_PESO_LIQUIDO').AsFloat;
        pesoB := FWRCalc.DBVendaOuCompra.FieldByName('NF_PESO_BRUTO').AsFloat;

        // Lacres do volume. Pode ser adicionado vários
        // Lacres.Add.nLacre := '';
      end;
    end;       *)
    {$ENDREGION}

    {$REGION 'Informações adicionais'}
//    InfAdic.infAdFisco := '';
//    InfAdic.infCpl := FWRCalc.DBVendaOuCompra.FieldByName('NF_OBSERVACAO').AsString + ';'; // edtNF_Observacao.Lines.Text
    {$ENDREGION}

  finally
    QuerX.Free;
    TConfig.SaveInteger('VERSAO_VALIDACOES',Versao_Validacoes);
  end;
end;

{$REGION 'MOVIDA PARA VALIDA/VALIDA.NFE'}
//procedure TFrmValidacoes.TrataErros;
//var
//  i, ALinha_fim: integer;
//  AStrings: TArray<string>;
//
//  // TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.     NFSe é Diferente, Tem que deixar elas iguais
//
//  // O Formato da mensagem de erro pode ser alterado pelo usuario alterando-se a property FFormatoAlerta: onde;
//  // %TAGNIVEL%  : Representa o Nivel da TAG; ex: <transp><vol><lacres>
//  // %TAG%       : Representa a TAG; ex: <nLacre>
//  // %ID%        : Representa a ID da TAG; ex X34
//  // %MSG%       : Representa a mensagem de alerta
//  // %DESCRICAO% : Representa a Descrição da TAG
//
//  procedure SplitErroShemas(ATexto:String);
//  begin
//     AStrings := ATexto.Split(['§']);
//     FDMensagem.FieldByName('TagNivel').Value  := AStrings[0];      // <dest><enderDest>
//     FDMensagem.FieldByName('ERRO').Value      := AStrings[1];      // §E07
//     FDMensagem.FieldByName('Tag').Value       := AStrings[2];      // §nro
//     FDMensagem.FieldByName('Label').Value     := AStrings[3];      // §Número
//     FDMensagem.FieldByName('DESCRICAO').AsString := AStrings[4];   // §Nenhum valor informado
//
//     if FDMensagem.FieldByName('TagNivel').Value = '<det nItem="' then
//     begin
//       FDMensagem.FieldByName('NITEM').AsString:= OnlyNumber(FDMensagem.FieldByName('TagNivel').asstring);
//     end;
//
//  end;
//  procedure SplitErroValidacao(ATexto:String);  // §E07§nro§Número§Nenhum valor informado
//  begin
//     FDMensagem.FieldByName('TagNivel').Value  := ATexto;
//     FDMensagem.FieldByName('ERRO').Value      := Copy(ATexto, 1 , Pos('-', ATexto));
////     FDMensagem.FieldByName('Tag').Value       := AStrings[2];
//     FDMensagem.FieldByName('Label').Value     := 'Nome do Campo';
//     FDMensagem.FieldByName('DESCRICAO').AsString := Copy(ATexto, Pos('-', ATexto)+1 , ATexto.Length );
//
//     if Pos( '[nItem="', FDMensagem.FieldByName('DESCRICAO').Value)>0  then
//     begin
//       FDMensagem.FieldByName('NITEM').AsString:= OnlyNumber(Copy(ATexto, Pos('[nItem="', ATexto), ATexto.Length ));
//       FDMensagem.FieldByName('TagNivel').Value := Copy(ATexto, 1, Pos('[nItem="', ATexto ));
//     end;
//
//  end;
//  procedure SplitErroNotaNaoConfirmada(ATexto:String);  // §E07§nro§Número§Nenhum valor informado
//  begin
////     FDMensagem.FieldByName('TagNivel').Value  := ATexto;
////     FDMensagem.FieldByName('Tag').Value       := AStrings[2];
//     FDMensagem.FieldByName('Label').Value        := 'Retorno da SEFAZ';
//     FDMensagem.FieldByName('DESCRICAO').AsString := Copy(ATexto, Pos('->', ATexto)+2 , ATexto.Length );
//     FDMensagem.FieldByName('ERRO').Value         := Copy(FDMensagem.FieldByName('DESCRICAO').AsString, 1 , Pos('-', FDMensagem.FieldByName('DESCRICAO').AsString)-1);
//     if Pos( '[nItem="', FDMensagem.FieldByName('DESCRICAO').Value)>0  then
//     begin
//       FDMensagem.FieldByName('NITEM').AsString:= OnlyNumber(Copy(ATexto, Pos('[nItem="', ATexto), ATexto.Length ));
//       FDMensagem.FieldByName('TagNivel').Value := Copy(ATexto, 1, Pos('[nItem="', ATexto ));
//     end;
//
//  end;
//  procedure SplitErroElementAtomicType(ATexto:String);  // §E07§nro§Número§Nenhum valor informado
//  begin
////     FDMensagem.FieldByName('TagNivel').Value  := ATexto;
////     FDMensagem.FieldByName('Tag').Value       := AStrings[2];
//     FDMensagem.FieldByName('Label').Value        := 'Retorno da SEFAZ';
//     FDMensagem.FieldByName('DESCRICAO').AsString := 'Campo ' + Copy(ATexto, Pos('}', ATexto)+1, Pos(':',ATexto, 30) - Pos('}',ATexto)-2) + ' inválido.';
//     FDMensagem.FieldByName('ERRO').Value         := Copy(ATexto, 0, Pos(' ', ATexto));
////     if Pos( '[nItem="', FDMensagem.FieldByName('DESCRICAO').Value)>0  then
////     begin
////       FDMensagem.FieldByName('NITEM').AsString:= OnlyNumber(Copy(ATexto, Pos('[nItem="', ATexto), ATexto.Length ));
////       FDMensagem.FieldByName('TagNivel').Value := Copy(ATexto, 1, Pos('[nItem="', ATexto ));
////     end;
//
//  end;
//
//begin
//  if (pos('Erro Interno:', MemoMensagem.Lines[0])>0)then
//  begin
//     ShowMessage('Erro Interno. ');
//     Exit;
//  end;
//
//  if Not(pos('Falha na validação dos dados da nota:', MemoMensagem.Lines[0])>0)and
//     Not(pos('Erro(s) nas Regras de negócios da nota:', MemoMensagem.Lines[0])>0)and
//     Not(pos('Nota(s) não confirmadas:', MemoMensagem.Lines[0])>0) then
//  begin
////    btnMensagemErro.Click;
//    LayoutItemMensagemErro.Visible:=True;
//    LayoutItemGridSolucoes.Visible:=False;
//    lblTopTitulo.Caption:='Erro não Catalogado';
//    lblNumeroOcorencias.Caption:= '  ';
////    Close;
//    Exit;
//  end;
//
//  FDMensagem.Close;
//  FDMensagem.Open;
//  FDMensagem.EmptyDataSet;
//  if Not NF_Erros.Active then
//    NF_Erros.Open;
//  ALinha_fim:=2;
//  if (pos('Nota(s) não confirmadas:', MemoMensagem.Lines[0])>0)
//  or (pos('Falha na validação dos dados da nota:', MemoMensagem.Lines[0])>0)
//  then
//    ALinha_fim:=1;
//  for i := 1 to MemoMensagem.Lines.Count - ALinha_fim do
//  begin
//     FDMensagem.Insert;
//     if (MemoMensagem.Lines[i] = '') then
//       Continue;
//     try
//       if (pos('http://www.portalfiscal.inf.br/nfe', MemoMensagem.Lines[i]) > 0) then
//         SplitErroElementAtomicType(MemoMensagem.Lines[i])
//       else if (pos('Falha na validação dos dados da nota:', MemoMensagem.Lines[0])>0) then
//         SplitErroShemas(MemoMensagem.Lines[i])
//       else if pos('Erro(s) nas Regras de negócios da nota:', MemoMensagem.Lines[0])>0 then
//         SplitErroValidacao(MemoMensagem.Lines[i])
//       else if pos('Nota(s) não confirmadas:', MemoMensagem.Lines[0])>0 then
//         SplitErroNotaNaoConfirmada(MemoMensagem.Lines[i])
//       else
//        FDMensagem.FieldByName('DESCRICAO').AsString := MemoMensagem.Lines[i];
//
//       // Tratamento de Mensagem que o cliente nunca entende.
//       if FDMensagem.FieldByName('ERRO').AsString = '728' then
//         FDMensagem.FieldByName('DESCRICAO').AsString := '728-Rejeicao: Inscrição Estadual do Destinatário não informada';
//
//       if FDMensagem.FieldByName('ERRO').AsString = 'N12a' then
//         FDMensagem.FieldByName('DESCRICAO').AsString := 'CST informado incorreto, verifique a tributação do seu produto.' + sLineBreak + 'Simples Nacional = 3 dígitos / Regime Normal = 2 dígitos.';
//
//       if NF_Erros.Locate('ERRO', FDMensagem.FieldByName('ERRO').Value, []) then
//       begin
//         FDMensagem.FieldByName('Campo').Value        := NF_Erros.FieldByName('Campo').Value;
//         FDMensagem.FieldByName('Tela').Value         := NF_Erros.FieldByName('Tela').Value;
//         FDMensagem.FieldByName('Componente').Value   := NF_Erros.FieldByName('Componente').Value;
//         FDMensagem.FieldByName('Link').Value         := NF_Erros.FieldByName('Link').Value;
//         FDMensagem.FieldByName('OBSERVACAO').Value   := NF_Erros.FieldByName('OBSERVACAO').Value;
//         FDMensagem.FieldByName('VALIDACAO').AsString := 'Erro';
//         FDMensagem.FieldByName('ACAO').AsString      := 'NFe';
//
//         // FDMensagem.FieldByName('TIPO_DOCUMENTO').AsString:= '';
//         // FDMensagem.FieldByName('ALERTA').AsString := 'Alerta';// [Alerta,Erro]
//       end else
//       begin
////          ShowMessage('Não Achou e Vai Cadastrar');
//          // Aqui deve Cadastrar os erros.
//       end;
//       FDMensagem.post;
//     except
//       FDMensagem.Cancel;
//     end;
//  end;
//  LayoutItemGridSolucoes.Visible:=True;
//end;
{$ENDREGION}

procedure TFrmValidacoes.MostraGuides(AFormCadastro: TForm; AComponente:String; ADataSet :TDataSet);
var
  AGuide: TdxGuide;
  AValidate: TdxUIAdornerManager;
  I : Integer;
begin
  amValidacao.Guides.Clear;
  AValidate := TdxUIAdornerManager.Create(AFormCadastro);
  AValidate.Guides := amValidacao.Guides;
  ADataSet.First;
  while not ADataSet.Eof do
  begin
    try
      AGuide := AValidate.Guides.Add;
      AGuide.OnClick := amValidacaoGuide1Click;
      AGuide.OnGetCalloutPopupControl := amValidacaoGuide1GetCalloutPopupControl;
      AGuide.TargetElementClass := TdxAdornerTargetElementControl;
      TdxAdornerTargetElementControl(AGuide.TargetElement).Control := (AFormCadastro.FindComponent(ADataSet.FieldByName('COMPONENTE').AsString) as TWinControl);
    except

    end;
    ADataSet.Next;
  end;
  AValidate.Guides.Active := (AValidate.Guides.Count > 0);
  if (AComponente <> '') then
  begin
    for I := 0 to AValidate.Guides.Count -1 do
      if (TdxAdornerTargetElementControl(AValidate.Guides.Items[i].TargetElement).Control.Name = AComponente) then
      begin
        AValidate.Guides.Items[i].Selected:=True;
        Break;
      end;
  end;
end;

procedure TFrmValidacoes.C1Click(Sender: TObject);
begin
  Clipboard.AsText := FDMensagem.FieldByName('LINK').AsString;
end;

procedure TFrmValidacoes.C2Click(Sender: TObject);
begin
  Clipboard.AsText := FDMensagem.FieldByName('Observacao').AsString;
end;

procedure TFrmValidacoes.btnRegrasClick(Sender: TObject);
var
  QuerX: TFDQuery;
  ANewMenuItem: TMenuItem;
begin
  MenuRegra_Acoes.Items.Clear;
  QuerX:=GeraFDQuery;
  QuerX.SQL.Text := 'select * ' +
            'from CONFIGURACAO_ACOES C ' +
            ' left join CONFIGURACAO_FORM CF ON CF.CODIGO = C.CODCONFIGURACAO_FORM '+
            ' WHERE (CF.DESCRICAO = :Form)AND(C.ATIVO = ''S'') ' +
            'order by C.DESCRICAO asc';
  try
    QuerX.ParamByName('Form').AsString:=FFormCadastro.ClassName;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      ANewMenuItem := TMenuItem.Create(MenuRegra_Acoes);
      ANewMenuItem.Caption := QuerX.FieldByName('DESCRICAO').AsString;
      ANewMenuItem.Tag     := QuerX.FieldByName('CODIGO').AsInteger;
//      ANewMenuItem.OnClick := ItemMenuClick;
      MenuRegra_Acoes.Items.Add(ANewMenuItem);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
  MenuRegra_Acoes.PopupOnMouse;
end;

procedure TFrmValidacoes.amValidacaoGuide1Click(AManager: TdxUIAdornerManager;
  AAdorner: TdxCustomAdorner);
begin
  if AAdorner is TdxGuide then
    amValidacao.Guides.Active:=False;
end;

procedure TFrmValidacoes.amValidacaoGuide1GetCalloutPopupControl(
  AManager: TdxUIAdornerManager; AGuide: TdxGuide; var AControl: TWinControl);
//var
//  AComponente: TWinControl;
begin
  AManager.Guides.Active:=False;
//  if AManager.Guides.LayerColor = clNone then
//  begin
//    AManager.Guides.Active := False;
//    Exit;
//  end;
{
  AComponente := TdxAdornerTargetElementControl(AGuide.TargetElement).Control;
  if Configuracao_Componente.Locate('COMPONENTE', AComponente.Name) then     // Aqui deve pegar a Lista INFORMACAO
  begin
    if FLabelAdorner = nil then
    begin
      FLabelAdorner := TcxRichEdit.Create(nil);
//      FLabelAdorner.Transparent := True;
//      FLabelAdorner.AutoSize    := True;
      FLabelAdorner.Width       := 250;
      FLabelAdorner.Height      := 200;
      FLabelAdorner.Properties.ScrollBars := ssVertical;
      FLabelAdorner.Properties.AutoURLDetect := True;     // sE TIVER juda Vincula nesse Momento
    end;
    FLabelAdorner.Text := Configuracao_Componente.FieldByName('OBSERVACAO').AsString;    // aQUI DEVE PEGAR A mENSAGEM DA vALIDAÇÃO DO cAMPO informacao
//    FLabelAdorner.Width   := GetTextWidth(FLabelAdorner.Caption, FLabelAdorner.Style.Font) + 10;
    AControl := FLabelAdorner;
  end;    }
end;

procedure TFrmValidacoes.AtualizarShemas1Click(Sender: TObject);
begin
  try
    AtualizarShemas1.Enabled := False;
//    TFrmNFe.AtualizarSchemasEInis;
//    TFrmNFe.BaixarTabelaErrosNF;
  finally
    AtualizarShemas1.Enabled := True;
  end;
end;

procedure TFrmValidacoes.BtnConfigClick(Sender: TObject);
begin
  MenuGridSolucoes.PopupOnMouse;
end;

procedure TFrmValidacoes.GridSolucoesDBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
Var
  AComponente :String;
begin
  if ACellViewInfo.Item = GridSolucoesDBTableView1label then
  begin //Seleciona o Componente
    Try
      ModalResult:=mrCancel;
      AComponente:=VarToStr(ACellViewInfo.GridRecord.Values[GridSolucoesDBTableView1COMPONENTE.Index]);
      DevMakeVisibleForm(FFormCadastro, AComponente);
      MostraGuides(FFormCadastro, AComponente, GridSolucoesDBTableView1.DataController.DataSource.DataSet);
    Except

    end;
  end;
  if ACellViewInfo.Item = GridSolucoesDBTableView1LINK then
  begin
//  ShellExecute(Handle, 'OPEN', PChar(VarToStr(ACellViewInfo.Value)), nil, nil, SW_SHOWMAXIMIZED);
  end;
  if ACellViewInfo.Item = GridSolucoesDBTableView1Desbloquear then
  begin
    if FDMensagem.FieldByName('Componente').AsString ='' then Exit;
    if Usuario.Privilegiado then
    begin

      Configuracao_Componente.Close;
      Configuracao_Componente.SQL[4]:= 'where (CF.DESCRICAO = '''+FFormCadastro.ClassName+''')' +
                                       ' and(CC.COMPONENTE ='''+FDMensagem.FieldByName('Componente').AsString+''')';
      Configuracao_Componente.Open;

      Configuracao_Acoes_Regra.Close;
      Configuracao_Acoes_Regra.ParamByName('CodComponente').Value := Configuracao_Componente.FieldByName('CODIGO').Value;
      Configuracao_Acoes_Regra.Open;
      if Configuracao_Acoes_Regra.RecordCount > 0 then
      begin
        TransaConfiguracao.StartTransaction;
        Configuracao_Acoes_Regra.First;
        while not Configuracao_Acoes_Regra.Eof do
        begin
         //verificar acao
          Configuracao_Acoes_Regra.Edit;
          Configuracao_Acoes_Regra.FieldByName('OBRIGATORIO').AsString := 'N';
          Configuracao_Acoes_Regra.Post;
          Configuracao_Acoes_Regra.Next;
        end;
        Configuracao_Componente.Edit;
        Configuracao_Componente.FieldByName('TEM_PADRAO').AsString := 'N';
        Configuracao_Componente.Post;
        TransaConfiguracao.Commit;
      end;
      ShowMessage('Desbloqueado, Reabra a tela para o desbloqueio entrar em vigor');
    end
    else
      ShowMessage('Peça para um usuário privilegiado, desbloquear')
  end;
end;

procedure TFrmValidacoes.GridSolucoesDBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  // Destraca a porra toda

end;

procedure TFrmValidacoes.MostrarMenssagemcomoErro1Click(Sender: TObject);
begin
  ShowMessage(MemoMensagem.Text);
end;

procedure TFrmValidacoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmValidacoes.FormCreate(Sender: TObject);
begin
  if TConfig.ReadInteger('VERSAO_VALIDACOES') < Versao_Validacoes then
  begin
    PadraoErros(Transa);
    Transa.Commit;
  end;
end;

procedure TFrmValidacoes.FormShow(Sender: TObject);
begin
  GridSolucoesDBTableView1.OptionsView.Header := False;
  GridSolucoesDBTableView1.ViewData.Expand(True);
  lblNumeroOcorencias.Caption:= '  '+ FDMensagem.RecordCount.ToString+ ' - Número de Validações inválidas.';
end;

end.
