/*


Parameterized Constructor
  - A constructor that has parameters is called a parameterized constructor.
  - It is used to initialize the instance variables of the class with the values passed to the constructor.

Syntax:
  ClassName(parameter1, parameter2, ...) {
    // code
  }

Example:
  class Student {
    String name;
    int age;

    Student(String name, int age) {
      this.name = name;
      this.age = age;
    }
  }


Named Parameterized Constructor
  - A constructor that has a name is called a named constructor.
  - It is used to create multiple constructors in a class.

*/

void main() {
  var student = Student('Peter', 25);
  student.idCard();

  var rectangle = Rectangle(
    length: 10,
  );
  print('Area: ${rectangle.getArea()}');
}

class Student {
  String? name;
  int? age;

  Student(this.name, this.age);

  void idCard() {
    print('Name: $name, Age: $age');
  }
}

class Rectangle {
  int? length;
  int? breadth;

  // Named Parameterized Constructor with default value 
  Rectangle({required this.length, this.breadth = 5});

  int getArea() {
    return length! * (breadth ?? 0);
  }
}
