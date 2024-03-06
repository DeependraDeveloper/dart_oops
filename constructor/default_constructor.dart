/*



Default Constructor
  - A constructor that has no parameters is called a default constructor.
  - If we do not define a constructor in a class, Dart provides a default constructor.
  - The default constructor is used to initialize the instance variables of the class with default values.

Syntax:
  ClassName() {
    // code
  }

Example:
  class Student {
    String name;
    int age;

    Student() {
      name = 'Unknown';
      age = 0;
    }
  }

*/

void main() {
  var laptop = Laptop();
  print(
      'Brand: ${laptop.brand}, Model: ${laptop.model}, Price: ${laptop.price}');
}

class Laptop {
  String? brand;
  String? model;
  int? price;

  Laptop() {
    print('This is a default constructor');

    // Initializing instance variables
    brand = 'HP';
  }
}
