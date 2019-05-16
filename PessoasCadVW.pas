unit PessoasCadVW;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, System.StrUtils,
  System.UITypes, System.JSon, UtilsDAO, Vcl.Buttons, PessoasDAO, EmailDAO, XMLDoc, XmlIntf;

type
  TfrmClientesCadVW = class(TForm)
    pnlRodape: TPanel;
    pnlTela: TPanel;
    pnlBotoes: TPanel;
    edtNome: TEdit;
    lblNome: TLabel;
    lblIdentidade: TLabel;
    edtIdentidade: TEdit;
    lblTipoPessoa: TLabel;
    cmbTipo: TComboBox;
    lblCPFCNPJ: TLabel;
    edtCPFCNPJ: TMaskEdit;
    lblTelefone: TLabel;
    edtTelefone: TMaskEdit;
    lblEmail: TLabel;
    edtEmail: TEdit;
    gbxEndereco: TGroupBox;
    lblCep: TLabel;
    edtCEP: TMaskEdit;
    lblLogradouro: TLabel;
    edtLogradouro: TEdit;
    lblNumero: TLabel;
    edtNumero: TEdit;
    lblComplemento: TLabel;
    edtComplemento: TEdit;
    lblBairro: TLabel;
    edtBairro: TEdit;
    lblCidade: TLabel;
    edtCidade: TEdit;
    lblEstado: TLabel;
    cmbEstado: TComboBox;
    lblPais: TLabel;
    edtPais: TEdit;
    btnIncluir: TSpeedButton;
    btnSair: TSpeedButton;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    procedure edtCPFCNPJExit(Sender: TObject);
    procedure edtCPFCNPJEnter(Sender: TObject);
    procedure edtCEPExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    poPessoasDAO: TPessoasDAO;
    poEmailDAO: TEmailDAO;
    procedure getDadosCEP(CEP: String);
    function validarDados: Boolean;
    procedure instanciarPropriedades;
    procedure incluirDados;
    procedure alterarDados;
    procedure limparObjetos;
    procedure habilitar(Value : Boolean);
    procedure habilitarBotoes(nStatus: Integer);
    procedure getConfigEmail;
    procedure searchClienteCadastrado(Nome, CPFCNPJ: String);
    function gerarArquivoXML: String;
  protected
    { Protected declarations }
    property oPessoasDAO: TPessoasDAO read poPessoasDAO write poPessoasDAO;
    property oEmailDAO: TEmailDAO read poEmailDAO write poEmailDAO;
  public
    { Public declarations }
  end;

var
  frmClientesCadVW: TfrmClientesCadVW;

implementation

uses EmailCadVw;

{$R *.dfm}

// Alterando os dados de um cliente já cadatrado
procedure TfrmClientesCadVW.alterarDados;
begin
  oPessoasDAO.ocdsPessoas.Edit;
  oPessoasDAO.ocdsPessoas.FieldByName('Nome').AsString := oPessoasDAO.sNome.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Identidade').AsString := oPessoasDAO.sIdentidade.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('CPFCNPJ').AsString := oPessoasDAO.sCPFCNPJ.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Telefone').AsString := oPessoasDAO.sTelefone.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Email').AsString := oPessoasDAO.sEmail.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('CEP').AsString := oPessoasDAO.sCEP.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Logradouro').AsString := oPessoasDAO.sLogradouro.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Numero').AsString := oPessoasDAO.sNumero.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Complemento').AsString := oPessoasDAO.sComplemento.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Bairro').AsString := oPessoasDAO.sBairro.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Cidade').AsString := oPessoasDAO.sCidade.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Estado').AsString := oPessoasDAO.sEstado.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Pais').AsString := oPessoasDAO.sPais.Trim;
  oPessoasDAO.ocdsPessoas.Post;
end;

// Procedure para gravar os dados informados. Utiliza os métodos existentes na classe PessoasDAO
procedure TfrmClientesCadVW.btnCancelarClick(Sender: TObject);
begin
  limparObjetos;
  habilitar(False);
  habilitarBotoes(0);
