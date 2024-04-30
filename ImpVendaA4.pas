unit ImpVendaA4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, QuickRpt, DB, QRPDFFilt, QRExport,
  ImpVenda, frxClass, frxIBXComponents, frxDBSet, UCBase, QRCtrls, ExtCtrls;

type
  TImpriVendaA4 = class(TImpriVenda)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriVendaA4: TImpriVendaA4;

implementation

{$R *.dfm}


end.
