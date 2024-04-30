unit CadSped;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, Vcl.Menus, cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, fs_iinterpreter, dxUIAdorners, cxClasses, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, WREventos, UCBase, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.Buttons, System.Generics.Collections, cxLabel, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations, WRButtonsEditAdd;

type
  TFrmSped = class(TFrmCadM)
    cxGridEmpresa: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    dxLayoutItem7: TdxLayoutItem;
    cxGrid7: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    cxGrid13: TcxGrid;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridLevel12: TcxGridLevel;
    dxLayoutGroup24: TdxLayoutGroup;
    dxLayoutItem14: TdxLayoutItem;
    cxGrid14: TcxGrid;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridLevel13: TcxGridLevel;
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutGroup26: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    cxGrid15: TcxGrid;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridLevel14: TcxGridLevel;
    dxLayoutGroup27: TdxLayoutGroup;
    dxLayoutGroup28: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    cxGrid16: TcxGrid;
    cxGridDBTableView15: TcxGridDBTableView;
    cxGridLevel15: TcxGridLevel;
    dxLayoutGroup29: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    cxGrid17: TcxGrid;
    cxGridDBTableView16: TcxGridDBTableView;
    cxGridLevel16: TcxGridLevel;
    dxLayoutGroup30: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    cxGrid18: TcxGrid;
    cxGridDBTableView17: TcxGridDBTableView;
    cxGridLevel17: TcxGridLevel;
    dxLayoutGroup31: TdxLayoutGroup;
    SPED_0150: TFDQuery;
    DSR0150: TDataSource;
    cxGridEmpresaCODIGO: TcxGridDBColumn;
    cxGridEmpresaCNPJCPF: TcxGridDBColumn;
    cxGridEmpresaINSCIDENT: TcxGridDBColumn;
    cxGridEmpresaRAZAOSOCIAL: TcxGridDBColumn;
    cxGridEmpresaFANTASIA: TcxGridDBColumn;
    cxGridEmpresaCONTATO: TcxGridDBColumn;
    cxGridEmpresaENDERECO: TcxGridDBColumn;
    cxGridEmpresaCIDADE: TcxGridDBColumn;
    cxGridEmpresaBAIRRO: TcxGridDBColumn;
    cxGridEmpresaCEP: TcxGridDBColumn;
    cxGridEmpresaUF: TcxGridDBColumn;
    cxGridEmpresaFONE1: TcxGridDBColumn;
    cxGridEmpresaFONE2: TcxGridDBColumn;
    cxGridEmpresaFAX: TcxGridDBColumn;
    cxGridEmpresaEMAIL: TcxGridDBColumn;
    cxGridEmpresaTIPO: TcxGridDBColumn;
    cxGridEmpresaPAGINA: TcxGridDBColumn;
    cxGridEmpresaATIVO: TcxGridDBColumn;
    cxGridEmpresaMODULO: TcxGridDBColumn;
    cxGridEmpresaCODCIDADE: TcxGridDBColumn;
    cxGridEmpresaNUMERO: TcxGridDBColumn;
    cxGridEmpresaIM: TcxGridDBColumn;
    cxGridEmpresaIEST: TcxGridDBColumn;
    cxGridEmpresaCNAE: TcxGridDBColumn;
    cxGridEmpresaISSQN: TcxGridDBColumn;
    cxGridEmpresaCRT: TcxGridDBColumn;
    cxGridEmpresaCODIGO_MUNICIPIO: TcxGridDBColumn;
    cxGridEmpresaSUFRAMA: TcxGridDBColumn;
    cxGridEmpresaCPF_PROPRIETARIO: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_NOME: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_CPF: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_CRC: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_CNPJ: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_CEP: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_ENDERECO: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_NUMERO: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_COMPLEMENTO: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_BAIRRO: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_FONE: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_FAX: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_EMAIL: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_CODIGO_MUNICIPIO: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_UF: TcxGridDBColumn;
    cxGridEmpresaCOMPLEMENTO: TcxGridDBColumn;
    cxGridEmpresaTIPO_OS: TcxGridDBColumn;
    cxGridEmpresaPAIS: TcxGridDBColumn;
    cxGridEmpresaCODPAIS: TcxGridDBColumn;
    cxGridEmpresaAPP_SENHA: TcxGridDBColumn;
    cxGridEmpresaEMITE_NFE: TcxGridDBColumn;
    cxGridEmpresaCONTADOR_IM: TcxGridDBColumn;
    cxGridEmpresaCMC: TcxGridDBColumn;
    cxGridEmpresaPESSOA_CONTADOR_CODIGO: TcxGridDBColumn;
    cxGridEmpresaPESSOA_CONTADOR_TIPO: TcxGridDBColumn;
    cxGridEmpresaPESSOA_CONTADOR_SEQUENCIA: TcxGridDBColumn;
    cxGridEmpresaDT_CADASTRO: TcxGridDBColumn;
    cxGridEmpresaDT_ALTERACAO: TcxGridDBColumn;
    cxGridEmpresaREGIME: TcxGridDBColumn;
    cxGridEmpresaCNPJ_AUTORIZACAO_NFE: TcxGridDBColumn;
    cxGridEmpresaPCREDSN: TcxGridDBColumn;
    dxLayoutItem19: TdxLayoutItem;
    cxGrid19: TcxGrid;
    cxGridPessoas: TcxGridDBTableView;
    cxGridLevel18: TcxGridLevel;
    cxGridPessoasCOD_PART: TcxGridDBColumn;
    cxGridPessoasNOME: TcxGridDBColumn;
    cxGridPessoasCOD_PAIS: TcxGridDBColumn;
    cxGridPessoasCNPJ: TcxGridDBColumn;
    cxGridPessoasCPF: TcxGridDBColumn;
    cxGridPessoasIE: TcxGridDBColumn;
    cxGridPessoasCOD_MUN: TcxGridDBColumn;
    cxGridPessoasEND: TcxGridDBColumn;
    cxGridPessoasNUM: TcxGridDBColumn;
    cxGridPessoasCOMPL: TcxGridDBColumn;
    cxGridPessoasBAIRRO: TcxGridDBColumn;
    cxGridPessoasSUFRAMA: TcxGridDBColumn;
    dxLayoutItem20: TdxLayoutItem;
    CbMes: TcxComboBox;
    dxLayoutItem21: TdxLayoutItem;
    CbAno: TcxComboBox;
    BitBtn1: TBitBtn;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    cbxPerfilSped: TcxComboBox;
    Pessoas: TFDQuery;
    cxGridPessoasCODIGO: TcxGridDBColumn;
    cxGridPessoasCODSPED: TcxGridDBColumn;
    SPED_0190: TFDQuery;
    DSR0190: TDataSource;
    Unidade: TFDQuery;
    SPED_0190CODSPED: TIntegerField;
    SPED_0190UNID: TStringField;
    SPED_0190DESCR: TStringField;
    SPED_0190CODIGO: TIntegerField;
    dxLayoutItem5: TdxLayoutItem;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBTableView4CODSPED: TcxGridDBColumn;
    cxGridDBTableView4CODIGO: TcxGridDBColumn;
    cxGridDBTableView4UNID: TcxGridDBColumn;
    cxGridDBTableView4DESCR: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    SPED_0200: TFDQuery;
    DSSPED_0200: TDataSource;
    Produto: TFDQuery;
    dxLayoutItem24: TdxLayoutItem;
    cxGrid20: TcxGrid;
    cxGridDBTableView18: TcxGridDBTableView;
    cxGridLevel19: TcxGridLevel;
    cxGridDBTableView18CODSPED: TcxGridDBColumn;
    cxGridDBTableView18COD_ITEM: TcxGridDBColumn;
    cxGridDBTableView18DESCR_ITEM: TcxGridDBColumn;
    cxGridDBTableView18COD_BARRA: TcxGridDBColumn;
    cxGridDBTableView18COD_ANT_ITEM: TcxGridDBColumn;
    cxGridDBTableView18UNID_INV: TcxGridDBColumn;
    cxGridDBTableView18TIPO_ITEM: TcxGridDBColumn;
    cxGridDBTableView18COD_NCM: TcxGridDBColumn;
    cxGridDBTableView18EX_IPI: TcxGridDBColumn;
    cxGridDBTableView18COD_GEN: TcxGridDBColumn;
    cxGridDBTableView18COD_LST: TcxGridDBColumn;
    cxGridDBTableView18ALIQ_ICMS: TcxGridDBColumn;
    cxGridDBTableView18CEST: TcxGridDBColumn;
    Venda: TFDQuery;
    DSSPED_C100: TDataSource;
    SPED_C100: TFDQuery;
    dxLayoutItem4: TdxLayoutItem;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3CODSPED: TcxGridDBColumn;
    cxGridDBTableView3CODPEDIDO: TcxGridDBColumn;
    cxGridDBTableView3IND_OPER: TcxGridDBColumn;
    cxGridDBTableView3IND_EMIT: TcxGridDBColumn;
    cxGridDBTableView3COD_PART: TcxGridDBColumn;
    cxGridDBTableView3COD_MOD: TcxGridDBColumn;
    cxGridDBTableView3COD_SIT: TcxGridDBColumn;
    cxGridDBTableView3SER: TcxGridDBColumn;
    cxGridDBTableView3NUN_DOC: TcxGridDBColumn;
    cxGridDBTableView3CHV_NFE: TcxGridDBColumn;
    cxGridDBTableView3DT_DOC: TcxGridDBColumn;
    cxGridDBTableView3DT_E_S: TcxGridDBColumn;
    cxGridDBTableView3VL_DOC: TcxGridDBColumn;
    cxGridDBTableView3IND_PAGTO: TcxGridDBColumn;
    cxGridDBTableView3VL_DESC: TcxGridDBColumn;
    cxGridDBTableView3VL_ABAT_NT: TcxGridDBColumn;
    cxGridDBTableView3VL_MERC: TcxGridDBColumn;
    cxGridDBTableView3IND_FRT: TcxGridDBColumn;
    cxGridDBTableView3VL_FRT: TcxGridDBColumn;
    cxGridDBTableView3VL_SEG: TcxGridDBColumn;
    cxGridDBTableView3VL_OUT_DA: TcxGridDBColumn;
    cxGridDBTableView3VL_BC_ICMS: TcxGridDBColumn;
    cxGridDBTableView3VL_ICMS: TcxGridDBColumn;
    cxGridDBTableView3VL_BC_ICMS_ST: TcxGridDBColumn;
    cxGridDBTableView3VL_ICMS_ST: TcxGridDBColumn;
    cxGridDBTableView3VL_IPI: TcxGridDBColumn;
    cxGridDBTableView3VL_PIS: TcxGridDBColumn;
    cxGridDBTableView3VL_CONFINS: TcxGridDBColumn;
    cxGridDBTableView3VL_PIS_ST: TcxGridDBColumn;
    cxGridDBTableView3VL_CONFINS_ST: TcxGridDBColumn;
    SPED_C170: TFDQuery;
    DSSPED_C170: TDataSource;
    VendaProduto: TFDQuery;
    dxLayoutItem6: TdxLayoutItem;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    cxGridDBTableView5CODSPED: TcxGridDBColumn;
    cxGridDBTableView5CODPEDIDO: TcxGridDBColumn;
    cxGridDBTableView5NUM_ITEM: TcxGridDBColumn;
    cxGridDBTableView5COD_ITEM: TcxGridDBColumn;
    cxGridDBTableView5DESCR_COMPL: TcxGridDBColumn;
    cxGridDBTableView5QTD: TcxGridDBColumn;
    cxGridDBTableView5UNID: TcxGridDBColumn;
    cxGridDBTableView5VL_ITEM: TcxGridDBColumn;
    cxGridDBTableView5VL_DESC: TcxGridDBColumn;
    cxGridDBTableView5IND_MOV: TcxGridDBColumn;
    cxGridDBTableView5CST_ICMS: TcxGridDBColumn;
    cxGridDBTableView5CFOP: TcxGridDBColumn;
    cxGridDBTableView5COD_NAT: TcxGridDBColumn;
    cxGridDBTableView5VL_BC_ICMS: TcxGridDBColumn;
    cxGridDBTableView5ALIQ_ICMS: TcxGridDBColumn;
    cxGridDBTableView5VL_ICMS: TcxGridDBColumn;
    cxGridDBTableView5VL_BC_ICMS_ST: TcxGridDBColumn;
    cxGridDBTableView5ALIQ_ST: TcxGridDBColumn;
    cxGridDBTableView5VL_ICMS_ST: TcxGridDBColumn;
    cxGridDBTableView5IND_APUR: TcxGridDBColumn;
    cxGridDBTableView5CST_IPI: TcxGridDBColumn;
    cxGridDBTableView5COD_ENQ: TcxGridDBColumn;
    cxGridDBTableView5VL_BC_IPI: TcxGridDBColumn;
    cxGridDBTableView5ALIQ_IPI: TcxGridDBColumn;
    cxGridDBTableView5VL_IPI: TcxGridDBColumn;
    cxGridDBTableView5CST_PIS: TcxGridDBColumn;
    cxGridDBTableView5VL_BC_PIS: TcxGridDBColumn;
    cxGridDBTableView5ALIQ_PIS: TcxGridDBColumn;
    cxGridDBTableView5QUANT_BC_PIS: TcxGridDBColumn;
    cxGridDBTableView5VL_PIS: TcxGridDBColumn;
    cxGridDBTableView5CST_COFINS: TcxGridDBColumn;
    cxGridDBTableView5VL_BC_COFINS: TcxGridDBColumn;
    cxGridDBTableView5QUANT_BC_COFINS: TcxGridDBColumn;
    cxGridDBTableView5ALIQ_COFINS: TcxGridDBColumn;
    cxGridDBTableView5VL_COFINS: TcxGridDBColumn;
    cxGridDBTableView5COD_CTA: TcxGridDBColumn;
    cxGridDBTableView5VL_ABAT_NT: TcxGridDBColumn;
    SPED_C190: TFDQuery;
    DSSPED_C190: TDataSource;
    dxLayoutItem8: TdxLayoutItem;
    cxGrid8: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    cxGridDBTableView7CODSPED: TcxGridDBColumn;
    cxGridDBTableView7CODPEDIDO: TcxGridDBColumn;
    cxGridDBTableView7CST_ICMS: TcxGridDBColumn;
    cxGridDBTableView7CFOP: TcxGridDBColumn;
    cxGridDBTableView7ALIQ_ICMS: TcxGridDBColumn;
    cxGridDBTableView7VL_OPR: TcxGridDBColumn;
    cxGridDBTableView7VL_BC_ICMS: TcxGridDBColumn;
    cxGridDBTableView7VL_ICMS: TcxGridDBColumn;
    cxGridDBTableView7VL_BC_ICMS_ST: TcxGridDBColumn;
    cxGridDBTableView7VL_ICMS_ST: TcxGridDBColumn;
    cxGridDBTableView7VL_RED_BC: TcxGridDBColumn;
    cxGridDBTableView7VL_IPI: TcxGridDBColumn;
    cxGridDBTableView7COD_OBS: TcxGridDBColumn;
    SPED_C100_Entrada: TFDQuery;
    DSSPED_C100_E: TDataSource;
    NF_Entrada: TFDQuery;
    dxLayoutItem9: TdxLayoutItem;
    cxGrid9: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridLevel8: TcxGridLevel;
    cxGridDBTableView8CODSPED: TcxGridDBColumn;
    cxGridDBTableView8CODPEDIDO: TcxGridDBColumn;
    cxGridDBTableView8IND_OPER: TcxGridDBColumn;
    cxGridDBTableView8IND_EMIT: TcxGridDBColumn;
    cxGridDBTableView8COD_PART: TcxGridDBColumn;
    cxGridDBTableView8COD_MOD: TcxGridDBColumn;
    cxGridDBTableView8COD_SIT: TcxGridDBColumn;
    cxGridDBTableView8SER: TcxGridDBColumn;
    cxGridDBTableView8NUN_DOC: TcxGridDBColumn;
    cxGridDBTableView8CHV_NFE: TcxGridDBColumn;
    cxGridDBTableView8DT_DOC: TcxGridDBColumn;
    cxGridDBTableView8DT_E_S: TcxGridDBColumn;
    cxGridDBTableView8VL_DOC: TcxGridDBColumn;
    cxGridDBTableView8IND_PAGTO: TcxGridDBColumn;
    cxGridDBTableView8VL_DESC: TcxGridDBColumn;
    cxGridDBTableView8VL_ABAT_NT: TcxGridDBColumn;
    cxGridDBTableView8VL_MERC: TcxGridDBColumn;
    cxGridDBTableView8IND_FRT: TcxGridDBColumn;
    cxGridDBTableView8VL_FRT: TcxGridDBColumn;
    cxGridDBTableView8VL_SEG: TcxGridDBColumn;
    cxGridDBTableView8VL_OUT_DA: TcxGridDBColumn;
    cxGridDBTableView8VL_BC_ICMS: TcxGridDBColumn;
    cxGridDBTableView8VL_ICMS: TcxGridDBColumn;
    cxGridDBTableView8VL_BC_ICMS_ST: TcxGridDBColumn;
    cxGridDBTableView8VL_ICMS_ST: TcxGridDBColumn;
    cxGridDBTableView8VL_IPI: TcxGridDBColumn;
    cxGridDBTableView8VL_PIS: TcxGridDBColumn;
    cxGridDBTableView8VL_CONFINS: TcxGridDBColumn;
    cxGridDBTableView8VL_PIS_ST: TcxGridDBColumn;
    cxGridDBTableView8VL_CONFINS_ST: TcxGridDBColumn;
    SPED_C170_Entrada: TFDQuery;
    DSSPED_C170_Entrada: TDataSource;
    NF_Entrada_Produto: TFDQuery;
    dxLayoutItem10: TdxLayoutItem;
    cxGrid10: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridLevel9: TcxGridLevel;
    cxGridDBTableView9CODSPED: TcxGridDBColumn;
    cxGridDBTableView9CODPEDIDO: TcxGridDBColumn;
    cxGridDBTableView9NUM_ITEM: TcxGridDBColumn;
    cxGridDBTableView9COD_ITEM: TcxGridDBColumn;
    cxGridDBTableView9DESCR_COMPL: TcxGridDBColumn;
    cxGridDBTableView9QTD: TcxGridDBColumn;
    cxGridDBTableView9UNID: TcxGridDBColumn;
    cxGridDBTableView9VL_ITEM: TcxGridDBColumn;
    cxGridDBTableView9VL_DESC: TcxGridDBColumn;
    cxGridDBTableView9IND_MOV: TcxGridDBColumn;
    cxGridDBTableView9CST_ICMS: TcxGridDBColumn;
    cxGridDBTableView9CFOP: TcxGridDBColumn;
    cxGridDBTableView9COD_NAT: TcxGridDBColumn;
    cxGridDBTableView9VL_BC_ICMS: TcxGridDBColumn;
    cxGridDBTableView9ALIQ_ICMS: TcxGridDBColumn;
    cxGridDBTableView9VL_ICMS: TcxGridDBColumn;
    cxGridDBTableView9VL_BC_ICMS_ST: TcxGridDBColumn;
    cxGridDBTableView9ALIQ_ST: TcxGridDBColumn;
    cxGridDBTableView9VL_ICMS_ST: TcxGridDBColumn;
    cxGridDBTableView9IND_APUR: TcxGridDBColumn;
    cxGridDBTableView9CST_IPI: TcxGridDBColumn;
    cxGridDBTableView9COD_ENQ: TcxGridDBColumn;
    cxGridDBTableView9VL_BC_IPI: TcxGridDBColumn;
    cxGridDBTableView9ALIQ_IPI: TcxGridDBColumn;
    cxGridDBTableView9VL_IPI: TcxGridDBColumn;
    cxGridDBTableView9CST_PIS: TcxGridDBColumn;
    cxGridDBTableView9VL_BC_PIS: TcxGridDBColumn;
    cxGridDBTableView9ALIQ_PIS: TcxGridDBColumn;
    cxGridDBTableView9QUANT_BC_PIS: TcxGridDBColumn;
    cxGridDBTableView9VL_PIS: TcxGridDBColumn;
    cxGridDBTableView9CST_COFINS: TcxGridDBColumn;
    cxGridDBTableView9VL_BC_COFINS: TcxGridDBColumn;
    cxGridDBTableView9QUANT_BC_COFINS: TcxGridDBColumn;
    cxGridDBTableView9ALIQ_COFINS: TcxGridDBColumn;
    cxGridDBTableView9VL_COFINS: TcxGridDBColumn;
    cxGridDBTableView9COD_CTA: TcxGridDBColumn;
    cxGridDBTableView9VL_ABAT_NT: TcxGridDBColumn;
    SPED_C190_Entrada: TFDQuery;
    DSSPED_C190_Entrada: TDataSource;
    dxLayoutItem11: TdxLayoutItem;
    cxGrid11: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridLevel10: TcxGridLevel;
    cxGridDBTableView10CODSPED: TcxGridDBColumn;
    cxGridDBTableView10CODPEDIDO: TcxGridDBColumn;
    cxGridDBTableView10CST_ICMS: TcxGridDBColumn;
    cxGridDBTableView10CFOP: TcxGridDBColumn;
    cxGridDBTableView10ALIQ_ICMS: TcxGridDBColumn;
    cxGridDBTableView10VL_OPR: TcxGridDBColumn;
    cxGridDBTableView10VL_BC_ICMS: TcxGridDBColumn;
    cxGridDBTableView10VL_ICMS: TcxGridDBColumn;
    cxGridDBTableView10VL_BC_ICMS_ST: TcxGridDBColumn;
    cxGridDBTableView10VL_ICMS_ST: TcxGridDBColumn;
    cxGridDBTableView10VL_RED_BC: TcxGridDBColumn;
    cxGridDBTableView10VL_IPI: TcxGridDBColumn;
    cxGridDBTableView10COD_OBS: TcxGridDBColumn;
    cxGridDBTableView10CODSPED_1: TcxGridDBColumn;
    cxGridDBTableView10CODPEDIDO_1: TcxGridDBColumn;
    cxGridDBTableView10IND_OPER: TcxGridDBColumn;
    cxGridDBTableView10IND_EMIT: TcxGridDBColumn;
    cxGridDBTableView10COD_PART: TcxGridDBColumn;
    cxGridDBTableView10COD_MOD: TcxGridDBColumn;
    cxGridDBTableView10COD_SIT: TcxGridDBColumn;
    cxGridDBTableView10SER: TcxGridDBColumn;
    cxGridDBTableView10NUN_DOC: TcxGridDBColumn;
    cxGridDBTableView10CHV_NFE: TcxGridDBColumn;
    cxGridDBTableView10DT_DOC: TcxGridDBColumn;
    cxGridDBTableView10DT_E_S: TcxGridDBColumn;
    cxGridDBTableView10VL_DOC: TcxGridDBColumn;
    cxGridDBTableView10IND_PAGTO: TcxGridDBColumn;
    cxGridDBTableView10VL_DESC: TcxGridDBColumn;
    cxGridDBTableView10VL_ABAT_NT: TcxGridDBColumn;
    cxGridDBTableView10VL_MERC: TcxGridDBColumn;
    cxGridDBTableView10IND_FRT: TcxGridDBColumn;
    cxGridDBTableView10VL_FRT: TcxGridDBColumn;
    cxGridDBTableView10VL_SEG: TcxGridDBColumn;
    cxGridDBTableView10VL_OUT_DA: TcxGridDBColumn;
    cxGridDBTableView10VL_BC_ICMS_1: TcxGridDBColumn;
    cxGridDBTableView10VL_ICMS_1: TcxGridDBColumn;
    cxGridDBTableView10VL_BC_ICMS_ST_1: TcxGridDBColumn;
    cxGridDBTableView10VL_ICMS_ST_1: TcxGridDBColumn;
    cxGridDBTableView10VL_IPI_1: TcxGridDBColumn;
    cxGridDBTableView10VL_PIS: TcxGridDBColumn;
    cxGridDBTableView10VL_CONFINS: TcxGridDBColumn;
    cxGridDBTableView10VL_PIS_ST: TcxGridDBColumn;
    cxGridDBTableView10VL_CONFINS_ST: TcxGridDBColumn;
    dxLayoutItem12: TdxLayoutItem;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CadastroAfterClose(DataSet: TDataSet);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure cxGridPessoasEditing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure SPED_0150AfterInsert(DataSet: TDataSet);
    procedure cxGridPessoasCOD_PARTValidateDrawValue(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      const AValue: Variant; AData: TcxEditValidateInfo);
    procedure cxGridPessoasNOMEValidateDrawValue(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      const AValue: Variant; AData: TcxEditValidateInfo);
    procedure cxGridPessoasENDValidateDrawValue(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      const AValue: Variant; AData: TcxEditValidateInfo);
    procedure cxGridPessoasCOD_PAISValidateDrawValue(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      const AValue: Variant; AData: TcxEditValidateInfo);
    procedure cxGridPessoasCNPJValidateDrawValue(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      const AValue: Variant; AData: TcxEditValidateInfo);
    procedure cxGridPessoasNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure SPED_0190AfterInsert(DataSet: TDataSet);
    procedure SPED_0200AfterInsert(DataSet: TDataSet);
    procedure SPED_C100AfterInsert(DataSet: TDataSet);
    procedure SPED_C170AfterInsert(DataSet: TDataSet);
    procedure SPED_C190AfterInsert(DataSet: TDataSet);
    procedure SPED_C100_EntradaAfterInsert(DataSet: TDataSet);
    procedure SPED_C170_EntradaAfterInsert(DataSet: TDataSet);
    procedure SPED_C190_EntradaAfterInsert(DataSet: TDataSet);

  private
    function GetDtFim: TDateTime;
    function GetDtInicio: TDateTime;
    procedure DeletaSPED;
    procedure GerarSPED_Bloco0;
    procedure GerarSPED_BlocoC;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FrmSped: TFrmSped;
  DtInicio, DtFim, DataAtual : TDateTime;
  ICMS : Double;

