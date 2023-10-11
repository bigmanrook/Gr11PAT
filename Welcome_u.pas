unit Welcome_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, SignUp_u, MainMenu_u, dmDatabase;

type
  TfrmWelcome = class(TForm)
    btnLogin: TButton;
    btnSignUp: TButton;
    Account: TLabeledEdit;
    Password: TLabeledEdit;
    procedure btnLoginClick(Sender: TObject);
    procedure btnSignUpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWelcome: TfrmWelcome;
  sAccount, sPassword, sUsername : String;
  bFound : boolean ;

implementation

{$R *.dfm}


procedure TfrmWelcome.btnLoginClick(Sender: TObject);
begin
   sAccount := Account.text;
   sPassword := Password.text;
   bFound := False;
   with dmAccounts do
   begin
    if sAccount = '' then
    begin
      ShowMessage('Please enter a valid account name');
      exit;
    end;
    if sPassword = '' then
    begin
      ShowMessage('Please enter a valid password');
      exit;
    end;
    
    tblAcc.First;
    while not tblAcc.eof OR bFound = True do
    begin
     if ((tblAcc['Account']) = sAccount) AND ((tblAcc['Password']) = sPassword)  then
     begin
      sUsername := tblAcc['Username'];
      ShowMessage('You are logged in ' + sUsername);
      Account.Text := '';
      Password.Text := '';
      bFound := True;

      break
     end
     else
     begin
       tblAcc.Next;
     end;

    end;

   end;

   if bFound = False then
   begin
     SHowMessage('Username or Password incorrect');
   end
   else
   begin
     frmWelcome.Visible := False;
     frmMenu.Visible := True;
   end;

end;

procedure TfrmWelcome.btnSignUpClick(Sender: TObject);
begin
 frmSignUp.Visible := True;
 frmWelcome.Visible := False;
end;

end.