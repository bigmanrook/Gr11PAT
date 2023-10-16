program BusinessManagement;

uses
  Vcl.Forms,
  DataGrid_u in 'DataGrid_u.pas' {frmData},
  dmBusinessManagement_U in 'dmBusinessManagement_U.pas' {dmAccounts: TDataModule},
  Welcome_u in 'Welcome_u.pas' {frmWelcome},
  MainMenu_u in 'MainMenu_u.pas' {frmMenu},
  SignUp_u in 'SignUp_u.pas' {frmSignUp},
  DataEdit_u in 'DataEdit_u.pas' {frmDataEdit},
  Charts_u in 'Charts_u.pas' {frmCharts};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmWelcome, frmWelcome);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmData, frmData);
  Application.CreateForm(TdmAccounts, dmAccounts);
  Application.CreateForm(TfrmSignUp, frmSignUp);
  Application.CreateForm(TfrmDataEdit, frmDataEdit);
  Application.CreateForm(TfrmCharts, frmCharts);
  Application.Run;
end.
