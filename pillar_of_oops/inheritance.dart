/*

Inheritance 
 - A mechanism in which one object acquires all the properties and behaviors of a parent object.
 - It allows a class to inherit the properties and behaviors of another class.
 - It represents the IS-A relationship.
 - It is used for code reusability and method overriding.
 - It is used to implement the concept of polymorphism in OOP.
 - A class that is inherited is called a superclass.
  - A class that does the inheriting is called a subclass.
  - The subclass extends the superclass.
  - extends keyword is used to inherit a class.



  Syntax:
  class SuperClass {
    // properties and methods
  }

  class SubClass extends SuperClass {
    // properties and methods
  }


  Types of Inheritance
    - Single Inheritance
       - A class is allowed to inherit from only one class.
    - Multilevel Inheritance
        - A class is allowed to inherit from a class, which is further inherited from another class.
    - Hierarchical Inheritance
        - More than one sub-class is inherited from a single base class.
    - Multiple Inheritance
        - A class is allowed to inherit from more than one class.
   


  Advantages of Inheritance
    - It represents the real-world relationship well.
    - It provides reusability of a code.
    - It is used to implement the concept of polymorphism in OOP.
    - It is standar interface that allows old and new code to work together.
    - It allows access to the base class members/methods without the need to qualify the member with the base class name using super keyword.



  Dart does not support multiple inheritance.
  Dart supports single inheritance and multilevel inheritance.
  It can lead to the diamond problem.


  example:
    - class Apple extends Fruit{} and Vegetable {}
    - then same name eat() method is present in both Fruit and Vegetable class.
    - then which eat() method will be called when we call eat() method from Apple class.

*/

void main() {
  var student = Student();
  student.name = 'Peter';
  student.age = 25;
  student.rollNo = 101;

  student.display();
  student.study();


  var c = C();
  c.display();


  var employee = Employee();
  employee.name = 'John';
  employee.age = 30;
  employee.salary = 10000;
  employee.display();
}

class Person {
  String? name;
  int? age;

  void display() {
    print('Name: $name');
    print('Age: $age');
  }
}

class Student extends Person {
  int? rollNo;


  void display() {
    super.display();
    print('Roll No: $rollNo');
  }

  void study() {
    print('$name is now studying');
  }
}


// heirarchical inheritance

class Employee extends Person {
  double? salary;

  void display() {
    super.display();
    print('Salary: $salary');
  }

  void work() {
    print('$name is now working');
  }
}



// multilevel inheritance

class A {
  void display() {
    print('A');
  }
}

class B extends A {
  void display() {
    super.display();
    print('B');
  }
}

class C extends B {
  void display() {
    super.display();
    print('C');
  }
}