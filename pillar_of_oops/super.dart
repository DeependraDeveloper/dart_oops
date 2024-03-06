/*

Super keyword
  is used to access the members and methods of parent class.

*/

void main() {
  var macBook = MacBook();
  macBook.show();


  var student = Student('Peter', 10, 101);
  student.display();
}

class LapTop {
  double price = 1000;
  void show() {
    print('Laptop');
  }
}

class MacBook extends LapTop {
  double price = 2000;
  void show() {
    super.show();
    print('MacBook');
    print('Price of Laptop: ${super.price}');
    print('Price of MacBook: ${price}');
  }
}

// super constructor

class Person {
  String? name;
  int? classNo;

  Person(this.name, this.classNo);
}


class Student extends Person {
  int rollNo;

  Student(String name, int classNo, this.rollNo) : super(name, classNo);

  void display() {
    print('Name: $name');
    print('Class: $classNo');
    print('Roll No: $rollNo');
  }
}
