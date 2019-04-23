package com.lq.job.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MailController {
    @Autowired
    JavaMailSender jms;

    @RequestMapping(value="send")
    public String send(HttpServletRequest request, String email){
        //建立邮件消息
        SimpleMailMessage mainMessage = new SimpleMailMessage();
        //发送者
        mainMessage.setFrom("792061754@qq.com");
        //接收者
        mainMessage.setTo(email);
        //发送的标题
        mainMessage.setSubject("欢迎注册");
        int randomNum = (int)((Math.random()*9+1)*1000);
        //发送的内容
        mainMessage.setText("您的验证码为："+String.valueOf(randomNum));
        jms.send(mainMessage);
        return String.valueOf(randomNum);
    }
}
