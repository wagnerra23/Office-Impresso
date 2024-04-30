inherited FrmEstoque: TFrmEstoque
  Caption = 'Estoque'
  ClientHeight = 688
  ClientWidth = 1318
  OnCreate = FormCreate
  ExplicitWidth = 1334
  ExplicitHeight = 727
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    Width = 1318
    Height = 688
    OptionsView.GroupBlockMaxColumnCount = 1
    OptionsView.GroupMaxRowCount = 2
    Title.Text = 'Estoque'
    ExplicitWidth = 1318
    ExplicitHeight = 688
    inherited tiBasePadrao: TdxTileControlItem
      Tag = 14
      RowCount = 2
      Size = tcisExtraLarge
      Text1.Value = 'Estoque'
      Text2.Align = oaBottomCenter
    end
    object tiRequisicao: TdxTileControlItem
      Tag = 15
      GroupIndex = 0
      IndexInGroup = 1
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Requisi'#231#227'o'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiProduto_Movimento: TdxTileControlItem
      Tag = 10
      GroupIndex = 0
      IndexInGroup = 2
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = [fsBold]
      Text1.Value = 'Hist'#243'rico de movimentos'
      Text2.Align = oaBottomCenter
      Text2.AssignedValues = []
      Text2.Value = 'Movimentado pelo cadastro do produto'
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
  end
end
