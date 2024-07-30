unit admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, EDBImage;

type
  Tuser1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EDBImage1: TEDBImage;
    PopupMenu1: TPopupMenu;
    Load1: TMenuItem;
    Extract1: TMenuItem;
    Clear1: TMenuItem;
    procedure Load1Click(Sender: TObject);
    procedure Extract1Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  user1: Tuser1;

implementation
uses myLib_Blob, data_module;

{$R *.dfm}

procedure Tuser1.Load1Click(Sender: TObject);
begin
  Blob_FromFileImage(DataModuleLog.zqry3foto);
end;

procedure Tuser1.Extract1Click(Sender: TObject);
begin
  Blob_ToFileImage(DataModuleLog.zqry3foto);
end;

procedure Tuser1.Clear1Click(Sender: TObject);
begin
  Blob_Clear(DataModuleLog.zqry3foto,'Apakah foto ini akan dihapus ?');
end;

end.