implementation

uses
  wrConstantes, DateUtils, Math, wrFuncoes, UnitFuncoes, ACBrEFDBlocos, ACBrUtil, StrUtils;


{$R *.dfm}
procedure TFrmSped.CadastroAfterClose(DataSet: TDataSet);
begin
  inherited;
  SPED_0150.Close;
  SPED_0190.Close;
  SPED_0200.Close;
  SPED_C100.Close;
  SPED_C100_Entrada.Close;
  SPED_C170.Close;
  SPED_C170_Entrada.Close;
  SPED_C190.Close;
  SPED_C190_Entrada.Close;
end;

procedure TFrmSped.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SPED_0150.Open;
  SPED_0190.Open;
  SPED_0200.Open;
  SPED_C100.Open;
  SPED_C100_Entrada.Open;
  SPED_C170.Open;
  SPED_C170_Entrada.Open;
  SPED_C190.Open;
  SPED_C190_Entrada.Open;
end;

{$REGION 'Validações'}
procedure TFrmSped.cxGridPessoasCNPJValidateDrawValue(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; const AValue: Variant; AData: TcxEditValidateInfo);
begin
  inherited;
  if Length(AValue) < 14  then
  begin
    AData.ErrorType := eetWarning;
    AData.ErrorText := 'Campo Incorreto';
  end;
