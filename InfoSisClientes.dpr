program InfoSisClientes;

uses
  Vcl.Forms,
  UtilsDAO in 'DAO\UtilsDAO.pas',
  PessoasCadVW in 'View\PessoasCadVW.pas' {frmClientesCadVW},
  PessoasEN in 'EN\PessoasEN.pas',
  PessoasDAO in 'DAO\PessoasDAO.pas',
  EmailCadVW in 'View\EmailCadVW.pas' {frmEmailCadVW},
  EmailEN in 'EN\EmailEN.pas',
  EmailDAO in 'DAO\EmailDAO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClientesCadVW, frmClientesCadVW);
  Application.Run;
end.
