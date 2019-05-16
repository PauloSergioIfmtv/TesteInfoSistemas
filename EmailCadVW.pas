unit EmailCadVW;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, System.StrUtils, EmailDAO;

type
  TfrmEmailCadVW = class(TForm)
    pnlRodape: TPanel;
    pnlBotoes: TPanel;
    btnConfirmar: TSpeedButton;
    pnlTela: TPanel;
    gbxDadosEmail: TGroupBox;
    lblConta: TLabel;
    edtConta: TEdit;
    edtSMTP: TEdit;
    lblSMTP: TLabel;
    lblSenhaSMTP: TLabel;
    edtSenhaSMTP: TEdit;
    edtPortaSMTP: TEdit;
    lblPortaSMTP: TLabel;
    chkAutenticacaoSSL: TCheckBox;
    chkAutenticacaoTLS: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    poEmailDAO: TEmailDAO;
    procedure gravarDados;
  protected
    { Private declarations }
  public
    { Public declarations }
    property oEmailDAO: TEmailDAO read poEmailDAO write poEmailDAO;
  end;

var
  frmEmailCadVW: TfrmEmailCadVW;

implementation

{$R *.dfm}

{ TfrmEmailCadVW }

procedure TfrmEmailCadVW.btnConfirmarClick(Sender: TObject);
begin
  gravarDados;
  Close;
end;

procedure TfrmEmailCadVW.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(CM_DIALOGKEY, VK_TAB, 0);
    Key := #0;
  end;
end;

procedure TfrmEmailCadVW.FormShow(Sender: TObject);
begin
  oEmailDAO := TEmailDAO.Create;

  oEmailDAO.getDados;

  edtConta.Text := oEmailDAO.sConta;
  edtSMTP.Text := oEmailDAO.sSMTP;
  edtSenhaSMTP.Text := oEmailDAO.sSenhaSMTP;
  edtPortaSMTP.Text := oEmailDAO.sPortaSMTP;
  chkAutenticacaoSSL.Checked := oEmailDAO.lAutenticaSSL;
  chkAutenticacaoTLS.Checked := oEmailDAO.lAutenticaTLS;
end;

procedure TfrmEmailCadVW.gravarDados;
begin
  oEmailDAO.sConta := edtConta.Text;
  oEmailDAO.sSMTP := edtSMTP.Text;
  oEmailDAO.sSenhaSMTP := edtSenhaSMTP.Text;
  oEmailDAO.sPortaSMTP := edtPortaSMTP.Text;
  oEmailDAO.lAutenticaSSL := chkAutenticacaoSSL.Checked;
  oEmailDAO.lAutenticaTLS := chkAutenticacaoTLS.Checked;

  oEmailDAO.gravarDados;
end;

end.
