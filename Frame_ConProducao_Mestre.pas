unit Frame_ConProducao_Mestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, dxScreenTip, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint,
  cxClasses, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon,
  dxStatusBar, cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl,
  UnitFuncoes, cxProgressBar, UCBase, cxGridViewLayoutContainer, cxMemo,
  cxDBEdit, cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, cxDBLookupComboBox, cxTimeEdit,
  dxSkinsCore, WREventos, cxGridWinExplorerView, cxGridDBWinExplorerView, cxGridCardView, cxGridDBCardView, ConsM,
  FireDAC.Stan.StorageBin, uGridLayoutView, uButtonFlat, Generics.Collections, wrConstantes, DataModule, dxDateRanges,
  UCHistDataset, frxClass, frxDBSet, dxTokenEdit, Frame_CadProducao, dxPSRichEditControlLnk, cxCurrencyEdit,
  cxImageComboBox, dxBreadcrumbEdit, dxDBBreadcrumbEdit, dxToggleSwitch, dxRatingControl, Classes.WR, Vcl.Mask,
  Vcl.DBCtrls, cxImage, cxGridBandedTableView, cxGridDBBandedTableView, cxTL, cxTLdxBarBuiltInMenu,
  cxLookupEdit, cxDBLookupEdit, cxInplaceContainer, cxDBTL, cxTLData, dxPSdxDBOCLnk, dxPScxSchedulerLnk, dxRibbonSkins,
  dxRibbonCustomizationForm, dxBar, dxRibbon, dxGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  dxRibbonBackstageView, cxBarEditItem, frFrameAnexos, dxOfficeSearchBox, frFrameHistorico, dxRibbonStatusBar,
  cxCheckBox, DataModuleBanco, wrFuncoes_Office, dxServerModeData, dxServerModeFireDACDataSource,
  dxRibbonRadialMenu, Vcl.Buttons, cxBlobEdit, dxRangeTrackBar, System.Generics.Collections,
  cxHyperLinkEdit, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, FrFrameKanban,
  cxEditRepositoryItems, cxCustomStatusKeeper, cxStatusKeeper, cxFilterControl, Frame_Con, dxCustomTileControl, dxTileControl,
  dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_ConsuProducao_Mestre = class(TConsu_Frame)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUCAO: TcxGridDBColumn;
    GridConsultaDBTableView1ORDEM: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_EMISSAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_FIM: TcxGridDBColumn;
    GridConsultaDBTableView1TEMPO_ESTIMADO: TcxGridDBColumn;
    GridConsultaDBTableView1USUARIO: TcxGridDBColumn;
    GridConsultaDBTableView1PCONCLUSAO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUTO: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO: TcxGridDBColumn;
    GridConsultaDBTableView1QUANT: TcxGridDBColumn;
    GridConsultaDBTableView1LARG: TcxGridDBColumn;
    GridConsultaDBTableView1COMP: TcxGridDBColumn;
    GridConsultaDBTableView1ESPESSURA: TcxGridDBColumn;
    GridConsultaDBTableView1QTDADEPECA: TcxGridDBColumn;
    GridConsultaDBTableView1PATH: TcxGridDBColumn;
    GridConsultaDBTableView1LOCAL: TcxGridDBColumn;
    UCControls1: TUCControls;
    GridConsultaDBTableView1CODVENDA: TcxGridDBColumn;
    GridConsultaDBTableView1SITUACAO: TcxGridDBColumn;
    GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    DuplicarOS1: TMenuItem;
    N1: TMenuItem;
    GridConsultaDBTableView1TEM_ARQUIVADO: TcxGridDBColumn;
    VisualizarPedido1: TMenuItem;
    GridConsultaDBTableView1PROTOCOLO: TcxGridDBColumn;
    TransaFD: TFDTransaction;
    GridConsultaDBTableView1COLOR: TcxGridDBColumn;
    GridConsultaDBTableView1FRENTE_VERSO: TcxGridDBColumn;
    GridConsultaDBTableView1TIPO_IMPRESSAO: TcxGridDBColumn;
    GridConsultaDBTableView1ACABAMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1UNIDADE: TcxGridDBColumn;
    GridConsultaDBTableView1OBS_PRODUCAO: TcxGridDBColumn;
    GridConsultaDBTableView1DURACAO_ORCADA: TcxGridDBColumn;
    GridConsultaDBTableView1DURACAO: TcxGridDBColumn;
    GridConsultaDBTableView1TEMPO: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_REVERSO: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_LOGO: TcxGridDBColumn;
    GridConsultaDBTableView1SEQUENCIA_PROTOCOLO: TcxGridDBColumn;
    GridConsultaDBTableView1CENTRO_TRABALHO: TcxGridDBColumn;
    GridConsultaDBTableView1EQUIPAMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1TOKEN_USUARIO: TcxGridDBColumn;
    GridConsultaDBTableView1TOKEN_PRODUCAO_MARCADOR: TcxGridDBColumn;
    GridConsultaDBTableView1IMAGEM: TcxGridDBColumn;
    GridConsultaDBBandedTableView1: TcxGridDBBandedTableView;
    GridConsultaDBBandedTableView1CODIGO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODPRODUCAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODCENTRO_TRABALHO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1ORDENACAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1DESCRICAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1DT_ALTERACAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1DT_EMISSAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1DT_INICIO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1DT_FIM: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CALENDARIO_DT_PREVISAO_FIM: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1COLOR: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PRIORIDADE: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1ATIVO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODPRODUTO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PRODUTO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1QUANT: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1LARG: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1COMP: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1ESPESSURA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1QTDADEPECA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PATH: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1LOCAL: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PESSOA_FUNCIONARIO_CODIGO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PESSOA_FUNCIONARIO_TIPO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PESSOA_FUNCIONARIO_SEQUENCIA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1FRENTE_VERSO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODTIPO_IMPRESSAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TIPO_IMPRESSAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODACABAMENTO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1ACABAMENTO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TEMPO_INICIO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TEMPO_FIM: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1UNIDADE: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PRE_REQUISITO_CENTRO_TRABALHO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1OBS_PRODUCAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1SITUACAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1ACTUAL_START: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1ACTUAL_FINISH: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1EVENT_TYPE: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1GROUP_ID: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1LOCATION: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1OPTIONS: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PARENT_ID: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1RECURRENCE_INDEX: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1RECURRENCE_INFO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1REMINDER_DATE: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1REMINDER_MINUTES: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1REMINDER_RESOURCES: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1STATE: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TASK_INDEX: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TASK_LINKS: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TASK_STATUS: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1DURACAO_ORCADA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1DURACAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODPRODUCAO_OS_PRE_REQUISITO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TEMPO_ESTIMADO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TEMPO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1ARQUIVADO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TEM_REVERSO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TEM_LOGO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODUSUARIO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1VALOR: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODLOCAL: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CUSTO_VENDA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1SEQUENCIA_PROTOCOLO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PROTOCOLO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CENTRO_TRABALHO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PODE_ENCAMINHAR: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PODE_CANCELAR: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PODE_LIBERAR: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODEQUIPAMENTO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1EQUIPAMENTO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TEM_PLAY: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TEM_MENSAGEM: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODVENDA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODVENDA_PRODUTO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PESSOA_RESPONSAVEL_TIPO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1RAZAOSOCIAL: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TOKEN_USUARIO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TOKEN_PRODUCAO_MARCADOR: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1IMAGEM: TcxGridDBBandedColumn;
    DSEncaminhar: TDataSource;
    memEncaminhar: TFDMemTable;
    memEncaminharCODIGO: TIntegerField;
    memEncaminharDESCRICAO: TStringField;
    memEncaminharQUANT: TIntegerField;
    GridConsultaDBTableView1TEM_ANEXO: TcxGridDBColumn;
    GridConsultaDBWinExplorerView1: TcxGridDBWinExplorerView;
    GridConsultaDBWinExplorerView1CODIGO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CODPRODUCAO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CODCENTRO_TRABALHO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1ORDENACAO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1DESCRICAO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1DT_ALTERACAO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1DT_EMISSAO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1DT_INICIO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1DT_FIM: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CALENDARIO_DT_PREVISAO_FIM: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1COLOR: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PRIORIDADE: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PCONCLUSAO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1ATIVO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CODPRODUTO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PRODUTO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1QUANT: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1LARG: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1COMP: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1ESPESSURA: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1QTDADEPECA: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PATH: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1LOCAL: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PESSOA_FUNCIONARIO_CODIGO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PESSOA_FUNCIONARIO_TIPO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PESSOA_FUNCIONARIO_SEQUENCIA: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1FRENTE_VERSO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CODTIPO_IMPRESSAO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TIPO_IMPRESSAO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CODACABAMENTO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1ACABAMENTO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TEMPO_INICIO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TEMPO_FIM: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1UNIDADE: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PRE_REQUISITO_CENTRO_TRABALHO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1OBS_PRODUCAO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1SITUACAO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1ACTUAL_START: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1ACTUAL_FINISH: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1EVENT_TYPE: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1GROUP_ID: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1LOCATION: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1OPTIONS: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PARENT_ID: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1RECURRENCE_INDEX: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1RECURRENCE_INFO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1REMINDER_MINUTES: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1REMINDER_RESOURCES: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1STATE: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TASK_INDEX: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TASK_LINKS: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TASK_STATUS: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1DURACAO_ORCADA: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1DURACAO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CODPRODUCAO_OS_PRE_REQUISITO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TEMPO_ESTIMADO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TEMPO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1ARQUIVADO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TEM_REVERSO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TEM_LOGO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CODUSUARIO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1VALOR: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CODLOCAL: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CUSTO_VENDA: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1SEQUENCIA_PROTOCOLO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PROTOCOLO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CENTRO_TRABALHO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PODE_ENCAMINHAR: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PODE_CANCELAR: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PODE_LIBERAR: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CODEQUIPAMENTO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1EQUIPAMENTO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TEM_PLAY: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TEM_MENSAGEM: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CODVENDA: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CODVENDA_PRODUTO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PESSOA_RESPONSAVEL_TIPO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1RAZAOSOCIAL: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1USUARIOS: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1MARCADORES: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TOKEN_USUARIOS: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TOKEN_MARCADORES: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TOKEN_USUARIO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TOKEN_PRODUCAO_MARCADOR: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1IMAGEM: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TEM_ANEXO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1PCHECKLIST: TcxGridDBWinExplorerViewItem;
    cxStyleRepositoryGrid: TcxStyleRepository;
    stUnreadStyle: TcxStyle;
    stDateOut: TcxStyle;
    stDateOutHighPriority: TcxStyle;
    stDeferred: TcxStyle;
    stDeferredHighPriority: TcxStyle;
    stWaiting: TcxStyle;
    stWaitingHighPriority: TcxStyle;
    stCompleted: TcxStyle;
    GridCompleto: TcxStyle;
    DSCadastro: TDataSource;
    dxRibbonMenuPCP: TdxRibbonPopupMenu;
    CentrosTrabalho: TFDQuery;
    Ativar1: TMenuItem;
    GridConsultaDBTableViewFANTASIA: TcxGridDBColumn;
    stLido: TcxStyle;
    stNaoLido: TcxStyle;
    stCanceled: TcxStyle;
    Agendar1: TMenuItem;
    stArquivado: TcxStyle;
    GridConsultaDBTableViewQUANT_PRODUZIR: TcxGridDBColumn;
    GridConsultaDBTableViewPROJETO: TcxGridDBColumn;
    GridConsultaDBTableView1CALENDARIO_DT_PREVISAO_FIM: TcxGridDBColumn;
    UsuarioAgenda: TFDQuery;
    DataSource1: TDataSource;
    UsuarioAgendaCODIGO: TIntegerField;
    UsuarioAgendaDESCRICAO: TStringField;
    UsuarioProducao: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    LiedtDataLimite: TdxLayoutItem;
    edtDataLimite: TcxComboBox;
    GridConsultaDBTableView1TOKEN_PRODUCAO_TAG: TcxGridDBColumn;
    btnCancelaProducao: TcxButton;
    GridConsultaDBLayoutView1LayoutItem4: TcxGridLayoutItem;
    GridConsultaDBLayoutView1ImgUsuario: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem1: TcxGridLayoutItem;
    GridConsultaDBLayoutView1Assunto: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem3: TcxGridLayoutItem;
    GridConsultaDBLayoutView1ImgNotificacoes: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem5: TcxGridLayoutItem;
    GridConsultaDBLayoutView1Projeto: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem7: TcxGridLayoutItem;
    GridConsultaDBLayoutView1Dt_Limite: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem8: TcxGridLayoutItem;
    GridConsultaDBLayoutView1ImgAnexo: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem9: TcxGridLayoutItem;
    GridConsultaDBLayoutView1ImgObservacao: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem10: TcxGridLayoutItem;
    GridConsultaDBLayoutView1ImgEquipe: TcxGridDBLayoutViewItem;
    cxEditRepositoryKanban: TcxEditRepository;
    edrKanbanButtonItemUsuario: TcxEditRepositoryButtonItem;
    LiTreeListUsuarios: TdxLayoutItem;
    TreeListUsuarios: TcxDBTreeList;
    cxDBTreeListCODIGO: TcxDBTreeListColumn;
    cxDBTreeListPARENT: TcxDBTreeListColumn;
    cxDBTreeListDESCRICAO: TcxDBTreeListColumn;
    TreeListUsuarioscxDBTreeListTABELA: TcxDBTreeListColumn;
    TreeListUsuarioscxDBTreeListCHAVE_PK1: TcxDBTreeListColumn;
    TreeListUsuarioscxDBTreeListQUANT: TcxDBTreeListColumn;
    MemTreeList: TFDMemTable;
    MemTreeListCODIGO: TIntegerField;
    MemTreeListDESCRICAO: TStringField;
    MemTreeListMODULO: TStringField;
    MemTreeListPARENT: TIntegerField;
    MemTreeListIMAGEINDEX: TIntegerField;
    MemTreeListQUANT: TIntegerField;
    MemTreeListTABELA: TStringField;
    MemTreeListCHAVE_PK1: TIntegerField;
    MemTreeListCHAE_PK2: TStringField;
    MemTreeListCHAVE_PK3: TStringField;
    DSMemTreeList: TDataSource;
    cxImageListTreeList: TcxImageList;
    TimerUsuarioOnLine: TTimer;
    GrupoGridEKanban: TdxLayoutGroup;
    GridConsultaDBLayoutView1LayoutItem6: TcxGridLayoutItem;
    GridConsultaDBLayoutView1Tarefas: TcxGridDBLayoutViewItem;
    EstiloKanbanFuncionario: TcxStyle;
    EstiloKanbanTexto: TcxStyle;
    GridConsultaDBTableView1PRODUCAO_ESTAGIO: TcxGridDBColumn;
    SplitTreeList: TdxLayoutSplitterItem;
    TreeListUsuarioscxDBTreeListCHAVE_PK2: TcxDBTreeListColumn;
    cxStatusKeeperTreelist: TcxStatusKeeper;
    Producao_Tempo: TFDQuery;
    Producao_Etapas: TFDQuery;
    stAFaturar: TcxStyle;
    GridConsultaDBTableView1FATURA_ADICIONAL: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_DESPESA: TcxGridDBColumn;
    stConcluido: TcxStyle;
    Producao_Produto: TFDQuery;
    DSProducao_Produto: TDataSource;
    UCHist_Producao_Produto: TUCHist_DataSet;
    GridConsultaDBTableView1FUNCIONARIO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_FUNCIONARIO_CODIGO: TcxGridDBColumn;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    ConsultaDT_EMISSAO: TSQLTimeStampField;
    ConsultaDT_FIM: TSQLTimeStampField;
    ConsultaCALENDARIO_DT_PREVISAO_FIM: TSQLTimeStampField;
    ConsultaCALENDARIO_DT_PREVISAO_INICIO: TSQLTimeStampField;
    ConsultaDT_VENDA_PRODUCAO: TSQLTimeStampField;
    ConsultaDT_ENVIO_PRODUCAO: TSQLTimeStampField;
    ConsultaDT_APROVACAO_SAIDA_ETAPA: TSQLTimeStampField;
    ConsultaDT_ENTREGA: TSQLTimeStampField;
    GridConsultaDBTableView1PRIORIDADE_PRODUCAO: TcxGridDBColumn;
    GerarFila1: TMenuItem;
    SalvarGrid1: TMenuItem;
    lofCheck: TdxLayoutStandardLookAndFeel;
    GrupoTreeListUsuarios: TdxLayoutGroup;
    GridConsultaDBTableView1ESTILO: TcxGridDBColumn;
    GridConsultaDBTableView1FILA: TcxGridDBColumn;
    GridConsultaDBLayoutView1LayoutItem2: TcxGridLayoutItem;
    GridConsultaDBLayoutView1PRODUTO: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem11: TcxGridLayoutItem;
    GridConsultaDBLayoutView1QTDADEPECA: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1Group2: TdxLayoutGroup;
    GridConsultaDBLayoutView1Group3: TdxLayoutGroup;
    GridConsultaDBLayoutView1Group7: TdxLayoutGroup;
    GridConsultaDBLayoutView1Group8: TdxLayoutGroup;
    GridConsultaDBLayoutView1LayoutItem12: TcxGridLayoutItem;
    GridConsultaDBLayoutView1FUNCIONARIO: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem13: TcxGridLayoutItem;
    GridConsultaDBLayoutView1PRIORIDADE_PRODUCAO: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem14: TcxGridLayoutItem;
    GridConsultaDBLayoutView1CALENDARIO_DT_PREVISAO_FIM: TcxGridDBLayoutViewItem;
    GridConsultaDBTableView1DT_ENTREGA: TcxGridDBColumn;
    Venda_Produto_Etapas: TFDQuery;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    Venda_Produto_Baixa_Automatica: TFDQuery;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField2: TFloatField;
    Venda_Produto_Prerequisito: TFDQuery;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField3: TFloatField;
    dxLayoutGroup1: TdxLayoutGroup;
    tcAgrupadorItem1: TdxTileControlItem;
    tcAgrupadorItem2: TdxTileControlItem;
    tcAgrupadorItem3: TdxTileControlItem;
    tcAgrupadorItem4: TdxTileControlItem;
    tcAgrupadorItem5: TdxTileControlItem;
    tcAgrupadorItem6: TdxTileControlItem;
    tcAgrupadorItem7: TdxTileControlItem;
    tcAgrupadorItem8: TdxTileControlItem;
    tcAgrupadorItem9: TdxTileControlItem;
    tcAgrupadorItem10: TdxTileControlItem;
    tcAgrupadorItem11: TdxTileControlItem;
    btnFlipCadastro: TdxTileControlItem;
    btnEncaminhar: TdxTileControlItem;
    btnIniciar: TdxTileControlItem;
    btnPausar: TdxTileControlItem;
    btnConcluir: TdxTileControlItem;
    btnFinalizar: TdxTileControlItem;
    btnDuplicar: TdxTileControlItem;
    ConsultaCODIGO: TIntegerField;
    ConsultaCODPRODUCAO: TIntegerField;
    ConsultaCODCENTRO_TRABALHO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaORDEM: TIntegerField;
    ConsultaCOLOR: TIntegerField;
    ConsultaPRIORIDADE: TIntegerField;
    ConsultaPCONCLUSAO: TIntegerField;
    ConsultaCODPRODUTO: TStringField;
    ConsultaPRODUTO: TStringField;
    ConsultaQUANT: TFloatField;
    ConsultaLARG: TFloatField;
    ConsultaCOMP: TFloatField;
    ConsultaESPESSURA: TFloatField;
    ConsultaQTDADEPECA: TFloatField;
    ConsultaUNIDADE: TStringField;
    ConsultaPATH: TStringField;
    ConsultaLOCAL: TStringField;
    ConsultaPESSOA_FUNCIONARIO_CODIGO: TStringField;
    ConsultaPESSOA_FUNCIONARIO_TIPO: TStringField;
    ConsultaPESSOA_FUNCIONARIO_SEQUENCIA: TIntegerField;
    ConsultaPESSOA_RESPONSAVEL_CODIGO: TStringField;
    ConsultaPESSOA_RESPONSAVEL_TIPO: TStringField;
    ConsultaPESSOA_RESPONSAVEL_SEQUENCIA: TIntegerField;
    ConsultaRAZAOSOCIAL: TStringField;
    ConsultaCODTIPO_IMPRESSAO: TIntegerField;
    ConsultaTIPO_IMPRESSAO: TStringField;
    ConsultaCODACABAMENTO: TIntegerField;
    ConsultaACABAMENTO: TStringField;
    ConsultaTEMPO_INICIO: TSQLTimeStampField;
    ConsultaTEMPO_FIM: TSQLTimeStampField;
    ConsultaPRE_REQUISITO_CENTRO_TRABALHO: TIntegerField;
    ConsultaOBS_PRODUCAO: TStringField;
    ConsultaSITUACAO: TStringField;
    ConsultaCALENDARIO_ACTUAL_START: TIntegerField;
    ConsultaCALENDARIO_ACTUAL_FINISH: TIntegerField;
    ConsultaCALENDARIO_EVENT_TYPE: TIntegerField;
    ConsultaCALENDARIO_GROUP_ID: TIntegerField;
    ConsultaCALENDARIO_LOCATION: TStringField;
    ConsultaCALENDARIO_OPTIONS: TIntegerField;
    ConsultaCALENDARIO_PARENT_ID: TIntegerField;
    ConsultaCALENDARIO_RECURRENCE_INDEX: TIntegerField;
    ConsultaCALENDARIO_RECURRENCE_INFO: TBlobField;
    ConsultaCALENDARIO_REMINDER_DATE: TSQLTimeStampField;
    ConsultaCALENDARIO_REMINDER_MINUTES: TIntegerField;
    ConsultaCALENDARIO_REMINDER_RESOURCES: TBlobField;
    ConsultaCALENDARIO_STATE: TIntegerField;
    ConsultaCALENDARIO_TAREFA_COMPLETA: TIntegerField;
    ConsultaCALENDARIO_TASK_INDEX: TIntegerField;
    ConsultaCALENDARIO_TASK_LINKS: TBlobField;
    ConsultaCALENDARIO_TASK_STATUS: TIntegerField;
    ConsultaDURACAO_PLANEJADA: TIntegerField;
    ConsultaDURACAO: TIntegerField;
    ConsultaCODPRODUCAO_OS_PRE_REQUISITO: TIntegerField;
    ConsultaTEMPO_ESTIMADO: TStringField;
    ConsultaTEMPO: TFloatField;
    ConsultaCODUSUARIO: TIntegerField;
    ConsultaVALOR: TFloatField;
    ConsultaCODLOCAL: TIntegerField;
    ConsultaCUSTO_VENDA: TFloatField;
    ConsultaPROTOCOLO: TStringField;
    ConsultaSEQUENCIA_PROTOCOLO: TIntegerField;
    ConsultaCODEQUIPAMENTO: TIntegerField;
    ConsultaEQUIPAMENTO: TStringField;
    ConsultaCODVENDA: TStringField;
    ConsultaCODVENDA_PRODUTO: TIntegerField;
    ConsultaTOKEN_USUARIO: TStringField;
    ConsultaTOKEN_PRODUCAO_MARCADOR: TStringField;
    ConsultaIMAGEM: TBlobField;
    ConsultaEMAIL: TStringField;
    ConsultaTEM_MENSAGEM: TIntegerField;
    ConsultaTEM_ARQUIVADO: TStringField;
    ConsultaTEM_FRENTE_VERSO: TStringField;
    ConsultaTEM_REVERSO: TStringField;
    ConsultaTEM_LOGO: TStringField;
    ConsultaTEM_PLAY: TStringField;
    ConsultaTEM_ANEXO: TStringField;
    ConsultaPODE_ENCAMINHAR: TStringField;
    ConsultaPODE_CANCELAR: TStringField;
    ConsultaPODE_LIBERAR: TStringField;
    ConsultaATIVO: TStringField;
    ConsultaCUSTO_LOJA: TFloatField;
    ConsultaTEM_TRABALHANDO: TStringField;
    ConsultaPODE_ALTERAR_ESTOQUE: TStringField;
    ConsultaPODE_RETORNAR_AO_ESTOQUE: TStringField;
    ConsultaTEM_TRAVA_CANCELAR: TStringField;
    ConsultaTEM_TRAVA_FINANCEIRO: TStringField;
    ConsultaQUANT_PRODUZIR: TFloatField;
    ConsultaTEM_AGENDADO: TStringField;
    ConsultaCODPROJETO: TIntegerField;
    ConsultaTIPO_USO: TStringField;
    ConsultaTOKEN_PRODUCAO_TAG: TStringField;
    ConsultaCODANEXO: TStringField;
    ConsultaCODPRODUCAO_ESTAGIO: TIntegerField;
    ConsultaPRODUCAO_ESTAGIO: TStringField;
    ConsultaPRODUCAO_MOTIVO: TStringField;
    ConsultaPROTOCOLO_PRINCIPAL: TStringField;
    ConsultaTEM_DESPESA: TStringField;
    ConsultaTEM_PAUSAR: TStringField;
    ConsultaTEM_FILA: TStringField;
    ConsultaPRIORIDADE_PRODUCAO: TFloatField;
    ConsultaCODUSUARIO_APROVACAO: TIntegerField;
    ConsultaCODUSUARIO_ENVIO_PRODUCAO: TIntegerField;
    ConsultaTEM_APROVEITAMENTO: TStringField;
    ConsultaCODETAPA: TIntegerField;
    ConsultaORDEM_ETAPA: TIntegerField;
    ConsultaDT_LIMITE_PERMANENCIA: TSQLTimeStampField;
    ConsultaATRASO_NOTIFICADO: TStringField;
    ConsultaVENCEU_PERMANENCIA: TStringField;
    ConsultaUSUARIO: TStringField;
    ConsultaCENTRO_TRABALHO: TStringField;
    ConsultaFANTASIA: TStringField;
    ConsultaPROJETO: TStringField;
    ConsultaFATURA_ADICIONAL: TStringField;
    ConsultaCODFUNCIONARIO: TStringField;
    ConsultaFUNCIONARIO: TStringField;
    ConsultaESTILO: TStringField;
    ConsultaFILA: TIntegerField;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    btnCancelar: TdxTileControlItem;
    EstiloKanbanAssunto: TcxStyle;
    Arquivar1: TMenuItem;
    GridConsultaDBTableView1DT_APROVACAO_SAIDA_ETAPA: TcxGridDBColumn;
    ConsultaCODPRODUTO_ETAPA_PREREQUISITO: TIntegerField;
    ConsultaEQUIPEREQUISITO: TStringField;
    GridConsultaDBTableView1CODPRODUTO_ETAPA_PREREQUISITO: TcxGridDBColumn;
    GridConsultaDBTableView1EQUIPEREQUISITO: TcxGridDBColumn;
    procedure GridConsultaDBTableView1DblClick(Sender: TObject);
    procedure GridConsultaDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure GridConsultaDBTableView1TcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure GridConsultaDBTableView1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure GridConsultaDBTableView1DT_INICIOGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure MenuAcoesPopup(Sender: TObject);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ConsultaBeforeOpen(DataSet: TDataSet);
    procedure VisualizarPedido1Click(Sender: TObject);
    procedure GridConsultaDBTableView1TEMPOGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnViewTilesClick(Sender: TObject);
    procedure LbNovoClick(Sender: TObject);
    procedure btnPorSemExtraClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure GridConsultaDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure GridConsultaDBTableView1CanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      var AAllow: Boolean);
    procedure Ativar1Click(Sender: TObject);
    procedure btnFiltroComImagemClick(Sender: TObject);
    procedure GridConsultaDBTableView1MouseWheelUp(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure GridConsultaDBTableView1MouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure GridConsultaDBTableView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure SplitSubGridCanResize(Sender: TObject; AItem: TdxCustomLayoutItem;
      var ANewSize: Integer; var AAccept: Boolean);
    procedure btnReativarClick(Sender: TObject);
    procedure Agendar1Click(Sender: TObject);
    procedure ConsultaBeforeClose(DataSet: TDataSet);
    procedure GridConsultaDBTableView1TOKEN_PRODUCAO_MARCADORPropertiesTokenClick(
      Sender: TObject; const ATokenText: string; AToken: TdxTokenEditToken);
    procedure GridConsultaDBTableView1RAZAOSOCIALPropertiesStartClick(
      Sender: TObject);
    procedure GridConsultaDBTableView1DataControllerFilterChanged(
      Sender: TObject);
    procedure GridConsultaDBTableView1CODVENDAPropertiesStartClick(
      Sender: TObject);
    procedure GridConsultaDBTableViewFANTASIAPropertiesStartClick(
      Sender: TObject);
    procedure GridConsultaDBTableView1TOKEN_PRODUCAO_TAGPropertiesTokenClick(
      Sender: TObject; const ATokenText: string; AToken: TdxTokenEditToken);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure splFlipRotateCanResize(Sender: TObject;
      AItem: TdxCustomLayoutItem; var ANewSize: Integer; var AAccept: Boolean);
    procedure GridConsultaDBTableView1StartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure edtRapidoFiltroPropertiesEditValueChanged(Sender: TObject);
    procedure GridConsultaDBTableView1CanSelectRecord(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      var AAllow: Boolean);
    procedure edtRapidoAgruparPropertiesEditValueChanged(Sender: TObject);
    procedure GridConsultaDBLayoutView1ImgUsuarioGetProperties(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure TreeListUsuariosDblClick(Sender: TObject);
    procedure btnKanbamClick(Sender: TObject);
//    procedure TreeListUsuariosClick(Sender: TObject);
    procedure TreeListUsuariosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TreeListUsuariosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure WREventosCadastroValidaEdicaoCamposAfter(Sender: TObject);
    procedure GridSubGridViewDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure WREventosCadastroValidaEdicaoCampos(var AFieldName,
      AFieldNameTratado: string; AValue: Variant; ADataSet: TDataSet);
    procedure WREventosConsultaCarregaTreeList(Sender: TObject);
    procedure QueryDragAndDropBeforePost(DataSet: TDataSet);
    procedure WREventosCadastroValidaEdicaoCamposBefore(var AFieldName,
      AFieldNameTratado: string; AValue: Variant);
    procedure GridSubGridViewFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure GridConsultaDBTableView1CALENDARIO_DT_PREVISAO_FIMValidateDrawValue(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      const AValue: Variant; AData: TcxEditValidateInfo);
    procedure SalvarGrid1Click(Sender: TObject);
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure btnPausarClick(Sender: TdxTileControlItem);
    procedure btnEncaminharClick(Sender: TdxTileControlItem);
    procedure btnDuplicarClick(Sender: TdxTileControlItem);
    procedure btnConcluirClick(Sender: TdxTileControlItem);
    procedure btnFinalizarClick(Sender: TdxTileControlItem);
    procedure dxTileControl1Item7Click(Sender: TdxTileControlItem);
    procedure btnArquivaClick(Sender: TdxTileControlItem);
    procedure FrameEnter(Sender: TObject);
    procedure tcTopoBtnItem1Click(Sender: TdxTileControlItem);
    procedure dxTileControlItem1Click(Sender: TdxTileControlItem);
    procedure btnFlipCadastroClick(Sender: TdxTileControlItem);
    procedure btnCancelarClick(Sender: TdxTileControlItem);
    procedure Arquivar1Click(Sender: TObject);
  private
    FFrmProducao : TFrame_Cad_Producao;
    AKeys: Variant;

  public
    function FrmProducao: TFrame_Cad_Producao;
    Procedure ProducaoDuplicar;

//    procedure CarregaTreeList;
//    procedure AddTreeList(ACodigo, AParent, AImageIndex: Integer; ADescricao, AModulo: string;
//          ATabela, AChave_PK1, AChave_PK2,AChave_PK3, AQuant : Variant);

    class procedure Abrir(ACodvenda: String; ACodProducao: Integer = 0);
    class procedure GeraProducaoEtapas(ATransa :TFDTransaction; ADataSet :TDataSet; ACodCentro_trabalho :Integer = 0; ASituacao :String = '';
                                       ACodUsuario_Responsavel :Integer = 0; AEstagio :String = ''; AMotivo :String = '';
                                       ACodProducao: Integer = 0; AObservacao: String = '');
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

uses
  DateUtils, StrUtils, Registry, TextoObservacao, wrConversao, Rotinas, cxVariants, wrFuncoes, Principal, CadEncaminhar,
  wrForms, Aguarde, System.TimeSpan,System.Math, CadProduto_Movimento, Base, Tag.Form, Tag.Filtro;

class procedure TFrame_ConsuProducao_Mestre.Abrir(ACodvenda: String; ACodProducao: Integer = 0);
Var
  ASQL: String;
begin
  if ACodProducao > 0 then
    ASQL:= 'PO.Codigo = ' + intToStr(ACodProducao)
  else
    ASQL:='CodVenda = ' + QuotedStr(ACodvenda);
  with ABaseClass_MidChild[Tag_Producao].Create(FrmPrincipal) do
  begin
    ShowConsultaSQL(Tag_Producao, ASQL);
    with TFrame_ConsuProducao_Mestre(FrameConsulta) do
    begin
      GridConsultaDBTableView1.DataController.BeginUpdate;
     { edtRapidoAgrupar.Text := '-Agrupar Por-';                    Isso aqui tem que retestar e fazer funcionar
      GridConsultaDBTableView1.DataController.Groups.ClearGrouping;
      EdtPesquisa.Text := '';
      edtRapidoFiltro.Text := '-Filtros Rápidos-';         }
      GridConsultaDBTableView1.DataController.EndUpdate;
//      MemTreeList.Locate('TABELA', 'TODAS',[]);
//      Consulta.Open;
    end;
  end;
end;

class procedure TFrame_ConsuProducao_Mestre.GeraProducaoEtapas(ATransa :TFDTransaction; ADataSet :TDataSet; ACodCentro_trabalho :Integer = 0; ASituacao :String = '';
ACodUsuario_Responsavel :Integer = 0; AEstagio :String = ''; AMotivo :String = ''; ACodProducao: Integer = 0; AObservacao: String = '');
var
  QuerProducao_Etapas :TFDQuery;
begin
  QuerProducao_Etapas := GeraFDQuery(ATransa);
  QuerProducao_Etapas.SQL.Text := 'Select PE.* From Producao_Etapas PE';
  QuerProducao_Etapas.Open;
  try
    QuerProducao_Etapas.Insert;
    QuerProducao_Etapas.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('CR_PRODUCAO_ETAPAS'));

    if ADataSet.Name = 'Venda_Produto' then
    begin
      QuerProducao_Etapas.FieldByName('CODVENDA_PRODUTO').AsInteger    := ADataSet.FieldByName('CODIGO').AsInteger;
      QuerProducao_Etapas.FieldByName('CODPRODUCAO').AsInteger         := ACodProducao;
      QuerProducao_Etapas.FieldByName('PROTOCOLO').AsString            := ADataSet.FieldByName('PROTOCOLO').AsString;
      QuerProducao_Etapas.FieldByName('CODCENTRO_TRABALHO').AsInteger  := ACodCentro_trabalho;
      QuerProducao_Etapas.FieldByName('SITUACAO').Value                := ASituacao;
      QuerProducao_Etapas.FieldByName('CODUSUARIO_RESPONSAVEL').Value  := ACodUsuario_Responsavel;
      QuerProducao_Etapas.FieldByName('ESTAGIO').Value                 := AEstagio;
      QuerProducao_Etapas.FieldByName('MOTIVO').Value                  := AMotivo;
    end
    else
    begin
      QuerProducao_Etapas.FieldByName('CODVENDA_PRODUTO').AsInteger    := ADataSet.FieldByName('CODVENDA_PRODUTO').AsInteger;
      QuerProducao_Etapas.FieldByName('CODPRODUCAO').AsInteger         := ADataSet.FieldByName('CODIGO').AsInteger;
      QuerProducao_Etapas.FieldByName('PROTOCOLO').AsString            := ADataSet.FieldByName('PROTOCOLO_PRINCIPAL').AsString;
      QuerProducao_Etapas.FieldByName('CODCENTRO_TRABALHO').AsInteger  := ADataSet.FieldByName('CODCENTRO_TRABALHO').AsInteger;
      QuerProducao_Etapas.FieldByName('SITUACAO').Value                := ADataSet.FieldByName('SITUACAO').AsString;
      QuerProducao_Etapas.FieldByName('CODUSUARIO_RESPONSAVEL').Value  := ADataSet.FieldByName('CODUSUARIO').AsInteger;
      QuerProducao_Etapas.FieldByName('ESTAGIO').Value                 := ADataSet.FieldByName('PRODUCAO_ESTAGIO').AsString;
      QuerProducao_Etapas.FieldByName('MOTIVO').Value                  := ADataSet.FieldByName('PRODUCAO_MOTIVO').AsString;
    end;
    QuerProducao_Etapas.FieldByName('CODVENDA').AsString             := ADataSet.FieldByName('CODVENDA').AsString;
    QuerProducao_Etapas.FieldByName('CODUSUARIO').AsInteger          := Usuario.Codigo;
    QuerProducao_Etapas.FieldByName('DATA').Value                    := DataHoraSys;
    QuerProducao_Etapas.Post;
  finally
    QuerProducao_Etapas.Free;
  end;
end;

procedure TFrame_ConsuProducao_Mestre.FrameEnter(Sender: TObject);
begin
  inherited;
  GridConsultaDBTableView1COMP.Caption                       := ProdutoControleUnidades.CaptionComprimento.Descricao;
  GridConsultaDBTableView1LARG.Caption                       := ProdutoControleUnidades.CaptionLargura.Descricao;
  GridConsultaDBTableView1ESPESSURA.Caption                  := ProdutoControleUnidades.CaptionEspessura.Descricao;
  if TConfig.ReadString('NOME_DATA_LIMITE') <> '' then
    GridConsultaDBTableView1CALENDARIO_DT_PREVISAO_FIM.Caption :=  TConfig.ReadString('NOME_DATA_LIMITE');
  if TConfig.ReadString('NOME_DATA_ENTREGA') <> '' then
    GridConsultaDBTableView1DT_ENTREGA.Caption                 :=  TConfig.ReadString('NOME_DATA_ENTREGA');
  if TConfig.ReadString('NOME_DATA_ETAPA') <> '' then
    GridConsultaDBTableView1DT_APROVACAO_SAIDA_ETAPA.Caption   :=  TConfig.ReadString('NOME_DATA_ETAPA');

  PreencheTokenUsuarios(TdxTokenEditProperties(GridConsultaDBTableView1TOKEN_USUARIO.Properties));
  PreencheTokenMarcadores(TdxTokenEditProperties(GridConsultaDBTableView1TOKEN_PRODUCAO_MARCADOR.Properties));
  PreencheCSSCondicionalFormat(SQLProducao_Situacao, GridConsultaDBTableView1SITUACAO , GridConsultaDBTableView1);
//  PreencheLookupUsuarios(edtFiltroUsuario.Properties);
//  PreencheImgComboBoxCentroTrabalho(edtFiltroCentro_Trabalho.Properties, 'CODIGO');
{  CarregaTreeList;                                                                                 aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa  aaaAAA
    cxStatusKeeperTreelist.RestoreStatesFromFile(GetDirSistema + 'GridProducao.txt')
  else
    MemTreeList.Locate('TABELA;CHAVE_PK1', varArrayOf(['USUARIO',USUARIO.Codigo]),[]);    }
end;

function TFrame_ConsuProducao_Mestre.FrmProducao: TFrame_Cad_Producao;
begin
  if Not Assigned(FFrmProducao) then
  begin
    FFrmProducao := TFrame_Cad_Producao.Create(Self); //(CadastroTag_Frame(Self,Tag_Agenda_Kanban));  //TFrame_Cad_Producao(TFrmBase(ABaseClass_Pocket[Tag_Agenda_Kanban].Create(TForm(Self.Owner))));//.ShowCadastroPocketItem(Tag_Agenda_Kanban, Consulta.FieldByName('CODIGO').AsString));
    FFrmProducao.FrameEnter(FFrmProducao);
  end;
  Result := FFrmProducao;
end;

procedure TFrame_ConsuProducao_Mestre.BtnViewTilesClick(Sender: TObject);
begin
//  inherited;
end;

procedure TFrame_ConsuProducao_Mestre.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  UsuarioAgenda.Open;
  UsuarioProducao.Open;
  TNumericField(Consulta.FieldByName('QUANT')).DisplayFormat := DecimalQuantidade;
  TNumericField(Consulta.FieldByName('QUANT_PRODUZIR')).DisplayFormat := DecimalQuantidade;
//  cxStatusKeeperConsulta.LoadState;

//  Grid; Nome; posicao da imagem
//  exit; // testando
//  LoadPictures('Producao', GridConsultaDBTableView1.DataController, GridConsultaDBTableView1PROTOCOLO.Index,
//    GridConsultaDBTableView1IMAGEM.Index);
  Venda_Produto_Etapas.Open;
  Venda_Produto_Prerequisito.Open;
end;

procedure TFrame_ConsuProducao_Mestre.ConsultaBeforeClose(DataSet: TDataSet);
begin
  inherited;
//  cxStatusKeeperConsulta.SaveState;
  UsuarioAgenda.Close;
  UsuarioProducao.Close;
  Venda_Produto_Etapas.Close;
  Venda_Produto_Prerequisito.Close;
end;

procedure TFrame_ConsuProducao_Mestre.ConsultaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if Consulta.FindParam('CODUSUARIO') <> NIL then
    Consulta.ParamByName('CODUSUARIO').AsInteger := Usuario.Codigo;
//  if Consulta.FindParam('CODVENDA') <> NIL then
//    Consulta.ParamByName('CODVENDA').AsString    := EdtCodVenda.Text;
end;

procedure TFrame_ConsuProducao_Mestre.splFlipRotateCanResize(Sender: TObject;
  AItem: TdxCustomLayoutItem; var ANewSize: Integer; var AAccept: Boolean);
begin
  inherited;
  LipnlFlipRotate.AlignHorz:= ahRight;
  LipnlFlipRotate.Width:= ClientWidth -  ANewSize - TreeListUsuarios.Width;
end;

procedure TFrame_ConsuProducao_Mestre.SplitSubGridCanResize(Sender: TObject;
  AItem: TdxCustomLayoutItem; var ANewSize: Integer; var AAccept: Boolean);
begin
  inherited;
  LiGridSubGrid.AlignHorz:= ahLeft;
  LiGridSubGrid.ControlOptions.OriginalWidth:= ANewSize;
end;

procedure TFrame_ConsuProducao_Mestre.tcTopoBtnItem1Click(Sender: TdxTileControlItem);
begin
//  inherited;
  CadastroMidChildBotaoNovo(TFormClass(FindClass(WREventosCadastro.FormClassCadastro)));
end;

procedure TFrame_ConsuProducao_Mestre.btnKanbamClick(Sender: TObject);
begin
  inherited;

end;

////////////// Encaminhamento momento crítico do sistema //////////////////////
///////////// Transações transações transações ////////////////////////////////

Procedure TFrame_ConsuProducao_Mestre.ProducaoDuplicar;
//var
//  AMemTableCadastro: TFDMemTable;
begin
//  try
//    AMemTableCadastro        := TFDMemTable.Create(nil);
//    FrmProducao.Show;
//    with FrmProducao do
//    begin
//      AMemTableCadastro.Data        := Cadastro.Data;
//
//      Cadastro.Insert;
//      DSCopiarCamposIguais(AMemTableCadastro, Cadastro, ['CODIGO', 'CODPRODUCAO', 'DT_EMISSAO']);
//      Cadastro.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('CR_PRODUCAO'));
//      Cadastro.FieldByName('CODPRODUCAO').AsInteger         := AMemTableCadastro.FieldByName('CODIGO').AsInteger;
//      Cadastro.FieldByName('SEQUENCIA_PROTOCOLO').AsInteger := SQLProducaoMaxSequencia(TransaFD, Cadastro.FieldByName('PROTOCOLO_PRINCIPAL').AsString );
//      Cadastro.FieldByName('PROTOCOLO').AsString            := Cadastro.FieldByName('PROTOCOLO').AsString+'-'+Cadastro.FieldByName('SEQUENCIA_PROTOCOLO').AsInteger;
//      Cadastro.FieldByName('DT_EMISSAO').AsDateTime         := DataHoraSys;
//      Cadastro.Post;
//
//      btnConfirmarClick(nil); // TransaFD.Commit;  //TODO: não estou conseguindo comitar em outro lugar, não está funcionando, tem que remover esse aqui daqui.
//    end;                      // Por que remover? so isso ?  Isso pode ficar assim
//  finally                     // A Funcão toda deveria estar no CadM.
//
//  end;
end;

procedure TFrame_ConsuProducao_Mestre.QueryDragAndDropBeforePost(DataSet: TDataSet);
begin
  inherited;
  GeraProducaoEtapas(TransaDragAndDrop, DataSet);
end;

procedure TFrame_ConsuProducao_Mestre.SalvarGrid1Click(Sender: TObject);
begin
  inherited;
  ConfigGrid.GravaConfigGrid(GridConsultaDBTableView1, 'GridConsultaFD');
end;

procedure TFrame_ConsuProducao_Mestre.BtnNovoClick(Sender: TObject);
begin
//  inherited;
//  btnFlipCadastro.Click;
//  FrmProducao.btnNovo.Click;
  TFrmBase(ABaseClass_Pocket[Tag_Agenda_Kanban].Create(TForm(Self.Owner))).ShowCadastroPocketItemNovo(Tag_Agenda_Kanban, Consulta.FieldByName('CODIGO').AsString, WREventosCadastro.UsaTravaCadastroPocket);
end;

procedure TFrame_ConsuProducao_Mestre.dxTileControl1Item1Click(Sender: TdxTileControlItem);
begin
  inherited;
  AcaoSelecionados('SITUACAO','Produzindo');
end;

procedure TFrame_ConsuProducao_Mestre.dxTileControl1Item7Click(Sender: TdxTileControlItem);
begin
  inherited;
//  FrmProducao.Show;
//  FrmProducao.MainLayout.EndUpdate;
//  dxLayoutControl1.EndUpdate;
//  Application.ProcessMessages;
//  FrmProducao.ChavePrimaria:= VarArrayOf([GridConsultaDBTableView1.DataController.GetKeyFieldsValues]);
//  FrmProducao.Cadastro.Open;
//  if NOt splFlipRotate.Visible then
//  begin
//    dxLayoutControl1.BeginUpdate;
//    splFlipRotate.Visible   := True;
//    GrupoFlip.Visible       := splFlipRotate.Visible;
//    LipnlFlipRotate.Visible := splFlipRotate.Visible;
//    dxLayoutControl1.EndUpdate;
//  end;
  TFrmBase(ABaseClass_Pocket[Tag_Agenda_Kanban].Create(TForm(Self.Owner))).ShowCadastroPocketItem(Tag_Agenda_Kanban, Consulta.FieldByName('CODIGO').AsString, WREventosCadastro.UsaTravaCadastroPocket);

end;

procedure TFrame_ConsuProducao_Mestre.dxTileControlItem1Click(
  Sender: TdxTileControlItem);
begin
  inherited;
//  if splFlipRotate.Visible = False then
//    btnFlipCadastro.Click;
//  FrmProducao.btnNovoClick(nil);
//  FrmProducao.edtDescricao.SetFocusWR;

  TFrmBase(ABaseClass_Pocket[Tag_Agenda_Kanban].Create(TForm(Self.Owner))).ShowCadastroPocketItemNovo(Tag_Agenda_Kanban, Consulta.FieldByName('CODIGO').AsString, WREventosCadastro.UsaTravaCadastroPocket);

end;

procedure TFrame_ConsuProducao_Mestre.btnArquivaClick(Sender: TdxTileControlItem);
begin
  inherited;
  if ShowMessageWR('Deseja arquivar a Produção?', MB_ICONQUESTION) = mrYes then
    AcaoSelecionados('ATIVO','N');
end;

procedure TFrame_ConsuProducao_Mestre.btnFinalizarClick(Sender: TdxTileControlItem);
begin
  inherited;
  AcaoSelecionados('SITUACAO', 'Finalizado');
end;

procedure TFrame_ConsuProducao_Mestre.btnFlipCadastroClick(Sender: TdxTileControlItem);
begin
  inherited;
//  FrmProducao.Show;
//  FrmProducao.MainLayout.EndUpdate;
//  dxLayoutControl1.EndUpdate;
//  Application.ProcessMessages;
//  FrmProducao.ChavePrimaria:= VarArrayOf([GridConsultaDBTableView1.DataController.GetKeyFieldsValues]);
//  FrmProducao.Cadastro.Open;
//  if NOt splFlipRotate.Visible then
//  begin
//    dxLayoutControl1.BeginUpdate;
//    splFlipRotate.Visible   := True;
//    GrupoFlip.Visible       := splFlipRotate.Visible;
//    LipnlFlipRotate.Visible := splFlipRotate.Visible;
//    dxLayoutControl1.EndUpdate;
//  end;
  TFrmBase(ABaseClass_Pocket[Tag_Agenda_Kanban].Create(TForm(Self.Owner))).ShowCadastroPocketItem(Tag_Agenda_Kanban, Consulta.FieldByName('CODIGO').AsString, WREventosCadastro.UsaTravaCadastroPocket);

end;

procedure TFrame_ConsuProducao_Mestre.btnConcluirClick(Sender: TdxTileControlItem);
begin
  inherited;
  AcaoSelecionados('SITUACAO', 'Concluído');
end;

procedure TFrame_ConsuProducao_Mestre.btnDuplicarClick(Sender: TdxTileControlItem);
Var
  ACodigo_Novo: Integer;
  AAFrmProducao: TFrame_Cad_Producao;
begin
  inherited;
  if ShowMessageWR('Deseja duplicar estes item(ns)?', MB_ICONQUESTION) = mrYes then
  begin
    AAFrmProducao := TFrame_Cad_Producao.Create(Self); //(CadastroTag_Frame(Self,Tag_Agenda_Kanban));  //TFrame_Cad_Producao(TFrmBase(ABaseClass_Pocket[Tag_Agenda_Kanban].Create(TForm(Self.Owner))));//.ShowCadastroPocketItem(Tag_Agenda_Kanban, Consulta.FieldByName('CODIGO').AsString));
    AAFrmProducao.FrameEnter(AAFrmProducao);
    AAFrmProducao.CloseOpen_AbrirRegistro(Consulta.FieldByName('CODIGO').AsString);

    ACodigo_Novo := AAFrmProducao.DuplicaProducao(Consulta.FieldByName('CODCENTRO_TRABALHO').AsInteger, Consulta.FieldByName('DT_ENTREGA').AsDateTime);
;

    AAFrmProducao.Free;
    Consulta.Refresh;
    Consulta.Locate('Codigo',ACodigo_Novo,[]);
  end;
end;

procedure TFrame_ConsuProducao_Mestre.btnEncaminharClick(Sender: TdxTileControlItem);
var
  QuerX: TFDQuery;
  AORDEM: Double;
  ACodCentroTrabalho: Integer;
  AAFrmProducao: TFrame_Cad_Producao;
begin
  inherited;
  AORDEM := Consulta.FieldByName('ORDEM_ETAPA').AsFloat + 1;
  QuerX := GeraFDQuery;
  try
    QuerX.Close;
    QuerX.SQL.Text := 'select * from produto_etapa p where p.CODPRODUTO = ' + QuotedStr(Consulta.FieldByName('CODPRODUTO').AsString) + ' and p.ordem = ' + FloatToStr(AORDEM);
    QuerX.Open;
    ACodCentroTrabalho := QuerX.FieldByName('CODCENTRO_TRABALHO').AsInteger;
    with TFrmEncaminhar.Create(Self) do
    try
      if ACodCentroTrabalho > 0 then
        cbxCodCentro_Trabalho.EditValue          := ACodCentroTrabalho;
      cbxSituacao.Text          := Consulta.FieldByName('SITUACAO').AsString;
      LblAssunto.Caption        := '';
      LblProduto.Caption        := Consulta.FieldByName('DESCRICAO').AsString;
      EdtTempoEstimado.Text     := MinutosToHoras(Max(0, 0));
      MemoObservacao.Lines.Text := '';
      if ShowModal = mrOk then
      begin
        AcaoSelecaoFieldLimpaECria(['SITUACAO', 'PESSOA_FUNCIONARIO_CODIGO', 'PRODUCAO_ESTAGIO','PRODUCAO_MOTIVO','OBSERVACAO_ENCAMINHAMENTO','ORDEM_ETAPA']);
        AcaoSelecaoFieldAddValue('SITUACAO',                  cbxSituacao.EditingValue);
        AcaoSelecaoFieldAddValue('PESSOA_FUNCIONARIO_CODIGO', cbxFuncionario.EditingValue);
        AcaoSelecaoFieldAddValue('PRODUCAO_ESTAGIO',          cbxEstagio.text);
        AcaoSelecaoFieldAddValue('PRODUCAO_MOTIVO',           cbxProducao_Motivo.EditingValue);
        AcaoSelecaoFieldAddValue('OBSERVACAO_ENCAMINHAMENTO', MemoObservacao.Text);
        AcaoSelecaoFieldAddValue('ORDEM_ETAPA', AORDEM);
        if edtDataEquipe.Date > 0 then
          AcaoSelecionados('DT_ENTREGA', edtDataEquipe.Date);
        AcaoSelecionados('CODCENTRO_TRABALHO', IntToStr(cbxCodCentro_Trabalho.EditingValue));

        if chkPrevisao.checked then
        begin
          AAFrmProducao := TFrame_Cad_Producao.Create(Self); //(CadastroTag_Frame(Self,Tag_Agenda_Kanban));  //TFrame_Cad_Producao(TFrmBase(ABaseClass_Pocket[Tag_Agenda_Kanban].Create(TForm(Self.Owner))));//.ShowCadastroPocketItem(Tag_Agenda_Kanban, Consulta.FieldByName('CODIGO').AsString));
          AAFrmProducao.FrameEnter(AAFrmProducao);
          AAFrmProducao.CloseOpen_AbrirRegistro(Consulta.FieldByName('CODIGO').AsString);

          AAFrmProducao.DuplicaProducao(cbxCodCentro_TrabalhoPrevisao.EditingValue, edtDataEquipe.Date, cbxCodCentro_Trabalho.EditingValue);

          AAFrmProducao.Free;
          Consulta.Refresh;
//          Consulta.Locate('Codigo',ACodigo_Novo,[]);
        end
      end;
    finally
      Free;
    end;
  finally
    QuerX.free;
  end;
end;

procedure TFrame_ConsuProducao_Mestre.btnPausarClick(Sender: TdxTileControlItem);
begin
  inherited;
  AcaoSelecionados('SITUACAO','Parado');
end;

procedure TFrame_ConsuProducao_Mestre.btnExcluirClick(Sender: TObject);
begin
  inherited;
  FrmProducao.btnExcluirClick(nil);
  Consulta.Refresh;
end;

procedure TFrame_ConsuProducao_Mestre.btnAlterarClick(Sender: TObject);
begin
  inherited;
  FrmProducao.btnAlterarClick(nil);
end;

procedure TFrame_ConsuProducao_Mestre.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  FrmProducao.btnConfirmar.Click;  //criar uma função para todos os botões com o sender;
  Consulta.DisableControls;
  Consulta.Refresh;
  Consulta.EnableControls;
  AbrirTodos1Click(nil);
end;

procedure TFrame_ConsuProducao_Mestre.btnCancelarClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  if ShowMessageWR('Deseja Cancelar a Produção no estado atual?', MB_ICONQUESTION) = mrYes then
    AcaoSelecionados('SITUACAO', 'Cancelado');
end;

procedure TFrame_ConsuProducao_Mestre.btnReativarClick(Sender: TObject);
begin
  inherited;
  AcaoSelecionados('SITUACAO', 'Reativado');
end;

procedure TFrame_ConsuProducao_Mestre.Ativar1Click(Sender: TObject);
begin
  inherited;
  AcaoSelecionados('ATIVO','S');
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1DragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  HT: TcxCustomGridHitTest;

  ASourceMinOrderValue,ASourceMaxOrderValue,ADestOrderValue,ADestPrioridadeValue: Variant;
  I: Integer;
  AController : TcxGridTableController;
  AOrderIndex : Integer;
  ADataSet : TDataset;
  AField : TField;
  IsUp, AMudaPrioridade : boolean;
  ADataController :  TcxDBDataController;

begin
//  if (MemTreeList.FieldByName('TABELA').AsString <> 'FUNCIONARIO') then
//    Exit;          // Aqui é a Ordenação da Lista de Prioridade
  Transa.Options.ReadOnly:= False;
  Consulta.UpdateOptions.EnableUpdate:=True;
  Transa.StartTransaction;
  GridConsultaDBTableView1.BeginUpdate;
//  with TcxGridSite(Sender) do
//  begin
//    HT := ViewInfo.GetHitTest(X, Y);
//    ReorderRows(TcxGridTableView(GridView), TcxGridRecordCellHitTest(HT).GridRecord, AKeys);
//  end;

  AOrderIndex := GridConsultaDBTableView1ORDEM.Index;

  with TcxGridSite(Sender) do
  begin
    HT := ViewInfo.GetHitTest(X, Y);
    ADestOrderValue := TcxGridRecordCellHitTest(HT).GridRecord.Values[AOrderIndex];


    AController := TcxGridTableController(GridView.Controller);
    ADataController :=  TcxDBDataController(GridView.DataController);


    // Achar o Máximo e mínimo da Prioridade
    ASourceMinOrderValue := AController.SelectedRows[0].Values[AOrderIndex];
    ASourceMaxOrderValue := AController.SelectedRows[AController.SelectedRowCount-1].Values[AOrderIndex];

//    AchaMenor();
//    AchaMaior();


    ADataSet :=  ADataController.DataSet;
    AField := ADataSet.FieldByName('ORDEM');
    IsUp := (ADestOrderValue < ASourceMinOrderValue);

    ADestPrioridadeValue := TcxGridRecordCellHitTest(HT).GridRecord.Values[GridConsultaDBTableView1PRIORIDADE_PRODUCAO.Index];

    AMudaPrioridade:=False;
    if (AController.SelectedRows[0].Values[GridConsultaDBTableView1PRIORIDADE_PRODUCAO.Index] <> ADestPrioridadeValue)and
      (Application.MessageBox('Deseja mudar a Prioridade?', PWideChar(application.Title), MB_YESNO + MB_ICONQUESTION) = IDYES) then
     AMudaPrioridade:=True;


    ADataSet.First;
    for I := 0 to ADataSet.RecordCount - 1 do
    begin
      ADataSet.Edit;
      if IsUp and (AField.AsInteger >= ADestOrderValue) and (AField.AsInteger < ASourceMinOrderValue) then
        AField.AsInteger := AField.AsInteger + AController.SelectedRowCount;
      if not IsUp and (AField.AsInteger <= ADestOrderValue) and (AField.AsInteger > ASourceMaxOrderValue) then
          AField.AsInteger := AField.AsInteger - AController.SelectedRowCount;
//      if AMudaPrioridade then
//        ADataSet.FieldByName('PRIORIDADE_PRODUCAO').Value:= ADestPrioridadeValue;
      ADataSet.Post;
      ADataSet.Next;
    end;

    if Not IsUp then
      ADestOrderValue := ADestOrderValue - AController.SelectedRowCount + 1;

    for I := 0 to AController.SelectedRowCount - 1 do
    begin
      TcxDBDataController(GridView.DataController).LocateByKey(AKeys[I]);
      ADataset.Edit;
      AField.Value := ADestOrderValue + I;
      if AMudaPrioridade then
        ADataSet.FieldByName('PRIORIDADE_PRODUCAO').Value:= ADestPrioridadeValue;
      ADataset.Post;
    end;
  end;
  Transa.Commit;

  Transa.Options.ReadOnly:= True;
  Consulta.UpdateOptions.EnableUpdate:=False;
  GridConsultaDBTableView1.EndUpdate;


  {
  HT := GridConsultaDBTableView1.GetHitTest(X, Y);
  if not (HT is TcxGridRecordCellHitTest) then
    Exit;
  AFrmAguarde := TFrmAguarde.Create(Self);
  try
    ACodigo    := TcxGridRecordCellHitTest(HT).GridRecord.Values[GridSubGridViewCODIGO.Index];
    AFrmAguarde.Mensagem := 'Atualizando ! ...';
    AFrmAguarde.Show;

    A := TcxGridRecordCellHitTest(HT).GridRecord.Index;

    Application.ProcessMessages;
    AFrmAguarde.ProgressoMaximo := GridConsultaDBTableView1.Controller.SelectedRecordCount;
    for i := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
    begin
//      AFormCadastro:= TFrmCadM(Forms.Cadastro);
//      if AFormCadastro = nil then
//      begin
//        AFormCadastro := TFrmCadM(Forms.CadastroClass.Create(FrmPrincipal));
//        Forms.Cadastro:= AFormCadastro;
//        AFormCadastro.Forms:= Forms;
//      end;
      with FrmProducao do
      begin
        // CloseOpen_AbrirRegistro(GridConsultaDBTableView1.Controller.SelectedRecords[i].Values[GridConsultaDBTableView1.GetColumnByFieldName('CODIGO').Index]);
        if Not Cadastro.Active then
          Cadastro.Open;
        GridConsultaDBTableView1.DataController.ChangeFocusedRecordIndex(GridConsultaDBTableView1.Controller.SelectedRecords[i].RecordIndex);
        Cadastro.Edit;
//        Aqui Faz A Chamada Da Coluna com os Valores tratados
        with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[TcxGridRecordCellHitTest(HT).GridRecord.Index]).DataBinding do
        begin
          Prefixo:='';
          if Consulta.FindField(FieldName).AutoGenerateValue <> TAutoRefreshFlag(arNone) then
            Prefixo:='COD';
          if FrmProducao.Configuracao_Componente.Active then
            FrmProducao.Configuracao_Componente.Open;

          if FrmProducao.Configuracao_Componente.Locate('CAMPO', Trim(Prefixo+FieldName), []) then
          begin
            if FrmProducao.Configuracao_Componente.FieldByName('SQLCAMPOSADICIONAIS').AsString<>'' then
            begin
              QuerXCamposAdicionais := GeraFDQuery;    //
              Try
                QuerXCamposAdicionais.SQL.Text:= Configuracao_Componente.FieldByName('SQLCAMPOSADICIONAIS').AsString;    // Aqui deve copiar os campos dependentes, Triger Porraço,
                QuerXCamposAdicionais.ParamByName('Codigo').Value:= ACodigo;
                QuerXCamposAdicionais.Open;
//                ShowMessage(QuerXCamposAdicionais.Fields[0.AsSTring + '  '+ ACodigo);
                DSCopiarCamposIguais(QuerXCamposAdicionais, Cadastro,[]);   // Cria a Query, pega o sql e copia os campos da Queryorigem para a destino
                if QuerXCamposAdicionais.FindField('MENSAGEM_HISTORICO') <> nil then
                  UCHist_Cadastro.MensagemHistorico.Text := QuerXCamposAdicionais.FieldByName('MENSAGEM_HISTORICO').AsString;
              except End;
              QuerXCamposAdicionais.Free;
             end;
          end;
          Cadastro.FieldByName(Prefixo+FieldName).Value := ACodigo;
        end;
        btnConfirmarClick(Nil);
      end;
      AFrmAguarde.AvancarProgresso;
    end;
    AFrmAguarde.Mensagem := 'Atualizados!';
    Sleep(2000);
  finally
    AFrmAguarde.Free;
  end;
//  Faz o mundo girar
  ABookmark := SubGrid.GetBookmark;
  Consulta.Refresh;
  SubGrid.Refresh;
//  RefreshConsulta;
  GotoBookmark(SubGrid, ABookmark);}
