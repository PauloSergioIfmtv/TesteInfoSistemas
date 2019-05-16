unit UtilsDAO;

interface

uses System.SysUtils, System.Classes, Data.DBXJSON, DBXJSONReflect,
  idHTTP, IdSSLOpenSSL, System.JSon, System.StrUtils;

type
  TUtilsDAO = Class
    private
    { Private declarations }
    public
    { Public declarations }
      Constructor Create;
      Destructor Destroy;
      class function returnSoNumeros(Value: String): String;
      class function getCEP(CEP: String): TJsonObject;
      class function seachSiglaEstadoUF(Value: String): String;
  End;

implementation

{ TUtilsDAO }

constructor TUtilsDAO.Create;
begin
  inherited Create;
end;

destructor TUtilsDAO.Destroy;
begin
  inherited;
end;

class function TUtilsDAO.getCEP(CEP: String): TJsonObject;
var
  loHTTP: TIdHTTP;
  lsResponse: TStringStream;
begin
  try
    loHTTP := TIdHTTP.Create;
    loHTTP.IOHandler := IdSSLOpenSSL.TIdSSLIOHandlerSocketOpenSSL.Create;
    lsResponse := TStringStream.Create(EmptyStr);

    loHTTP.Get('https://viacep.com.br/ws/' + CEP + '/json', lsResponse);
    if (loHTTP.ResponseCode = 200) and not (UTF8ToString(lsResponse.DataString) = '{'#$A'  "erro": true'#$A'}') then
      Result := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(UTF8ToString(lsResponse.DataString)), 0) as TJSONObject
    else
      raise Exception.Create('CEP inexistente!');

  finally
    FreeAndNil(loHTTP);
    lsResponse.Destroy;
  end;
end;

class function TUtilsDAO.returnSoNumeros(Value: String): String;
var
  lnIndex: Integer;
  lsResult: String;
  lcNumeros: TSysCharSet;
begin
  lcNumeros := ['0'..'9'];
  lsResult := EmptyStr;

  if Value.Trim <> EmptyStr then
  begin
    for lnIndex := 0 to Length(Value) do
    begin
      if CharInSet(Value[lnIndex], lcNumeros) then
        lsResult := lsResult + Value[lnIndex];
    end;
  end;

  Result := lsResult;
end;

class function TUtilsDAO.seachSiglaEstadoUF(Value: String): String;
var
  lsResult: String;
begin
  lsResult := EmptyStr;
  case AnsiIndexStr(UpperCase(Value), ['AC', 'AL','AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MG', 'MS', 'MT', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RR', 'RO', 'SC', 'SE', 'SP', 'TO'])  of
    0: lsResult := 'Acre';
    1: lsResult := 'Alagoas';
    2: lsResult := 'Amazonas';
    3: lsResult := 'Amapá';
    4: lsResult := 'Bahia';
    5: lsResult := 'Ceará';
    6: lsResult := 'Distrito Federal';
    7: lsResult := 'Espiríto Santo';
    8: lsResult := 'Goiás';
    9: lsResult := 'Maranhão';
    10: lsResult := 'Minas Gerais';
    11: lsResult := 'Mato Grosso do Sul';
    12: lsResult := 'Mato Grosso';
    13: lsResult := 'Pará';
    14: lsResult := 'Paraíba';
    15: lsResult := 'Paraná';
    16: lsResult := 'Pernambuco';
    17: lsResult := 'Piauí';
    18: lsResult := 'Rio de Janeiro';
    19: lsResult := 'Rio Grande do Norte';
    20: lsResult := 'Rio Grande do Sul';
    21: lsResult := 'Rondônia';
    22: lsResult := 'Roraima';
    23: lsResult := 'Santa Catarina';
    24: lsResult := 'Sergipe';
    25: lsResult := 'São Paulo';
    26: lsResult := 'Tocantins';
  end;

  Result := lsResult;
end;

end.
