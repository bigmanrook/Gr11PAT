unit DataGrid_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, dmDatabase, DataEdit_u;

type
  TfrmData = class(TForm)
    dbgAccTable: TDBGrid;
    procedure ConnectDatabase(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmData: TfrmData;

implementation

{$R *.dfm}

procedure TfrmData.ConnectDatabase(Sender: TObject);
begin
 dbgAccTable.DataSource := dmAccounts.dscAcc;
 dbgAccTable.Columns[0].Width := 60;
 dbgAccTable.Columns[1].Width := 60;
 dbgAccTable.Columns[2].Width := 60;
end;

end.
