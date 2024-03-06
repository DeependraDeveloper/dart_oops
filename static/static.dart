/*

  Static
    - If you define a variable or method that is shared by all instances of a class, you should use static keyword.
    - Static members are accessed using the class name.
    - It is used for memory management.
    - It is used to store the class level data.
    - It is used to define the constants.
    - It can be accessed without creating an object of the class.
    - It can be updated using the class name.
*/

void main() {
  Universe.planet = "Mars";
  print(Universe.planet);

  Employee();
  Employee.display();
  Employee();
  Employee.display();
  Employee();
  Employee.display();

  Student st = Student(20,'John');
  st.display();
  Student st2 = Student(22,'Doe');
  st2.display();
  
}

class Universe {
  static String planet = "Earth";

  void display() {
    print(planet);
  }
}

class Employee {
  static int count = 0;

  Employee() {
    count++;
  }

  static void display() {
    print(count);
  }
}

class Student {
  int? age = 20;
  String? name = "John";
  static const String schoolName = "Svk"; // same for all objects

  Student(this.age, this.name);

  void display() {
    print("Name: $name, Age: $age, School: $schoolName");
  }
}
