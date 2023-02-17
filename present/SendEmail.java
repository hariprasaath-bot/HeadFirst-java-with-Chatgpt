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
            // new InternetAddress("recipient3@example.com")
         };
         
         message.setRecipients(Message.RecipientType.TO, recipients);

         message.setSubject("Testing Subject");
         message.setText("Dear Recipients,"
            + "\n\n Github link for the presentation."
            + "\n\n -- ");

         Transport.send(message);

         System.out.println("Email sent successfully!");

      } catch (MessagingException e) {
         throw new RuntimeException(e);
      }
   }
}
