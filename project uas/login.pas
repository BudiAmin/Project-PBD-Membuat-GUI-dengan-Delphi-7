unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ed_username: TEdit;
    ed_password: TEdit;
    btn_login: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure btn_loginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;
  i, z : Integer;
  b, c, a : string;

implementation

uses data_module, admin, user;

{$R *.dfm}

procedure TFormLogin.btn_loginClick(Sender: TObject);
begin
  DataModuleLog.zqry1.SQL.Text := 'select * from auth_login';
  DataModuleLog.zqry1.Active := True;

   for i := 1 to DataModuleLog.zqry1.RecordCount do begin
     a := DataModuleLog.zqry1['role'];
     b := DataModuleLog.zqry1['username'];
     c := DataModuleLog.zqry1['password'];
     if ((ed_username.Text = b) and (ed_password.Text = c) and (a = 'pengunjung')) then begin
       z := 1
     end
     else if ((ed_username.Text = b) and (ed_password.Text = c) and (a = 'admin')) then begin
       z := 2;
     end
     else
     DataModuleLog.zqry1.Next;
   end;

   if z = 1 then begin
      DataModuleLog.zqry2.Active := True;
      MessageDlg('Selamat Datang PENGUNJUNG!', mtInformation, [mbOK], 0);
      FormLogin.Hide;
      user1.Show;
   end
   else if z = 2 then begin
      DataModuleLog.zqry2.Active := True;
      DataModuleLog.zqry3.Active := True;
      DataModuleLog.zqry4.Active := True;
      MessageDlg('Selamat Datang ADMIN!', mtInformation, [mbOK], 0);
      FormLogin.Hide;
      admin1.Show;
   end
   else begin
      ShowMessage('Terjadi kesalahan, Username/Password salah!');
   end;
end;

end.
