unit wrMenu;

interface

Uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxCustomTileControl, cxClasses, dxTileControl, Vcl.ExtCtrls, dxRibbonSkins, System.JSON;

  procedure Menu_AplicarCoresTile(ATile:TdxTileControl; ACor:TdxRibbonColorSchemeAccent);
  procedure MenuCria_Modulo(ATile:TdxTileControl; ATag, AGroupIndex, AIndexInGroup: Integer; ATitulo :String);
  procedure MenuCria_Titulo(ATile:TdxTileControl; ATag, AGroupIndex, AIndexInGroup: Integer; ATitulo :String);
  procedure MenuCria_Sub_Titulo(ATile:TdxTileControl; ATag, AGroupIndex, AIndexInGroup: Integer; ATitulo :String; AValue:Variant);
  procedure MenuCria_Configuracao_Verde(ATile:TdxTileControl; ATag, AGroupIndex, AIndexInGroup: Integer;  ATitulo :String);
  procedure MenuCria_Configuracao_Cinza(ATile:TdxTileControl; ATag, AGroupIndex, AIndexInGroup: Integer;  ATitulo :String);

  procedure MenuCria_AvisoVermelho(ATile:TdxTileControl; ATitulo :String; AValue:Variant);
  procedure MenuCria_Separador(ATile:TdxTileControl; AGroupIndex, AIndexInGroup: Integer);
  procedure MenuCria_KPI_Vermelho(ATile:TdxTileControl; ATitulo :String; AValue:Variant);
  procedure MenuCria_Titulo_Branco(ATile:TdxTileControl; ATitulo :String; AValue:Variant);
  Function Mouse_Na_Imagem(AItem:TdxTileControlItem;X,Y:Integer):Boolean;
  Function Mouse_No_Text1(AItem:TdxTileControlItem;X,Y:Integer):Boolean;
  Function Mouse_No_Text2(AItem:TdxTileControlItem;X,Y:Integer):Boolean;
  Function Mouse_No_Text3(AItem:TdxTileControlItem;X,Y:Integer):Boolean;
  Function Mouse_No_Text4(AItem:TdxTileControlItem;X,Y:Integer):Boolean;
  procedure MenuCria_Nao_Lido_Vermelho(ATile:TdxTileControl; ATitulo :String; AValue:Variant);
  procedure MenuCria_Lido_Verde(ATile:TdxTileControl; ATitulo :String; AValue:Variant);

  procedure ExecutaMenuCria(ATipo: string; ATileControl: TdxTileControl; ATitulo :String; AGroupIndex, AIndexInGroup, ATag_Modulo: Integer; AValue:Variant);

implementation

uses wrFuncoes;

procedure ExecutaMenuCria(ATipo: string; ATileControl: TdxTileControl; ATitulo :String; AGroupIndex, AIndexInGroup, ATag_Modulo: Integer; AValue:Variant);
begin
  if ATipo = 'modulo' then  MenuCria_Modulo(ATileControl, AGroupIndex, AIndexInGroup, ATag_Modulo, ATitulo);
  if ATipo = 'titulo' then  MenuCria_Titulo(ATileControl, ATag_Modulo, AGroupIndex, AIndexInGroup, ATitulo);
  if ATipo = 'titulo-branco' then  MenuCria_Titulo_Branco(ATileControl, ATitulo, AValue);
  if ATipo = 'subtitulo' then  MenuCria_Sub_Titulo(ATileControl, ATag_Modulo, AGroupIndex, AIndexInGroup, ATitulo, AValue);
  if ATipo = 'separador' then  MenuCria_Separador(ATileControl, AGroupIndex, AIndexInGroup);
  if ATipo = 'aviso-vermelho' then  MenuCria_AvisoVermelho(ATileControl, ATitulo, AValue);
  if ATipo = 'kpi-vermelho' then  MenuCria_KPI_Vermelho(ATileControl, ATitulo, AValue);
  if ATipo = 'config-verde' then  MenuCria_Configuracao_Verde(ATileControl, ATag_Modulo, AGroupIndex, AIndexInGroup, ATitulo);
  if ATipo = 'config-cinza' then  MenuCria_Configuracao_Cinza(ATileControl, ATag_Modulo, AGroupIndex, AIndexInGroup, ATitulo);
  if ATipo = 'lido-verde' then  MenuCria_Lido_Verde(ATileControl, ATitulo, AValue);
  if ATipo = 'nao-lido-vermelho' then  MenuCria_Nao_Lido_Vermelho(ATileControl, ATitulo, AValue);
