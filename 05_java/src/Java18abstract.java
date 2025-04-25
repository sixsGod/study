abstract class Animal {
    // Abstract method (does not have a body)
    public abstract void makeSound();

    // Regular method
    public void sleep() {
        System.out.println("Sleeping...");
    }
}

class Dog extends Animal {
    // Providing implementation for the abstract method
    @Override
    public void makeSound() {
        System.out.println("Woof! Woof!");
    }
}

public class Java18abstract {
    public static void main(String[] args) {
        Animal myDog = new Dog();
        myDog.makeSound();
        myDog.sleep();
    }
}