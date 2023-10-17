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

    procedure btnPostClick(Sender: TObject);
    procedure ConnectDataGrid(Sender: TObject);
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

{$R *.dfm}

procedure TfrmDataEdit.btnPostClick(Sender: TObject);
begin

Assignfile(tFile, 'Logged_Changes.txt');
if not FileExists('Logged_Changes.txt') then
begin
  Rewrite(tFile);
end;



with dmAccounts do
begin


 while NOT tblSales.EOF do
 begin
   if sProductID = tblSales['ID'] then
   begin
    tblSales.Edit;
    sMonth := Lowercase(Month.Text);
    iSales := strtoint(Value.Text);
    tblSales[sMonth] := iSales;
    sLine := 'Logged change: ' + datetostr(date) + ' ; ' + inttostr(iSales);
    writeln(tFile, sLine);
    tblSales.Post;
    break
   end;
 tblSales.Next;
 end;
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

end.