end;

procedure Menu_AplicarCoresTile(ATile:TdxTileControl; ACor:TdxRibbonColorSchemeAccent);
Var
  ACorMenu, ACorMenuDivisoria :TColor;
  I : Integer;
begin
  if ACor =rcsaPurple then               //- rcsaYellow, rcsaBlue, rcsaGreen, rcsaOrange, rcsaPurple
  begin                                                          //- $3EA5EA, $9A572B, $467321, $2647D2, $7B3980
    ACorMenu          := $7B3980;
    ACorMenuDivisoria := $8C4293;
  end
  else if ACor=rcsaGreen then
  begin                                                          //- $3EA5EA, $9A572B, $467321, $2647D2, $7B3980
    ACorMenu          := $467321;
    ACorMenuDivisoria := $617221;
  end
  else if ACor=rcsaBlue then
  begin                                                          //- $3EA5EA, $9A572B, $467321, $2647D2, $7B3980
    ACorMenu          := $9A572B;
    ACorMenuDivisoria := $2589d1;
  end
  else if ACor=rcsaOrange then
  begin                                                          //- $3EA5EA, $9A572B, $467321, $2647D2, $7B3980
    ACorMenu          := $2647D2;
    ACorMenuDivisoria := $2a6c99;
  end
  else if ACor=rcsaYellow then
  begin                                                          //- $3EA5EA, $9A572B, $467321, $2647D2, $7B3980
    ACorMenu          := $3EA5EA;
    ACorMenuDivisoria := $d6ea3c;
  end else  //rcsaPurple
  begin
    ACorMenu          := $467321;
    ACorMenuDivisoria := $617221;
  end;
//  if tcmPrincipal.Style.GradientBeginColor <> ACorMenu then
//  begin
  for I := 0 to ATile.Items.Count -1 do
  begin
    ATile.Items[i].Style.GradientBeginColor:= ACorMenu;
    ATile.Items[i].Style.GradientEndColor  := ACorMenu;
    ATile.Items[i].Style.BorderColor       := ACorMenuDivisoria;
  end;
//  end;
end;

procedure MenuCria_Modulo(ATile:TdxTileControl; ATag, AGroupIndex, AIndexInGroup: Integer; ATitulo :String);
begin
  with ATile.Items.Add do
  begin
    Glyph.Align := oaMiddleLeft;
    Glyph.ImageIndex := -1;
    Glyph.IndentHorz := 210;
    GroupIndex := AGroupIndex;
    IndexInGroup := AIndexInGroup;
    Tag := ATag;
    Size := tcisLarge ;
    Style.BorderColor := 5187110;
    Style.GradientBeginColor := 5187110;
    Style.GradientEndColor := 5187110 ;
    Text1.Align := oaMiddleLeft ;
    Text1.AssignedValues := [avTextColor, avFont];
    Text1.Font.Height := -11;
    Text1.Font.Name := 'Segoe UI Semibold';
    Text1.Font.Style := [fsBold];
    Text1.IndentVert := 0;
    Text1.Value := ATitulo;
    Text1.TextColor := 20639;
  end;
end;

procedure MenuCria_Titulo(ATile:TdxTileControl; ATag, AGroupIndex, AIndexInGroup: Integer; ATitulo :String);
begin
  with ATile.Items.Add do
  begin
    Glyph.Align := oaMiddleLeft;
    Glyph.ImageIndex := -1;
    Glyph.IndentHorz := 170;
    GroupIndex := AGroupIndex;
    IndexInGroup := AIndexInGroup;
    Tag := ATag;
    Size := tcisLarge ;
    Style.BorderColor := 5187110;
    Style.GradientBeginColor := 5187110;
    Style.GradientEndColor := 5187110 ;
    Text1.Align := oaMiddleCenter ;
    Text1.AssignedValues := [avTextColor, avFont];
    Text1.Font.Height := -11;
    Text1.Font.Name := 'Segoe UI Semibold';
    Text1.Font.Style := [fsBold];
    Text1.IndentVert := 0;
    Text1.Value := ATitulo;
    Text1.TextColor := 20639;
  end;
