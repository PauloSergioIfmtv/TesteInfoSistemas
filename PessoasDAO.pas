unit PessoasDAO;

interface

uses Windows, Messages, SysUtils, SqlExpr, Dialogs, Forms, StrUtils,
  PessoasEN, Data.DB, DBClient, System.Classes;

type
  TPessoasDAO = class(TPessoasEN)
  private
    { Private declarations }
    pocdsPessoas: TClientDataSet;
    podsPessoas: TDataSource;
    procedure createFieldsDefcdsPessoas;
  protected
    { Protected declarations }
  published
    { published declarations }
    procedure getDados;
    function gravarDados: Boolean;
  public
    { Public declarations }
    constructor Create;
    destructor Destroy; override;
    property ocdsPessoas: TClientDataSet read pocdsPessoas write pocdsPessoas;
    property odsPessoas: TDataSource read podsPessoas write podsPessoas;
  end;

implementation

{ TPessoasDAO }

constructor TPessoasDAO.Create;
begin
  inherited Create;
  TPessoasEN.Create;

  ocdsPessoas := TClientDataSet.Create(Application);
  odsPessoas := TDataSource.Create(Application);
  odsPessoas.DataSet := ocdsPessoas;
  createFieldsDefcdsPessoas;
end;

procedure TPessoasDAO.createFieldsDefcdsPessoas;
begin
  ocdsPessoas.FieldDefs.Clear;
  ocdsPessoas.FieldDefs.Add('Nome', ftString, 120);
  ocdsPessoas.FieldDefs.Add('Identidade', ftString, 20);
  ocdsPessoas.FieldDefs.Add('CPFCNPJ', ftString, 14);
  ocdsPessoas.FieldDefs.Add('Telefone', ftString, 12);
  ocdsPessoas.FieldDefs.Add('Email', ftString, 150);
  ocdsPessoas.FieldDefs.Add('CEP', ftString, 8);
  ocdsPessoas.FieldDefs.Add('Logradouro', ftString, 120);
  ocdsPessoas.FieldDefs.Add('Numero', ftString, 60);
  ocdsPessoas.FieldDefs.Add('Complemento', ftString, 120);
  ocdsPessoas.FieldDefs.Add('Bairro', ftString, 120);
  ocdsPessoas.FieldDefs.Add('Cidade', ftString, 120);
  ocdsPessoas.FieldDefs.Add('Estado', ftString, 120);
  ocdsPessoas.FieldDefs.Add('Pais', ftString, 100);

end;

destructor TPessoasDAO.Destroy;
begin
  inherited Destroy;
end;

procedure TPessoasDAO.getDados;
begin
  if FileExists(ExtractFilePath(Application.ExeName)+'PessoasCad.xml') then
  begin
    if pocdsPessoas.Active then
      pocdsPessoas.Close;
    pocdsPessoas.CreateDataSet;

    pocdsPessoas.LoadFromFile(ExtractFilePath(Application.ExeName)+'PessoasCad.xml');
    pocdsPessoas.Open;

  end;
end;

function TPessoasDAO.gravarDados: Boolean;
var
  llResult: Boolean;
begin
  llResult := False;

  if pocdsPessoas.Active then
    if pocdsPessoas.RecordCount > 0 then
    begin
      if FileExists(ExtractFilePath(Application.ExeName)+'PessoasCad.xml') then
        DeleteFile(ExtractFilePath(Application.ExeName)+'PessoasCad.xml');

      ocdsPessoas.SaveToFile(ExtractFilePath(Application.ExeName)+'PessoasCad.xml', dfXML);

      pocdsPessoas.First;

      llResult := FileExists(ExtractFilePath(Application.ExeName)+'PessoasCad.xml');
    end;

  Result := llResult;
end;

end.