end;

procedure TfrmClientesCadVW.btnGravarClick(Sender: TObject);
var
  llGravou: Boolean;
begin
  if validarDados then
  begin
    instanciarPropriedades;

    if not oPessoasDAO.ocdsPessoas.Active then
      oPessoasDAO.ocdsPessoas.CreateDataSet;

    if not oPessoasDAO.ocdsPessoas.Locate('Nome;CPFCNPJ', VarArrayOf([oPessoasDAO.sNome.Trim, oPessoasDAO.sCPFCNPJ.Trim]), []) then
      IncluirDados
    else
      alterarDados;

    llGravou := oPessoasDAO.gravarDados;

    if llGravou then
    begin
      MessageDlg('Cliente gravado com sucesso!', mtInformation, [mbOK], 0);

      if Trim(oPessoasDAO.sEmail) <> EmptyStr then
      begin
        if (oEmailDAO.sConta.Trim = EmptyStr) or
          (oEmailDAO.sSMTP.Trim = EmptyStr) or
          (oEmailDAO.sSenhaSMTP.Trim = EmptyStr) or
          (oEmailDAO.sPortaSMTP.Trim = EmptyStr) then
        begin
          MessageDlg('As configurações de Email estão incompletas. Não é possível enviar o email de Confirmação ao Cliente!', mtInformation, [mbOK], 0);
        end
        else
        begin
          if MessageDlg('Deseja enviar email de confirmação de cadastro para o cliente?', mtConfirmation, mbYesNo, 0) = mrYes then
          begin
            oEmailDAO.sEmailDestinatario := oPessoasDAO.sEmail;
            oEmailDAO.sAssuntoEmail := 'Confirmação de Cadastro';
            oEmailDAO.sMensagemEmail := 'Cadastro realizado com sucesso' + #13 + #13 +
              'Seque anexo seus dados para confirmação.';
            oEmailDAO.sAnexoEmail := gerarArquivoXML;
            if oEmailDAO.enviarEmail then
              MessageDlg('Email enviado com sucesso!', mtInformation, [mbOK], 0);
          end;
        end;
      end;

      habilitar(False);
      habilitarBotoes(0);
    end;

  end;
end;

procedure TfrmClientesCadVW.btnIncluirClick(Sender: TObject);
begin
  limparObjetos;
  habilitar(True);
  habilitarBotoes(1);
  edtPais.Text := 'Brasil';
  edtNome.SetFocus;
end;

procedure TfrmClientesCadVW.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmClientesCadVW.edtCEPExit(Sender: TObject);
begin
  if TUtilsDAO.returnSoNumeros(edtCEP.Text) <> EmptyStr then
  begin
    if Length(TUtilsDAO.returnSoNumeros(edtCEP.Text)) = 8 then
      getDadosCEP(TUtilsDAO.returnSoNumeros(edtCEP.Text))
    else
    begin
      MessageDlg('CEP inválido!', mtInformation, [mbOK], 0);
      edtCEP.SetFocus;
    end;
  end
  else
    MessageDlg('Informe o CEP!', mtInformation, [mbOK], 0);
end;

procedure TfrmClientesCadVW.edtCPFCNPJEnter(Sender: TObject);
begin
  edtCPFCNPJ.EditMask := EmptyStr;
end;

procedure TfrmClientesCadVW.edtCPFCNPJExit(Sender: TObject);
var
  llResult: Boolean;
