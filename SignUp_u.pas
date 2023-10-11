unit SignUp_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, dmDatabase;

type
  TfrmSignUp = class(TForm)
    Account: TLabeledEdit;
    Username: TLabeledEdit;
    Password: TLabeledEdit;
    btnSignUp: TButton;
    procedure btnSignUpClick(Sender: TObject);
  private
    { Private declarations }

    procedure SignUp;

  public
    { Public declarations }

  end;

var
  frmSignUp: TfrmSignUp;
  sAccount, sPassword, sUsername : String;
  bFound : boolean;

implementation

uses
Welcome_u ;

{$R *.dfm}

procedure TfrmSignUp.btnSignUpClick(Sender: TObject);
begin

  SignUp();

end;

procedure TfrmSignUp.SignUp;
begin
   sAccount := Account.text;
   sPassword := Password.text;
   sUsername := Username.text;
   bFound := False;
   with dmAccounts do
   begin
    if sAccount = '' then
    begin
      ShowMessage('Please enter a valid account name');
      exit;
    end;
    if sUsername = '' then
    begin
      ShowMessage('Please enter a valid username name');
      exit;
    end;
    if sPassword = '' then
    begin
      ShowMessage('Please enter a valid password');
      exit;
    end;
    if Length(sPassword) < 8 then
    begin
      ShowMessage('Please enter a valid password, with over 8 characters');
      exit;
    end;
    tblAcc.First;
    while not tblAcc.eof OR bFound = True do
    begin
     if ((tblAcc['Account']) = sAccount) AND ((tblAcc['Password']) = sPassword)  then
     begin
      ShowMessage('You already have an account - proceeding to login instead');
      frmSignUp.Visible := False;
      frmWelcome.Visible := True;
      bFound := True;

      break

     end
     else
     begin
       tblAcc.Next;
     end;

    end;

    if bFound = False then
    begin
      tblAcc.Append;
      tblAcc['Account'] := sAccount;
      tblAcc['Password'] := sPassword;
      tblAcc['Username'] := sUsername;
      tblAcc.Post;
      showmessage('You have signed up');
    end;

   end;
end;

end.