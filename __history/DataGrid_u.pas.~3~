unit DataGrid_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, dmBusinessManagement_U,
  Vcl.StdCtrls;

type
  TfrmData = class(TForm)
    dbgAccTable: TDBGrid;
    btnBack: TButton;
    procedure ConnectDatabase(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmData: TfrmData;

implementation

uses
MainMenu_u ;

{$R *.dfm}

procedure TfrmData.btnBackClick(Sender: TObject);
begin
frmData.Visible := False;
frmMenu.Visible := True;
end;

procedure TfrmData.ConnectDatabase(Sender: TObject);
begin
 dbgAccTable.DataSource := dmAccounts.dscAcc;
 dbgAccTable.Columns[0].Width := 60;
 dbgAccTable.Columns[1].Width := 60;
 dbgAccTable.Columns[2].Width := 60;
 dbgAccTable.Columns[3].Width := 60;
 dbgAccTable.Columns[4].Width := 60;
 dbgAccTable.Columns[5].Width := 60;
 dbgAccTable.Columns[6].Width := 60;
 dbgAccTable.Columns[7].Width := 60;
 dbgAccTable.Columns[8].Width := 60;
 dbgAccTable.Columns[9].Width := 60;
 dbgAccTable.Columns[10].Width := 60;
 dbgAccTable.Columns[11].Width := 60;
 dbgAccTable.Columns[12].Width := 60;
end;

end.
