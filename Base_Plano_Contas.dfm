inherited BasePlanoContas: TBasePlanoContas
  Caption = 'Plano de Contas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    Title.Text = 'Plano de contas'
    inherited tiBasePadrao: TdxTileControlItem
      Tag = 166
      Text1.Value = 'Plano de contas'
      OnActiveFrameChanged = nil
    end
  end
end
