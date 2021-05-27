/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.banktracker.app;

import java.io.IOException;
import com.slack.api.Slack;
import com.slack.api.webhook.Payload;
import com.slack.api.webhook.WebhookResponse;

/**
 *
 * @author Guilherme
 */
public class SlackBot {

    public static void slackConnection(String mensagem) throws IOException {
        Slack slack = Slack.getInstance();
        String webhookUrl = "https://hooks.slack.com/services/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";
        Payload payload = Payload.builder().text(mensagem).build();
        WebhookResponse response = slack.send(webhookUrl, payload);
        System.out.println(response);
    }
    
    public static void slackMensagem(String mensagem){
        try {
            SlackBot.slackConnection(mensagem);
        } catch (Exception e) {
        }
        
    }
}
