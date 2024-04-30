unit Frame_Painel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, dxGDIPlusClasses;

type
  TPainel_Frame = class(TFrame)
  private
    { Private declarations }
  public
    procedure SelectItem(APhotoID, AAgentID: Integer); virtual;
  end;


implementation

{$R *.dfm}

{ TPainel_Frame }

{ TPainel_Frame }

procedure TPainel_Frame.SelectItem(APhotoID, AAgentID: Integer);
begin
//
end;

end.