end;

procedure TFrmSped.cxGridPessoasCOD_PAISValidateDrawValue(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; const AValue: Variant; AData: TcxEditValidateInfo);
begin
  inherited;
  if AValue = '' then
  begin
    AData.ErrorType := eetError;
    AData.ErrorText := 'Campo Obrigatório';
  end;
end;

procedure TFrmSped.cxGridPessoasCOD_PARTValidateDrawValue(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; const AValue: Variant; AData: TcxEditValidateInfo);
begin
  inherited;
  if AValue = '' then
  begin
    AData.ErrorType := eetError;
    AData.ErrorText := 'Campo Obrigatório';
  end;
end;

procedure TFrmSped.cxGridPessoasENDValidateDrawValue(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  const AValue: Variant; AData: TcxEditValidateInfo);
begin
  inherited;
  if AValue = '' then
  begin
    AData.ErrorType := eetError;
    AData.ErrorText := 'Campo Obrigatório';
  end;
end;

procedure TFrmSped.cxGridPessoasNOMEValidateDrawValue(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; const AValue: Variant; AData: TcxEditValidateInfo);
begin
  inherited;
  if AValue = '' then
  begin
    AData.ErrorType := eetError;
    AData.ErrorText := 'Campo Obrigatório';
  end;
end;
{$ENDREGION}

