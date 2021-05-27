/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.banktracker.app;

import java.io.IOException;
import java.net.InetAddress;
import org.springframework.jdbc.core.JdbcTemplate;
/**
 *
 * @author Pedro
 */

public class CaixaEletronico {
    private String hostname;
    private String sistemaOperacional;
    private Long cpuCaixa;
    private String processador;
    private Long ram;
    private Long hd;
    private Boolean ativo;
    private Integer fk_numAgencia;

    public void setHostname(String hostname) {
        this.hostname = hostname;
    }

    public void setSistemaOperacional(String sistemaOperacional) {
        this.sistemaOperacional = sistemaOperacional;
    }

    public void setCpuCaixa(Long cpuCaixa) {
        this.cpuCaixa = cpuCaixa;
    }

    public void setProcessador(String processador) {
        this.processador = processador;
    }

    public void setRam(Long ram) {
        this.ram = ram;
    }

    public void setHd(Long hd) {
        this.hd = hd;
    }

    public void setAtivo(Boolean ativo) {
        this.ativo = ativo;
    }

    public void setFk_numAgencia(Integer fk_numAgencia) {
        this.fk_numAgencia = fk_numAgencia;
    }

    public String getHostname() {
        return hostname;
    }

    public String getSistemaOperacional() {
        return sistemaOperacional;
    }

    public Long getCpuCaixa() {
        return cpuCaixa;
    }

    public String getProcessador() {
        return processador;
    }

    public Long getRam() {
        return ram;
    }

    public Long getHd() {
        return hd;
    }

    public Boolean getAtivo() {
        return ativo;
    }

    public Integer getFk_numAgencia() {
        return fk_numAgencia;
    }
    
    public void cadastrarCaixaEletronico(){
        try {
            Conexao con = new Conexao();
            JdbcTemplate template = new JdbcTemplate(con.getBanco());
            String caixaEletronico = "INSERT INTO CaixaEletronico VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
       
            template.update(caixaEletronico, hostname, sistemaOperacional, cpuCaixa, processador, ram, hd, null, null, ativo, fk_numAgencia); 
            System.out.println("Cadastro de caixa realizado com sucesso!");
            
        } catch (Exception e) {
            String err = e.toString();
          
            if(err.contains("Violation of PRIMARY KEY constraint")){
                SlackBot.slackMensagem("Caixa já cadastrado!");
                System.out.println("Caixa já cadastrado!");
            }else{
                System.out.println(err);
            }
        }
    }
}
