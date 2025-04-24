class MyClass:
    def __init__(self, name):
        self.name = name

    def greet(self):
        return f"Hello, {self.name}!"

# Create an object of MyClass
my_object = MyClass("Alice")
print(my_object.greet())