end;

procedure MenuCria_Configuracao_Verde(ATile:TdxTileControl; ATag, AGroupIndex, AIndexInGroup: Integer;  ATitulo :String);
begin
  with ATile.Items.Add do
  begin
    Glyph.Align := oaMiddleLeft;
    Glyph.ImageIndex := 4;
    Glyph.IndentHorz := 170;
    GroupIndex := AGroupIndex;
    IndexInGroup := AIndexInGroup;
    Tag := ATag;
    Size := tcisLarge ;
    Style.BorderColor := $0080397B;
    Style.GradientBeginColor := $0080397B;
    Style.GradientEndColor := $00A84CA2 ;
    Text1.Align := oaMiddleLeft ;
    Text1.AssignedValues := [avTextColor, avFont];
    Text1.Font.Height := -19;
    Text1.Font.Name := 'Segoe UI Semibold';
    Text1.Font.Style := [fsBold];
    Text1.IndentVert := 0;
    Text1.Value := ATitulo;
    Text1.TextColor := clWhite;
  end;
end;

procedure MenuCria_Configuracao_Cinza(ATile:TdxTileControl; ATag, AGroupIndex, AIndexInGroup: Integer;  ATitulo :String);
begin
  with ATile.Items.Add do
  begin
    Glyph.Align := oaMiddleLeft;
    Glyph.ImageIndex := 4;
    Glyph.IndentHorz := 170;
    GroupIndex := AGroupIndex;
    IndexInGroup := AIndexInGroup;
    Tag := ATag;
    Size := tcisLarge ;
    Style.BorderColor := $0080397B;
    Style.GradientBeginColor := $0080397B;
    Style.GradientEndColor := $00A84CA2;
    Text1.Align := oaMiddleLeft;
    Text1.AssignedValues := [avTextColor, avFont];
    Text1.Font.Height := -14;
    Text1.Font.Name := 'Segoe UI Semibold';
    Text1.Font.Style := [fsBold];
    Text1.IndentVert := 0;
    Text1.Value := ATitulo;
    Text1.TextColor := clSilver;
  end;
end;


procedure MenuCria_Sub_Titulo(ATile:TdxTileControl; ATag, AGroupIndex, AIndexInGroup: Integer; ATitulo :String; AValue:Variant);
begin
  with ATile.Items.Add do
  begin
    Glyph.Align := oaMiddleLeft;
    Glyph.ImageIndex := -1;
    Glyph.IndentHorz := 170;
    GroupIndex := AGroupIndex;
    IndexInGroup := AIndexInGroup;
    Tag := ATag;
    Size := tcisLarge ;
    Style.BorderColor := 5187110;
    Style.GradientBeginColor := 5187110;
    Style.GradientEndColor := 5187110 ;
    Text1.Align := oaMiddleLeft ;
    Text1.AssignedValues := [avTextColor, avFont];
    Text1.Font.Height := -11;
    Text1.Font.Name := 'Segoe UI Semibold';
    Text1.Font.Style := [fsBold];
    Text1.IndentVert := 0;
    Text1.Value := ATitulo;
    Text1.TextColor := 20639;
    Text2.Align := oaMiddleRight;
    Text2.AssignedValues := [avTextColor];
    Text2.IndentVert := 0;
    Text2.IndentHorz := 30;
    Text2.Value := VarToStr(AValue);
    Text2.TextColor := clGreen;
  end;
end;

