/*


Constant constructors
  - A constructor that creates a constant object is called a constant constructor.
  - It is used to create an object that is immutable.
  - It is created using the const keyword.

Syntax:
  const ClassName(parameter1, parameter2, ...) {
    // code
  }

Example:
  class Student {
    final String name;
    final int age;

    const Student(this.name, this.age);
  }


  Advantages of constant constructors
    - It improves the performance of the application.
    - It reduces the memory usage of the application.
    - It is used to create immutable objects.

  
  Rules for constant constructors
    - All instance variables of the class must be final.
    - All instance variables of the class must be initialized with a constant value.
    - The constructor must be a constant constructor.
    - The class must be immutable.

    Limitations of constant constructors
      - It cannot have a body.
      - It cannot have a super initializer.
      - It cannot have a field initializer.
      - It cannot have a redirecting constructor.
      - It cannot have a factory constructor.
      - It cannot have a generic type.
      - It cannot have a non-constant constructor.
      - It cannot have a non-constant super constructor.
      - It cannot have a non-constant field initializer.
      - It cannot have a non-constant super initializer.
      - It cannot have a non-constant redirecting constructor.
      - It cannot have a non-constant factory constructor.
      - It cannot have a non-constant generic type.

*/

void main() {
  const p1 = Point(x: 10, y: 20);
  print('x: ${p1.x}, y: ${p1.y}');

  const p2 = Point(x: 10, y: 20);
  print('x: ${p2.x}, y: ${p2.y}');


  // if we compare two constant objects, it will return true
  // if we compare non constant objects, it will return false

  print(p1 == p2); // true
  print(identical(p1, p2)); // true
  print(p1.hashCode == p2.hashCode); // true
  print(p1.runtimeType == p2.runtimeType); // true
  print(p1.toString() == p2.toString()); // true

  const p3 = Point(x: 10, y: 30);

  print(p1 == p3); // false
  print(identical(p1, p3)); // false
  print(p1.hashCode == p3.hashCode); // false
  print(p1.runtimeType == p3.runtimeType); // true
  print(p1.toString() == p3.toString()); // true

}

class Point {
  final int x;
  final int y;

  const Point({
    required this.x,
    required this.y,
  });
}
