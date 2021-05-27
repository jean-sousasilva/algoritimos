
package com.banktracker.app;

public class Agencia {

    private static Agencia instance;
    private Integer idAgencia;
    
    private Agencia(Integer idAgencia) {
        this.idAgencia = idAgencia;
    }
    
    public static Agencia getInstance(Integer idAgencia) {
        if(instance == null) {
            instance = new Agencia(idAgencia);
        }
        return instance;
    }

    public Integer getIdAgencia() {
        return idAgencia;
    }
    
}
