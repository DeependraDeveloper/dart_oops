/*


Abstraction 
  - Abstraction is the process of hiding the implementation details and showing only the functionality to the user.

Abstract class
 - Abstract class is a class that cannot be instantiated, it can only be used as a super-class for other classes that extend it.
  - Abstract class can have abstract methods, which means that the methods do not have a body and must be implemented by the class that extends it and also non abstract methods.
  - Abstract class can have instance variables.
  - Abstract class can have constructors.
  - Abstract class can have getters and setters.
  - Abstract class can have static methods and variables.
  - Abstract class can have factory constructors.
  - Abstract class can have abstract properties.

  - It is used to defune the behaviour of the class that extends it.



abstract class Animal {
  void makeSound();
  void move();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Bark");
  }

  @override
  void move() {
    print("Run");
  }
}

*/

void main() {
  Car c = Car();
  c.display();
  c.start();
  c.stop();

  Bike b = Bike();
  b.display();
  b.start();
  b.stop();

  SBI sbi = SBI(
    "SBI",
    5.5,
  );
  sbi.display();
  sbi.interest();

  HDFC hdfc = HDFC(
    "HDFC",
    6.5,
  );
  hdfc.display();
  hdfc.interest();
}

abstract class Vehicle {
  void start();
  void stop();

  void display() {
    print("Vehicle");
  }
}

class Car extends Vehicle {
  @override
  void start() {
    print("Car started");
  }

  @override
  void stop() {
    print("Car stopped");
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print("Bike started");
  }

  @override
  void stop() {
    print("Bike stopped");
  }
}

abstract class Bank {
  String name;
  double rate;

  Bank(this.name, this.rate);

  void interest();
  void display() {
    print("Bank: $name, Rate: $rate");
  }
}

class SBI extends Bank {
  SBI(String name,double rate) : super(name, rate);

  @override
  void interest() {
    print("SBI interest rate: $rate");
  }
}

class HDFC extends Bank {
  HDFC(String name,double rate) : super(name, rate);

  @override
  void interest() {
    print("HDFC interest rate: $rate");
  }
}
