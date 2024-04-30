inherited ConsuNF_CST: TConsuNF_CST
  Caption = 'CST - C'#243'digo da Situa'#231#227'o Tribut'#225'ria'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'CODIGO;TIPO'
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Width = 85
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 394
        end
        object GridConsultaDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'TIPO'
          Width = 86
        end
        object GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'OBSERVACAO'
          Width = 440
        end
        object GridConsultaDBTableView1TEM_TRIBUTO: TcxGridDBColumn
          Caption = 'Tributado'
          DataBinding.FieldName = 'TEM_TRIBUTO'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = ImgListBotoesPesquisa
          Properties.Items = <
            item
              Value = 'N'
            end
            item
              Description = 'Sim'
              ImageIndex = 2
              Value = 'S'
            end>
          Width = 54
        end
        object GridConsultaDBTableView1TEM_BC: TcxGridDBColumn
          Caption = 'Base de C'#225'lculo'
          DataBinding.FieldName = 'TEM_BC'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = ImgListBotoesPesquisa
          Properties.Items = <
            item
              Value = 'N'
            end
            item
              Description = 'Sim'
              ImageIndex = 2
              Value = 'S'
            end>
          Width = 73
        end
        object GridConsultaDBTableView1TEM_CALCULO_ICMS: TcxGridDBColumn
          Caption = 'Calc. ICMS'
          DataBinding.FieldName = 'TEM_CALCULO_ICMS'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = ImgListBotoesPesquisa
          Properties.Items = <
            item
              Value = 'N'
            end
            item
              Description = 'Sim'
              ImageIndex = 2
              Value = 'S'
            end>
        end
        object GridConsultaDBTableView1TEM_ST: TcxGridDBColumn
          Caption = 'Sub. Trib.'
          DataBinding.FieldName = 'TEM_ST'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = ImgListBotoesPesquisa
          Properties.Items = <
            item
              Value = 'N'
            end
            item
              ImageIndex = 2
              Value = 'S'
            end>
        end
        object GridConsultaDBTableView1TEM_REDUCAO: TcxGridDBColumn
          Caption = 'Redu'#231#227'o'
          DataBinding.FieldName = 'TEM_REDUCAO'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = ImgListBotoesPesquisa
          Properties.Items = <
            item
              Value = 'N'
            end
            item
              Description = 'Sim'
              ImageIndex = 2
              Value = 'S'
            end>
        end
        object GridConsultaDBTableView1TEM_BASE: TcxGridDBColumn
          Caption = 'na Base'
          DataBinding.FieldName = 'TEM_BASE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = ImgListBotoesPesquisa
          Properties.Items = <
            item
              Value = 'N'
            end
            item
              Description = 'Sim'
              ImageIndex = 2
              Value = 'S'
            end>
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 37
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Width = 120
        end
      end
    end
    inherited LbFiltosAtivos: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa1: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa2: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa3: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa4: TcxLabel
      AnchorY = 53
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 25
    end
    inherited LbTitulo: TcxLabel
      Caption = 'CST - C'#243'digo da Situa'#231#227'o Tribut'#225'ria'
      ExplicitWidth = 391
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 391
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44351.428304918980000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'SELECT * FROM NF_CST'
      '')
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited cxEditStyleController1: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited dxScreenTipRepository1: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited RespositorioEstilos: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000023232394353535E01A1A1A7000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF353535E000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2323239400000000000000000000
          0000000000000E0E0E3C2121218E313131D03B3B3BF9313131D0303030CD3838
          38ED3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          00001616165C333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000E0E
          0E3C333333D73C3C3CFF2525259F111111470202020A111111472525259F3C3C
          3CFF3C3C3CFF383838ED00000000000000000000000000000000000000002121
          218E3C3C3CFF2525259F02020207000000003C3C3CFF00000000020202072525
          259F3C3C3CFF303030CD00000000000000000000000000000000000000003131
          31D03C3C3CFF1111114700000000000000003C3C3CFF00000000000000001111
          11473C3C3CFF313131D000000000000000000000000000000000000000003B3B
          3BF93C3C3CFF0202020A3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0202
          020A3C3C3CFF3B3B3BF900000000000000000000000000000000000000003131
          31D03C3C3CFF1111114700000000000000003C3C3CFF00000000000000001111
          11473C3C3CFF313131D000000000000000000000000000000000000000002121
          218E3C3C3CFF2525259F02020207000000003C3C3CFF00000000020202072525
          259F3C3C3CFF2121218E00000000000000000000000000000000000000000E0E
          0E3C333333D73C3C3CFF2525259F111111470202020A111111472525259F3C3C
          3CFF333333D70E0E0E3C00000000000000000000000000000000000000000000
          00001616165C333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3333
          33D71616165C0000000000000000000000000000000000000000000000000000
          0000000000000E0E0E3C2121218E313131D03B3B3BF9313131D02121218E0E0E
          0E3C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000023232394353535E01A1A1A7000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF353535E000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2323239400000000000000000000
          0000000000000E0E0E3C2121218E313131D03B3B3BF9313131D0303030CD3838
          38ED3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          00001616165C333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000E0E
          0E3C333333D73C3C3CFF2525259F111111470202020A111111472525259F3C3C
          3CFF3C3C3CFF383838ED00000000000000000000000000000000000000002121
          218E3C3C3CFF2525259F02020207000000000000000000000000020202072525
          259F3C3C3CFF303030CD00000000000000000000000000000000000000003131
          31D03C3C3CFF1111114700000000000000000000000000000000000000001111
          11473C3C3CFF313131D000000000000000000000000000000000000000003B3B
          3BF93C3C3CFF0202020A3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0202
          020A3C3C3CFF3B3B3BF900000000000000000000000000000000000000003131
          31D03C3C3CFF1111114700000000000000000000000000000000000000001111
          11473C3C3CFF313131D000000000000000000000000000000000000000002121
          218E3C3C3CFF2525259F02020207000000000000000000000000020202072525
          259F3C3C3CFF2121218E00000000000000000000000000000000000000000E0E
          0E3C333333D73C3C3CFF2525259F111111470202020A111111472525259F3C3C
          3CFF333333D70E0E0E3C00000000000000000000000000000000000000000000
          00001616165C333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3333
          33D71616165C0000000000000000000000000000000000000000000000000000
          0000000000000E0E0E3C2121218E313131D03B3B3BF9313131D02121218E0E0E
          0E3C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000000F744558745469746C6500436865636B426F783B9B171E
          3B0000024749444154785E8D93CF4B545114C73FE7CD9BE764560445454591F6
          63D47E6960BF1C5D48D8A2454114812DDAD4AAFFA15DCB5A44D4AAA0B05611B4
          283221A3C4323550432A24C4C97E204E924D33EFDD9373EFA30171D1810BE75C
          CEF7C3F79E7BAF0002240097FF7F1820F281C4B5CEFE67092F9141416384CD55
          1D535C8D2A26CE4D54ECB9D8D1D4E6039EE065CE9DD845DCC9C250C043898C01
          71466FDC1FCA009E0F486414C035006A9DE83F96A0E40B050AF32B190404C900
          E3346201AE501C27B6AE20AA88C0F7E91C371F8EA05E92D6BA2A1AEA371345A6
          0C2815C6360B188331C6E68A323935C3F507C3B4B5A449ADACE26E671FE9EAB5
          846108205E0C009CB8BB7F9CCBB7FA78DAFB81B14F592B3E767437F9600977EE
          BDA6355D491054101F1B1FB07654959E81CFBCFD38C381A66A0686B33CEA9DE4
          F4F1BD647F43EFCB51B6AE8C3872B8968A8A547906CE81DA8D1555015FA77F91
          23A039B39DF6C0E7FDD41C23A313E88F2F749C6F2648A51084794DF908A131A8
          08B55B5673F2D07A9E3C1E64686296BEF11CD96F39C6DE8C70E154039595CB09
          2330501E2240142A1A29A1F1D893DEC0994281DB5DEF6868D9C9ABAE41CEB6D7
          B06ECD2A42671B83730CE0AED14E1E3B1823C2BEFA4D148A45AE743E67FF8E65
          1C6CACC1888FD5286074C135960018544B4BF048CC8BB6D158B7918424F04A53
          8F4051E227EE6031000B50F044E2572816E4074B01271011448801609C03F581
          E26CEE67CFA5ABDD195501EB82381435A0314401412DE04F7EEE05100AE00129
          20B9C87716160F050A40FE2F0C443CDF350F545E0000000049454E44AE426082}
      end>
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmNF_CST'
    FormClassConsulta = 'TConsuNF_CST'
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    CampoPK1 = ''
    CampoPK2 = 'CODIGO'
    CampoPK3 = 'TIPO'
    Tabela = 'NF_CST'
    Modulo = 'NOTA_FISCAL'
  end
end