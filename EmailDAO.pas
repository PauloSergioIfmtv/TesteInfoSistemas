unit EmailDAO;

interface

uses Windows, Messages, SysUtils, SqlExpr, Dialogs, Forms, StrUtils,
  EmailEN, System.Classes, IniFiles, IdSMTP, IdSSLOpenSSL, IdMessage, IdText,
  IdAttachmentFile, IdExplicitTLSClientServerBase, WinInet, IdAttachment,
  IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket, System.UITypes;

type
  TEmailDAO = class(TEmailEN)
  private
    { Private declarations }
  protected
    { Protected declarations }
  published
    { published declarations }
    procedure getDados;
    function gravarDados: Boolean;
    function enviarEmail: Boolean;
    procedure insertMensagemLines(tsMensagem: String; const tsIdText: TIdText);
  public
    { Public declarations }
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TEmailDAO }

constructor TEmailDAO.Create;
begin
  inherited Create;
  TEmailEN.Create;
end;

destructor TEmailDAO.Destroy;
begin

  inherited Destroy;
end;

function TEmailDAO.enviarEmail: Boolean;
var
  // variáveis e objetos necessários para o envio
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  llResult: Boolean;
begin
  llResult := True;

  // instanciação dos objetos
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  IdSMTP := TIdSMTP.Create;
  IdMessage := TIdMessage.Create;

  IdSMTP.ConnectTimeout := 20000;
  IdSMTP.ReadTimeout := 20000;

  try
    // Configuração do servidor SMTP (TIdSMTP)
    try
      IdSMTP.Port := StrToInt(Self.sPortaSMTP);
      IdSMTP.Host := Trim(Self.sSMTP);
      IdSMTP.Username := Trim(Self.sConta);
      IdSMTP.Password := Trim(Self.sSenhaSMTP);
      IdSMTP.IOHandler := IdSSLIOHandlerSocket;

      // Configuração do protocolo TLS
      if Self.lAutenticaTLS then
        IdSMTP.UseTLS := TIdUseTLS(1);

    except on E: Exception do
      begin
          IdSMTP.IOHandler := TIdIOHandler.MakeDefaultIOHandler( nil );
          if Self.lAutenticaTLS then
            IdSMTP.UseTLS := utNoTLSSupport;
      end;
    end;

    // Configuração do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
    if Self.lAutenticaSSL then
    begin
      if Assigned(IdSSLIOHandlerSocket) then
      begin
        IdSSLIOHandlerSocket.SSLOptions.Method := TIdSSLVersion(3);
        IdSSLIOHandlerSocket.SSLOptions.Mode := TIdSSLMode(1);
      end;
    end;

    IdSMTP.AuthType := satDefault;

    // Configuração da mensagem (TIdMessage)
    IdMessage.From.Address := Trim(sConta);
    IdMessage.From.Name := 'Teste InfoSistemas';
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.Add.Text := Trim(Self.sEmailDestinatario);
    IdMessage.Subject := Trim(sAssuntoEmail);
    IdMessage.Encoding := meMIME;

    // Configuração do corpo do email (TIdText)
    if Trim(sMensagemEmail) <> EmptyStr then
    begin
      IdText := TIdText.Create(IdMessage.MessageParts, nil);
      IdText.ContentType := 'text/html; charset=iso-8859-1';
      IdText.Body.Add('<font face="Arial" color="black">');
      IdText.Body.Add('<b>');
      insertMensagemLines(Trim(sMensagemEmail), IdText);
      IdText.Body.Add('</b>');
      IdText.Body.Add('</font>');
    end;

    // Opcional - Anexo da mensagem (TIdAttachmentFile)
    if Trim(Self.sAnexoEmail) <> EmptyStr then
    begin
      TIdAttachmentFile.Create(IdMessage.MessageParts, Self.sAnexoEmail);
    end;

    // Conexão e autenticação
    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        MessageDlg('Erro na conexão ou autenticação: ' + E.Message, mtError, [mbOK], 0);
        llResult := False;
        Result := llResult;
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      MessageDlg('Mensagem enviada com sucesso!', mtInformation, [mbOK], 0);
    except
      On E:Exception do
      begin
        MessageDlg('Erro ao enviar a mensagem: ' + E.Message, mtError, [mbOK], 0);
        llResult := False;
        Result := llResult;
        Exit;
      end;
    end;

  finally
    // desconecta do servidor
    IdSMTP.Disconnect;
    // liberação da DLL
    UnLoadOpenSSLLibrary;
    // liberação dos objetos da memória
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;
  Result := llResult;
end;

procedure TEmailDAO.getDados;
var
  loArqIni: TIniFile;
begin
  loArqIni := Tinifile.Create(ExtractFilePath(Application.ExeName)+'Email.ini');
  try
    sConta := loArqIni.ReadString('Email', 'Conta', '');
    sSMTP := loArqIni.ReadString('Email', 'SMTP', '');
    sSenhaSMTP := loArqIni.ReadString('Email', 'SenhaSMTP', '');
    sPortaSMTP := loArqIni.ReadString('Email', 'PortaSMTP', '');
    lAutenticaSSL := loArqIni.ReadString('Email', 'SSL', '') = '1';
    lAutenticaTLS := loArqIni.ReadString('Email', 'TLS', '0') = '1';
  finally
   loArqIni.Free;
  end;
end;

function TEmailDAO.gravarDados: Boolean;
var
  loArqIni: TIniFile;
begin
  loArqIni := Tinifile.Create(ExtractFilePath(Application.ExeName)+'Email.ini');
  try
    loArqIni.WriteString('Email', 'Conta', Trim(sConta));
    loArqIni.WriteString('Email', 'SMTP', Trim(sSMTP));
    loArqIni.WriteString('Email', 'SenhaSMTP', Trim(sSenhaSMTP));
    loArqIni.WriteString('Email', 'PortaSMTP', Trim(sPortaSMTP));
    loArqIni.WriteString('Email', 'SSL', IfThen(lAutenticaSSL, '1', '0'));
    loArqIni.WriteString('Email', 'TLS', IfThen(lAutenticaTLS, '1', '0'));
  finally
   loArqIni.Free;
  end;

  Result := FileExists(ExtractFilePath(Application.ExeName)+'Email.ini');
end;

procedure TEmailDAO.insertMensagemLines(tsMensagem: String;
  const tsIdText: TIdText);
var
  lsMensagemList: TStringList;
  lnIndexX: Integer;
begin
  lsMensagemList := TStringList.Create;
  try
    lsMensagemList.Clear;
    tsMensagem := StringReplace(tsMensagem, #13, '[enter]' + #13, [rfReplaceAll]);
    ExtractStrings([#13],[], PChar(tsMensagem), lsMensagemList);
    for lnIndexX := 0 to lsMensagemList.Count - 1 do
    begin
      tsIdText.Body.Add( '<br>');
      tsIdText.Body.Add( StringReplace(lsMensagemList[lnIndexX], '[enter]', ' ', [rfReplaceAll]));
      tsIdText.Body.Add( '</br>');
    end;
  finally
    lsMensagemList.Free;
  end;
end;

end.
