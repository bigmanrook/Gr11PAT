unit MainMenu_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DataEdit_u;

type
  TfrmMenu = class(TForm)
    btnLogOut: TButton;
    btnEditData: TButton;
    btnViewData: TButton;
    procedure btnLogOutClick(Sender: TObject);
    procedure btnEditDataClick(Sender: TObject);
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
Welcome_u, DataView_u;

{$R *.dfm}

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
frmDataView.Visible := True;
frmMenu.Visible := False;

end;

end.
