program project_praktikum;



uses
  Forms,
  login in 'login.pas' {FormLogin},
  data_module in 'data_module.pas' {DataModuleLog: TDataModule},
  admin in 'admin.pas' {user1},
  user in 'user.pas' {admin1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TDataModuleLog, DataModuleLog);
  Application.CreateForm(Tuser1, user1);
  Application.CreateForm(Tadmin1, admin1);
  Application.Run;
end.
