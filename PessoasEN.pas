unit PessoasEN;

interface

uses StrUtils, SqlTimSt, ExtCtrls, Classes;

type
  TPessoasEN = class
  private
    { Private declarations }
    psNome: String;
    psIdentidade: String;
    psCPFCNPJ: String;
    psTelefone: String;
    psEmail: String;
    psCEP: String;
    psLogradouro: String;
    psNumero: String;
    psComplemento: String;
    psBairro: String;
    psCidade: String;
    psEstado: String;
    psPais: String;
  public
    { Public declarations }
    constructor Create;
    destructor Destroy; override;
    property sNome : String read psNome write psNome;
    property sIdentidade: String read psIdentidade write psIdentidade;
    property sCPFCNPJ: String read psCPFCNPJ write psCPFCNPJ;
    property sTelefone: String read psTelefone write psTelefone;
    property sEmail: String read psEmail write psEmail;
    property sCEP: String read psCEP write psCEP;
    property sLogradouro: String read psLogradouro write psLogradouro;
    property sNumero: String read psNumero write psNumero;
    property sComplemento: String read psComplemento write psComplemento;
    property sBairro: String read psBairro write psBairro;
    property sCidade: String read psCidade write psCidade;
    property sEstado: String read psEstado write psEstado;
    property sPais: String read psPais write psPais;
  end;

implementation

{ TPessoas }

constructor TPessoasEN.Create;
begin
  inherited Create;
end;

destructor TPessoasEN.Destroy;
begin
  inherited Destroy;
end;

end.
