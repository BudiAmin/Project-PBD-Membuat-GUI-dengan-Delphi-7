unit user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, ExtCtrls, SMDBCtrl,
  mxExport, SMDBFltr, SMDBFind, frxClass, frxDBSet, Buttons, Mask, DBCtrls,
  EDBImage, Menus;

type
  Tadmin1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ed_nama: TEdit;
    ed_tlp: TEdit;
    ed_alamat: TEdit;
    user_navigator: TSMDBNavigator;
    btn_save: TButton;
    btn_delete: TButton;
    btn_update: TButton;
    rincian_navigator: TSMDBNavigator;
    export_user: TmxDBGridExport;
    export_rincian: TmxDBGridExport;
    grid_pelanggan: TSMDBGrid;
    grid_produk: TSMDBGrid;
    grid_transaksi: TSMDBGrid;
    PopupMenu1: TPopupMenu;
    EDBImage1: TEDBImage;
    Load1: TMenuItem;
    Extract1: TMenuItem;
    Clear1: TMenuItem;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ed_jenistas: TEdit;
    ed_merktas: TEdit;
    ed_harga: TEdit;
    ed_stock: TEdit;
    SMDBNavigator1: TSMDBNavigator;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ed_transaksi: TEdit;
    ed_pelanggan: TEdit;
    ed_produk: TEdit;
    ed_jumlahbarang: TEdit;
    ed_totalharga: TEdit;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure btn_saveClick(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
    procedure btn_updateClick(Sender: TObject);
    procedure user_navigatorClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure rincian_navigatorClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure Load1Click(Sender: TObject);
    procedure Extract1Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  admin1: Tadmin1;

implementation

uses data_module, myLib_Blob;

{$R *.dfm}

procedure Tadmin1.btn_saveClick(Sender: TObject);
begin
    DataModuleLog.zqry2.Open;
    DataModuleLog.zqry2.Append;
    DataModuleLog.zqry2.FieldByName('nama_pelanggan').AsString := ed_nama.Text;
    DataModuleLog.zqry2.FieldByName('no_tlp').AsString := ed_tlp.Text;
    DataModuleLog.zqry2.FieldByName('alamat').AsString := ed_alamat.Text;
    DataModuleLog.zqry2.Post;
    ShowMessage('Berhasil menambahkan data baru!');
end;

procedure Tadmin1.btn_updateClick(Sender: TObject);
begin
  if not DataModuleLog.zqry2.Active then
    DataModuleLog.zqry2.Open;
    DataModuleLog.zqry2.Locate('nama_pelanggan', ed_nama.Text, []);

  if DataModuleLog.zqry2.RecordCount > 0 then
  begin
    DataModuleLog.zqry2.Edit;
    DataModuleLog.zqry2.FieldByName('no_tlp').AsString := ed_tlp.Text;
    DataModuleLog.zqry2.FieldByName('alamat').AsString := ed_alamat.Text;
    DataModuleLog.zqry2.Post;
    ShowMessage('Data berhasil diperbaharui!');
  end
  else
    ShowMessage('Data dengan NAMA ' + ed_nama.Text + ' tidak ditemukan!');
end;

procedure Tadmin1.btn_deleteClick(Sender: TObject);
begin
  if MessageDlg('Apakah Anda yakin ingin menghapus data?', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes then
  begin
    if not DataModuleLog.zqry2.Active then
      DataModuleLog.zqry2.Open;
      DataModuleLog.zqry2.Locate('nama_pelanggan', ed_nama.Text, []);
      DataModuleLog.zqry2.Delete;
      ShowMessage('Berhasil menghapus data dari daftar!');
  end;
end;

procedure Tadmin1.user_navigatorClick(Sender: TObject;
  Button: TSMNavigateBtn);
begin
  case Button of
    sbFilter : DataModuleLog.filter_user.Execute;
    sbFind   : DataModuleLog.find_user.Execute;
    sbExport :
    begin
        if Application.MessageBox('Ingin mengeksport data?', 'KONFIRMASI!',
          MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
        begin
           if DataModuleLog.save_user.Execute = True then begin
            export_user.FileName := DataModuleLog.save_user.FileName;
            export_user.Select;
           end;
        end;
    end;
    sbPrint :
    begin
      // DataModuleLog.frx_report_user.LoadFromFile(user_print.fr3);
      DataModuleLog.frx_report_pelanggan.ShowReport();
    end;
  end;
end;

procedure Tadmin1.rincian_navigatorClick(Sender: TObject;
  Button: TSMNavigateBtn);
begin
  case Button of
    sbFilter : DataModuleLog.filter_rincian.Execute;
    sbFind   : DataModuleLog.find_rincian.Execute;
    sbExport :
    begin
        if Application.MessageBox('Ingin mengeksport data?', 'KONFIRMASI!',
          MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
        begin
           if DataModuleLog.save_rincian.Execute = True then begin
            export_rincian.FileName := DataModuleLog.save_rincian.FileName;
            export_rincian.Select;
           end;
        end;
    end;
    sbPrint :
    begin
      // DataModuleLog.frx_report_user.LoadFromFile(user_print.fr3);
      DataModuleLog.frx_report_rincian.ShowReport();
    end;
  end;
end;



procedure Tadmin1.Load1Click(Sender: TObject);
begin
  Blob_FromFileImage(DataModuleLog.zqry3foto);
end;

procedure Tadmin1.Extract1Click(Sender: TObject);
begin
  Blob_ToFileImage(DataModuleLog.zqry3foto);
end;

procedure Tadmin1.Clear1Click(Sender: TObject);
begin
  Blob_Clear(DataModuleLog.zqry3foto,'Apakah foto ini akan dihapus ?');
end;



procedure Tadmin1.Button2Click(Sender: TObject);
begin
   DataModuleLog.zqry3.Open;
    DataModuleLog.zqry3.Append;
    DataModuleLog.zqry3.FieldByName('jenis_tas').AsString := ed_jenistas.Text;
    DataModuleLog.zqry3.FieldByName('merk_tas').AsString := ed_merktas.Text;
    DataModuleLog.zqry3.FieldByName('harga').AsString := ed_harga.Text;
    DataModuleLog.zqry3.FieldByName('stock').AsString := ed_stock.Text;
    DataModuleLog.zqry3.Post;
    ShowMessage('Berhasil menambahkan data baru!');
end;

procedure Tadmin1.Button3Click(Sender: TObject);
begin
      if not DataModuleLog.zqry3.Active then
    DataModuleLog.zqry3.Open;
    DataModuleLog.zqry3.Locate('jenis_tas', ed_jenistas.Text, []);

  if DataModuleLog.zqry3.RecordCount > 0 then
  begin
    DataModuleLog.zqry3.Edit;
    DataModuleLog.zqry3.FieldByName('merk_tas').AsString := ed_merktas.Text;
    DataModuleLog.zqry3.FieldByName('harga').AsString := ed_harga.Text;
    DataModuleLog.zqry3.FieldByName('stock').AsString := ed_stock.Text;
    DataModuleLog.zqry3.Post;
    ShowMessage('Data berhasil diperbaharui!');
  end
  else
    ShowMessage('Data dengan JENIS TAS ' + ed_jenistas.Text + ' tidak ditemukan!');
end;

procedure Tadmin1.Button4Click(Sender: TObject);
begin
    if MessageDlg('Apakah Anda yakin ingin menghapus data?', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes then
  begin
    if not DataModuleLog.zqry3.Active then
      DataModuleLog.zqry3.Open;
      DataModuleLog.zqry3.Locate('jenis_tas', ed_jenistas.Text, []);
      DataModuleLog.zqry3.Delete;
      ShowMessage('Berhasil menghapus data dari daftar!');
  end;
end;

procedure Tadmin1.Button5Click(Sender: TObject);
begin
    DataModuleLog.zqry4.Open;
    DataModuleLog.zqry4.Append;
    DataModuleLog.zqry4.FieldByName('id_pelanggan').AsString := ed_pelanggan.Text;
    DataModuleLog.zqry4.FieldByName('id_produk').AsString := ed_produk.Text;
    DataModuleLog.zqry4.FieldByName('jumlah_barang').AsString := ed_jumlahbarang.Text;
    DataModuleLog.zqry4.FieldByName('total_harga').AsString := ed_totalharga.Text;
    DataModuleLog.zqry4.Post;
    ShowMessage('Berhasil menambahkan data baru!');
end;

procedure Tadmin1.Button6Click(Sender: TObject);
begin
  if not DataModuleLog.zqry4.Active then
    DataModuleLog.zqry4.Open;
    DataModuleLog.zqry4.Locate('id_pelanggan', ed_pelanggan.Text, []);

  if DataModuleLog.zqry4.RecordCount > 0 then
  begin
    DataModuleLog.zqry4.Edit;
    DataModuleLog.zqry4.FieldByName('id_produk').AsString := ed_produk.Text;
    DataModuleLog.zqry4.FieldByName('jumlah_barang').AsString := ed_jumlahbarang.Text;
    DataModuleLog.zqry4.FieldByName('total_harga').AsString := ed_totalharga.Text;
    DataModuleLog.zqry4.Post;
    ShowMessage('Data berhasil diperbaharui!');
  end
  else
    ShowMessage('Data dengan TRANSAKSI ' + ed_pelanggan.Text + ' tidak ditemukan!');
end;

procedure Tadmin1.Button7Click(Sender: TObject);
begin
        if MessageDlg('Apakah Anda yakin ingin menghapus data?', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes then
  begin
    if not DataModuleLog.zqry4.Active then
      DataModuleLog.zqry4.Open;
      DataModuleLog.zqry4.Locate('id_pelanggan', ed_pelanggan.Text, []);
      DataModuleLog.zqry4.Delete;
      ShowMessage('Berhasil menghapus data dari daftar!');
  end;
end;

end.
