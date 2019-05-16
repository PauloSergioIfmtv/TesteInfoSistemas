unit EmailEN;

interface

uses StrUtils, SqlTimSt, ExtCtrls, Classes;

type
  TEmailEN = class
  private
    { Private declarations }
    psConta: String;
    psSMTP: String;
    psSenhaSMTP: String;
    psPortaSMTP: String;
    plAutenticaSSL: Boolean;
    plAutenticaTLS: Boolean;
    psEmailDestinatario: String;
    psNomeDestinatario: String;
    psAssuntoEmail: String;
    psMensagemEmail: String;
    psAnexoEmail: String;
  public
    { Public declarations }
    constructor Create;
    destructor Destroy; override;
    property sConta: String read psConta write psConta;
    property sSMTP: String read psSMTP write psSMTP;
    property sSenhaSMTP: String read psSenhaSMTP write psSenhaSMTP;
    property sPortaSMTP: String read psPortaSMTP write psPortaSMTP;
    property lAutenticaSSL: Boolean read plAutenticaSSL write plAutenticaSSL;
    property lAutenticaTLS: Boolean read plAutenticaTLS write plAutenticaTLS;
    property sEmailDestinatario: String read psEmailDestinatario write psEmailDestinatario;
    property sNomeDestinatario: String read psNomeDestinatario write psNomeDestinatario;
    property sAssuntoEmail: String read psAssuntoEmail write psAssuntoEmail;
    property sMensagemEmail: String read psMensagemEmail write psMensagemEmail;
    property sAnexoEmail: String read psAnexoEmail write psAnexoEmail;
  end;
implementation

{ TPessoasEN }

constructor TEmailEN.Create;
begin
  inherited Create;
end;

destructor TEmailEN.Destroy;
begin
  inherited Destroy;
end;

end.
