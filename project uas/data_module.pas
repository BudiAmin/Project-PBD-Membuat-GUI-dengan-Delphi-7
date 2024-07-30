unit data_module;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Dialogs, frxClass, frxDBSet, mxExport,
  SMDBFltr, SMDBFind, frxExportXLS, frxExportPDF;

type
  TDataModuleLog = class(TDataModule)
    Zconn: TZConnection;
    zqry1: TZQuery;
    dsource1: TDataSource;
    dsource2: TDataSource;
    zqry2: TZQuery;
    find_user: TSMDBFindDialog;
    filter_user: TSMDBFilterDialog;
    save_user: TSaveDialog;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    zqry3: TZQuery;
    dsource3: TDataSource;
    dsource4: TDataSource;
    zqry4: TZQuery;
    find_rincian: TSMDBFindDialog;
    filter_rincian: TSMDBFilterDialog;
    db_dataset_rincian: TfrxDBDataset;
    frx_report_rincian: TfrxReport;
    save_rincian: TSaveDialog;
    frxPDFExport2: TfrxPDFExport;
    frxXLSExport2: TfrxXLSExport;
    db_dataset_pelanggan: TfrxDBDataset;
    frx_report_pelanggan: TfrxReport;
    zqry3id_produk: TIntegerField;
    zqry3jenis_tas: TStringField;
    zqry3merk_tas: TStringField;
    zqry3harga: TIntegerField;
    zqry3stock: TIntegerField;
    zqry3foto: TBlobField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleLog: TDataModuleLog;

implementation

{$R *.dfm}

end.
