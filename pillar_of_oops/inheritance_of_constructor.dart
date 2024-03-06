/*

Inheritance of Constructor
  - A derived class inherits all the members of the base class except the constructors.
  - The constructors are not inherited by the derived class.
  - However, the default constructor is automatically called when the derived class is instantiated.
  - If the base class does not have a default constructor, then the derived class must manually call one of the constructors from the base class using super keyword.
  - The constructor of the base class is called before the constructor of the derived class.

  example:
    - class Person {
        String name;
        int age;

        Person(String name, int age) {
          this.name = name;
          this.age = age;
          print('Person class constructor');
        }
      }

      class Student extends Person {
        int rollNo;

        Student(String name, int age, int rollNo) : super(name, age) {
          this.rollNo = rollNo;
          print('Student class constructor');
        }
      }

      void main() {
        var student = Student('Peter', 25, 101);
        print('Name: ${student.name}');
        print('Age: ${student.age}');
        print('Roll No: ${student.rollNo}');
      }

  - In the above example, the Student class extends the Person class.
  - The Student class has a constructor that takes three parameters.
  - The Student class constructor calls the Person class constructor

 */

void main() {
  var student = Student('Peter', 25, 101);
  student.display();
}

class Person {
  String? name;
  int? age;

  Person({this.name, this.age}) {
    print('Person class constructor');
  }

  // Person(this.name, this.age) {
  //   print('Person class constructor');
  // }
}

class Student extends Person {
  int rollNo;

  Student(String name, int age, this.rollNo) : super(name: name, age: age) {
    print('Student class constructor');
  }
  // Student(String name, int age, this.rollNo) : super(name, age) {
  //   print('Student class constructor');
  // }

  void display() {
    print('Name: $name');
    print('Age: $age');
    print('Roll No: $rollNo');
  }
}
