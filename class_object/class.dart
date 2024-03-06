/*
Class (concrete class):
  - It is a blueprint for creating objects.
  - It defines the properties and methods that objects of the class will have.
  - A Class is created using the class keyword.

  Syntax:
    class ClassName {
      - properties or fields
      - methods or functions
    }

    Properties:
      - It is a variable that represent state of the object.
      - It will store the data.

    Methods:
      - It is a function that represent the behavior of the object.
      - It will perform the operations on the data 



*/

void main() {
  // Creating an object of Person class
  var person1 = Person();

  // Accessing the properties of the class
  person1.name = "Peter";
  person1.age = 25;

  print('${person1.name} - ${person1.age}');

  // Accessing the methods of the class
  person1.talk();
}

class Person {
  // Properties
  String? name;
  int? age;

  // Method
  void talk() {
    print("I am $name and I am $age years old.");
  }
}
