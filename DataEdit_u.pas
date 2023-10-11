unit DataEdit_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, dmDatabase,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmDataEdit = class(TForm)
    dbgEdit: TDBGrid;
    Month: TLabeledEdit;
    Edit: TLabeledEdit;
    btnMakeChanges: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnMakeChangesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataEdit: TfrmDataEdit;

implementation

uses
DataGrid_u;




{$R *.dfm}

procedure TfrmDataEdit.btnMakeChangesClick(Sender: TObject);

var
sMonth : String;
iFig : Integer;

begin
sMonth := Month.Text;
sMonth := Lowercase(sMonth);
iFig := strtoint(Edit.Text);

with dmAccounts do
begin
tblSales.Edit ;
tblSales[sMonth] :=  iFig;
tblSales.Post;

end;

end;

procedure TfrmDataEdit.FormCreate(Sender: TObject);



begin
with dmAccounts do
 dbgEdit.DataSource := dmAccounts.dscSales;
 dbgEdit.Columns[0].Width := 60;
 dbgEdit.Columns[1].Width := 60;
 dbgEdit.Columns[2].Width := 60;
 dbgEdit.Columns[3].Width := 60;
 dbgEdit.Columns[4].Width := 60;
 dbgEdit.Columns[5].Width := 60;
 dbgEdit.Columns[6].Width := 60;
 dbgEdit.Columns[7].Width := 60;
 dbgEdit.Columns[8].Width := 60;
 dbgEdit.Columns[9].Width := 60;
 dbgEdit.Columns[10].Width := 60;
 dbgEdit.Columns[11].Width := 60;
 dbgEdit.Columns[12].Width := 60;
 dbgEdit.Columns[13].Width := 60;
end;

end.