begin
  llResult := True;
  if Trim(cmbTipo.Text) = EmptyStr then
  begin
    MessageDlg('Informe o Tipo do Cliente!', mtInformation, [mbOK], 0);
    cmbTipo.SetFocus;
  end
  else
  begin
    if TUtilsDAO.returnSoNumeros(edtCPFCNPJ.Text) <> EmptyStr then
    begin
      case cmbTipo.ItemIndex of
        0:
          begin
            if Length(TUtilsDAO.returnSoNumeros(edtCPFCNPJ.Text)) < 11 then
              llResult := False;
          end;
        1:
          begin
            if Length(TUtilsDAO.returnSoNumeros(edtCPFCNPJ.Text)) < 14 then
              llResult := False;
          end;
      end;

      if not llResult then
      begin
        MessageDlg(IfThen(cmbTipo.ItemIndex = 0, 'CPF', 'CNPJ') + ' inválido!', mtInformation, [mbOK], 0);
        edtCPFCNPJ.SetFocus;
      end
      else
      begin
        searchClienteCadastrado(Trim(edtNome.Text), Trim(edtCPFCNPJ.Text));
        case cmbTipo.ItemIndex of
          0: edtCPFCNPJ.EditMask := '000.000.000-00;0; ';
          1: edtCPFCNPJ.EditMask := '00.000.000/0000-00;0; ';
          else
            edtCPFCNPJ.EditMask := EmptyStr;
        end;
      end;
    end;
  end;
end;

procedure TfrmClientesCadVW.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(CM_DIALOGKEY, VK_TAB, 0);
    Key := #0;
  end;
end;

procedure TfrmClientesCadVW.FormShow(Sender: TObject);
begin
  oPessoasDAO := TPessoasDAO.Create;
  poEmailDAO := TEmailDAO.Create;

  oPessoasDAO.getDados;
  habilitar(False);
  habilitarBotoes(0);

  getConfigEmail;
end;

function TfrmClientesCadVW.gerarArquivoXML: String;
var
  loXMLDocument: TXMLDocument;
  lsArquivo: String;
begin
  loXMLDocument := TXMLDocument.Create(nil);
  try
    loXMLDocument.Active := True;
    loXMLDocument.AddChild('Cliente').AddChild('Chave').NodeValue :=  1;
    loXMLDocument.DocumentElement.AddChild('Cliente');
    loXMLDocument.DocumentElement.ChildNodes['Cliente'].AddChild('Nome').NodeValue := oPessoasDAO.sNome;

    loXMLDocument.DocumentElement.ChildNodes['Cliente'].AddChild('CPF_CNPJ').NodeValue := oPessoasDAO.sCPFCNPJ;
    loXMLDocument.DocumentElement.ChildNodes['Cliente'].AddChild('Telefone').NodeValue := oPessoasDAO.sTelefone;
    loXMLDocument.DocumentElement.ChildNodes['Cliente'].AddChild('Email').NodeValue := oPessoasDAO.sEmail;
    loXMLDocument.DocumentElement.AddChild('Endereco');
    loXMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('CEP').NodeValue := oPessoasDAO.sCEP;
    loXMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Logradouro').NodeValue := oPessoasDAO.sLogradouro;
    loXMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Numero').NodeValue := oPessoasDAO.sNumero;
    loXMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Complemento').NodeValue := oPessoasDAO.sComplemento;
    loXMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Bairro').NodeValue := oPessoasDAO.sBairro;
    loXMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Cidade').NodeValue := oPessoasDAO.sCidade;
    loXMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Estado').NodeValue := oPessoasDAO.sEstado;
    loXMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Pais').NodeValue := oPessoasDAO.sPais;

    lsArquivo := ExtractFilePath(Application.ExeName) + 'Cliente' +  oPessoasDAO.sCPFCNPJ.Trim + '.xml';
    loXMLDocument.SaveToFile(lsArquivo);
  finally
    loXMLDocument.Free;
  end;

  Result := lsArquivo;
end;

procedure TfrmClientesCadVW.getConfigEmail;
begin
  Application.CreateForm(TfrmEmailCadVW, frmEmailCadVW);
  frmEmailCadVW.ShowModal;

  Self.oEmailDAO := frmEmailCadVW.oEmailDAO;

  FreeAndNil(frmEmailCadVW);
end;

procedure TfrmClientesCadVW.getDadosCEP(CEP: String);
var
  loJSonObject: TJSONObject;
  lsUF: String;
