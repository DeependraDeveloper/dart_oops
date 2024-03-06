/*

(MANY FORMS)
Polymorphism is the ability of a class to behave as more than one data type.
  - It is a feature that allows one interface to be used for a general class of actions.
  - The object-oriented programming languages should have the ability to use the same message with objects of different classes and the message should be able to produce different results.
  - In real world , polymorphism is updating/modifying the behavior of a method in a child class.

  Example:
    - A person at the same time can have different characteristic like a father, a husband, an employee. So the same person posses different behavior in different situations.

  Types of Polymorphism:
    - Compile Time Polymorphism
    - Run Time Polymorphism

  Compile Time Polymorphism:
    - It is also known as static polymorphism.
    - It is achieved by function overloading or operator overloading.
    - It is a type of polymorphism in which the call to an overloaded method is determined at the compile time.
K
  Run Time Polymorphism:
    - It is also known as dynamic polymorphism.
    - It is achieved by method overriding.
    - It is a type of polymorphism in which the call to an overridden method is resolved at runtime rather than at compile time.



   Polymorphism in Dart:
    - Dart supports both compile time and run time polymorphism.
    - Dart does not support function overloading.
    - Dart supports method overriding.
    - Dart supports operator overloading.

    Example:
      - Method Overriding
          - A method of a parent class is redefined in the child class.
          - The child class can provide a specific implementation of the method that is already provided by its parent class.
          - It is used to provide the specific implementation of a method that is already provided by its parent class.

      - Operator Overloading
          - Dart allows us to change the behavior of an operator.
          - It is done by defining a function for the operator.
          - It is a type of polymorphism in which an operator is overloaded to give user defined meaning.

*/

void main() {
  Animal animal = new Animal();
  animal.sound();
  Dog dog = new Dog();
  dog.sound();
}

class Animal {
  void sound() {
    print("Animal makes sound");
  }
}

class Dog extends Animal {
  @override // Method Overriding , here we are changing the behavior of sound method in child class. and override keyword can be optional.
  void sound() {
    print("Dog barks");
  }
}
