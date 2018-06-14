package model;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;

@WebServlet(name = "Mail Servlet", value = {"/mail"})
public class MailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nick = request.getParameter("nick");
        String topic = request.getParameter("topic");
        String text = request.getParameter("text");

        String from = "psj8@wp.pl";
        String username = from;
        String password = "dupa.8gHr-3Das1";

        String host = "smtp.wp.pl";

        Properties props = new Properties();

        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.socketFactory.post", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", "465");

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            Message message = new MimeMessage(session);

            message.setFrom(new InternetAddress(from));

            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("giel.robert@gmail.com"));

            message.setSubject(topic);

            message.setContent("<h1>" + nick + "</h1>" + "<p>" + text + "</p>", "text/html");

            Transport.send(message);

            successSend(request, response);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void successSend(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String messageText = "Udalo się wysłać wiadomość";
        request.setAttribute("messageText", messageText);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/mail-page.jsp");
        dispatcher.forward(request, response);
    }
}