procedure MenuCria_AvisoVermelho(ATile:TdxTileControl; ATitulo :String; AValue:Variant);
begin
  with ATile.Items.Add do
  begin
    Glyph.Align := oaMiddleLeft;
    Glyph.AlignWithText := itaLeft;
    Glyph.ImageIndex := 4;
    Glyph.IndentHorz := 170 ;
    GroupIndex := 1;
    IndexInGroup := 1;
    Size := tcisLarge ;
    Style.BorderColor := 5187110;
    Style.GradientBeginColor := 6974201;
    Style.GradientEndColor := 6974201 ;
    Text1.Align := oaMiddleLeft;
    Text1.AssignedValues := [avTextColor, avFont];
    Text1.Font.Height := -11;
    Text1.Font.Name := 'Segoe UI Semibold';
    Text1.Font.Style := [fsBold];
    Text1.IndentVert := 0;
    Text1.Value := ATitulo;
    Text1.TextColor := clWhite;
    Text2.Align := oaMiddleRight;
    Text2.AssignedValues := [avTextColor];
    Text2.IndentVert := 0;
    Text2.Value := AValue;
    Text2.TextColor := clWhite;
  end;
end;

procedure MenuCria_Separador(ATile:TdxTileControl; AGroupIndex, AIndexInGroup: Integer);
begin
  with ATile.Items.Add do
  begin
    Glyph.Align := oaMiddleLeft;
    Glyph.ImageIndex := 6;
    Glyph.IndentHorz := 0 ;
    Glyph.Mode:= ifmStretch;
    GroupIndex := AGroupIndex;
    IndexInGroup := AIndexInGroup;
    Size := tcisLarge ;
    Style.BorderColor := 5187110;
    Style.GradientBeginColor := 5187110;
    Style.GradientEndColor := 5187110 ;
  end;
end;

procedure MenuCria_KPI_Vermelho(ATile:TdxTileControl; ATitulo :String; AValue:Variant);
begin
  with ATile.Items.Add do
  begin
    Glyph.Align := oaMiddleLeft;
    Glyph.ImageIndex := 4;
    Glyph.IndentHorz := 170 ;
    GroupIndex := 1;
    IndexInGroup := 12;
    Size := tcisLarge ;
    Style.BorderColor := 5187110;
    Style.GradientBeginColor := 5187110;
    Style.GradientEndColor := 5187110 ;
    Text1.Align := oaMiddleLeft;
    Text1.AssignedValues := [avTextColor, avFont];
    Text1.Font.Height := -11;
    Text1.Font.Name := 'Segoe UI Semibold';
    Text1.Font.Style := [fsBold];
    Text1.IndentVert := 0;
    Text1.Value := ATitulo;
    Text1.TextColor := 17028;
    Text2.Align := oaMiddleRight;
    Text2.AssignedValues := [avTextColor];
    Text2.IndentVert := 0;
    Text2.Value := AValue;
    Text2.TextColor := clRed;
  end;
end;

procedure MenuCria_Lido_Verde(ATile:TdxTileControl; ATitulo :String; AValue:Variant);
begin
  with ATile.Items.Add do
  begin
    Glyph.Align := oaMiddleLeft;
    Glyph.ImageIndex := 4;
    Glyph.IndentHorz := 170 ;
    GroupIndex := 1;
    IndexInGroup := 12;
    Size := tcisLarge ;
    Style.BorderColor := 5187110;
    Style.GradientBeginColor := 5187110;
    Style.GradientEndColor := 5187110 ;
    Text1.Align := oaMiddleLeft;
    Text1.AssignedValues := [avTextColor, avFont];
    Text1.Font.Height := -11;
    Text1.Font.Name := 'Segoe UI Semibold';
    Text1.Font.Style := [fsBold];
    Text1.IndentVert := 0;
    Text1.Value := ATitulo;
    Text1.TextColor := clWhite;
    Text2.Align := oaMiddleRight;
    Text2.AssignedValues := [avTextColor];
    Text2.IndentVert := 0;
    Text2.Value := AValue;
    Text2.TextColor := clGreen;
  end;
end;