procedure TFrmSped.cxGridPessoasEditing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrmSped.cxGridPessoasNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;


{$REGION 'Create'}
procedure TFrmSped.FormCreate(Sender: TObject);
var
  I: Integer;
  AData: TDate;
begin
  inherited;
  AData := IncMonth(Now, -1);
  CbMes.Properties.BeginUpdate;
  try
    CbMes.Properties.Items.Clear;
    for I := 1 to 12 do
      CbMes.Properties.Items.Add(MESES_NOMES[I]);
    CbMes.ItemIndex := MonthOf(AData) - 1;
  finally
    CbMes.Properties.EndUpdate(False);
  end;

  CbAno.Properties.BeginUpdate;
  try
    CbAno.Properties.Items.Clear;
    for I := YearOf(Now) downto YearOf(Now) - 5 do
      CbAno.Properties.Items.Add(I.ToString);
    CbAno.Text := YearOf(AData).ToString;
  finally
    CbAno.Properties.EndUpdate(False);
  end;
end;

function TFrmSped.GetDtFim: TDateTime;
var
  AAno, AMes: Integer;
begin
  AAno := StrToIntDef(CbAno.Text, 0);
  AMes := CbMes.ItemIndex + 1;
  if not InRange(AAno, 1950, YearOf(Now)) then
  begin
    ShowMessageWR('Ano Inválido');
    CbAno.SetFocusWR;
    Abort;
  end;

  Result := EndOfTheMonth(EncodeDate(AAno, AMes, 1));
end;

function TFrmSped.GetDtInicio: TDateTime;
var
  AAno, AMes: Integer;
begin
  AAno := StrToIntDef(CbAno.Text, 0);
  AMes := CbMes.ItemIndex + 1;
  if not InRange(AAno, 1950, YearOf(Now)) then
  begin
    ShowMessageWR('Ano Inválido');
    CbAno.SetFocusWR;
    Abort;
  end;

  Result := StartOfTheMonth(EncodeDate(AAno, AMes, 1));
end;
{$ENDREGION}

{$REGION 'AfterInsert'}
procedure TFrmSped.SPED_0150AfterInsert(DataSet: TDataSet);
begin
  inherited;
  SPED_0150.FieldByName('CODIGO').Value := GetProximoCodigo('SPED_0150',TransaFD);
end;

procedure TFrmSped.SPED_0190AfterInsert(DataSet: TDataSet);
begin
  inherited;
  SPED_0190.FieldByName('CODIGO').Value := GetProximoCodigo('SPED_0190',TransaFD);
end;

procedure TFrmSped.SPED_0200AfterInsert(DataSet: TDataSet);
begin
  inherited;
  SPED_0200.FieldByName('CODIGO').Value := GetProximoCodigo('SPED_0200',TransaFD);
end;

procedure TFrmSped.SPED_C100AfterInsert(DataSet: TDataSet);
begin
  inherited;
  SPED_C100.FieldByName('CODIGO').Value := GetProximoCodigo('SPED_C100',TransaFD);
end;

procedure TFrmSped.SPED_C100_EntradaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  SPED_C100_Entrada.FieldByName('CODIGO').Value := GetProximoCodigo('SPED_C100',TransaFD);
end;

procedure TFrmSped.SPED_C170AfterInsert(DataSet: TDataSet);
begin
  inherited;
  SPED_C170.FieldByName('CODIGO').Value := GetProximoCodigo('SPED_C170',TransaFD);
end;

procedure TFrmSped.SPED_C170_EntradaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  SPED_C170_Entrada.FieldByName('CODIGO').Value := GetProximoCodigo('SPED_C170',TransaFD);
end;

procedure TFrmSped.SPED_C190AfterInsert(DataSet: TDataSet);
begin
  inherited;
  SPED_C190.FieldByName('CODIGO').Value := GetProximoCodigo('SPED_C190',TransaFD);
end;

procedure TFrmSped.SPED_C190_EntradaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  SPED_C190_Entrada.FieldByName('CODIGO').Value := GetProximoCodigo('SPED_C190',TransaFD);
end;

{$ENDREGION}


procedure TFrmSped.BitBtn1Click(Sender: TObject);
var
  ADataRef: TDate;
  AAno, AMes: Integer;
begin
  if (ShowMessageWR('Deseja Gerar o SPED?',MB_ICONQUESTION) = mrYes) then
  begin
    AAno := StrToIntDef(CbAno.Text, 0);
    AMes := CbMes.ItemIndex + 1;
    if not InRange(AAno, 1950, YearOf(Now)) then
    begin
      ShowMessageWR('Ano Inválido');
      CbAno.SetFocusWR;
      Exit;
    end;

    ADataRef := EncodeDate(AAno, AMes, 1);
    DtInicio := StartOfTheDay(ADataRef);
    DtFim    := EndOfTheDay(ADataRef);
    DataAtual := DataHoraSys;
    ICMS := 0.00;
    //Os blocos “0”, “E” e “9”, são obrigatórios e deverão ser informados.

    DeletaSPED;
    GerarSPED_Bloco0;
    GerarSPED_BlocoC;
  //  GerarSPED_BlocoE;
  //  GerarSPED_Bloco1;
  //  GerarSPED_Bloco9;
  //  GerarSPED_BlocoH;
  //  GerarSPED_BlocoK;
  //  GerarSPED_TXT;
  end;