end;

///////////  Fim do desespero das transações //////////////////////////////////////////////


{$REGION 'Menu Roxinho'}
/////////// Menu roxinho //////////////////////////////////////////////////////////////////
 (*
procedure TFrame_ConsuProducao_Mestre.CarregaTreeList;
var
  QuerX: TFDQuery;
  ACod, AImagem, Anivel: Integer;
  AQuant:Variant;
  ADescricaoSelecionada, ACentro_Trabalho, ASituacao:String;
begin
  inherited;
  if Not MemTreeList.IsEmpty then
    cxStatusKeeperTreelist.SaveState;

  TimerUsuarioOnLine.Enabled:=False;
  QuerX := GeraFDQuery(Transa);
  TreeListUsuarios.BeginUpdate;
  try
//   if MemTreeList.FieldByName('DESCRICAO').AsString<>'' then
//     ADescricaoSelecionada := MemTreeList.FieldByName('DESCRICAO').Value
//   else
//     ADescricaoSelecionada := Usuario.Login;

   TreeListUsuarios.DataController.DataSource:=nil;
    MemTreeList.Open;
    if Not MemTreeList.IsEmpty then
     MemTreeList.EmptyDataSet;
//    MemTreeListClone.CloneCursor(MemTreeList, False, False);

// MODELO >>>>> AddTreeList(ACodigo, AParent, AImageIndex: Integer; ADescricao, AModulo: string; ATabela, AChave_PK1, AChave_PK2,AChave_PK3, AQuant : Variant);

//    if poupMenuTodasasnolidas.Checked then// Só aparece em raros os casos melhor dividir em assuntos APPs, menos peso para carregar e conceitos diferentes. Venda, Leads, Cobrança, essa divisão é importante
    AddTreeList(1, -1, 6, 'Encaminhar', '', 'ENCAMINHAR', Null, Null, Null, Null);

//    AddTreeList(3, -1, 12, 'Mais', '', Null, Null, Null, Null, Null);

//             prLembrete: Result := -3;
//             prBaixo: Result := -2;
//    prAbaixoDoNormal: Result := -1;
//            prNormal: Result := 0;
//     prAcimaDoNormal: Result := 1;
//           prUrgente: Result := 2;
//           prCritico: Result := 3;
    ACod := 100;
    AddTreeList(2, 0, 2, 'Situações', '', Null, Null, Null, Null, Null);    // Sem Imagem

    QuerX.SQL.Text := ' select P.SITUACAO, P.PRODUCAO_MOTIVO, PS.ICO, PS.FILA, Count(1) as Quant from PRODUCAO P  '+
                      ' left join PRODUCAO_SITUACAO PS ON PS.DESCRICAO = P.SITUACAO '+
                      ' where (P.ATIVO <> ''N'') '+
                      ' group by P.SITUACAO, P.PRODUCAO_MOTIVO, PS.ICO, PS.FILA '+
                      ' Order by PS.FILA DESC ';
    ASituacao :=  '';
    QuerX.Open;
    QuerX.First;
    while not QuerX.Eof do
    begin
      inc(ACod);
      if ASituacao <>  QuerX.FieldByName('SITUACAO').AsString  then
      begin
        ASituacao := QuerX.FieldByName('SITUACAO').AsString;
        AImagem   := QuerX.FieldByName('ICO').AsInteger;
        inc(ACod);
        AddTreeList(ACod, 2, AImagem, QuerX.FieldByName('SITUACAO').AsString, 'SITUACAO', 'SITUACAO',
           Null, QuerX.FieldByName('SITUACAO').AsString, Null, QuerX.FieldByName('QUANT').Value);
        ANivel:=ACod;
      end;
      while not QuerX.Eof and (ASituacao =  QuerX.FieldByName('SITUACAO').AsString) do
      begin
        inc(ACod);
        AddTreeList(ACod , ANivel, AImagem,
          QuerX.FieldByName('PRODUCAO_MOTIVO').AsString, 'SITUACAO', 'PRODUCAO_MOTIVO', Null, QuerX.FieldByName('SITUACAO').Value, QuerX.FieldByName('PRODUCAO_MOTIVO').Value,
          QuerX.FieldByName('Quant').Value);
        QuerX.Next;
      end;
    end;

    {
    ACod := 200;
    AddTreeList(3, 0, 2, 'Fila de Produção', '', Null, Null, Null, Null, Null);    // Sem Imagem

    QuerX.SQL.Text := ' select P.PRIORIDADE_PRODUCAO, Count(1) as Quant from PRODUCAO P where (P.CodUsuario = '+Usuario.Codigo.ToString+')and(P.ATIVO <> ''N'') '+
                      ' group by p.PRIORIDADE_PRODUCAO ';
    QuerX.Open;
    inc(ACod);
    AQuant:=null;
    if QuerX.locate('PRIORIDADE_PRODUCAO', 5,[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(ACod, 3, 21,'★★★★★', 'PRIORIDADE_PRODUCAO', 'PRIORIDADE_PRODUCAO', 5, Null, Null, AQuant);
    inc(ACod);
    AQuant:=null;
    if QuerX.locate('PRIORIDADE_PRODUCAO', 4,[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(ACod, 3, 20,'★★★★☆', 'PRIORIDADE_PRODUCAO', 'PRIORIDADE_PRODUCAO', 4, Null, Null, AQuant);
    inc(ACod);
//    AQuant:=null;
//    if QuerX.locate('PRIORIDADE', 1,[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
//    AddTreeList(ACod, 3, 19,'Acima do Normal', 'PRIORIDADE', 'PRIORIDADE', 1, Null, Null, AQuant);
//    inc(ACod);
    AQuant:=null;
    if QuerX.locate('PRIORIDADE_PRODUCAO', 3,[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(ACod, 3, 18, '★★★☆☆', 'PRIORIDADE_PRODUCAO', 'PRIORIDADE_PRODUCAO', 3, Null, Null, AQuant);
    inc(ACod);
    AQuant:=null;
    if QuerX.locate('PRIORIDADE_PRODUCAO', 2,[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(ACod, 3, 17, '★★☆☆☆', 'PRIORIDADE', 'PRIORIDADE_PRODUCAO', 2, Null, Null, AQuant);
    inc(ACod);
    AQuant:=null;
    if QuerX.locate('PRIORIDADE_PRODUCAO', 1,[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(ACod, 3, 16, '★☆☆☆☆', 'PRIORIDADE_PRODUCAO', 'PRIORIDADE_PRODUCAO', 1, Null, Null, AQuant);
    inc(ACod);
    AQuant:=null;
    if QuerX.locate('PRIORIDADE_PRODUCAO', 0,[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(ACod, 3, 15, '☆☆☆☆☆', 'PRIORIDADE_PRODUCAO', 'PRIORIDADE_PRODUCAO', 0, Null, Null, AQuant); }
    ACod := 1000;
    AddTreeList(10, 0, 2, 'Equipe', '', Null, Null, Null, Null, Null);    // Sem Imagem
     Inc(ACod);
    AddTreeList(ACod, 10, 5, 'Todos', 'EQUIPE', 'TODAS', Null, Null, Null, Null);

//    QuerX.SQL.Text := ' select CT.CODIGO, CT.DESCRICAO, CT.PRIVADO, '+
//                      ' (Select Count(1) from PRODUCAO P where (CT.CODIGO = P.CODCENTRO_TRABALHO)and(P.TEM_ARQUIVADO <> ''S''))as Quant '+
//                      ' from CENTRO_TRABALHO CT WHERE CT.ATIVO = ''S'' ' +
//                      ' order by CT.DESCRICAO asc';
//    QuerX.Open;       Antigo e Pesado


   QuerX.SQL.Text := ' select CT.CODIGO, CT.DESCRICAO, P.PRODUCAO_ESTAGIO, CT.PRIVADO, count(1) as QUANT '+
                     ' from PRODUCAO P  '+
                     ' left join CENTRO_TRABALHO CT on not(P.ATIVO = ''N'')and(P.CODCENTRO_TRABALHO=CT.CODIGO) '+
                     ' Group by CT.CODIGO, CT.DESCRICAO, P.PRODUCAO_ESTAGIO, CT.PRIVADO '+
                     ' order by CT.DESCRICAO Asc, P.PRODUCAO_ESTAGIO ASC ';
    QuerX.Open;


//    Criando Sub-Nível
    ACentro_Trabalho :=  '';
    QuerX.First;
    while not QuerX.Eof do
    begin
      inc(ACod);
      if ACentro_Trabalho <>  QuerX.FieldByName('DESCRICAO').AsString  then
      begin
        ACentro_Trabalho :=  QuerX.FieldByName('DESCRICAO').AsString;
        AImagem:= ifthen(QuerX.FieldByName('PRIVADO').AsString = 'S', 1, 0);
        AddTreeList(ACod , 10, AImagem,
          QuerX.FieldByName('DESCRICAO').AsString, 'NOTIFICACAO', 'CENTRO_TRABALHO', QuerX.FieldByName('CODIGO').Value, Null, Null,
          {QuerX.FieldByName('Quant').Value}null);
        ANivel:=ACod;
      end;
      while not QuerX.Eof and (ACentro_Trabalho = QuerX.FieldByName('DESCRICAO').AsString) do
      begin
        inc(ACod);
        AddTreeList(ACod , ANivel, AImagem,
          QuerX.FieldByName('PRODUCAO_ESTAGIO').AsString, 'NOTIFICACAO', 'PRODUCAO_ESTAGIO', QuerX.FieldByName('CODIGO').Value, QuerX.FieldByName('PRODUCAO_ESTAGIO').Value, Null,
          QuerX.FieldByName('Quant').Value);
        QuerX.Next;
      end;
//      QuerX.Next;   // Não usar essa bosta aqui
    end;

    if FrmPrincipal.actProducao_Equipe.Enabled then
      AddTreeList(2999, 10, 7, 'Adicionar equipe', '', Null, NULL, Null, Null, Null);     // Imagem de Pasta 2

    // Adiciona todos os usuários, sem divisão por setor
    AddTreeList(20, 0, 2, 'Funcionário','', Null, NULL, Null, Null, Null);     // Imagem de Pasta 2
    Inc(ACod);
    AddTreeList(ACod, 20, 5, 'Todos', 'FUNCIONARIO', 'TODAS', Null, Null, Null, Null);

//    QuerX.SQL.Text := ' select U.CODIGO, U.USUARIO, (select Count(1) from USUARIO_LOGADO UL where (UL.USUARIO = U.CODIGO))as OnLine, '+   //P.TEM_ARQUIVADO <> ''S''
//                      ' (Select Count(1) from PRODUCAO P where (U.CODIGO = P.CodUsuario)and(P.ATIVO <> ''N''))as Quant '+
//                      ' from USUARIO U where (U.INATIVO = 0) order by U.USUARIO asc';

    QuerX.SQL.Text := ' select PE.CODIGO as PESSOA_FUNCIONARIO_CODIGO, PE.FANTASIA, ' +// (select Count(1) from USUARIO_LOGADO UL where (UL.USUARIO = U.CODIGO))as OnLine, '+   //P.TEM_ARQUIVADO <> ''S''
                      ' (Select Count(1) from PRODUCAO P where (PE.CODIGO = P.PESSOA_FUNCIONARIO_CODIGO)and(P.ATIVO <> ''N''))as Quant '+
                      ' from PESSOAS PE where (PE.PODE_PRODUCAO = ''S'') order by PE.FANTASIA asc';

    QuerX.Open;
    QuerX.First;
    while not QuerX.Eof do
    begin
 //     AImagem:=ifthen(QuerX.FieldByName('OnLine').AsInteger < 1, 3, 4);
      inc(ACod);
      AddTreeList(ACod, 20, AImagem, QuerX.FieldByName('FANTASIA').AsString, 'FUNCIONARIO', 'FUNCIONARIO',
        Null, QuerX.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString, Null, QuerX.FieldByName('QUANT').Value);
      QuerX.Next;
    end;
    inc(ACod);
    if FrmPrincipal.Action_Usuario.Enabled then
      AddTreeList(ACod, 20, 7, 'Adicionar funcionário', '', Null, NULL, Null, Null, Null);
                   // Muita atenção no item 4 abaixo se tiver outro nde usar um númeiro maior

    AddTreeList(21, 0, 2, 'Equipamento','', Null, NULL, Null, Null, Null);     // Imagem de Pasta 2
    Inc(ACod);
    QuerX.SQL.Text := ' select P.TIPO_IMPRESSAO, Count(1) as Quant ' +
                      ' from PRODUCAO P where (P.ATIVO <> ''N'') '+
                      ' group by 1 order by P.TIPO_IMPRESSAO asc';

    QuerX.Open;
    QuerX.First;
    while not QuerX.Eof do
    begin
 //     AImagem:=ifthen(QuerX.FieldByName('OnLine').AsInteger < 1, 3, 4);
      inc(ACod);
      AddTreeList(ACod, 21, AImagem, QuerX.FieldByName('TIPO_IMPRESSAO').AsString, 'EQUIPAMENTO', 'EQUIPAMENTO',
        Null, QuerX.FieldByName('TIPO_IMPRESSAO').Value,  Null ,QuerX.FieldByName('QUANT').Value);
      QuerX.Next;
    end;

  {  AddTreeList(30, 4, 2, 'Apps', '', Null, Null, Null, Null, Null);

   QuerX.SQL.Text := ' select H.MODULO, H.TABELA, Count(1) as Quant '+
                     ' from HISTORICO_NOTIFICACAO H where NOT(H.TABELA = ''USUARIO'')AND NOT(H.TABELA = ''CENTRO_TRABALHO'') '+
                     '  and(H.CodUsuario = '+Usuario.Codigo.ToString+')and(H.DT_LIDO IS NULL) '+
                     ' group by H.MODULO, H.TABELA ';
    QuerX.Open;

    AQuant:=null;
    if QuerX.locate('MODULO;TABELA', varArrayOf(['AGENDA','AGENDA']),[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(5, 30, 8, 'Agendamento', 'CRM', 'AGENDA', Null, Null, Null, AQuant);

//    AQuant:=null;
//    if QuerX.locate('MODULO;TABELA', varArrayOf(['PRODUCAO','FILA_PRODUCAO']),[]) then  AQuant:= Null;
//    AddTreeList(6, 30, 9, 'Fila de Produção', 'PRODUCAO',  'FILA_PRODUCAO', Null, Null, Null, AQuant);  // QuerX.FieldByName('QUANT').Value;

    AQuant:=null;
    if QuerX.locate('MODULO;TABELA', varArrayOf(['PRODUCAO','PRODUCAO']),[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(7, 30, 9, 'Planejamento', 'PRODUCAO',  'PRODUCAO', Null, Null, Null, AQuant);

    AQuant:=null;
    if QuerX.locate('MODULO;TABELA', varArrayOf(['PAINEL','PAINEL']),[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(8, 30, 14, 'Painel de controle', 'PAINEL',  'PAINEL', Null, Null, Null, AQuant);      }

  finally
    QuerX.Free;
    TreeListUsuarios.DataController.DataSource:=DSMemTreeList;

//    MemTreeList.Locate('DESCRICAO', ADescricaoSelecionada,[]);
//    TreeListUsuarios.FullExpand;
//    TreeListUsuarios.FindNodeByKeyValue(3, nil, True);
//    TreeListUsuarios.FindNodeByKeyValue(10, nil, True);
//    TreeListUsuarios.Selection[i].Expanded = true;

//    TreeListUsuarios.FindNodeByKeyValue(20, nil, True);
//    TreeListUsuarios.FindNodeByKeyValue(30, nil, True);

//  Fechar a aba de setores, quando tem muitos
//    TreeListUsuarios.Root.Collapse(False);
    TreeListUsuarios.EndUpdate;
    try
      cxStatusKeeperTreelist.LoadState;
    Except // Se não conseguir refazer o stado anterior não tem problema
    end;
    TimerUsuarioOnLine.Enabled:=True;
  end;
end;   *)

{procedure TFrame_ConsuProducao_Mestre.AddTreeList(ACodigo, AParent, AImageIndex: Integer;
  ADescricao, AModulo: string; ATabela, AChave_PK1, AChave_PK2, AChave_PK3,
  AQuant: Variant);
begin
  MemTreeList.Insert;
  MemTreeList.FieldByName('CODIGO').AsInteger     := ACodigo;
  MemTreeList.FieldByName('DESCRICAO').AsString   := ADescricao;
  MemTreeList.FieldByName('PARENT').AsInteger     := AParent;
  MemTreeList.FieldByName('IMAGEINDEX').AsInteger := AImageIndex;
  MemTreeList.FieldByName('TABELA').Value         := ATabela;
  MemTreeList.FieldByName('MODULO').Value         := AModulo;
  MemTreeList.FieldByName('CHAVE_PK1').Value      := AChave_PK1;
  MemTreeList.FieldByName('CHAVE_PK2').Value      := AChave_PK2;
  MemTreeList.FieldByName('CHAVE_PK3').Value      := AChave_PK3;
  if AQuant = 0 then
    MemTreeList.FieldByName('QUANT').Clear
  else
    MemTreeList.FieldByName('QUANT').Value        := AQuant;
  MemTreeList.Post;
end;   }

procedure TFrame_ConsuProducao_Mestre.TreeListUsuariosDblClick(Sender: TObject);
begin
  inherited;
{  if (MemTreeList.FieldByName('DESCRICAO').AsString = 'Apps')AND(FrmPrincipal.Action_Modulos.Enabled) then
    FrmPrincipal.Action_Modulos.Execute;   }
end;

procedure TFrame_ConsuProducao_Mestre.TreeListUsuariosDragDrop(Sender, Source: TObject; X,
  Y: Integer);
{var
  ACodigo: Variant;
  ANode: TcxTreeListNode;         }
begin
  inherited;
 { Anode := TcxTreeList(Sender).GetNodeAt(X,Y);
  if ANode <> nil then
  begin
    if TreeListGetValorNodeString(ANode, 'TABELA') = 'FUNCIONARIO' then
    begin
      ACodigo := TreeListGetValorNode(ANode, 'CHAVE_PK2');
      AcaoSelecionados('PESSOA_FUNCIONARIO_CODIGO', ACodigo);
    end else
    if TreeListGetValorNodeString(ANode, 'TABELA') = 'CENTRO_TRABALHO' then
    begin
      ACodigo := TreeListGetValorNode(ANode, 'CHAVE_PK1');
      AcaoSelecionados('CODCENTRO_TRABALHO', ACodigo);
    end else
    if TreeListGetValorNodeString(ANode, 'TABELA') = 'PRODUCAO_ESTAGIO' then
    begin
      AcaoSelecaoFieldLimpaECria(['PRODUCAO_ESTAGIO']);
      ACodigo := TreeListGetValorNode(ANode, 'CHAVE_PK1'); // Aqui tem que ir tbm o Estágio
      AcaoSelecaoFieldAddValue('PRODUCAO_ESTAGIO', TreeListGetValorNode(ANode, 'DESCRICAO'));
      AcaoSelecionados('CODCENTRO_TRABALHO', ACodigo);
    end else
    if TreeListGetValorNodeString(ANode, 'TABELA') = 'SITUACAO' then
    begin
      ACodigo := TreeListGetValorNode(ANode, 'CHAVE_PK2'); // Aqui tem que ir tbm o Estágio
      AcaoSelecionados('SITUACAO', ACodigo);
    end else
    if TreeListGetValorNodeString(ANode, 'TABELA') = 'SITUACAO' then
    begin
      AcaoSelecaoFieldLimpaECria(['PRODUCAO_MOTIVO', 'TEM_PAUSAR', 'TEM_PLAY']);
      ACodigo := TreeListGetValorNode(ANode, 'CHAVE_PK2'); // Aqui tem que ir tbm o Estágio
      AcaoSelecaoFieldAddValue('PRODUCAO_MOTIVO', TreeListGetValorNode(ANode, 'CHAVE_PK3'));
      AcaoSelecionados('SITUACAO', ACodigo);
    end else
    if TreeListGetValorNodeString(ANode, 'TABELA') = 'PRIORIDADE_PRODUCAO' then
    begin
      ACodigo := TreeListGetValorNode(ANode, 'CHAVE_PK1');
      AcaoSelecionados('PRIORIDADE_PRODUCAO', ACodigo);
    end;
    if TreeListGetValorNodeString(ANode, 'TABELA') = 'EQUIPAMENTO' then
    begin
     ACodigo := TreeListGetValorNode(ANode, 'CHAVE_PK2');
     AcaoSelecionados('TIPO_IMPRESSAO', ACodigo);
    end;
  end; }
end;

procedure TFrame_ConsuProducao_Mestre.TreeListUsuariosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
{Var
  ANode: TcxTreeListNode; }
begin
 { // aqui pode arrastar qual coisa aind, tem que restrngir para o GridConsulta e Kanban
  Anode := TcxTreeList(Sender).GetNodeAt(X,Y);
  if (ANode <> nil)and MatchStr(TreeListGetValorNodeString(ANode, 'TABELA') , ['FUNCIONARIO','PRIORIDADE_PRODUCAO','CENTRO_TRABALHO','PRODUCAO_ESTAGIO','SITUACAO','EQUIPAMENTO']) then
    Accept := True
  else
    Accept:= False;  }
end;
(*
procedure TFrame_ConsuProducao_Mestre.TreeListUsuariosClick(Sender: TObject);
Var
  ASubNivel :String;
  AForm: TForm;
  AOldCursor: TCursor;
begin
  inherited;
//  if TreeListUsuarios.IsLoading then  Exit;  Se clicar no + não deixar passar


  if MemTreeList.FieldByName('DESCRICAO').AsString = 'Encaminhar' then  // Aqui tem que verificar se o treelista esta focado, quando clica no + para espandir a item
    btnEncaminhar.Click;

  if MatchStr(MemTreeList.FieldByName('DESCRICAO').AsString, ['Equipe', 'Funcionário', 'Apps', 'Situação']) then
    TreeListUsuarios.Selections[0].Expanded:=Not TreeListUsuarios.Selections[0].Expanded;
  if MemTreeList.FieldByName('DESCRICAO').AsString = 'Adicionar funcionário' then
    FrmPrincipal.Action_Usuario.Execute;
  if MemTreeList.FieldByName('DESCRICAO').AsString = 'Adicionar equipe' then
    FrmPrincipal.actProducao_Equipe.Execute;

  Consulta.DisableControls;
  if MatchStr(MemTreeList.FieldByName('DESCRICAO').AsString,
             ['Itens salvos','Todos','Planejamento','Agendamento'])then
  begin
//    Cosulta.Refresh;
    // Desvincula o histórico
    // e fecha o menssageiro
    RefreshConsulta;
  end;
//  if MemTreeList.FieldByName('TABELA').AsString = 'FUNCIONARIO' then
//  begin
//    // Deve colocar e Dasativar os recursos do Grid
//
//    // Aqui deve retirar o agrupamento, Retirar opção de Ordenação, e Habilitar o DragAndDrop
//
//    // So pode ter Fila de Funcionário, Equipe, equipamento
//    ConfigGrid.CarregaConfigGrid(GridConsultaDBTableView1, 'GridConsultaFila');   // TConfig OK   Reativar
//    RefreshConsulta;
//  end else
//    ConfigGrid.CarregaConfigGrid(GridConsultaDBTableView1, 'GridConsultaFD');   // TConfig OK   Reativar

//  dxLayoutControl1.BeginUpdate;
  if MatchStr(MemTreeList.FieldByName('TABELA').AsString, ['FUNCIONARIO','CENTRO_TRABALHO','PRIORIDADE_PRODUCAO','PRODUCAO_ESTAGIO', 'SITUACAO', 'EQUIPAMENTO']) then
  begin
    if MemTreeList.FieldByName('TABELA').AsString = 'FUNCIONARIO' then
    begin
//      GridConsultaDBTableView1.DataController.OnGroupingChanged:=nil;
      GridConsultaDBTableView1.DataController.Groups.ClearGrouping;
      GridConsultaDBTableView1.OptionsView.GroupByBox:= True;
//      AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1CALENDARIO_DT_PREVISAO_FIM, TdxSortOrder.soAscending);
  //    GridConsultaDBTableView1.SortedItems.RestoreDefaults;
      GridConsultaDBTableView1.Columns[GridConsultaDBTableView1FILA.Index].SortOrder:= TdxSortOrder.soDescending;
      GridConsultaDBTableView1.Columns[GridConsultaDBTableView1FILA.Index].SortIndex:= 0;
      GridConsultaDBTableView1.Columns[GridConsultaDBTableView1PRIORIDADE_PRODUCAO.Index].SortOrder:= TdxSortOrder.soDescending;
      GridConsultaDBTableView1.Columns[GridConsultaDBTableView1PRIORIDADE_PRODUCAO.Index].SortIndex:= 1;
      GridConsultaDBTableView1.Columns[GridConsultaDBTableView1ORDEM.Index].SortOrder:= TdxSortOrder.soAscending;
      GridConsultaDBTableView1.Columns[GridConsultaDBTableView1ORDEM.Index].SortIndex:= 2;

      RefreshConsulta;
//      GridConsultaDBTableView1.DataController.OnGroupingChanged:=GridConsultaDBTableView1DataControllerGroupingChanged;

    end;
    if MemTreeList.FieldByName('TABELA').AsString = 'CENTRO_TRABALHO' then
    begin
      AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1PRODUCAO_ESTAGIO, TdxSortOrder.soDescending);
    end;
    if MemTreeList.FieldByName('TABELA').AsString = 'PRODUCAO_ESTAGIO' then
    begin
      ASubNivel := Procura('SUBNIVEL', 'CENTRO_TRABALHO', MemTreeList.FieldByName('CHAVE_PK1').AsInteger);
      if ASubNivel = '-Agrupar Por-'  then
      begin

        AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1LOCAL, TdxSortOrder.soDescending);
      end
      else begin
//        if edtRapidoAgrupar.Text <> ASubNivel  then
//          edtRapidoAgrupar.Text:= ASubNivel
//        else
          RefreshConsulta;
      end;

//      if edtRapidoAgrupar.Text <> 'Local de aplicação'  then   // Aqui é o campo especial do módulo
//        edtRapidoAgrupar.Text:= 'Local de aplicação'
//      else RefreshConsulta;
    end;
    if MemTreeList.FieldByName('TABELA').AsString = 'PRIORIDADE_PRODUCAO' then
    begin
      RefreshConsulta;
    end;
    if MemTreeList.FieldByName('TABELA').AsString = 'EQUIPAMENTO' then
    begin
      RefreshConsulta;
    end;
    if MemTreeList.FieldByName('TABELA').AsString = 'SITUACAO' then
    begin
      {if edtRapidoAgrupar.Text <> 'Estágio'  then
        edtRapidoAgrupar.Text:= 'Estágio'
      else }
      GetItemByTag(tcAgrupador, Tag_Agrupador_Producao_Estagio).Click;
      RefreshConsulta;
    end;
//      RefreshConsulta;
  end;
  Consulta.EnableControls;
  GridConsultaDBTableView1.DataController.Groups.FullExpand;
end;    *)

//////////////////////////////// fim menu Roxinho /////////////////////////////////////////
{$ENDREGION}

{$REGION 'Filtros do Grid'}
///////////////////////// Inicio dos Filtros //////////////////////////////////////////////////////

procedure TFrame_ConsuProducao_Mestre.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  GridConsultaDBTableView1.DataController.Filter.BeginUpdate;
  GridConsultaDBTableView1.DataController.Filter.Root.Clear;
  if edtDataLimite.Text = 'Expirados' then
  begin
    GridConsultaDBTableView1.DataController.Filter.Root.AddItem( GridConsultaDBTableView1DT_ALTERACAO,
                                           foLess,
                                           Now-1,
                                           FormatDateTime('dd/mm/yyyy', Now-1)
                                           );
  end;
  if edtDataLimite.Text = 'Hoje' then
    GridConsultaDBTableView1.DataController.Filter.Root.AddItem( GridConsultaDBTableView1DT_FIM,
                                           foToday,
                                           Now,
                                           FormatDateTime('dd/mm/yyyy', Now)
                                           );
  if edtDataLimite.Text = 'Amanhã' then
    GridConsultaDBTableView1.DataController.Filter.Root.AddItem( GridConsultaDBTableView1DT_ALTERACAO,
                                           foTomorrow,
                                           Now+1,
                                           FormatDateTime('dd/mm/yyyy', Now+1)
                                           );
  if edtDataLimite.Text = 'Em 7 dias' then
    GridConsultaDBTableView1.DataController.Filter.Root.AddItem( GridConsultaDBTableView1DT_ALTERACAO,
                                           foThisWeek,
                                           VarBetweenArrayCreate(Now-1,Now),
                                           FormatDateTime('dd/mm/yyyy', Now-1)+';'+FormatDateTime('dd/mm/yyyy', Now)
                                           );
  if edtDataLimite.Text = 'Em 15 Dias' then
    GridConsultaDBTableView1.DataController.Filter.Root.AddItem( GridConsultaDBTableView1CALENDARIO_DT_PREVISAO_FIM,
                                           foThisWeek,
                                           VarBetweenArrayCreate(Now-1,Now),
                                           FormatDateTime('dd/mm/yyyy', Now-1)+';'+FormatDateTime('dd/mm/yyyy', Now)
                                           );

//-Data Limite-
//Personalizados

  GridConsultaDBTableView1.DataController.Filter.Active := True;
  GridConsultaDBTableView1.DataController.Filter.EndUpdate;
end;

destructor TFrame_ConsuProducao_Mestre.Destroy;
begin
  cxStatusKeeperTreelist.StoreStatesToFile(GetDirSistema + 'GridProducao.txt');
  inherited;
end;

procedure TFrame_ConsuProducao_Mestre.edtRapidoFiltroPropertiesEditValueChanged(
  Sender: TObject);
begin
(*  if MatchStr(edtRapidoFiltro.Text,['Arquivados','-Filtros Rápidos-']) then
    inherited;    // Refresh Aqui
  GridConsultaDBTableView1.DataController.Filter.BeginUpdate;
  GridConsultaDBTableView1.DataController.Filter.Root.Clear;
//  if True then -Filtros Rápidos-
  if edtRapidoFiltro.Text = 'Recentes Modificados' then
  begin
    GridConsultaDBTableView1.DataController.Filter.Root.AddItem( GridConsultaDBTableView1DT_ALTERACAO,
                                           foBetween,
                                           VarBetweenArrayCreate(Now-1,Now),
                                           FormatDateTime('dd/mm/yyyy', Now-1)+';'+FormatDateTime('dd/mm/yyyy', Now)
                                           );
  end;
  if edtRapidoFiltro.Text = 'Recentes Concluídos' then
    GridConsultaDBTableView1.DataController.Filter.Root.AddItem( GridConsultaDBTableView1DT_FIM,
                                           foBetween,
                                           VarBetweenArrayCreate(Now-1,Now),
                                           FormatDateTime('dd/mm/yyyy', Now-1)+';'+FormatDateTime('dd/mm/yyyy', Now)
                                           );
  if edtRapidoFiltro.Text = 'Recentes movidos para Progresso' then
    GridConsultaDBTableView1.DataController.Filter.Root.AddItem( GridConsultaDBTableView1DT_ALTERACAO,
                                           foBetween,
                                           VarBetweenArrayCreate(Now-1,Now),
                                           FormatDateTime('dd/mm/yyyy', Now-1)+';'+FormatDateTime('dd/mm/yyyy', Now)
                                           );
  if edtRapidoFiltro.Text = 'Recentes movidos para Teste' then
    GridConsultaDBTableView1.DataController.Filter.Root.AddItem( GridConsultaDBTableView1DT_ALTERACAO,
                                           foBetween,
                                           VarBetweenArrayCreate(Now-1,Now),
                                           FormatDateTime('dd/mm/yyyy', Now-1)+';'+FormatDateTime('dd/mm/yyyy', Now)
                                           );
  if edtRapidoFiltro.Text = 'Recentes movidos para Concluídos' then
    GridConsultaDBTableView1.DataController.Filter.Root.AddItem( GridConsultaDBTableView1CALENDARIO_DT_PREVISAO_FIM,
                                           foBetween,
                                           VarBetweenArrayCreate(Now-1,Now),
                                           FormatDateTime('dd/mm/yyyy', Now-1)+';'+FormatDateTime('dd/mm/yyyy', Now)
                                           );

 { if edtRapidoFiltro.Text = 'Trabalhando' then
    GridConsultaDBTableView1.DataController.Filter.Root.AddItem( GridConsultaDBTableViewTRABALHANDO,
                                           foEqual,
                                           'S',
                                           'S'
                                           );    }
  if edtRapidoFiltro.Text = 'Concluídos' then
    GridConsultaDBTableView1.DataController.Filter.Root.AddItem( GridConsultaDBTableView1Situacao,
                                           foEqual,
                                           'Concluído',
                                           'Concluído'
                                           );

  if edtRapidoFiltro.Text = 'Com Despesa' then
   GridConsultaDBTableView1.DataController.Filter.Root.AddItem( GridConsultaDBTableView1TEM_DESPESA,
                                           foEqual,
                                           'S',
                                           'S'
                                           );

//  Comentários Recentes
//  Mencionadas Eu
//  Recentes mencionados

  GridConsultaDBTableView1.DataController.Filter.Active := True;
  GridConsultaDBTableView1.DataController.Filter.EndUpdate;   *)
end;

procedure TFrame_ConsuProducao_Mestre.btnFiltroComImagemClick(Sender: TObject);
begin
  inherited;
  RefreshConsulta; // Esta correto o Refresh
end;

procedure TFrame_ConsuProducao_Mestre.edtRapidoAgruparPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
//-Agrupar Por-
//Acabamento
//Categoria
//Grupo de produto
//Equipe
//Estágio
//Local de aplicação
//Marcador
//Produto
//Tipo de Impressão
//Situação
//Usuário
//  if edtRapidoAgrupar.text = 'Acabamento'  then
//    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1ACABAMENTO, TdxSortOrder.soDescending);
////
//  if edtRapidoAgrupar.text = 'Categoria'  then
//    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1ACABAMENTO, TdxSortOrder.soDescending);
//  if edtRapidoAgrupar.text = 'Grupo de produto'  then
//    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1ACABAMENTO, TdxSortOrder.soDescending);
//  if edtRapidoAgrupar.text = 'Produto'  then
//    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1PRODUTO, TdxSortOrder.soDescending);
//
//  if edtRapidoAgrupar.text = 'Local de aplicação'  then
//    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1LOCAL, TdxSortOrder.soDescending);
//  if edtRapidoAgrupar.text = 'Marcador'  then
//    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1TOKEN_PRODUCAO_MARCADOR, TdxSortOrder.soDescending);
//  if edtRapidoAgrupar.text = 'Tipo de Impressão'  then
//    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1TIPO_IMPRESSAO, TdxSortOrder.soDescending);
//  if edtRapidoAgrupar.text = 'Estágio'  then
//    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1PRODUCAO_ESTAGIO, TdxSortOrder.soDescending);
//
//  if edtRapidoAgrupar.text = 'Equipe'  then
//    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1CENTRO_TRABALHO, TdxSortOrder.soDescending);
//  if edtRapidoAgrupar.text = 'Funcionário'  then
//    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1FUNCIONARIO, TdxSortOrder.soDescending);
//  if edtRapidoAgrupar.text = 'Situação'  then
//    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1SITUACAO, TdxSortOrder.soDescending);     *)
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1CODVENDAPropertiesStartClick(
  Sender: TObject);
begin
  inherited;
  FiltraLink('CODVENDA');
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1RAZAOSOCIALPropertiesStartClick(
  Sender: TObject);
begin
  inherited;
  FiltraLink('RAZAOSOCIAL');
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1TOKEN_PRODUCAO_MARCADORPropertiesTokenClick(
  Sender: TObject; const ATokenText: string; AToken: TdxTokenEditToken);
begin
  inherited;
  FiltraToken('TOKEN_PRODUCAO_MARCADOR', ATokenText);
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1TOKEN_PRODUCAO_TAGPropertiesTokenClick(
  Sender: TObject; const ATokenText: string; AToken: TdxTokenEditToken);
begin
  inherited;
  FiltraToken('TOKEN_PRODUCAO_TAG', ATokenText);
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableViewFANTASIAPropertiesStartClick(
  Sender: TObject);
begin
  inherited;
  FiltraLink('FANTASIA');
end;

procedure TFrame_ConsuProducao_Mestre.GridSubGridViewDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  AField, AFieldValue: String;
begin
  inherited;
  try
    AField := TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding.FieldName;
    AFieldValue := TcxGridRecordCellHitTest(GridSubGridView.GetHitTest(X, Y)).GridRecord.Values[GridSubGridViewCODIGO.Index];
  Except  end;
end;

procedure TFrame_ConsuProducao_Mestre.GridSubGridViewFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;

end;

/////////////////////////// Fim Filtros ////////////////////////////////////////////////////
{$ENDREGION}


procedure TFrame_ConsuProducao_Mestre.Agendar1Click(Sender: TObject);
var
   I : Integer;
begin
  inherited;
  Exit;
    with FrmProducao do
    begin
      Cadastro.open;
      TransaFD.Active;
      btnAlterar.Click;
      btnAgendarProduçao.Click;
//      btnConfirmar.Click;
    end;


//  for i := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
//  begin
//    with FrmProducao do
//    begin
//      GridConsultaDBTableView1.DataController.ChangeFocusedRecordIndex(GridConsultaDBTableView1.Controller.SelectedRecords[i].RecordIndex);
//      Cadastro.open;
//      btnAlterarClick(nil);
//      Cadastro.FieldByName('COLOR').AsInteger := 536870912;
//      Cadastro.FieldByName('CALENDARIO_DT_INICIO').AsDateTime := DataHoraSys;
//      Cadastro.FieldByName('CALENDARIO_DT_PREVISAO_FIM').AsDateTime := DataHoraSys + 0.02;
//      Cadastro.FieldByName('CALENDARIO_ACTUAL_START').AsInteger := 44349;
//      Cadastro.FieldByName('CALENDARIO_ACTUAL_FINISH').AsInteger := 44349;
//      Cadastro.FieldByName('CALENDARIO_EVENT_TYPE').AsInteger := 0;
//      Cadastro.FieldByName('CALENDARIO_OPTIONS').AsInteger := 2;
//      Cadastro.FieldByName('CALENDARIO_RECURRENCE_INDEX').AsInteger := -1;
////      Cadastro.FieldByName('CALENDARIO_RECURRENCE_INFO').AsString  :=  urrenceInfoData);
//      Cadastro.FieldByName('CALENDARIO_REMINDER_DATE').AsDateTime := DataHoraSys;
//      Cadastro.FieldByName('CALENDARIO_REMINDER_MINUTES').AsInteger  := 15;
//      Cadastro.FieldByName('CALENDARIO_STATE').AsInteger := 2;
//      btnConfirmarClick(nil);
//    end;
//  end;

end;

procedure TFrame_ConsuProducao_Mestre.Arquivar1Click(Sender: TObject);
begin
  inherited;
  if ShowMessageWR('Deseja arquivar a Produção?', MB_ICONQUESTION) = mrYes then
    AcaoSelecionados('ATIVO','N');
end;

procedure TFrame_ConsuProducao_Mestre.btnPorSemExtraClick(Sender: TObject);
begin
  inherited;
  splFlipRotate.Visible   := False;
  LipnlFlipRotate.Visible := splFlipRotate.Visible;
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBLayoutView1ImgUsuarioGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  inherited;
//  TcxButtonEditProperties(AProperties).Buttons[0].Visible:=Not TcxButtonEditProperties(AProperties).Buttons[1].Visible;
//  if ARecord = GridConsultaDBLayoutView1Item7.Index then
 { begin
    TcxButtonEditProperties(AProperties).Buttons[0].Visible:=Not TcxButtonEditProperties(AProperties).Buttons[1].Visible;
    TcxButtonEditProperties(AProperties).Buttons[1].Visible:=Not TcxButtonEditProperties(AProperties).Buttons[0].Visible;
  end;   }
end;


procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1CanFocusRecord(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
  inherited;
  if (Consulta.State = dsBrowse ) and Assigned(FFrmProducao) then
  begin
    if GridConsulta.Enabled then
//      FrmProducao.OnCloseQuery(FrmProducao, AAllow);
  end;
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1CanSelectRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
  inherited;
  if Assigned(FFrmProducao) then
  begin
    if GridConsultaDBTableView1.Controller.SelectedRecordCount = 0  then
    begin
      FrmProducao.ChavePrimaria:= VarArrayOf([GridConsultaDBTableView1.DataController.GetKeyFieldsValues]);
      FrmProducao.Cadastro.Open;
      FrmProducao.GrupoTabsTabChanged(nil);
    end;
  end;
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  Ativar1.Visible            := Consulta.FieldByName('ATIVO').AsString = 'N';
  Arquivar1.Visible          := (Consulta.FieldByName('ATIVO').AsString = 'S') and ((Consulta.FieldByName('SITUACAO').AsString = 'Cancelado') or (Consulta.FieldByName('SITUACAO').AsString = 'Finalizado'));
  btnIniciar.Enabled         := (Consulta.FieldByName('SITUACAO').AsString <> 'Produzindo') and (Consulta.FieldByName('SITUACAO').AsString <> 'Cancelado') and (Consulta.FieldByName('SITUACAO').AsString <> 'Finalizado');
  btnPausar.Enabled          := (Consulta.FieldByName('SITUACAO').AsString = 'Produzindo');
  btnConcluir.Enabled        := Consulta.FieldByName('DT_FIM').IsNull;
  btnFinalizar.Enabled       := Consulta.FieldByName('DT_FIM').IsNull;
//  btnEncaminhar.Enabled      := (Consulta.FieldByName('SITUACAO').AsString <> 'Cancelado') and (Consulta.FieldByName('SITUACAO').AsString <> 'Finalizado');
  btnDuplicar.Enabled        := (Consulta.FieldByName('SITUACAO').AsString <> 'Cancelado') and (Consulta.FieldByName('SITUACAO').AsString <> 'Concluído');
//  btnArquiva.Enabled         := (Consulta.FieldByName('SITUACAO').AsString = 'Cancelado') or (Consulta.FieldByName('SITUACAO').AsString = 'Finalizado');
  btnCancelar.Enabled := (Consulta.FieldByName('SITUACAO').AsString <> 'Cancelado');

  if Assigned(FFrmProducao) then
  begin
    if GridConsultaDBTableView1.Controller.SelectedRecordCount = 1  then
    begin
      FrmProducao.ChavePrimaria:= VarArrayOf([GridConsultaDBTableView1.DataController.GetKeyFieldsValues]);
      FrmProducao.Cadastro.Open;
      FrmProducao.GrupoTabsTabChanged(nil);
    end;
  end;

  if Assigned(TFrmBase(Owner).FPocket) and  TFrmBase(Owner).FPocket.Visible then
  begin
    GridConsultaDBTableView1DblClick(Sender);
  end;

end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARecord: TcxCustomGridRecord;
  AValue : Variant;
  ADataLimite, ADataAtual : TDateTime;
  procedure StyleAssignToCanvas(AStyle: TcxStyle);
  begin
    ACanvas.Font.Assign(AStyle.Font);
    ACanvas.Font.Color := AStyle.TextColor;
//    ACanvas.Font.Height := AViewInfo.ScaleFactor.Apply(ACanvas.Font.Height, dxGetScaleFactor(AStyle.StyleRepository));
  end;

  function IsHighPriority: Boolean;
  begin
    Result := AViewInfo.GridRecord.Values[GridConsultaDBTableView1PRIORIDADE_PRODUCAO.Index] = 5;
  end;

begin
  inherited;
  if AViewInfo.Item.Index = GridConsultaDBTableView1CALENDARIO_DT_PREVISAO_FIM.Index then
  begin
    AValue := AViewInfo.GridRecord.Values[GridConsultaDBTableView1CALENDARIO_DT_PREVISAO_FIM.Index];
    if not VarIsNull(AValue) then
    begin
      ADataLimite := AValue;
      ADataLimite := ADataLimite;
      ADataAtual  := Now;
      if ADataLimite < ADataAtual then
        ACanvas.Brush.Color := clRed
      else if ADataLimite = ADataAtual then
        ACanvas.Brush.Color := clYellow
      else if ADataLimite = IncDay(ADataAtual, 1) then
        ACanvas.Brush.Color := clMoneyGreen
      else if ADataLimite = IncDay(ADataAtual, 2) then
        ACanvas.Brush.Color := clSkyBlue;
    end;
  end;

  if AViewInfo.Item.Index = GridConsultaDBTableView1DT_ENTREGA.Index then
  begin
    AValue := AViewInfo.GridRecord.Values[GridConsultaDBTableView1DT_ENTREGA.Index];
    if not VarIsNull(AValue) then
    begin
      ADataLimite := AValue;
      ADataLimite := ADataLimite;
      ADataAtual  := Now;
      if ADataLimite < ADataAtual then

        ACanvas.Brush.Color := clRed
      else if ADataLimite = ADataAtual then
        ACanvas.Brush.Color := clYellow
      else if ADataLimite = IncDay(ADataAtual, 1) then
        ACanvas.Brush.Color := clMoneyGreen
      else if ADataLimite = IncDay(ADataAtual, 2) then
        ACanvas.Brush.Color := clSkyBlue;
    end;
  end;

  if AViewInfo.Item.Index = GridConsultaDBTableView1DT_APROVACAO_SAIDA_ETAPA.Index then
  begin
    AValue := AViewInfo.GridRecord.Values[GridConsultaDBTableView1DT_APROVACAO_SAIDA_ETAPA.Index];
    if not VarIsNull(AValue) then
    begin
      ADataLimite := AValue;
      ADataLimite := ADataLimite;
      ADataAtual  := Now;
      if ADataLimite < ADataAtual then

        ACanvas.Brush.Color := clRed
      else if ADataLimite = ADataAtual then
        ACanvas.Brush.Color := clYellow
      else if ADataLimite = IncDay(ADataAtual, 1) then
        ACanvas.Brush.Color := clMoneyGreen
      else if ADataLimite = IncDay(ADataAtual, 2) then
        ACanvas.Brush.Color := clSkyBlue;
    end;
  end;
  { if AViewInfo.Item.Index = GridConsultaDBTableView1CALENDARIO_DT_PREVISAO_FIM.Index then
  begin
    AValue := AViewInfo.GridRecord.Values[GridConsultaDBTableView1CALENDARIO_DT_PREVISAO_FIM.Index];
    if not VarIsNull(AValue) then
    begin
      if DateOf(AValue) < DateOf(Now) then
        ACanvas.Brush.Color := clRed
      else if DateOf(AValue) = DateOf(Now) then
        ACanvas.Brush.Color := clYellow
      else if DateOf(AValue) = IncDay(DateOf(Now), 1) then
        ACanvas.Brush.Color := clMoneyGreen
      else if DateOf(AValue) = IncDay(DateOf(Now), 2) then
        ACanvas.Brush.Color := clSkyBlue;
    end;
  end;
  }
  ARecord := AViewInfo.GridRecord;

  if not (ARecord is TcxGridGroupRow) then
  begin
    if ARecord.Values[GridConsultaDBTableView1ATIVO.Index] = 'N' then
      StyleAssignToCanvas(stArquivado)
    else
    if ARecord.Values[GridConsultaDBTableView1ESTILO.Index] = 'stLiberado' then
    begin
      if IsHighPriority then
        StyleAssignToCanvas(stWaitingHighPriority)
      else
        StyleAssignToCanvas(stWaiting);
    end else
    if ARecord.Values[GridConsultaDBTableView1ESTILO.Index] = 'stParado' then
    begin
      if IsHighPriority then
        StyleAssignToCanvas(stDeferredHighPriority)
      else
        StyleAssignToCanvas(stDeferred);
    end else
    if ARecord.Values[GridConsultaDBTableView1ESTILO.Index] = 'stNaoLido' then
    begin
      StyleAssignToCanvas(stNaoLido);
    end else
    if ARecord.Values[GridConsultaDBTableView1ESTILO.Index] = 'stConcluido' then
      StyleAssignToCanvas(stConcluido)
    else
    if ARecord.Values[GridConsultaDBTableView1ESTILO.Index] = 'stCanceled' then
    begin
      StyleAssignToCanvas(stCanceled);
    end else
    if ARecord.Values[GridConsultaDBTableView1ESTILO.Index] = 'stCompleted' then
    begin
      StyleAssignToCanvas(stCompleted);
    end else
    if ARecord.Values[GridConsultaDBTableView1FATURA_ADICIONAL.Index] = '1' then
    begin
      StyleAssignToCanvas(stAFaturar);
    end else
    begin
      if (ARecord.Values[GridConsultaDBTableView1CALENDARIO_DT_PREVISAO_FIM.Index] <> Null) and (ARecord.Values[GridConsultaDBTableView1CALENDARIO_DT_PREVISAO_FIM.Index] < Date) then
      begin
        if IsHighPriority then
          StyleAssignToCanvas(stDateOutHighPriority)
        else
          StyleAssignToCanvas(stDateOut);
      end
      else
        if IsHighPriority then
          StyleAssignToCanvas(stUnreadStyle)
        else
         StyleAssignToCanvas(stWaiting);
    end;
    if AViewInfo.Item.Index = GridConsultaDBTableView1SITUACAO.Index then
    begin
      AValue := ARecord.Values[GridConsultaDBTableView1COLOR.Index];
      if AValue<>null then
        ACanvas.Brush.Color := VarToIntDef(AValue, clBlack);
    end;
  end;
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1DataControllerFilterChanged(
  Sender: TObject);
begin
//  inherited;   wagner, deixar assim
  Exit; // testando
  LoadPictures('Producao', GridConsultaDBTableView1.DataController, GridConsultaDBTableView1PROTOCOLO.Index,
    GridConsultaDBTableView1IMAGEM.Index);
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1DblClick(Sender: TObject);
begin
 inherited;
//  TFrmBase(ABaseClass_Pocket[Tag_Agenda_Kanban].Create(TForm(Self.Owner))).ShowCadastroPocketItem(Tag_Agenda_Kanban, Consulta.FieldByName('CODIGO').AsString);

//  if Not (Consulta.State = dsBrowse ) then
//    Exit;
//  btnFlipCadastro.Click;
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
Var
  HT: TcxCustomGridHitTest;
begin
  inherited;
  with TcxGridSite(Sender) do
  begin
    HT := ViewInfo.GetHitTest(X, Y);
    Accept := (HT is TcxGridRecordCellHitTest) and (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex <> GridView.DataController.FocusedRecordIndex)
  end;
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1DT_INICIOGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if ARecord is TcxGridGroupRow then
  begin
    if VarIsNull(ARecord.Values[Sender.Index]) then
      AText := 'Não Definido'
    else
    begin
      case Trunc(DateOf(ARecord.Values[Sender.Index]) - Date) of
        31..MaxInt: AText := 'Futuramente';
        7..30:   AText := 'Em até 1 mês';
        3..6:    AText := 'Em até 1 semana';
        2:       AText := 'Depois de Amanhã';
        1:       AText := 'Amanhã';
        0:       AText := 'Hoje';
        -1:      AText := 'Ontem';
        -6..-2:  AText := 'Semana Passada';
        -13..-7: AText := 'Duas semanas atrás';
      else
        AText := 'Antigo';
      end;
    end;
  end;
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1CALENDARIO_DT_PREVISAO_FIMValidateDrawValue(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; const AValue: Variant; AData: TcxEditValidateInfo);
begin
  inherited;
  if VarIsNull(AValue) and VarIsNull(ARecord.Values[GridConsultaDBTableView1DT_FIM.Index])  then
  begin
    AData.ErrorType := eetWarning;
    AData.ErrorText := 'Coloque uma previsão de entrega';
  end
  else
  if (AValue < now) and VarIsNull(ARecord.Values[GridConsultaDBTableView1DT_FIM.Index]) then
  begin
    AData.ErrorType := eetError;
    AData.ErrorText := 'Prazo Limite Atingido';
  end;
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
//  inherited;
  if Shift = [ssCtrl] then
  begin
    stUnreadStyle.Font.Size          := stUnreadStyle.Font.Size-1;
    stDateOut.Font.Size              := stDateOut.Font.Size-1;
    stDateOutHighPriority.Font.Size  := stDateOutHighPriority.Font.Size-1;
    stDeferred.Font.Size             := stDeferred.Font.Size-1;
    stDeferredHighPriority.Font.Size := stDeferredHighPriority.Font.Size-1;
    stWaiting.Font.Size              := stWaiting.Font.Size-1;
    stWaitingHighPriority.Font.Size  := stWaitingHighPriority.Font.Size-1;
    stCompleted.Font.Size            := stCompleted.Font.Size-1;
    stLido.Font.Size                 := stLido.Font.Size-1;
    stNaoLido.Font.Size              := stNaoLido.Font.Size-1;
    stCanceled.Font.Size             := stCanceled.Font.Size-1;
  end;
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  //inherited;
  if Shift = [ssCtrl] then
  begin
    stUnreadStyle.Font.Size            := stUnreadStyle.Font.Size+1;
    stDateOut.Font.Size                := stDateOut.Font.Size+1;
    stDateOutHighPriority.Font.Size    := stDateOutHighPriority.Font.Size+1;
    stDeferred.Font.Size               := stDeferred.Font.Size+1;
    stDeferredHighPriority.Font.Size   := stDeferredHighPriority.Font.Size+1;
    stWaiting.Font.Size                := stWaiting.Font.Size+1;
    stWaitingHighPriority.Font.Size    := stWaitingHighPriority.Font.Size+1;
    stCompleted.Font.Size              := stCompleted.Font.Size+1;
    stLido.Font.Size                   := stLido.Font.Size+1;
    stNaoLido.Font.Size                := stNaoLido.Font.Size+1;
    stCanceled.Font.Size               := stCanceled.Font.Size+1;
  end;
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1StartDrag(Sender: TObject;
  var DragObject: TDragObject);
var
  I: Integer;
begin
  with TcxGridDBTableView(TcxGridSite(Sender).GridView) do
  begin
    AKeys := VarArrayCreate([0, Controller.SelectedRecordCount - 1], varVariant);
    for I := 0 to Controller.SelectedRecordCount - 1 do
      AKeys[I] := Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index];
  end;
  inherited;
//  with TcxGridDBTableView(TcxGridSite(Sender).GridView) do
//    AKeys := DataController.DataSet.FieldValues['CODIGO'];
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1TcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
var
  ACount: Integer;
begin
  inherited;
  ACount := VarToIntDef(AValue, 0);
  if ACount > 1 then
    AText := ACount.ToString + ' itens'
  else if ACount = 1 then
    AText := ACount.ToString + ' item'
  else
    AText := '';
end;

procedure TFrame_ConsuProducao_Mestre.GridConsultaDBTableView1TEMPOGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
//  Result := TTimeSpan.FromSeconds(ASecs).ToString;
//  AText := TTimeSpan.FromMinutes(ARecord.Values[GridConsultaDBTableView1TEMPO.Index]).ToString;
//  AText := MinutosToHoras(VarToIntDef(ARecord.Values[GridConsultaDBTableView1TEMPO.Index], 0));
end;

procedure TFrame_ConsuProducao_Mestre.LbNovoClick(Sender: TObject);
begin
  //inherited;
  if splFlipRotate.Visible = False then
    btnFlipCadastro.Click;
  FrmProducao.btnNovoClick(nil);
  FrmProducao.edtDescricao.SetFocusWR;
end;

procedure TFrame_ConsuProducao_Mestre.MenuAcoesPopup(Sender: TObject);
begin
  inherited;
  VisualizarPedido1.Enabled:= Consulta.FieldByName('CODVENDA').AsString <> '';
end;

procedure TFrame_ConsuProducao_Mestre.VisualizarPedido1Click(Sender: TObject);
begin
  inherited;
  ProcuraPedido(Consulta.FieldByName('CODVENDA').AsString);
end;

procedure TFrame_ConsuProducao_Mestre.WREventosCadastroValidaEdicaoCampos(var AFieldName,
  AFieldNameTratado: string; AValue: Variant; ADataSet: TDataSet);
Var
  FHistorico:String;
  QuerXProducaoAcao: TFDQuery;
  QuantFalta :Double;
begin
  if(AFieldName = 'FUNCIONARIO') then
    AFieldNameTratado := 'PESSOA_FUNCIONARIO_CODIGO';
  QuerXProducaoAcao := GeraFDQuery;
  try
    FHistorico:='';
    if AFieldName = 'CODCENTRO_TRABALHO' then
    begin
      QuerXProducaoAcao.SQL.Text := 'select descricao from centro_trabalho ct where ct.codigo = ' + VarToStr(AValue);
      QuerXProducaoAcao.Open;
      FHistorico:=FHistorico + 'Encaminhado para Equipe: ' + VarToStr(AValue) + ' - ' + QuerXProducaoAcao.FieldByName('DESCRICAO').AsString;
    end;
    if Assigned(FAcaoSelecaoFields) then
    begin
      if (FAcaoSelecaoFields.FindField('PRODUCAO_ESTAGIO') <> nil) and (FAcaoSelecaoFields.FieldByName('PRODUCAO_ESTAGIO').Value <> null)  then
        FHistorico:=FHistorico+sLineBreak+'Estágio: '+ADataSet.FieldByName('PRODUCAO_ESTAGIO').AsString+' -> '+FAcaoSelecaoFields.FieldByName('PRODUCAO_ESTAGIO').AsString;
      if (FAcaoSelecaoFields.FindField('CODUSUARIO') <> nil) and (FAcaoSelecaoFields.FieldByName('CODUSUARIO').Value <> null) then
        FHistorico:=FHistorico+sLineBreak+'Funcionário: '+ADataSet.FieldByName('CODUSUARIO').AsString+' -> '+FAcaoSelecaoFields.FieldByName('CODUSUARIO').AsString;
      if AFieldName = 'USUARIO' then
        FHistorico:=FHistorico+sLineBreak+'Enviou para '+VarToStr(AValue);
      end;
    if (Assigned(FAcaoSelecaoFields)and(FAcaoSelecaoFields.FindField('SITUACAO') <> nil) and (FAcaoSelecaoFields.FieldByName('SITUACAO').Value <> null)) or (AFieldName = 'SITUACAO')  then
    begin


      if Assigned(FAcaoSelecaoFields)and(FAcaoSelecaoFields.FindField('SITUACAO') <> nil) then
        FHistorico:=FHistorico+sLineBreak+'Situação: '+ADataSet.FieldByName('SITUACAO').AsString+' -> '+FAcaoSelecaoFields.FieldByName('SITUACAO').AsString
      else
        FHistorico:=FHistorico+sLineBreak+'Situação: '+ADataSet.FieldByName('SITUACAO').AsString;
      if AValue = 'Finalizado' then
      begin
  //      FrmProducao.FinalizaProducao(AValue); // <<<<
        FHistorico:=FHistorico+sLineBreak+'Finalizou a Tarefa';
        ADataSet.FieldByName('PCONCLUSAO').AsInteger     := 100;
        ADataSet.FieldByName('DT_FIM').AsDateTime := DataHoraSys;
        if Consulta.FieldByName('PODE_ALTERAR_ESTOQUE').AsString <> 'N' then
        begin
          //Aqui ele vai criar o produto para ser vendido posteriormente ou para suprir a baixa que a venda realizou.
          QuantFalta := ADataSet.FieldByName('QUANT_PRODUZIR').AsFloat - ADataSet.FieldByName('QUANT').AsFloat;
          if QuantFalta > 0 then
          begin
  //          if ShowMessageWR('DESEJA PRODUZIR ' + FloatToStr(QuantFalta) + ' ' + ADataSet.FieldByName('UNIDADE').AsString + ' DE ' + ADataSet.FieldByName('PRODUTO').AsString + ' RESTANTE(S)', MB_ICONQUESTION) = mrYes then
//            ADataSet.FieldByName('QUANT').AsFloat := FrmProducao.Produzir(TransaDragAndDrop, QuantFalta, QueryDragAndDrop, 'E');
          end;
        end;
      end
      else
      if AValue = 'Concluído' then
      begin
        FHistorico:=FHistorico+sLineBreak+'Concluiu a Tarefa';
      end
      else
      if AValue = 'Produzindo' then
      begin
        FHistorico:=FHistorico+sLineBreak+'Iniciou a Tarefa';
  //      FrmProducao.AdicionaTarefa(Usuario.Codigo,'');
      end
      else
      if AValue = 'Parado' then
      begin
  //      FrmProducao.PausaTarefa(Usuario.Codigo);
        FHistorico:=FHistorico+sLineBreak+'Pausou a Tarefa';
      end
      else
      if AValue = 'Reativado' then
      begin
        ADataSet.FieldByName('DT_FIM').Clear;
        FHistorico:=FHistorico+sLineBreak+'Reativou a Tarefa';
      end
      else
      if AValue  = 'Cancelado' then
      begin
        ADataSet.FieldByName('DT_FIM').AsDateTime := DataHoraSys;
        FHistorico:=FHistorico+sLineBreak+'Cancelou a Tarefa';
      end
      else
        FHistorico:=FHistorico+sLineBreak+'Situação Personalizada';

    end;
    if Assigned(FAcaoSelecaoFields) then
    begin
      if (FAcaoSelecaoFields.FindField('PRODUCAO_MOTIVO') <> nil) and (FAcaoSelecaoFields.FieldByName('PRODUCAO_MOTIVO').Value <> null)  then
        FHistorico:=FHistorico+sLineBreak+'Motivo: '+ADataSet.FieldByName('PRODUCAO_MOTIVO').AsString+' -> '+FAcaoSelecaoFields.FieldByName('PRODUCAO_MOTIVO').AsString;
      if (FAcaoSelecaoFields.FindField('OBSERVACAO_ENCAMINHAMENTO') <> nil) and (FAcaoSelecaoFields.FieldByName('OBSERVACAO_ENCAMINHAMENTO').Value <> null) then
        FHistorico:=FHistorico+sLineBreak+'Observação: '+FAcaoSelecaoFields.FieldByName('OBSERVACAO_ENCAMINHAMENTO').AsString;
    end;
    inherited;
    UCHist_Cadastro.MensagemHistorico.Text:=FHistorico+sLineBreak+
                                            UCHist_Cadastro.MensagemHistorico.Text;
    try
      if (ADataSet.FieldByName('CODCENTRO_TRABALHO').OldValue <> ADataSet.FieldByName('CODCENTRO_TRABALHO').Value) or
      (ADataSet.FieldByName('SITUACAO').OldValue <> ADataSet.FieldByName('SITUACAO').Value) or
      (ADataSet.FieldByName('PRODUCAO_ESTAGIO').OldValue <> ADataSet.FieldByName('PRODUCAO_ESTAGIO').Value) or
      (ADataSet.FieldByName('PRODUCAO_MOTIVO').OldValue <> ADataSet.FieldByName('PRODUCAO_MOTIVO').Value) or
      (ADataSet.FieldByName('CODUSUARIO').OldValue <> ADataSet.FieldByName('CODUSUARIO').Value) then
      begin
        GeraProducaoEtapas(TransaDragAndDrop,ADataSet);
      end;
    finally
    end;
  finally
    QuerXProducaoAcao.Free;
  end;
end;

procedure TFrame_ConsuProducao_Mestre.WREventosCadastroValidaEdicaoCamposAfter(
  Sender: TObject);
begin
  inherited;
//  AcaoSelecaoFieldLimpaECria([]);
//  CarregaTreeList;
end;

procedure TFrame_ConsuProducao_Mestre.WREventosCadastroValidaEdicaoCamposBefore(
  var AFieldName, AFieldNameTratado: string; AValue: Variant);
Var
  QuerXCamposAdicionais: TFDQuery;
  AField: String;
  QuerXProducaoAcao: TFDQuery;
begin
  inherited;
  if AFieldName = 'SITUACAO' then
  begin
    if Usuario.CodigoFuncionario <> '' then
    begin
      AcaoSelecaoFieldLimpaECria([{'PESSOA_FUNCIONARIO_CODIGO', }'CODUSUARIO', 'TEM_PLAY', 'TEM_PAUSAR']);
//      AcaoSelecaoFieldAddValue('PESSOA_FUNCIONARIO_CODIGO', Usuario.CodigoFuncionario);
      AcaoSelecaoFieldAddValue('CODUSUARIO', Usuario.Codigo);
    end;

    QuerXProducaoAcao := GeraFDQuery;
    try
      QuerXProducaoAcao.SQL.Text :=   'select pa.tem_pausar, pa.TEM_PLAY from producao_acao pa ' +
                                      'where pa.codigo = (select ps.codproducao_acao from producao_situacao ps ' +
                                      'where ps.descricao = :situacao)';
      QuerXProducaoAcao.ParamByName('situacao').AsString := AValue;
      QuerXProducaoAcao.Open;

      if not Assigned(FAcaoSelecaoFields) then
        AcaoSelecaoFieldLimpaECria(['TEM_PAUSAR','TEM_PLAY']);

      AcaoSelecaoFieldAddValue('TEM_PAUSAR', QuerXProducaoAcao.FieldByName('TEM_PAUSAR').AsString);
      AcaoSelecaoFieldAddValue('TEM_PLAY', QuerXProducaoAcao.FieldByName('TEM_PLAY').AsString);
    finally
      QuerXProducaoAcao.Free;
    end;
  end;
      //TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding.FieldName
// Faz as regras de validação e Pega os valores das ações anexas.

// Tem verificar se pode o estágio, e Situação para essa equipe, se tem a pessoa nessa equipe
// Quem pode retirar do Estágio?????
// * Acha os registros
// * monta o SQL Update
// * registra a menssage no histórico Insert
// * Verifica acões do fluxo
  (*
  if MatchStr(AFieldName,['CODCENTRO_TRABALHO','SITUACAO']) then
  begin
    QuerXCamposAdicionais := GeraFDQuery;    //
    Try
      if AFieldName = 'CODCENTRO_TRABALHO' then
        QuerXCamposAdicionais.SQL.Text := 'select U.codigo as CODUSUARIO, c.MENSAGEM_HISTORICO, c.TEM_TRAVA_CANCELAR, c.TEM_TRAVA_FINANCEIRO, c.HORAS_DIARIA FROM centro_trabalho c left join USUARIO U ON u.codfuncionario = c.PESSOA_RESPONSAVEL_CODIGO WHERE (C.CODIGO= :Codigo)';  // Aqui deve copiar os campos dependentes, Triger Porraço,

      if AFieldName = 'SITUACAO' then
        QuerXCamposAdicionais.SQL.Text := 'select TEM_TRABALHANDO, TEM_ARQUIVADO, CODUSUARIO, TEM_OBSERVACAO, TEM_FINALIZAR, MENSAGEM_HISTORICO  from PRODUCAO_SITUACAO where DESCRICAO = :Codigo';  // Aqui deve copiar os campos dependentes, Triger Porraço,

      QuerXCamposAdicionais.ParamByName('Codigo').Value := AResult;
      QuerXCamposAdicionais.Open;

      if QuerXCamposAdicionais.FieldByName('CODUSUARIO').AsInteger = 0 then
        CamposIgnorados := 'CODUSUARIO';

      if QuerXCamposAdicionais.FindField('TEM_OBSERVACAO') <> nil then
        if QuerXCamposAdicionais.FieldByName('TEM_OBSERVACAO').AsString = 'S' then
          TextoObservacao.TFrmObservacao.GetObservacao('Cancelamento', 10, AObservacao);

      DSCopiarCamposIguais(QuerXCamposAdicionais, Cadastro,[CamposIgnorados]);   // Cria a Query, pega o sql e copia os campos da Queryorigem para a destino

      if AObservacao = '' then
        AObservacao :=  Cadastro.FieldByName('DESCRICAO').AsString;

      if QuerXCamposAdicionais.FindField('MENSAGEM_HISTORICO') <> nil then
        ALogHistorico := QuerXCamposAdicionais.FieldByName('MENSAGEM_HISTORICO').AsString + ': ' + AObservacao
      else
        ALogHistorico := AObservacao;

      if QuerXCamposAdicionais.FindField('HORAS_DIARIA') <> nil then
        if QuerXCamposAdicionais.FindField('HORAS_DIARIA').AsFloat > 0 then
        begin
          Cadastro.FieldByName('CALENDARIO_DT_INICIO').AsDateTime  := DataHoraSys;
          Cadastro.FieldByName('CALENDARIO_DT_PREVISAO_FIM').AsDateTime     := IncHour(Cadastro.FieldByName('CALENDARIO_DT_INICIO').AsDateTime, PercHoras(QuerXCamposAdicionais.FindField('HORAS_DIARIA').AsFloat, Cadastro.FieldByName('CALENDARIO_DT_PREVISAO_FIM').AsDateTime));
        end;

      if ALogHistorico <> '' then
        UCHist_Cadastro.MensagemHistorico.Text := ALogHistorico;

      Cadastro.FieldByName(AFieldName).Value := AResult;

      if QuerXCamposAdicionais.FindField('TEM_FINALIZAR') <> nil then
        if QuerXCamposAdicionais.FieldByName('TEM_FINALIZAR').AsString = 'S' then
          FrmProducao.FinalizaProducao;

      if Cadastro.FieldByName('SITUACAO').AsString = 'Reativado' then
        FrmProducao.ReativarProducao;

      if Cadastro.FieldByName('SITUACAO').AsString = 'Produzindo' then
      begin
        FrmProducao.AdicionaTarefa(Usuario.Codigo,'Tempo Iniciado: ' + Usuario.NomeFuncionario + ' - ' + Usuario.Login);
      end;

      if Cadastro.FieldByName('SITUACAO').AsString = 'Parado' then
        FrmProducao.PausaTarefa(Usuario.Codigo);

      QuerXCamposAdicionais.Free;
    except
    end;
  end;
  *)
 // if AFieldName = 'SITUACAO' then

end;

procedure TFrame_ConsuProducao_Mestre.WREventosConsultaCarregaTreeList(Sender: TObject);
begin
  inherited;
//  CarregaTreeList;
end;

procedure TFrame_ConsuProducao_Mestre.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
Var
  ACampo_Codigo: String;
  ACampo_Sql: String;
  AColumn: TcxGridDBColumn;
  AColunaIndex: Integer;

//  procedure VerificaSeNull(ACampo, AChave_PK: String);
//  begin
//    if VarToStr(MemTreeList.FieldByName(AChave_PK).Value)= '' then
//      SQLWhere.AddAnd('(PO.'+ACampo+' IS NULL)or(PO.'+ACampo+' = '''')')
//    else
//      SQLWhere.AddAnd('PO.'+ACampo+' = '+QuotedStr(MemTreeList.FieldByName(AChave_PK).AsString));
////      (('+ACampo+' = :Codigo) or ((:Codigo is Null) and ('+ACampo+' IS NULL)))
//  end;

begin
  inherited;
//  SQLWhere.AddAnd('((coalesce(C.PRIVADO, '''') <> ''S'') ' +
//                  '  or exists(select first 1 1 ' +
//                  '            from CENTRO_TRABALHO_RECURSO CTR ' +
//                  '            left join RECURSO R on (R.CODIGO = CTR.CODRECURSO) ' +
//                  '            left join USUARIO U on (U.CODFUNCIONARIO = R.CODPESSOA) ' +
//                  '            where (CTR.CODCENTRO_TRABALHO = PO.CODCENTRO_TRABALHO) ' +
//                  '                  and (U.CODIGO = :CODUSUARIO)))');

//  if not FiltroVenda then
//  begin
//    if Not (edtRapidoFiltro.Text='Arquivados') {btnFiltroArquivados.Down} then
//      SQLWhere.AddAnd('PO.TEM_ARQUIVADO <> ''S''')
//    else
//      SQLWhere.AddAnd('PO.TEM_ARQUIVADO <> ''N''');
//  end;
//Arquivados
//Finalizados
//Recentes Modificados
//Recentes Finalizados
//Recentes movidos para Progresso
//Recentes movidos para Teste
//Recentes movidos para Concluídos
//Comentários Recentes
//Mencionadas Eu
//Recentes mencionados
//Trabalhando
  if FPreFiltro = '' then
  begin
    if edtDataLimite.Text='Expirados' then  {btnFiltroAtrazados.Down}
      SQLWhere.AddAnd('PO.CALENDARIO_DT_PREVISAO_FIM <  current_timestamp ');

 {   if btnFiltroDT_Agendamento.Down then
      SQLWhere.AddAnd('PO.CALENDARIO_DT_INICIO is not null');
    if btnFiltroComImagem.Down then
      SQLWhere.AddAnd('PO.IMAGEM is not null ');   }
   { if btnFiltroFINALIZADO.Down then
      SQLWhere.AddAnd('PO.DT_FIM is not null ');
    if btnFiltroProduto.Down then
      SQLWhere.AddAnd('exists(select first 1 1 from producao_produto pp where pp.codproducao = po.codigo and PP.CODPRODUTO = ' + QuotedStr(FCodProduto) + ')');
    if btnFiltroCategoria.Down then
      SQLWhere.AddAnd('exists(select first 1 1 from producao_produto pp where pp.codproducao = po.codigo and PP.CODPRODUTO_CATEGORIA = ' + QuotedStr(FCodProduto) + ')');}
//    if btnAgrupaUSUARIOÎDT_EMISSAO.Down then
//      SQLWhere.AddAnd('U.USUARIO is not null');
 {   if btnAgrupaCENTRO_TRABALHOÎDT_EMISSAO.Down then
    begin
      SQLWhere.AddAnd('C.DESCRICAO is not null');
      AColunaIndex := 8;
    end;        }
//    if btnProduzindo.Down then
//      SQLWhere.AddAnd('PO.TEM_TRABALHANDO = ''S''');

   { if MemTreeList.FieldByName('TABELA').AsString = 'EQUIPAMENTO' then
    begin
      VerificaSeNull('TIPO_IMPRESSAO', 'CHAVE_PK2');
//      SQLWhere.AddAnd('PO.TIPO_IMPRESSAO = '+QuotedStr(MemTreeList.FieldByName('CHAVE_PK1').AsString) );
    end;

    if MemTreeList.FieldByName('TABELA').AsString = 'PRIORIDADE_PRODUCAO' then
    begin
      GridConsultaDBTableView1.DataController.Groups.ClearGrouping;
      SQLWhere.AddAnd('PO.CODUSUARIO = '+Usuario.Codigo.ToString +' and(PO.PRIORIDADE_PRODUCAO = '+IntToStr(MemTreeList.FieldByName('CHAVE_PK1').AsInteger)+')' );
    end;    }

    LiGridSubGrid.Visible:= False;


    if FFiltro = AWR_Filtro[Tag_Filtro_Producao_Venda] then //Filtrar por Venda;
    begin
//      FPreFiltro

    end;

    if FFiltro = AWR_Filtro[Tag_Filtro_Producao_Minhas_Tarefas] then   //    if btnFiltro_Filtro.Caption='Minhas tarefas' then
    begin
      if Usuario.CodigoFuncionario <> '' then
      begin
        SQLWhere.AddAnd('PO.PESSOA_FUNCIONARIO_CODIGO = ''' + Usuario.CodigoFuncionario + '''' );
        AColumn:= GridConsultaDBTableView1.GetColumnByFieldName('CENTRO_TRABALHO');
        GridConsultaDBTableView1.Columns[AColumn.Index].GroupIndex:=1;

        with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
        begin
          ACampo_Codigo    := FieldName;
          if MatchStr(ACampo_Codigo, ['USUARIO','CENTRO_TRABALHO']) then  // Campos Calculados
            ACampo_Codigo  := 'COD'+FieldName;
          ACampo_Sql       := 'PO.'+ACampo_Codigo;
          AgrupaSubGrid(ACampo_Codigo, FieldName, ACampo_Sql );
        end;
        LiGridSubGrid.Visible:= True;
      end else
        ShowMessage('Para listar suas tarefas, é necessário que um funcionário esteja vinculado ao seu usuário.');

  //  TODO: Deve retirar o Usuário se tiver agrupando
    end
    else begin
      if GridConsultaDBTableView1.GroupedColumnCount > 0 then
      begin
        with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
        begin
          ACampo_Codigo    := FieldName;
          if MatchStr(ACampo_Codigo, ['CENTRO_TRABALHO']) then  // Campos Calculados
            ACampo_Codigo  := 'COD'+FieldName;

          ACampo_Sql       := 'PO.'+ACampo_Codigo;

          if MatchStr(ACampo_Codigo, ['FUNCIONARIO']) then
          begin
            ACampo_Sql       := 'PO.PESSOA_FUNCIONARIO_CODIGO';
            ACampo_Codigo    := 'PESSOA_FUNCIONARIO_CODIGO';
          end;

          AgrupaSubGrid(ACampo_Codigo, FieldName, ACampo_Sql );
        end;
        LiGridSubGrid.Visible:= True;
      end;
    end;
    SplitSubGrid.Visible:= LiGridSubGrid.Visible;
  end
  else
  begin
    SQLWhere.AddAnd(FPreFiltro);
    FPreFiltro := '';
  end;
end;

procedure TFrame_ConsuProducao_Mestre.WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, '(CODCENTRO_TRABALHO', '(PO.CODCENTRO_TRABALHO');
//  ASQL := ReplaceText(ASQL, '(CENTROTRABALHO', '(CT.DESCRICAO');
//  ASQL := ReplaceText(ASQL, '(CALENDARIO_DT_PREVISAO_FIM', '(P.CALENDARIO_DT_PREVISAO_FIM');
  ASQL := ReplaceText(ASQL, '(PRIORIDADE_PRODUCAO', '(PO.PRIORIDADE_PRODUCAO');
  ASQL := ReplaceText(ASQL, '(TEMPO_ESTIMADO', '(PO.TEMPO_ESTIMADO');
  ASQL := ReplaceText(ASQL, '(DT_FIM', '(PO.DT_FIM');
  ASQL := ReplaceText(ASQL, '(DT_ALTERACAO', '(PO.DT_ALTERACAO');
 // ASQL := ReplaceText(ASQL, '(PO.FUNCIONARIO', '(FUNCIONARIO');
//  ASQL := ReplaceText(ASQL, '(PRAZOENTREGA', '(P.CALENDARIO_DT_PREVISAO_FIM');
  ASQL := ReplaceText(ASQL, '(RAZAOSOCIAL', '(V.RAZAOSOCIAL');
//  ASQL := ReplaceText(ASQL, '(CODPRODUCAO', '(PO.CODPRODUCAO');
  ASQL := ReplaceText(ASQL, '(DT_EMISSAO', '(PO.DT_EMISSAO');
  ASQL := ReplaceText(ASQL, '(CODPRODUTO', '(PO.CODPRODUTO');
  ASQL := ReplaceText(ASQL, '(CODUSUARIO', '(PO.CODUSUARIO');

  ASQL := ReplaceText(ASQL, '(QTDADEPECA', '(PO.QTDADEPECA');
//  ASQL := ReplaceText(ASQL, '(EMISSAO_OP', '(P.DT_EMISSAO');
  ASQL := ReplaceText(ASQL, '(PCONCLUSAO', '(PO.PCONCLUSAO');
//  ASQL := ReplaceText(ASQL, '(TEM_ARQUIVADO', '(PO.TEM_ARQUIVADO');
  ASQL := ReplaceText(ASQL, '(DESCRICAO', '(PO.DESCRICAO');
  ASQL := ReplaceText(ASQL, '(ESPESSURA', '(PO.ESPESSURA');
  ASQL := ReplaceText(ASQL, '(ORDENACAO', '(PO.ORDENACAO');
  ASQL := ReplaceText(ASQL, '(SITUACAO', '(PO.SITUACAO');
//  ASQL := ReplaceText(ASQL, '(CODVENDA', '(V.CODIGO');
  ASQL := ReplaceText(ASQL, '(PRODUTO', '(PO.PRODUTO');
  ASQL := ReplaceText(ASQL, '(CODIGO', '(PO.CODIGO');
  ASQL := ReplaceText(ASQL, '(DT_FIM', '(PO.DT_FIM');
  ASQL := ReplaceText(ASQL, '(ATIVO', '(PO.ATIVO');
  ASQL := ReplaceText(ASQL, '(LOCAL', '(PO.LOCAL');
  ASQL := ReplaceText(ASQL, '(QUANT', '(PO.QUANT');
  ASQL := ReplaceText(ASQL, '(COMP', '(PO.COMP');
  ASQL := ReplaceText(ASQL, '(LARG', '(PO.LARG');
  ASQL := ReplaceText(ASQL, '(PATH', '(PO.PATH');

  if ASQL = 'ATIVO' then
    ASQL := 'PO.ATIVO';
end;


end.

