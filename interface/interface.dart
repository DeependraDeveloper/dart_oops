/*

  Interface
    - Interface is a way to define a contract for a class to follow.
    - It is a way to define a set of methods that a class must implement.
    - It is used to define the behaviour of the class that implements it.
    - It is used to achieve abstraction.
    - Mostly abstract class is used to define the interface then concrete class .

  - Interface can have abstract methods, which means that the methods do not have a body and must be implemented by the class that implements it.
  - Interface cannot have instance variables.
  - Interface cannot have constructors.
  - Interface cannot have getters and setters.
  - Interface cannot have static methods and variables.
  - Interface cannot have factory constructors.
  - Interface cannot have abstract properties.
  - implements keyword is used to implement an interface.
  - A class can implement multiple interfaces.
  - A class can implement an interface and extend a class at the same time.


   syntax:
    abstract class InterfaceName {
      void method1();
      void method2();
    }

    class ClassName implements InterfaceName {
      @override
      void method1() {
        method1 implementation
      }

      @override
      void method2() {
         method2 implementation
      }
    }
*/



void main(){

  Student s = Student();
  s.canWalk();


  Macbook m = Macbook();

  m.turnOn();
  m.turnOff();

}


abstract class Person {
  void canWalk();
}


class Student implements Person {
  @override
  void canWalk() {
    print("Student can walk");
  }
}



class Laptop {
  void turnOn() {
    print("Laptop is turning on");
  }

  void turnOff() {
    print("Laptop is turning off");
  }
}


class Macbook implements Laptop {
  @override
  void turnOn() {
    print("Macbook is turning on");
  }

  @override
  void turnOff() {
    print("Macbook is turning off");
  }
}


// multiple inheritance

abstract class A {
  void a();
}

abstract class B {
  void b();
}

class C implements A, B {
  @override
  void a() {
    print("a");
  }

  @override
  void b() {
    print("b");
  }
}



/*


Difference between extends and implements

 extends
   - A class can extend only one class.
   - used to inherit a class.
   - constructor of super before the constructor of sub class.
    - It is used to inherit the properties and methods of a class.
    - override is optional.
    - super keyword is used to access the super class constructor, properties and methods.


  implements
    - A class can implement multiple interfaces.
    - used to implement an interface.
    - constructor of sub class before the constructor of super class.
    - It is used to achieve abstraction.
    - override is mandatory.
    - super keyword is not used to access the super class constructor



*/