end;


procedure TFrmSped.DeletaSPED;
var
  QuerX : TFDQuery;
begin
  try
    QuerX := GeraFDQuery(TransaFD);
    QuerX.SQL.Text := 'delete from SPED_0150 ' +
                      'where CODSPED = ' + IntToStr(Cadastro.FieldByName('CODIGO').AsInteger);
    QuerX.ExecSQL;

    QuerX.SQL.Text := 'delete from SPED_0190 ' +
                      'where CODSPED = ' + IntToStr(Cadastro.FieldByName('CODIGO').AsInteger);
    QuerX.ExecSQL;

    QuerX.SQL.Text := 'delete from SPED_0200 ' +
                      'where CODSPED = ' + IntToStr(Cadastro.FieldByName('CODIGO').AsInteger);
    QuerX.ExecSQL;

    QuerX.SQL.Text := 'delete from SPED_C100 ' +
                      'where CODSPED = ' + IntToStr(Cadastro.FieldByName('CODIGO').AsInteger);
    QuerX.ExecSQL;

    QuerX.SQL.Text := 'delete from SPED_C170 ' +
                      'where CODSPED = ' + IntToStr(Cadastro.FieldByName('CODIGO').AsInteger);
    QuerX.ExecSQL;

    QuerX.SQL.Text := 'delete from SPED_C190 ' +
                      'where CODSPED = ' + IntToStr(Cadastro.FieldByName('CODIGO').AsInteger);
    QuerX.ExecSQL;
  finally
    QuerX.Free;
  end;

  SPED_0150.Refresh;
  SPED_0190.Refresh;
  SPED_0200.Refresh;
  SPED_C100.Refresh;
  SPED_C100_Entrada.Refresh;
  SPED_C170.Refresh;
  SPED_C170_Entrada.Refresh;
  SPED_C190.Refresh;
  SPED_C190_Entrada.Refresh;
end;

procedure TFrmSped.GerarSPED_Bloco0;
begin
  {$REGION '0150 - Cadastro de Pessoas(Clientes/Fornecedores)'}
  Pessoas.Close;
  Pessoas.ParamByName('INICIO').AsDateTime := GetDtInicio;
  Pessoas.ParamByName('FIM').AsDateTime := GetDtFim;
  Pessoas.Open;
  Pessoas.First;
  while not Pessoas.Eof do
  begin
    SPED_0150.insert;
    SPED_0150.FieldByName('CODSPED').Value  :=  Cadastro.FieldByName('CODIGO').Value;
    SPED_0150.FieldByName('COD_PART').Value :=  Pessoas.FieldByName('CODIGO').Value;
    SPED_0150.FieldByName('NOME').Value     :=  Pessoas.FieldByName('RAZAOSOCIAL').Value;
    SPED_0150.FieldByName('COD_PAIS').Value :=  1058;
    if Pessoas.FieldByName('TIPO').Value = 'J' then
      SPED_0150.FieldByName('CNPJ').Value   :=  OnlyNumber(Pessoas.FieldByName('CNPJCPF').Value)
    else
      SPED_0150.FieldByName('CPF').Value    :=  OnlyNumber(Pessoas.FieldByName('CNPJCPF').Value);
    SPED_0150.FieldByName('IE').Value       :=  Pessoas.FieldByName('INSCIDENT').Value;
    SPED_0150.FieldByName('COD_MUN').Value  :=  Pessoas.FieldByName('CODCIDADE').Value;
    SPED_0150.FieldByName('SUFRAMA').Value  :=  Pessoas.FieldByName('SUFRAMA').Value;
    SPED_0150.FieldByName('END').Value      :=  Pessoas.FieldByName('ENDERECO').Value;
    SPED_0150.FieldByName('NUM').Value      :=  Pessoas.FieldByName('NUMERO').Value;
    SPED_0150.FieldByName('COMPL').Value    :=  Pessoas.FieldByName('COMPLEMENTO').Value;
    SPED_0150.FieldByName('BAIRRO').Value   :=  Pessoas.FieldByName('BAIRRO').Value;
    SPED_0150.Post;
    Pessoas.Next;
  end;
  {$ENDREGION}

  {$REGION '0190 - Cadastro de Unidades'}
  Unidade.Close;
  Unidade.ParamByName('INICIO').AsDateTime := GetDtInicio;
  Unidade.ParamByName('FIM').AsDateTime := GetDtFim;
  Unidade.Open;
  Unidade.First;
  while not Unidade.Eof do
  begin
    SPED_0190.Insert;
    SPED_0190.FieldByName('CODSPED').Value  :=  Cadastro.FieldByName('CODIGO').Value;
    SPED_0190.FieldByName('UNID').Value     :=  Unidade.FieldByName('UNIDADE').Value;
    SPED_0190.FieldByName('DESCR').Value    :=  Unidade.FieldByName('UNIDADE').Value;
    SPED_0190.Post;
    Unidade.Next;
  end;
  {$ENDREGION}

  {$REGION '0200 - Cadastro de Produtos'}
  Produto.Close;
  Produto.ParamByName('INICIO').AsDateTime := GetDtInicio;
  Produto.ParamByName('FIM').AsDateTime := GetDtFim;
  Produto.Open;
  Produto.First;
  while not Produto.Eof do
  begin
    SPED_0200.Insert;
    SPED_0200.FieldByName('CODSPED').Value     := Cadastro.FieldByName('CODIGO').Value;

    if Produto.FieldByName('CODPRODUTO').isnull then
      SPED_0200.FieldByName('COD_ITEM').Value  := Produto.FieldByName('CODFABRICA').Value
    else
      SPED_0200.FieldByName('COD_ITEM').Value  := Produto.FieldByName('CODPRODUTO').Value;

    SPED_0200.FieldByName('DESCR_ITEM').Value  := Produto.FieldByName('DESCRICAO').Value;
    SPED_0200.FieldByName('COD_BARRA').Value   := Produto.FieldByName('CODFABRICA').Value;
//    SPED_0200.FieldByName('COD_ANT_ITEM').Value := Produto.FieldByName('').Value; //serve para quando se é registrado alterações de codigo do item, não e obrigatório.
    SPED_0200.FieldByName('UNID_INV').Value    := Produto.FieldByName('UNIDADE').Value;
    SPED_0200.FieldByName('TIPO_ITEM').Value   := 00;
    SPED_0200.FieldByName('COD_NCM').Value     := Produto.FieldByName('CODNF_NCM').Value;
    SPED_0200.FieldByName('EX_IPI').Value      := Produto.FieldByName('NF_EXTIPI').Value;
//    SPED_0200.FieldByName('COD_GEN').Value   := Produto.FieldByName('').Value;
//    SPED_0200.FieldByName('COD_LST').Value   := Produto.FieldByName('').Value;
//    SPED_0200.FieldByName('ALIQ_ICMS').Value := Produto.FieldByName('').Value;
//    SPED_0200.FieldByName('CEST').Value      := Produto.FieldByName('').Value;
   SPED_0200.Post;
   Produto.Next;
  end;
  {$ENDREGION}


end;




