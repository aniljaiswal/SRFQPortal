/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.my.mail;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import java.io.*;
import java.util.*;
//import javax.mail.*;
//import javax.mail.event.*;
//import javax.mail.internet.*;
//
///**
// *
// * @author dell
// */
//public class MailAction extends org.apache.struts.action.Action {
//
//    /* forward name="success" path="" */
//    private static final String SUCCESS = "success";
//    private String SMTP_HOST_NAME = "smtp.gmail.com";
//   // private String SMTP_AUTH_USER = "errashigupta1519@gmail.com";
//   // private String SMTP_AUTH_PWD = "radhashyam";
//    // private String recipients;
//
//    /**
//     * This is the action called from the Struts framework.
//     * @param mapping The ActionMapping used to select this instance.
//     * @param form The optional ActionForm bean for this request.
//     * @param request The HTTP Request we are processing.
//     * @param response The HTTP Response we are processing.
//     * @throws java.lang.Exception
//     * @return
//     */
//    @Override
//    public ActionForward execute(ActionMapping mapping, ActionForm form,
//            HttpServletRequest request, HttpServletResponse response)
//            throws Exception {
//        MailBean mob = (MailBean) form;
//        String[] to = mob.getTo();
//        String from = mob.getFrom();
//        String sub = mob.getSub();
//        String msg = mob.getMsg();
//        MailAction mo = new MailAction();
//         for(int i=0;i<to.length;i++){
//             System.out.println(to[i]);
//         }
//         System.out.println(to);
//          System.out.println(from);
//           System.out.println(sub);
//           System.out.println(msg);
//
//    try {
//        mo.postMail(to, sub, msg, from);
//    }
//    catch(Exception e){
//        e.printStackTrace();
//    }
//        request.setAttribute("ma", "Mail Send We will reply as soon as possible");
//        return mapping.getInputForward();
//    }
//
//    public void postMail(String recipients[], String subject, String message,
//            String from) throws MessagingException {
//        boolean debug = false;
//        try {
//            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
//
//            //Set the host smtp address
//            Properties props = new Properties();
//            props.put("mail.transport.protocol", "smtp");
//            props.put("mail.smtp.starttls.enable", "true");
//            props.put("mail.smtp.host", SMTP_HOST_NAME);
//            props.put("mail.smtp.auth", "true");
//            props.put("mail.smtp.port", 465);
//               props.put("mail.smtp.starttls.enable","true");
//             props.put("mail.smtp.socketFactory.port",465);
//             props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
//               props.put("mail.smtp.socketFactory.fallback", "false");
//
//            Authenticator auth = new SMTPAuthenticator();
//            Session session = Session.getDefaultInstance(props, auth);
//
//            session.setDebug(debug);
//
//            // create a message
//            Message msg = new MimeMessage(session);
//
//            // set the from and to address
//            InternetAddress addressFrom = new InternetAddress(from);
//            msg.setFrom(addressFrom);
//
//            InternetAddress[] addressTo = new InternetAddress[recipients.length];
//            for (int i = 0; i < recipients.length; i++) {
//                addressTo[i] = new InternetAddress(recipients[i]);
//            }
//            msg.setRecipients(Message.RecipientType.TO, addressTo);
//
//            // Setting the Subject and Content Type
//            msg.setSubject(subject);
//            msg.setContent(message, "text/plain");
//            Transport.send(msg);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//}
//
//class SMTPAuthenticator extends javax.mail.Authenticator {
//
//    private String SMTP_AUTH_USER = "rashigupta1511@gmail.com";
//    private String SMTP_AUTH_PWD = "rashi@123";
//
//    @Override
//    public PasswordAuthentication getPasswordAuthentication() {
//        String username = SMTP_AUTH_USER;
//        String password = SMTP_AUTH_PWD;
//        return new PasswordAuthentication(username, password);
//    }
//}