begin
  loJSonObject := TUtilsDAO.getCEP(Cep);

  if loJSonObject <> nil then
  begin
    edtLogradouro.Text  := loJSonObject.Get('logradouro').JsonValue.Value;
    edtComplemento.Text := loJSonObject.Get('complemento').JsonValue.Value;
    edtBairro.Text      := loJSonObject.Get('bairro').JsonValue.Value;
    edtCidade.Text      := loJSonObject.Get('localidade').JsonValue.Value;
    lsUF                := TUtilsDAO.seachSiglaEstadoUF(loJSonObject.Get('uf').JsonValue.Value);
    cmbEstado.ItemIndex := cmbEstado.Items.IndexOf(lsUF);
  end
  else
  begin
    MessageDlg('CEP inválido ou não encontrado!', mtInformation, [mbOK], 0);
    edtCep.SetFocus;
  end;
end;

procedure TfrmClientesCadVW.habilitar(Value: Boolean);
var
  lnIndex: Integer;
begin
  with Self do
  begin
    for lnIndex := 0 to ComponentCount -1 do
    begin
      if Components[lnIndex] is TEdit then
        TEdit(Components[lnIndex]).Enabled := Value
        else
          if Components[lnIndex] is TMaskEdit then
            TMaskEdit(Components[lnIndex]).Enabled := Value
          else
            if Components[lnIndex] is TComboBox then
              TComboBox(Components[lnIndex]).Enabled := Value
            else
              if Components[lnIndex] is TLabeledEdit then
                TLabeledEdit(Components[lnIndex]).Enabled := Value;
    end;
  end;
end;

procedure TfrmClientesCadVW.habilitarBotoes(nStatus: Integer);
begin
   //btnPesquisar.Enabled := UFuncoes.validarPermissoes(frmPrincipal.liberado, 1);
   case (nStatus) of
    0:
      begin
        btnIncluir.Enabled          := True;
        btnCancelar.Enabled         := False;
        btnGravar.Enabled           := False;
      end;
    1:
      begin
        btnGravar.Enabled           := btnIncluir.Enabled;
        btnCancelar.Enabled         := btnIncluir.Enabled;
        btnIncluir.Enabled          := False;
      end;
    2:
      begin
        btnIncluir.Enabled          := True;
        btnCancelar.Enabled         := False;
        btnGravar.Enabled           := False;
      end;
   end;
end;

procedure TfrmClientesCadVW.incluirDados;
begin
  oPessoasDAO.ocdsPessoas.Insert;
  oPessoasDAO.ocdsPessoas.FieldByName('Nome').AsString := oPessoasDAO.sNome.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Identidade').AsString := oPessoasDAO.sIdentidade.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('CPFCNPJ').AsString := oPessoasDAO.sCPFCNPJ.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Telefone').AsString := oPessoasDAO.sTelefone.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Email').AsString := oPessoasDAO.sEmail.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('CEP').AsString := oPessoasDAO.sCEP.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Logradouro').AsString := oPessoasDAO.sLogradouro.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Numero').AsString := oPessoasDAO.sNumero.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Complemento').AsString := oPessoasDAO.sComplemento.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Bairro').AsString := oPessoasDAO.sBairro.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Cidade').AsString := oPessoasDAO.sCidade.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Estado').AsString := oPessoasDAO.sEstado.Trim;
  oPessoasDAO.ocdsPessoas.FieldByName('Pais').AsString := oPessoasDAO.sPais.Trim;
  oPessoasDAO.ocdsPessoas.Post;
end;

procedure TfrmClientesCadVW.instanciarPropriedades;
begin
  oPessoasDAO.sNome := Trim(edtNome.Text);
  oPessoasDAO.sIdentidade := Trim(edtIdentidade.Text);
  oPessoasDAO.sCPFCNPJ := Trim(edtCPFCNPJ.Text);
  oPessoasDAO.sTelefone := Trim(edtTelefone.Text);
  oPessoasDAO.sEmail := Trim(edtEmail.Text);
  oPessoasDAO.sCEP := Trim(edtCEP.Text);
  oPessoasDAO.sLogradouro := Trim(edtLogradouro.Text);
  oPessoasDAO.sNumero := Trim(edtNumero.Text);
  oPessoasDAO.sComplemento := Trim(edtComplemento.Text);
  oPessoasDAO.sBairro := Trim(edtBairro.Text);
  oPessoasDAO.sCidade := Trim(edtCidade.Text);
  oPessoasDAO.sEstado := Trim(cmbEstado.Text);
  oPessoasDAO.sPais := Trim(edtPais.Text);
