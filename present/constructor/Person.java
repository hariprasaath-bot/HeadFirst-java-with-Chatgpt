import java.security.Policy;

public class Person {
    private String name;
    private int age;
    
    // First constructor with name and age parameters
    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }
    
    // Second constructor with only name parameter
    public Person(String name) {
        this.name = name;
        this.age = 0;
    }
    
    // Third constructor with only age parameter
    public Person(int age) {
        this.name = "Unknown";
        this.age = age;
    }
    
    // Getters and setters for name and age
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public int getAge() {
        return age;
    }
    
    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "Person [name=" + name + ", age=" + age + "]";
    }

	public static void main(String args[]){
        Person person1 = new Person("Jane", 30);
        Person person2 = new Person(25);
        
        System.out.println("Output of Constructor overloaded classes:\n " + person1 + "\n"+ person2);

    }

}
