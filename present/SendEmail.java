import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class SendEmail {
   public static void main(String[] args) {
      final String username = "123005048@sastra.ac.in";
      final String password = "Intotheschool";
        System.out.println("hello");
      Properties props = new Properties();
      props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.starttls.enable", "true");
      props.put("mail.smtp.host", "smtp.gmail.com");
      props.put("mail.smtp.port", "587");

      Session session = Session.getInstance(props,
         new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
               return new PasswordAuthentication(username, password);
            }
         });

      try {
         Message message = new MimeMessage(session);
         InternetAddress[] recipients = { 
            new InternetAddress("hariprasaath090401@gmail.com"),
            new InternetAddress("123003257@sastra.ac.in"),
            new InternetAddress("charavanan.v.b@gmail.com"),
            new InternetAddress("aravintengineer@gmail.com"),
            new InternetAddress("balajikamal2001@gmail.com")
         };
         
         message.setRecipients(Message.RecipientType.TO, recipients);

         message.setSubject("HeadFirst JAVA");
         message.setText("Dear Recipients,"
            + "\n\n Github link for the presentation."
            + "\n\n -- https://github.com/hariprasaath-bot/HeadFirst-java-with-Chatgpt.git ");

         Transport.send(message);

         System.out.println("Email sent successfully!");

      } catch (MessagingException e) {
         throw new RuntimeException(e);
      }
   }
}
