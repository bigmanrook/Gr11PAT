unit Datatable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dmDatabase, DataEdit_u;

type
  TDataTable_U = class(TForm)
    procedure ConnectDatabase(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataTable_U: TDataTable_U;

implementation

{$R *.dfm}

procedure TDataTable_U.ConnectDatabase(Sender: TObject);
begin
 { dbgAccTable.DataSource := dmAccounts.dscAcc;
 dbgAccTable.Columns[0].Width := 60;
 dbgAccTable.Columns[1].Width := 60;
 dbgAccTable.Columns[2].Width := 60;  }
end;

end.
