public class Java15Encapsulation {
    private String name;
    private int age;

    // Getter for name
    public String getName() {
        return name;
    }

    // Setter for name
    public void setName(String name) {
        this.name = name;
    }

    // Getter for age
    public int getAge() {
        return age;
    }

    // Setter for age
    public void setAge(int age) {
        if (age > 0) { // Validation to ensure age is positive
            this.age = age;
        } else {
            System.out.println("Age must be positive.");
        }
    }

    public static void main(String[] args) {
        Java15Encapsulation person = new Java15Encapsulation();
        person.setName("Alice");
        person.setAge(25);

        System.out.println("Name: " + person.getName());
        System.out.println("Age: " + person.getAge());
    }
}