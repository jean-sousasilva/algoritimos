package com.banktracker.app;

import static com.banktracker.app.SlackBot.slackMensagem;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public final class FinalizadorProcessos {

    private List<ProcessoIndesejado> processos = new ArrayList<ProcessoIndesejado>();

    public void buscarProcessosIndesejados() throws UnknownHostException {
        Conexao con = new Conexao();
        JdbcTemplate template = new JdbcTemplate(con.getBanco());
        String hostname = InetAddress.getLocalHost().getHostName();

        Integer idAgencia = Agencia.getInstance(null).getIdAgencia();
        processos = template.query("SELECT * FROM ProcessoIndesejado where fk_numAgencia = " + idAgencia, new BeanPropertyRowMapper(ProcessoIndesejado.class));

        for (ProcessoIndesejado pi : processos) {
            System.out.println(pi);
        }
    }

    public void FinalizarProcessos(String sistemaOperacional) throws UnknownHostException {
        String so = sistemaOperacional;
        String hostname = InetAddress.getLocalHost().getHostName();
        for (ProcessoIndesejado processo : processos) {
            if (so.contains("Windows")) {
                try {
                    String comando = "tskill " + processo.getNomeProcesso();
                    Process exec = Runtime.getRuntime().exec(comando);
                    slackMensagem("O processo " + processo.getNomeProcesso() + " do caixa " + hostname + " foi finalizado");
                } catch (Exception e) {

                    e.printStackTrace();
                }
            } else {
                try {
                    String comando = "pkill " + processo.getNomeProcesso();
                    Process exec = Runtime.getRuntime().exec(comando);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

}
