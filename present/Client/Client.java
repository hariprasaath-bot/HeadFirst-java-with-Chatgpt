import java.io.*;
import java.net.*;

public class Client {
    public static void main(String[] args) {
        try {
            // create a socket to connect to the server at IP address "localhost" and port 5000
            Socket socket = new Socket("localhost", 5000);
            System.out.println("Connected to server!");

            // set up input and output streams
            InputStream inputStream = socket.getInputStream();
            OutputStream outputStream = socket.getOutputStream();

            // create a data input and output stream to read and write messages
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream);

            // start an infinite loop to read and write messages
            while (true) {
                // read a message from the user
                BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
                System.out.print("Enter a message to send to the server: ");
                String message = reader.readLine();

                // write the message to the server
                dataOutputStream.writeUTF(message);
                dataOutputStream.flush();

                // read the response from the server
                String response = dataInputStream.readUTF();
                System.out.println("Server says: " + response);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