end;

procedure TfrmClientesCadVW.limparObjetos;
var
  lnIndex: Integer;
begin
  with Self do
  begin
    for lnIndex := 0 to ComponentCount -1 do
    begin
      if Components[lnIndex] is TEdit then
      begin
        TEdit(Components[lnIndex]).Clear;
        TEdit(Components[lnIndex]).Enabled := False;
      end
      else if Components[lnIndex] is TMaskEdit then
      begin
        TMaskEdit(Components[lnIndex]).Clear;
        TMaskEdit(Components[lnIndex]).Enabled := False;
      end
      else if Components[lnIndex] is TComboBox then
      begin
        //TComboBox(Components[lnIndex]).Clear;
        TComboBox(Components[lnIndex]).ItemIndex := -1;
        TComboBox(Components[lnIndex]).Enabled := False;
      end
      else if Components[lnIndex] is TLabeledEdit then
      begin
        TLabeledEdit(Components[lnIndex]).Clear;
        TLabeledEdit(Components[lnIndex]).Enabled := False;
      end;
    end;
  end;
end;

procedure TfrmClientesCadVW.searchClienteCadastrado(Nome, CPFCNPJ: String);
begin
  if (Nome <> EmptyStr) and (CPFCNPJ <> EmptyStr) then
  begin
    if oPessoasDAO.ocdsPessoas.Active then
      if oPessoasDAO.ocdsPessoas.RecordCount > 0 then
      begin
        oPessoasDAO.ocdsPessoas.First;
        if oPessoasDAO.ocdsPessoas.Locate('Nome;CPFCNPJ', VarArrayOf([Nome, CPFCNPJ]), []) then
        begin
          edtIdentidade.Text  := oPessoasDAO.ocdsPessoas.FieldByName('Identidade').AsString;
          edtTelefone.Text    := oPessoasDAO.ocdsPessoas.FieldByName('Telefone').AsString;
          edtEmail.Text       := oPessoasDAO.ocdsPessoas.FieldByName('Email').AsString;
          edtCEP.Text         := oPessoasDAO.ocdsPessoas.FieldByName('CEP').AsString;
          edtLogradouro.Text  := oPessoasDAO.ocdsPessoas.FieldByName('Logradouro').AsString;
          edtNumero.Text      := oPessoasDAO.ocdsPessoas.FieldByName('Numero').AsString;
          edtComplemento.Text := oPessoasDAO.ocdsPessoas.FieldByName('Complemento').AsString;
          edtBairro.Text      := oPessoasDAO.ocdsPessoas.FieldByName('Bairro').AsString;
          edtCidade.Text      := oPessoasDAO.ocdsPessoas.FieldByName('Cidade').AsString;
          cmbEstado.ItemIndex := cmbEstado.Items.IndexOf(oPessoasDAO.ocdsPessoas.FieldByName('Estado').AsString);
          edtPais.Text        := oPessoasDAO.ocdsPessoas.FieldByName('Pais').AsString;
        end;
      end;
  end;
end;

function TfrmClientesCadVW.validarDados: Boolean;
var
  llResult: Boolean;
begin
  llResult := True;

  if Trim(edtNome.Text) = EmptyStr then
  begin
    MessageDlg('Informe o Nome do Cliente!', mtInformation, [mbOK], 0);
    llResult := False;
  end;

  if (llResult) and (TUtilsDAO.returnSoNumeros(Trim(edtCPFCNPJ.Text)) = EmptyStr) then
  begin
    MessageDlg('Informe o CPF/CNPJ do Cliente!', mtInformation, [mbOK], 0);
    llResult := False;
  end;

  Result := llResult;
end;

end.
