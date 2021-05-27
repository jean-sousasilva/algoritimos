/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.banktracker.app;

import com.github.britooo.looca.api.core.Looca;
import com.github.britooo.looca.api.group.discos.DiscosGroup;
import com.github.britooo.looca.api.group.memoria.Memoria;
import com.github.britooo.looca.api.group.processador.Processador;
import com.github.britooo.looca.api.group.processos.ProcessosGroup;
import com.github.britooo.looca.api.group.servicos.ServicosGroup;
import com.github.britooo.looca.api.group.sistema.Sistema;
import com.github.britooo.looca.api.group.temperatura.Temperatura;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Aluno
 */
public class Relatorio {
    public static void main(String[] args) {
        Looca looca = new Looca();
        //infos do SO

        
        
        Conexao con = new Conexao();

        //Assistente para executar comandos no BD
        JdbcTemplate template = new JdbcTemplate(con.getBanco());
        
        List resultados = template.queryForList("SELECT * FROM dbo.Banco");
        System.out.println(resultados);
        
        
    }
}