procedure TFrmSped.GerarSPED_BlocoC;
begin
{$REGION 'Vendas'}
  Venda.Close;
  Venda.ParamByName('INICIO').AsDateTime := GetDtInicio;
  Venda.ParamByName('FIM').AsDateTime := GetDtFim;
  Venda.Open;
  Venda.First;
  while not Venda.Eof do
  begin
    SPED_C100.Insert;
    SPED_C100.FieldByName('CODSPED').Value       := Cadastro.FieldByName('CODIGO').Value;
    SPED_C100.FieldByName('CODPEDIDO').Value     := Venda.FieldByName('CODIGO').Value;
    SPED_C100.FieldByName('IND_OPER').Value      := 1; //0 - Entrada;             1 - Saida;
    SPED_C100.FieldByName('IND_EMIT').Value      := 1; //0 - Emissão Própria;     1 - Terceiros;
    SPED_C100.FieldByName('COD_PART').Value      := Venda.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value;
    SPED_C100.FieldByName('COD_MOD').Value       := 55; //01 - Nota Fiscal;  02 - NFCe;  2D - Cupom Fiscal;   55 Nota Fiscal Eletronica; (+ no Manual tabela 4.1.1)
    SPED_C100.FieldByName('COD_SIT').Value       := 00; //00 - Documento Regular  (+ no Manual tabela 4.1.2)
    SPED_C100.FieldByName('SER').Value           := 1; // 1 - NFE/NFCe;   2- NFe Entrada;
    SPED_C100.FieldByName('NUN_DOC').Value       := Venda.FieldByName('NF_NUMERO').Value;
    SPED_C100.FieldByName('CHV_NFE').Value       := Venda.FieldByName('NF_CHAVE').Value;
    SPED_C100.FieldByName('DT_DOC').Value        := Venda.FieldByName('NF_DT_EMISSAO').Value;
    SPED_C100.FieldByName('DT_E_S').Value        := Venda.FieldByName('NF_DT_SAIDAENTRADA').Value;
    SPED_C100.FieldByName('VL_DOC').Value        := Venda.FieldByName('TOTAL').Value;

    if Venda.FieldByName('CODCONDICAOPAGTO').Value = 1 then   // 0 - A Vista; 1 - A Prazo; 2 - Outros; 9 - Sem Pagamento
      SPED_C100.FieldByName('IND_PAGTO').Value := 0;
    if Venda.FieldByName('CODCONDICAOPAGTO').Value <> 1 then
      SPED_C100.FieldByName('IND_PAGTO').Value := 1;
    if Venda.FieldByName('CODCONDICAOPAGTO').IsNull then
      SPED_C100.FieldByName('IND_PAGTO').Value := 9;

    SPED_C100.FieldByName('VL_DESC').Value       := Venda.FieldByName('VDESC').Value;
//    SPED_C100.FieldByName('VL_ABAT_NT').Value    := Venda.FieldByName('CODIGO').Value;
//    SPED_C100.FieldByName('VL_MERC').Value       := Venda.FieldByName('CODIGO').Value; //Preenchido somente se a nota que estiver no sistema, não for do Emitente e não ser uma nota fiscal
    SPED_C100.FieldByName('IND_FRT').Value       := Venda.FieldByName('NF_FRETEPORCONTA').Value;
    SPED_C100.FieldByName('VL_FRT').Value        := Venda.FieldByName('NF_VFRETE').Value;
    SPED_C100.FieldByName('VL_SEG').Value        := Venda.FieldByName('NF_VSEG').Value;
    SPED_C100.FieldByName('VL_OUT_DA').Value     := Venda.FieldByName('VOUTRO').Value;
    SPED_C100.FieldByName('VL_BC_ICMS').Value    := Venda.FieldByName('NF_VBC').Value;
    SPED_C100.FieldByName('VL_ICMS').Value       := Venda.FieldByName('NF_VICMS').Value;
    SPED_C100.FieldByName('VL_BC_ICMS_ST').Value := Venda.FieldByName('NF_VBCST').Value;
    SPED_C100.FieldByName('VL_ICMS_ST').Value    := Venda.FieldByName('NF_VICMSST').Value;
    SPED_C100.FieldByName('VL_IPI').Value        := Venda.FieldByName('NF_IPI_VIPI').Value;
    SPED_C100.FieldByName('VL_PIS').Value        := Venda.FieldByName('NF_PIS_VPIS').Value;
//    SPED_C100.FieldByName('VL_CONFINS').Value    := Venda.FieldByName('NF_COFINS_VCOFINS').Value;
//    SPED_C100.FieldByName('VL_PIS_ST').Value     := Venda.FieldByName('CODIGO').Value;
    SPED_C100.FieldByName('VL_CONFINS_ST').Value := Venda.FieldByName('NF_COFINSST_VCOFINS').Value;


    {$REGION 'Produtos'}
    VendaProduto.Close;
    VendaProduto.ParamByName('CODIGO').Value     := Venda.FieldByName('CODIGO').Value;
    VendaProduto.Open;
    VendaProduto.First;
    while not VendaProduto.Eof do
    begin
      SPED_C170.Insert;
      SPED_C170.FieldByName('CODSPED').Value         := Cadastro.FieldByName('CODIGO').Value;
      SPED_C170.FieldByName('CODPEDIDO').Value       := VendaProduto.FieldByName('CODVENDA').Value;
      SPED_C170.FieldByName('NUM_ITEM').Value        := VendaProduto.FieldByName('CODIGO').Value;
      SPED_C170.FieldByName('COD_ITEM').Value        := VendaProduto.FieldByName('CODPRODUTO').Value;
      SPED_C170.FieldByName('DESCR_COMPL').Value     := VendaProduto.FieldByName('DESCRICAO').Value;
      SPED_C170.FieldByName('QTD').Value             := VendaProduto.FieldByName('QUANT').Value;
      SPED_C170.FieldByName('UNID').Value            := VendaProduto.FieldByName('UNIDADE').Value;
      SPED_C170.FieldByName('VL_ITEM').Value         := VendaProduto.FieldByName('VALOR').Value;
      SPED_C170.FieldByName('VL_DESC').Value         := VendaProduto.FieldByName('VDESC').Value;
      if VendaProduto.FieldByName('PODE_ALTERAR_ESTOQUE').Value = 'S' then
        SPED_C170.FieldByName('IND_MOV').Value       := 0 //0 - SIM;  1 - NÂO;
      else
        SPED_C170.FieldByName('IND_MOV').Value       := 1;
      SPED_C170.FieldByName('CST_ICMS').Value        := VendaProduto.FieldByName('CODNF_CST').Value;
      SPED_C170.FieldByName('CFOP').Value            := VendaProduto.FieldByName('CODNF_CFOP').Value;
      SPED_C170.FieldByName('COD_NAT').Value         := VendaProduto.FieldByName('NF_CODNATUREZA_OPERACAO').Value;
      SPED_C170.FieldByName('VL_BC_ICMS').Value      := VendaProduto.FieldByName('NF_VBC').Value;
      SPED_C170.FieldByName('ALIQ_ICMS').Value       := VendaProduto.FieldByName('CODIGO').Value;
      SPED_C170.FieldByName('VL_ICMS').Value         := VendaProduto.FieldByName('NF_VICMS').Value;
      SPED_C170.FieldByName('VL_BC_ICMS_ST').Value   := VendaProduto.FieldByName('NF_VBCST').Value;
      SPED_C170.FieldByName('ALIQ_ST').Value         := VendaProduto.FieldByName('NF_PICMSST').Value;
      SPED_C170.FieldByName('VL_ICMS_ST').Value      := VendaProduto.FieldByName('NF_VICMSST').Value;
    //  SPED_C100.FieldByName('IND_APUR').Value        := VendaProduto.FieldByName('CODIGO').Value; //INDICADOR DE APURACAO DO IPI 0 - Mensal; 1 - Decendial;
      SPED_C170.FieldByName('CST_IPI').Value         := VendaProduto.FieldByName('NF_IPI_CST').Value;
    //  SPED_C100.FieldByName('COD_ENQ').Value         := VendaProduto.FieldByName('CODIGO').Value; //CODIGO DO ENQUADRAMENTO DO IPI - Segundo Manual não é para preencher
      SPED_C170.FieldByName('VL_BC_IPI').Value       := VendaProduto.FieldByName('NF_IPI_VBC').Value;
      SPED_C170.FieldByName('ALIQ_IPI').Value        := VendaProduto.FieldByName('NF_IPI_PIPI').Value;
      SPED_C170.FieldByName('VL_IPI').Value          := VendaProduto.FieldByName('NF_IPI_VIPI').Value;
      SPED_C170.FieldByName('CST_PIS').Value         := VendaProduto.FieldByName('NF_PIS_CST').Value;
      SPED_C170.FieldByName('VL_BC_PIS').Value       := VendaProduto.FieldByName('NF_PIS_VBC').Value;
      SPED_C170.FieldByName('ALIQ_PIS').Value        := VendaProduto.FieldByName('NF_PIS_VALIQPROD').Value;
      SPED_C170.FieldByName('QUANT_BC_PIS').Value    := VendaProduto.FieldByName('NF_PISST_QBCPROD').Value;
      SPED_C170.FieldByName('VL_PIS').Value          := VendaProduto.FieldByName('NF_PIS_VPIS').Value;
      SPED_C170.FieldByName('CST_COFINS').Value      := VendaProduto.FieldByName('NF_COFINS_CST').Value;
      SPED_C170.FieldByName('VL_BC_COFINS').Value    := VendaProduto.FieldByName('NF_COFINS_VBC').Value;
      SPED_C170.FieldByName('QUANT_BC_COFINS').Value := VendaProduto.FieldByName('NF_COFINS_VBCPROD').Value;
      SPED_C170.FieldByName('ALIQ_COFINS').Value     := VendaProduto.FieldByName('NF_COFINS_PCOFINS').Value;
      SPED_C170.FieldByName('VL_COFINS').Value       := VendaProduto.FieldByName('NF_COFINS_VCOFINS').Value;
    //  SPED_C100.FieldByName('COD_CTA').Value         := VendaProduto.FieldByName('CODIGO').Value;  //Codigo da conta analitica contabil debitada/creditada
    //  SPED_C100.FieldByName('VL_ABAT_NT').Value      := VendaProduto.FieldByName('CODIGO').Value;  //Valor do abatimento nao tributado e nao comercial
      SPED_C170.Post;
      VendaProduto.Next;
    end;
    {$ENDREGION}

    {$REGION 'Imposto Analitico'}
    SPED_C190.Insert;
    SPED_C190.FieldByName('CODSPED').Value          := Cadastro.FieldByName('CODIGO').Value;
    SPED_C190.FieldByName('CODPEDIDO').Value        := Venda.FieldByName('CODIGO').Value;
    SPED_C190.FieldByName('CST_ICMS').Value         := VendaProduto.FieldByName('CODNF_CST').Value;
    SPED_C190.FieldByName('ALIQ_ICMS').Value        := VendaProduto.FieldByName('NF_PICMS').Value;
    SPED_C190.FieldByName('VL_OPR').Value           := Venda.FieldByName('TOTAL').Value;
    SPED_C190.FieldByName('VL_BC_ICMS').Value       := Venda.FieldByName('NF_VBC').Value;
    SPED_C190.FieldByName('VL_ICMS').Value          := Venda.FieldByName('NF_VICMS').Value;
    SPED_C190.FieldByName('VL_BC_ICMS_ST').Value    := Venda.FieldByName('NF_VBCST').Value;
    SPED_C190.FieldByName('VL_ICMS_ST').Value       := Venda.FieldByName('NF_VICMSST').Value;
