
package com.banktracker.app;

import java.sql.Timestamp;
import java.util.Date;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Alessandro
 */
public class Historico {
    private Double usoCpu;
    private Long usoRam;
    private Double usoDisco;
    private Double discoLivre;
    private String fk_hostname;
    
    public Double getUsoCpu() {
        return usoCpu;
    }

    public void setUsoCpu(Double usoCpu) {
        this.usoCpu = usoCpu;
    }

    public Long getUsoRam() {
        return usoRam;
    }

    public void setUsoRam(Long usoRam) {
        this.usoRam = usoRam;
    }

    public Double getUsoDisco() {
        return usoDisco;
    }

    public void setUsoDisco(Double usoDisco) {
        this.usoDisco = usoDisco;
    }

    public Double getDiscoLivre() {
        return discoLivre;
    }

    public void setDiscoLivre(Double discoLivre) {
        this.discoLivre = discoLivre;
    }
    
    public String getFk_hostname() {
        return fk_hostname;
    }

    public void setFk_hostname(String fk_hostname) {
        this.fk_hostname = fk_hostname;
    }
    
    public void salvarHistorico(){
        try {
            Conexao con = new Conexao();
            JdbcTemplate template = new JdbcTemplate(con.getBanco());
            Date date = new Date();
            Timestamp dataDeHoje = new Timestamp(System.currentTimeMillis());
            
            String Historico = "INSERT INTO Historico VALUES (?, ?, ?, ?, ?)";
       
            template.update(Historico, usoCpu, usoRam, usoDisco, dataDeHoje, fk_hostname); 
            System.out.println(dataDeHoje);
            System.out.println("Histórico salvo com sucesso");
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}