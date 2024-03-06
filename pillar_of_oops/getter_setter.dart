/*
 Getter  also known as accessor methods
  - Getter is a method that gets the value of a property.
  - It is used to access the value of a private variable.
  - It is used to implement the concept of encapsulation in OOP.
  - It is used to declare the read-only properties.

  Setter  also known as mutator methods
  - Setter is a method that updates the value of a property.
  - It is used to set the value of a private variable.
  - It is used to implement the concept of encapsulation in OOP.
  - It is used to declare the write-only properties.
  - It is used to validate the value before setting the value.

  Advantages of using getter and setter methods in Dart
    - It is used to implement the concept of encapsulation in OOP.
    - It is used to declare the read-only and write-only properties.
    - It is used to validate the value before setting the value.
    - It is used to hide the internal implementation of the class.
 */

void main() {
  var student = Student();
  student.name = 'Peter'; // Setter
  student.age = 25; // Setter

  print(student.name); // Getter
  print(student.age); // Getter
}

class Student {
  String? _name;
  int? _age;

  // Getter
  String get name => _name!;
  int get age => _age!;

  // Setter
  set name(String name) {
    if (name.length >= 3) {
      _name = name;
    } else {
      throw Exception('Name must be at least 3 characters.');
    }
  }

  set age(int age) {
    if (age >= 18) {
      _age = age;
    } else {
      throw Exception('Age must be at least 18.');
    }
  }
}