//      SPED_C190.FieldByName('VL_RED_BC').Value        := VendaProduto.FieldByName('NF_VBCSTRET').Value; ???
    SPED_C190.FieldByName('VL_IPI').Value           := Venda.FieldByName('NF_IPI_VIPI').Value;
//      SPED_C190.FieldByName('COD_OBS').Value          := Imposto.FieldByName('CODIGO').Value; // Código   da   observação   do   lançamento   fiscal;  não obrigatorio
    SPED_C190.Post;
    {$ENDREGION}

    SPED_C100.Post;
    Venda.Next;
  end;
{$ENDREGION}

{$REGION 'Entrada'}
  NF_Entrada.Close;
  NF_Entrada.ParamByName('INICIO').AsDateTime := GetDtInicio;
  NF_Entrada.ParamByName('FIM').AsDateTime := GetDtFim;
  NF_Entrada.Open;
  NF_Entrada.First;
  while not NF_Entrada.Eof do
  begin
    SPED_C100_Entrada.Insert;
    SPED_C100_Entrada.FieldByName('CODSPED').Value           := Cadastro.FieldByName('CODIGO').Value;
    SPED_C100_Entrada.FieldByName('CODPEDIDO').Value         := NF_Entrada.FieldByName('CODIGO').Value;
    SPED_C100_Entrada.FieldByName('IND_OPER').Value          := 0; //0 - Entrada;             1 - Saida;
    SPED_C100_Entrada.FieldByName('IND_EMIT').Value          := 1; //0 - Emissão Própria;     1 - Terceiros;
    SPED_C100_Entrada.FieldByName('COD_PART').Value          := NF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value;
    SPED_C100_Entrada.FieldByName('COD_MOD').Value           := 55;//01 - Nota Fiscal;  02 - NFCe;  2D - Cupom Fiscal;   55 Nota Fiscal Eletronica; (+ no Manual tabela 4.1.1)
    SPED_C100_Entrada.FieldByName('COD_SIT').Value           := 00;//00 - Documento Regular  (+ no Manual tabela 4.1.2)
    SPED_C100_Entrada.FieldByName('SER').Value               := 1; // 1 - NFE/NFCe;   2- NFe Entrada;
    SPED_C100_Entrada.FieldByName('NUN_DOC').Value           := NF_Entrada.FieldByName('NUN_NF').Value;
    SPED_C100_Entrada.FieldByName('CHV_NFE').Value           := NF_Entrada.FieldByName('NF_CHAVE').Value;
    SPED_C100_Entrada.FieldByName('DT_DOC').Value            := NF_Entrada.FieldByName('DT_NOTA').Value;
    SPED_C100_Entrada.FieldByName('DT_E_S').Value            := NF_Entrada.FieldByName('DT_NOTA').Value;
    SPED_C100_Entrada.FieldByName('VL_DOC').Value            := NF_Entrada.FieldByName('TOTAL').Value;

    if NF_Entrada.FieldByName('CODCONDICAOPAGTO').Value = 1 then   // 0 - A Vista; 1 - A Prazo; 2 - Outros; 9 - Sem Pagamento
      SPED_C100_Entrada.FieldByName('IND_PAGTO').Value := 0;
    if NF_Entrada.FieldByName('CODCONDICAOPAGTO').Value <> 1 then
      SPED_C100_Entrada.FieldByName('IND_PAGTO').Value := 1;
    if NF_Entrada.FieldByName('CODCONDICAOPAGTO').IsNull then
      SPED_C100_Entrada.FieldByName('IND_PAGTO').Value := 9;

    SPED_C100_Entrada.FieldByName('VL_DESC').Value           := NF_Entrada.FieldByName('VDESC').Value;
//    SPED_C100_Entrada.FieldByName('VL_ABAT_NT').Value        := NF_Entrada.FieldByName('CODIGO').Value;
//    SPED_C100_Entrada.FieldByName('VL_MERC').Value           := NF_Entrada.FieldByName('CODIGO').Value; //Preenchido somente se a nota que estiver no sistema, não ser do Emitente e não ser uma nota fiscal
//    SPED_C100_Entrada.FieldByName('IND_FRT').Value           := NF_Entrada.FieldByName('NF_FRETEPORCONTA').Value;
    SPED_C100_Entrada.FieldByName('VL_FRT').Value            := NF_Entrada.FieldByName('NF_VFRETE').Value;
    SPED_C100_Entrada.FieldByName('VL_SEG').Value            := NF_Entrada.FieldByName('NF_VSEG').Value;
    SPED_C100_Entrada.FieldByName('VL_OUT_DA').Value         := NF_Entrada.FieldByName('VOUTRO').Value;
    SPED_C100_Entrada.FieldByName('VL_BC_ICMS').Value        := NF_Entrada.FieldByName('NF_VBC').Value;
    SPED_C100_Entrada.FieldByName('VL_ICMS').Value           := NF_Entrada.FieldByName('NF_VICMS').Value;
    SPED_C100_Entrada.FieldByName('VL_BC_ICMS_ST').Value     := NF_Entrada.FieldByName('NF_VBCST').Value;
    SPED_C100_Entrada.FieldByName('VL_ICMS_ST').Value        := NF_Entrada.FieldByName('NF_VICMSST').Value;
    SPED_C100_Entrada.FieldByName('VL_IPI').Value            := NF_Entrada.FieldByName('NF_IPI_VIPI').Value;
    SPED_C100_Entrada.FieldByName('VL_PIS').Value            := NF_Entrada.FieldByName('NF_PIS_VPIS').Value;
    SPED_C100_Entrada.FieldByName('VL_CONFINS').Value        := NF_Entrada.FieldByName('NF_COFINS_VCOFINS').Value;