procedure MenuCria_Nao_Lido_Vermelho(ATile:TdxTileControl; ATitulo :String; AValue:Variant);
begin
  with ATile.Items.Add do
  begin
    Glyph.Align := oaMiddleLeft;
    Glyph.ImageIndex := 4;
    Glyph.IndentHorz := 170 ;
    GroupIndex := 1;
    IndexInGroup := 12;
    Size := tcisLarge ;
    Style.BorderColor := 5187110;
    Style.GradientBeginColor := 5187110;
    Style.GradientEndColor := 5187110 ;
    Text1.Align := oaMiddleLeft;
    Text1.AssignedValues := [avTextColor, avFont];
    Text1.Font.Height := -11;
    Text1.Font.Name := 'Segoe UI Semibold';
    Text1.Font.Style := [fsBold];
    Text1.IndentVert := 0;
    Text1.Value := ATitulo;
    Text1.TextColor := clWhite;
    Text2.Align := oaMiddleRight;
    Text2.AssignedValues := [avTextColor];
    Text2.IndentVert := 0;
    Text2.Value := AValue;
    Text2.TextColor := clRed;
  end;
end;

procedure MenuCria_Titulo_Branco(ATile:TdxTileControl; ATitulo :String; AValue:Variant);
begin
  with ATile.Items.Add do
  begin
    Glyph.Align := oaMiddleLeft;
    Glyph.ImageIndex := 4;
    Glyph.IndentHorz := 170 ;
    GroupIndex := 1;
    IndexInGroup := 12;
    Size := tcisLarge ;
    Style.BorderColor := 5187110;
    Style.GradientBeginColor := 5187110;
    Style.GradientEndColor := 5187110 ;
    Text1.Align := oaMiddleLeft ;
    Text1.AssignedValues := [avTextColor, avFont];
    Text1.Font.Height := -11;
    Text1.Font.Name := 'Segoe UI Semibold';
    Text1.Font.Style := [fsBold];
    Text1.IndentVert := 0;
    Text1.Value := ATitulo;
    Text1.TextColor := 13092807;
    Text2.Align := oaMiddleRight;
    Text2.AssignedValues := [avTextColor];
    Text2.IndentVert := 0;
    Text2.Value := AValue;
    Text2.TextColor := clRed;
  end;

//        Glyph.Align = oaMiddleLeft
//        Glyph.AlignWithText = itaRight
//        Glyph.Image.SourceDPI = 96
//        Glyph.Image.Data = {
//          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
//          61000000097048597300000EC100000EC101B8916BED00000010744558745469
//          746C65004D61696C3B506F73743BAC0E6BE30000005149444154785EDDCF410E
//          00100C4451177429A77288DEA9960D53432312B1985DFF0B49558FF610904BD5
//          C87AC010D98865F60259237603C078C062F70BFEA11F13000388398008C40C60
//          BB0DC4F711D00012EECC832E4611960000000049454E44AE426082}
//        Glyph.ImageIndex = 22
//        GroupIndex = 0
//        IndexInGroup = 8
//        Size = tcisLarge
//        Style.BorderColor = 5187110
//        Style.GradientBeginColor = 5187110
//        Style.GradientEndColor = 5187110
//        Text1.Align = oaTopLeft
//        Text1.AssignedValues = [avTextColor, avFont]
//        Text1.Font.Charset = DEFAULT_CHARSET
//        Text1.Font.Color = clDefault
//        Text1.Font.Height = -11
//        Text1.Font.Name = 'Segoe UI'
//        Text1.Font.Style = []
//        Text1.IndentVert = 0
//        Text1.Value = 'Produtos abaixo do m'#237'nimo'
//        Text1.TextColor = 13092807
//        Text2.AssignedValues = []
//        Text3.AssignedValues = []
//        Text4.Align = oaMiddleRight
//        Text4.AssignedValues = [avTextColor, avFont]
//        Text4.Font.Charset = ANSI_CHARSET
//        Text4.Font.Color = clDefault
//        Text4.Font.Height = -11
//        Text4.Font.Name = 'Segoe UI Semibold'
//        Text4.Font.Style = [fsBold]
//        Text4.IndentVert = 0
//        Text4.Value = '23'
//        Text4.TextColor = clGreen
end;

