import java.io.*;
import java.net.*;

public class Server {
    public static void main(String[] args) {
        try {
            // create a server socket listening on port 5000
            ServerSocket serverSocket = new ServerSocket(5000);
            System.out.println("Server started. Listening for clients...");

            // start an infinite loop to handle incoming client connections
            while (true) {
                // wait for a client to connect
                Socket clientSocket = serverSocket.accept();
                System.out.println("Client connected: " + clientSocket.getInetAddress().getHostAddress());

                // create a new thread to handle the client connection
                ClientHandler clientHandler = new ClientHandler(clientSocket);
                Thread thread = new Thread(clientHandler);
                thread.start();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static class ClientHandler implements Runnable {
        private Socket clientSocket;
        private DataInputStream dataInputStream;
        private DataOutputStream dataOutputStream;

        public ClientHandler(Socket clientSocket) {
            this.clientSocket = clientSocket;
        }

        @Override
        public void run() {
            try {
                // set up input and output streams
                InputStream inputStream = clientSocket.getInputStream();
                OutputStream outputStream = clientSocket.getOutputStream();
                dataInputStream = new DataInputStream(inputStream);
                dataOutputStream = new DataOutputStream(outputStream);

                // start an infinite loop to read and write messages
                while (true) {
                    // read a message from the client
                    String message = dataInputStream.readUTF();
                    System.out.println("Received message from client: " + message);

                    // write a message back to the client
                    String response = "Server received your message: " + message;
                    dataOutputStream.writeUTF(response);
                    dataOutputStream.flush();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
