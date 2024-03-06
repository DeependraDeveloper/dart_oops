/*

Named Constructor
  - A constructor that has a name is called a named constructor.
  - It is used to create multiple constructors in a class.
  - In Dart, we can create multiple constructors in a class using named but not default constructors.

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

*/

import 'dart:convert';

// jsonDecode() is used to convert a JSON string to a Map
// jsonEncode() is used to convert a Map to a JSON string

void main() {
  var add = Add(10, 20);
  print('Sum: ${add.add()}');

  var customAdd = Add.customAddConstructor(10, 20, 30);
  print('Sum: ${customAdd.add()}');

  var jsonStr = '{"name": "Peter", "age": 25}';
  var parsedJson = jsonDecode(jsonStr);
  var person = Person.fromJson(parsedJson);
  person.showOutput();
}

class Add {
  int? a;
  int? b;
  int? c;

  Add(this.a, this.b);

  Add.customAddConstructor(this.a, this.b, this.c);

  int add() {
    if (c != null) {
      return a! + b! + c!;
    } else {
      return a! + b!;
    }
  }
}

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }

  void showOutput() {
    print('Name: $name, Age: $age');
  }
}
