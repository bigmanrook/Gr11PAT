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
begin

Assignfile(tFile, 'Logged_Changes.txt');
if not FileExists('Logged_Changes.txt') then
begin
  Rewrite(tFile);
  ShowMessage('File rewritten');
end;

 sProductID := Product.Text;

with dmAccounts do
begin


 while NOT tblSales.EOF do
 begin
   if sProductID = tblSales['ID'] then
   begin
    tblSales.Edit;
    sMonth := Lowercase(Month.Text);
    iSales := strtoint(Value.Text);


    if sMonth = 'january' then
    begin
     tblSales['january'] := iSales;
    end;
    if sMonth = 'february' then
    begin
     tblSales['february'] := iSales;
    end;
    if sMonth = 'march' then
    begin
     tblSales['march'] := iSales;
    end;
    if sMonth = 'april' then
    begin
     tblSales['april'] := iSales;
    end;
        if sMonth = 'may' then
    begin
     tblSales['may'] := iSales;
    end;
    if sMonth = 'june' then
    begin
     tblSales['june'] := iSales;
    end;
    if sMonth = 'july' then
    begin
     tblSales['july'] := iSales;
    end;
    if sMonth = 'august' then
    begin
     tblSales['august'] := iSales;
    end;
        if sMonth = 'september' then
    begin
     tblSales['september'] := iSales;
    end;
    if sMonth = 'october' then
    begin
     tblSales['october'] := iSales;
    end;
    if sMonth = 'november' then
    begin
     tblSales['november'] := iSales;
    end;
    if sMonth = 'december' then
    begin
     tblSales['december'] := iSales;
    end;
    tblSales.Post;
    break
   end;
 tblSales.Next;
 end;

 Product.Text := '';
 Value.Text := '';
 Month.Text := '';

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
