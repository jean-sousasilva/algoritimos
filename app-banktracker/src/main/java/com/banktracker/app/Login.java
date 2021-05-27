
package com.banktracker.app;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import java.util.List;

public class Login {
        
    Conexao con = new Conexao();
    JdbcTemplate template = new JdbcTemplate(con.getBanco());


    public Boolean autenticaLogin(String login, String senha) {
        
        List<FuncionarioSuporte> loginusuario = template.query("SELECT * FROM FuncionarioSuporte WHERE email LIKE '" + login + "' AND senha LIKE '" + senha + "'", new BeanPropertyRowMapper(FuncionarioSuporte.class));
        try {
            // Coleta o valor da fk da agencia
            Integer idAgencia = loginusuario.get(0).getFk_numAgencia();
            // Inicializa a istancia da agencia, com o valor da fk_numAgencia do usuario
            Agencia agencia = Agencia.getInstance(idAgencia);
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("Não retornou usuário");
        }
        
       // 
        
        
        
        //System.out.println(agencia.getIdAgencia());
        
        return loginusuario.isEmpty();
    }
}
