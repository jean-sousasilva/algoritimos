
package com.banktracker.app;

public class ProcessoIndesejado {

    private Integer idProcessoIndesejado;
    private String nomeProcesso;
    private Integer fk_numAgencia;

    public Integer getIdProcessoIndesejado() {
        return idProcessoIndesejado;
    }

    public void setIdProcessoIndesejado(Integer idProcessoIndesejado) {
        this.idProcessoIndesejado = idProcessoIndesejado;
    }

    public String getNomeProcesso() {
        return nomeProcesso;
    }

    public void setNomeProcesso(String nomeProcesso) {
        this.nomeProcesso = nomeProcesso;
    }

    public Integer getFk_numAgencia() {
        return fk_numAgencia;
    }

    public void setFk_numAgencia(Integer fk_numAgencia) {
        this.fk_numAgencia = fk_numAgencia;
    }

    @Override
    public String toString() {
        return String.format("Processo indesejado: Id %d, Nome: %s, Agencia %d", idProcessoIndesejado, nomeProcesso, fk_numAgencia);
    }
    
}