Function Mouse_Na_Imagem(AItem:TdxTileControlItem;X,Y:Integer):Boolean;
begin
  Result:= False;
  if (AItem.ViewInfo.ViewData.ImageBounds.Left < (X-AItem.ViewInfo.Bounds.Left))and(AItem.ViewInfo.ViewData.ImageBounds.Right > (X-AItem.ViewInfo.Bounds.Left)) and
     (AItem.ViewInfo.ViewData.ImageBounds.Top < (Y-AItem.ViewInfo.Bounds.Top))and(AItem.ViewInfo.ViewData.ImageBounds.Bottom > (Y-AItem.ViewInfo.Bounds.Top))
  then
    Result:= True;
end;

function Mouse_No_Text1(AItem: TdxTileControlItem; X, Y: Integer): Boolean;
begin
  Result:= False;
  if (AItem.ViewInfo.ViewData.TextBounds[0].Left < (X-AItem.ViewInfo.Bounds.Left))and(AItem.ViewInfo.ViewData.TextBounds[0].Right > (X-AItem.ViewInfo.Bounds.Left)) and
     (AItem.ViewInfo.ViewData.TextBounds[0].Top < (Y-AItem.ViewInfo.Bounds.Top))and(AItem.ViewInfo.ViewData.TextBounds[0].Bottom > (Y-AItem.ViewInfo.Bounds.Top))
  then
    Result:= True;
//  if (AItem.ViewInfo.ViewData.TextBounds[0].Left < X)and(AItem.ViewInfo.ViewData.TextBounds[0].Right > X) then
end;

function Mouse_No_Text2(AItem: TdxTileControlItem; X, Y: Integer): Boolean;
begin
  Result:= False;
//  if (AItem.ViewInfo.ViewData.TextBounds[1].Left < X)and(AItem.ViewInfo.ViewData.TextBounds[1].Right > X) then
  if (AItem.ViewInfo.ViewData.TextBounds[1].Left < (X-AItem.ViewInfo.Bounds.Left))and(AItem.ViewInfo.ViewData.TextBounds[1].Right > (X-AItem.ViewInfo.Bounds.Left)) and
     (AItem.ViewInfo.ViewData.TextBounds[1].Top < (Y-AItem.ViewInfo.Bounds.Top))and(AItem.ViewInfo.ViewData.TextBounds[1].Bottom > (Y-AItem.ViewInfo.Bounds.Top))
  then
    Result:= True;
end;

function Mouse_No_Text3(AItem: TdxTileControlItem; X, Y: Integer): Boolean;
begin
  Result:= False;
//  if (AItem.ViewInfo.ViewData.TextBounds[2].Left < X)and(AItem.ViewInfo.ViewData.TextBounds[2].Right > X) then
  if (AItem.ViewInfo.ViewData.TextBounds[2].Left < (X-AItem.ViewInfo.Bounds.Left))and(AItem.ViewInfo.ViewData.TextBounds[2].Right > (X-AItem.ViewInfo.Bounds.Left)) and
     (AItem.ViewInfo.ViewData.TextBounds[2].Top < (Y-AItem.ViewInfo.Bounds.Top))and(AItem.ViewInfo.ViewData.TextBounds[2].Bottom > (Y-AItem.ViewInfo.Bounds.Top))
  then
    Result:= True;
end;

function Mouse_No_Text4(AItem: TdxTileControlItem; X, Y: Integer): Boolean;
begin
  Result:= False;
//  if (AItem.ViewInfo.ViewData.TextBounds[3].Left < X)and(AItem.ViewInfo.ViewData.TextBounds[3].Right > X) then
  if (AItem.ViewInfo.ViewData.TextBounds[3].Left < (X-AItem.ViewInfo.Bounds.Left))and(AItem.ViewInfo.ViewData.TextBounds[3].Right > (X-AItem.ViewInfo.Bounds.Left)) and
     (AItem.ViewInfo.ViewData.TextBounds[3].Top < (Y-AItem.ViewInfo.Bounds.Top))and(AItem.ViewInfo.ViewData.TextBounds[3].Bottom > (Y-AItem.ViewInfo.Bounds.Top))
  then
    Result:= True;
end;

end.