//    SPED_C100_Entrada.FieldByName('VL_PIS_ST').Value         := NF_Entrada.FieldByName('CODIGO').Value;
    SPED_C100_Entrada.FieldByName('VL_CONFINS_ST').Value     := NF_Entrada.FieldByName('NF_COFINSST_VCOFINS').Value;

   {$REGION 'Produtos'}
    NF_Entrada_Produto.Close;
    NF_Entrada_Produto.ParamByName('CODIGO').Value           := NF_Entrada.FieldByName('CODIGO').Value;
    NF_Entrada_Produto.Open;
    NF_Entrada_Produto.First;
    while not NF_Entrada_Produto.Eof do
    begin
      SPED_C170_Entrada.Insert;
      SPED_C170_Entrada.FieldByName('CODSPED').Value         := Cadastro.FieldByName('CODIGO').Value;
      SPED_C170_Entrada.FieldByName('CODPEDIDO').Value       := NF_Entrada_Produto.FieldByName('CODNF_ENTRADA').Value;
      SPED_C170_Entrada.FieldByName('NUM_ITEM').Value        := NF_Entrada_Produto.FieldByName('CODIGO').Value;
      SPED_C170_Entrada.FieldByName('COD_ITEM').Value        := NF_Entrada_Produto.FieldByName('CODPRODUTO').Value;
      SPED_C170_Entrada.FieldByName('DESCR_COMPL').Value     := NF_Entrada_Produto.FieldByName('DESCRICAO').Value;
      SPED_C170_Entrada.FieldByName('QTD').Value             := NF_Entrada_Produto.FieldByName('QUANT').Value;
      SPED_C170_Entrada.FieldByName('UNID').Value            := NF_Entrada_Produto.FieldByName('UNIDADE').Value;
      SPED_C170_Entrada.FieldByName('VL_ITEM').Value         := NF_Entrada_Produto.FieldByName('VALOR').Value;
      SPED_C170_Entrada.FieldByName('VL_DESC').Value         := NF_Entrada_Produto.FieldByName('VDESC').Value;
      SPED_C170_Entrada.FieldByName('IND_MOV').Value         := 0;//0 - SIM;  1 - NÂO;
      SPED_C170_Entrada.FieldByName('CST_ICMS').Value        := NF_Entrada_Produto.FieldByName('CODNF_CST').Value;
      SPED_C170_Entrada.FieldByName('CFOP').Value            := NF_Entrada_Produto.FieldByName('CODNF_CFOP').Value;
      SPED_C170_Entrada.FieldByName('COD_NAT').Value         := NF_Entrada_Produto.FieldByName('NF_CODNATUREZA_OPERACAO').Value;
      SPED_C170_Entrada.FieldByName('VL_BC_ICMS').Value      := NF_Entrada_Produto.FieldByName('NF_VBC').Value;
      SPED_C170_Entrada.FieldByName('ALIQ_ICMS').Value       := NF_Entrada_Produto.FieldByName('CODIGO').Value;
      SPED_C170_Entrada.FieldByName('VL_ICMS').Value         := NF_Entrada_Produto.FieldByName('NF_VICMS').Value;
      SPED_C170_Entrada.FieldByName('VL_BC_ICMS_ST').Value   := NF_Entrada_Produto.FieldByName('NF_VBCST').Value;
      SPED_C170_Entrada.FieldByName('ALIQ_ST').Value         := NF_Entrada_Produto.FieldByName('NF_PICMSST').Value;
      SPED_C170_Entrada.FieldByName('VL_ICMS_ST').Value      := NF_Entrada_Produto.FieldByName('NF_VICMSST').Value;
    //  SPED_C100.FieldByName('IND_APUR').Value        := NF_Entrada_Produto.FieldByName('CODIGO').Value; //INDICADOR DE APURACAO DO IPI 0 - Mensal; 1 - Decendial;
//      SPED_C170_Entrada.FieldByName('CST_IPI').Value         := NF_Entrada_Produto.FieldByName('NF_IPI_CST').Value;
//      SPED_C100.FieldByName('COD_ENQ').Value         := NF_Entrada_Produto.FieldByName('CODIGO').Value; //CODIGO DO ENQUADRAMENTO DO IPI - Segundo Manual não é para preencher
      SPED_C170_Entrada.FieldByName('VL_BC_IPI').Value       := NF_Entrada_Produto.FieldByName('NF_IPI_VBC').Value;
      SPED_C170_Entrada.FieldByName('ALIQ_IPI').Value        := NF_Entrada_Produto.FieldByName('NF_IPI_PIPI').Value;
      SPED_C170_Entrada.FieldByName('VL_IPI').Value          := NF_Entrada_Produto.FieldByName('NF_IPI_VIPI').Value;
      SPED_C170_Entrada.FieldByName('CST_PIS').Value         := NF_Entrada_Produto.FieldByName('NF_PIS_CST').Value;
      SPED_C170_Entrada.FieldByName('VL_BC_PIS').Value       := NF_Entrada_Produto.FieldByName('NF_PIS_VBC').Value;
      SPED_C170_Entrada.FieldByName('ALIQ_PIS').Value        := NF_Entrada_Produto.FieldByName('NF_PIS_VALIQPROD').Value;
      SPED_C170_Entrada.FieldByName('QUANT_BC_PIS').Value    := NF_Entrada_Produto.FieldByName('NF_PISST_QBCPROD').Value;
      SPED_C170_Entrada.FieldByName('VL_PIS').Value          := NF_Entrada_Produto.FieldByName('NF_PIS_VPIS').Value;
      SPED_C170_Entrada.FieldByName('CST_COFINS').Value      := NF_Entrada_Produto.FieldByName('NF_COFINS_CST').Value;
      SPED_C170_Entrada.FieldByName('VL_BC_COFINS').Value    := NF_Entrada_Produto.FieldByName('NF_COFINS_VBC').Value;
      SPED_C170_Entrada.FieldByName('QUANT_BC_COFINS').Value := NF_Entrada_Produto.FieldByName('NF_COFINS_VBCPROD').Value;
      SPED_C170_Entrada.FieldByName('ALIQ_COFINS').Value     := NF_Entrada_Produto.FieldByName('NF_COFINS_PCOFINS').Value;
      SPED_C170_Entrada.FieldByName('VL_COFINS').Value       := NF_Entrada_Produto.FieldByName('NF_COFINS_VCOFINS').Value;
    //  SPED_C100.FieldByName('COD_CTA').Value         := NFEntrada_Produto.FieldByName('CODIGO').Value;  //Codigo da conta analitica contabil debitada/creditada
    //  SPED_C100.FieldByName('VL_ABAT_NT').Value      := NFEntrada_Produto.FieldByName('CODIGO').Value;  //Valor do abatimento nao tributado e nao comercial
      SPED_C170_Entrada.Post;
      NF_Entrada_Produto.Next;
    end;
    {$ENDREGION}

    {$REGION 'Imposto Analitico'}
    SPED_C190_Entrada.Insert;
    SPED_C190_Entrada.FieldByName('CODSPED').Value           := Cadastro.FieldByName('CODIGO').Value;
    SPED_C190_Entrada.FieldByName('CODPEDIDO').Value         := NF_Entrada.FieldByName('CODIGO').Value;
    SPED_C190_Entrada.FieldByName('CST_ICMS').Value          := NF_Entrada_Produto.FieldByName('CODNF_CST').Value;
    SPED_C190_Entrada.FieldByName('ALIQ_ICMS').Value         := NF_Entrada_Produto.FieldByName('NF_PICMS').Value;
    SPED_C190_Entrada.FieldByName('VL_OPR').Value            := NF_Entrada.FieldByName('TOTAL').Value;
    SPED_C190_Entrada.FieldByName('VL_BC_ICMS').Value        := NF_Entrada.FieldByName('NF_VBC').Value;
    SPED_C190_Entrada.FieldByName('VL_ICMS').Value           := NF_Entrada.FieldByName('NF_VICMS').Value;
    SPED_C190_Entrada.FieldByName('VL_BC_ICMS_ST').Value     := NF_Entrada.FieldByName('NF_VBCST').Value;
    SPED_C190_Entrada.FieldByName('VL_ICMS_ST').Value        := NF_Entrada.FieldByName('NF_VICMSST').Value;
//      SPED_C190.FieldByName('VL_RED_BC').Value        := NF_Entrada.FieldByName('NF_VBCSTRET').Value; ???
    SPED_C190_Entrada.FieldByName('VL_IPI').Value            := NF_Entrada.FieldByName('NF_IPI_VIPI').Value;
//      SPED_C190.FieldByName('COD_OBS').Value          := NF_Entrada.FieldByName('CODIGO').Value; // Código   da   observação   do   lançamento   fiscal;  não obrigatorio
    SPED_C190_Entrada.Post;
    {$ENDREGION}

    SPED_C100_Entrada.Post;
    NF_Entrada.Next;
  end;




{$ENDREGION}
end;

end.

