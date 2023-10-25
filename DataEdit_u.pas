unit DataEdit_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, dmBusinessManagement_u;

type
  TfrmDataEdit = class(TForm)
    dbgAccTable: TDBGrid;
    btnBack: TButton;
    Month: TLabeledEdit;
    Value: TLabeledEdit;
    Product: TLabeledEdit;
    btnPost: TButton;
    btnLog: TButton;
    btnProductAdd: TButton;

    procedure btnPostClick(Sender: TObject);
    procedure ConnectDataGrid(Sender: TObject);
    procedure btnLogClick(Sender: TObject);
    procedure Terminate(Sender: TObject; var Action: TCloseAction);
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataEdit: TfrmDataEdit;
  sProductID, sMonth, sLine : String;
  iSales : Integer;
  tFile : TextFile;

implementation

uses MainMenu_u;

{$R *.dfm}

procedure TfrmDataEdit.btnBackClick(Sender: TObject);
begin
 frmMenu.Visible := True;
 frmDataEdit.Visible := False;
end;

procedure TfrmDataEdit.btnLogClick(Sender: TObject);
begin
sLine := 'Logged change: ' + datetostr(date) + ' ; ' + inttostr(iSales);
    append(tFile);
    writeln(tFile, sLine);
    closefile(tFile);
end;

procedure TfrmDataEdit.btnPostClick(Sender: TObject);

var
sProduct : String;

begin

 sProduct := Product.Text;

with dmAccounts do
begin

tblSales.Edit;
tblSales.Append;
tblSales['Product'] := sProduct ;
tblSales.Post;




Product.Text := '';


end;


end;

procedure TfrmDataEdit.ConnectDataGrid(Sender: TObject);
begin
dbgAccTable.DataSource := dmAccounts.dscSales;
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

procedure TfrmDataEdit.Terminate(Sender: TObject; var Action: TCloseAction);
begin
application.Terminate
end;

end.
