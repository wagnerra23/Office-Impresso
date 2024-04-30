inherited FrmProdutoSubUnidade: TFrmProdutoSubUnidade
  Align = alRight
  Caption = 'FrmProdutoSubUnidade'
  ClientHeight = 352
  ClientWidth = 642
  Color = clBlack
  FormStyle = fsNormal
  Visible = False
  ExplicitWidth = 658
  ExplicitHeight = 391
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    Width = 642
    Height = 352
    OptionsDetailAnimate.AnimationMode = damScrollFade
    ExplicitWidth = 642
    ExplicitHeight = 352
    inherited tiBasePadrao: TdxTileControlItem
      Tag = 24
      Text1.Value = 'SubUnidade'
    end
  end
end
