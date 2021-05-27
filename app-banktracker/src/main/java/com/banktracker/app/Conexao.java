
package com.banktracker.app;

import java.util.List;
import javax.xml.transform.Templates;
import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

/**
 *
 * @author Guilherme
 */
public class Conexao {
    private BasicDataSource banco;

    public Conexao( ) {
        this.banco = new BasicDataSource();
        banco.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        banco.setUrl("jdbc:sqlserver://banktracker.database.windows.net:1433;database=banktracker;user=banktracker@banktracker;password={Urubu100};encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;");
        banco.setUsername("banktracker");
        banco.setPassword("Urubu100");
        //banco.setUrl("jdbc:sqlserver://testebdgp1.database.windows.net:1433;database=TesteBD;user=teste@testebdgp1;password={#Gfgrupo1};encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;");
        //banco.setUsername("teste");
        //banco.setPassword("#Gfgrupo1");
    }

    public BasicDataSource getBanco() {
        return banco;
    }
}