public class User {
    private static int numUsers = 0; // static variable to keep track of the number of users

    private String name;

    public User(String name) {
        this.name = name;
        numUsers++; // increment the number of users every time a new User object is created
    }

    public String getName() {
        return name;
    }

    public static int getNumUsers() {
        return numUsers; // static method to get the total number of users
    }

    public static void main(String args[]){
        User user1 = new User("Alice");
        User user2 = new User("Bob");

        System.out.println(User.getNumUsers()); // prints "2"

    }
}
