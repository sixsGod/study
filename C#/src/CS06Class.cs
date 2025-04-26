namespace Study
{
    public class Person
    {
        // Fields
        private string name;
        private int age;

        // Constructor
        public Person(string name, int age)
        {
            this.name = name;
            this.age = age;
        }

        // Properties
        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public int Age
        {
            get { return age; }
            set { age = value; }
        }

        // Method
        public void Introduce()
        {
            Console.WriteLine($"Hello, my name is {name} and I am {age} years old.");
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            // Create an object of the Person class
            Person person = new Person("Alice", 25);

            // Access properties and call methods
            person.Introduce();
        }
    }
}