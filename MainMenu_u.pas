unit MainMenu_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DataEdit_u, Charts_u, DataGrid_u;

type
  TfrmMenu = class(TForm)
    btnLogOut: TButton;
    btnEditData: TButton;
    btnViewData: TButton;
    btnData: TButton;
    procedure btnLogOutClick(Sender: TObject);
    procedure btnEditDataClick(Sender: TObject);
    procedure btnDataClick(Sender: TObject);
    procedure btnViewDataClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

uses
Welcome_u;

{$R *.dfm}

procedure TfrmMenu.btnDataClick(Sender: TObject);
begin
 frmCharts.Visible := True;
 frmMenu.Visible := false;
end;

procedure TfrmMenu.btnEditDataClick(Sender: TObject);
begin
frmDataEdit.Visible := True;
frmMenu.Visible := False;
end;

procedure TfrmMenu.btnLogOutClick(Sender: TObject);

begin
ShowMessage('You are logged out');
frmWelcome.Visible := True;
frmMenu.Visible := False;
end;

procedure TfrmMenu.btnViewDataClick(Sender: TObject);
begin
 frmData.Visible := True;
 frmMenu.Visible := False;
end;

end.
