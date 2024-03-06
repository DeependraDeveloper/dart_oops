/*

Constructor 
  - A special method that is automatically called when an object is created.
  - The name of the constructor is always the same as the name of the class.
  - It is used to initialize the instance variables of the class.
  - It is not mandatory to define a constructor in a class. If we do not define a constructor, Dart provides a default constructor.
  - A class can have multiple constructors.
  - It does not have a return type.
  - It is called only once when an object is created.

  - Constructors are of two types:
    - Default Constructor
    - Parameterized Constructor
    - Named Constructor


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


Named Constructor
  - A constructor that has a name is called a named constructor.
  - It is used to create multiple constructors in a class.

Syntax:
  ClassName.constructorName(parameter1, parameter2, ...) {
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

    Student.customConstructor() {
      name = 'Unknown';
      age = 0;
    }
  }



  this keyword
    - It is used to refer to the current instance of the class.
    - It is used to differentiate between the instance variables and the local variables having the same name.
    - It is used to call the instance variables and methods of the class.



*/

void main() {
  var person = Person('Peter', 25);
  // var person = Person(name: 'Peter');
  person.showOutput();

  var person_2 = Person.customConstructor();
  person_2.showOutput();
}

class Person {
  String? name;
  int? age;

  // Default Constructor , Parameterized Constructor
  // Person(String name, int age) {
  //   print('Called as soon as object is created');
  //   this.name = name;
  //   this.age = age;
  // }


  //Single Parameterized Constructor
   Person(this.name, this.age);


  // optional named parameter , here we can provide default value or can add required keyword
  //  Person({String name = 'Unknown', int age = 0}) {
  //   this.name = name;
  //   this.age = age;
  //  }k

  // Named Constructor
  Person.customConstructor() {
    name = 'Unknown';
    age = 0;
  }


  // method
  void showOutput() {
    // we can ignore this keyword
    print(name);
    print(age);
  }
}
