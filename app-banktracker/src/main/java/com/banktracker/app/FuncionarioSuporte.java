
package com.banktracker.app;

public class FuncionarioSuporte {
    
    private Integer idFuncionarioSuporte;
    private String nomeCompleto;
    private String cpf;
    private String telefone;
    private String email;
    private String senha;
    private Integer fk_numAgencia;

    public Integer getIdFuncionarioSuporte() {
        return idFuncionarioSuporte;
    }

    public void setIdFuncionarioSuporte(Integer idFuncionarioSuporte) {
        this.idFuncionarioSuporte = idFuncionarioSuporte;
    }

    public String getNomeCompleto() {
        return nomeCompleto;
    }

    public void setNomeCompleto(String nomeCompleto) {
        this.nomeCompleto = nomeCompleto;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Integer getFk_numAgencia() {
        return fk_numAgencia;
    }

    public void setFk_numAgencia(Integer fk_numAgencia) {
        this.fk_numAgencia = fk_numAgencia;
    }

    @Override
    public String toString() {
        return String.format("IdFuncionarioSuporte: %d\nNomeCompleto: %s\nCPF: %s\nTelefone: %s\nEmail: %s\nSenha: %s\nFk_idAgencia: %d", idFuncionarioSuporte, nomeCompleto, cpf, telefone, email, senha, fk_numAgencia);
    }
    
    
}
