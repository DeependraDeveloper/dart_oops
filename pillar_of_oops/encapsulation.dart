/*

Encapsulation is the process of wrapping up variables and methods into a single unit (class) or Library.
 - It is a way to restrict access to some components of the class.
 - Data encapsulation is also known as data hiding.
 - Library encapsulation is also known as namespace management.i.e is every .dart file is a library in Dart.
 - Import and export statements are used to manage the namespace in Dart.
 - Getter and setter methods are used to access and modify the private instance variables of a class.


  Advantages of encapsulation
   - Helps in data hiding (security), like if you dont want to show _id , just comment the getter method.
    - Helps in data validation , like if you want to validate the data before setting the value of the private instance variable.
     - helps in testing and debugging the code.
      - Helps in reusability of the code.
       - Helps in maintaining the code.

  - Dart supports four types of access specifiers:
    - Public access specifier
    - Private access specifier
    

  - Public access specifier
    - By default, all the members of a class are public.
    - Public members can be accessed from anywhere in the program.
    - Public members are accessible using the dot (.) operator.
    - Public members are accessible from outside the class.

  - Private access specifier
    - Private members are accessible only within the class.
    - Private members are accessible using the dot (.) operator.
    - Private members are accessible from outside the class.
    - Private members are declared using an underscore (_) as a prefix.

  

  - Example of encapsulation in Dart
    - In the following example, we have a class named Employee.
    - The Employee class has two private instance variables, _id and _name.
    - The Employee class has two public methods, setId() and setName(), to set the values of the private instance variables.
    - The Employee class has two public methods, getId() and getName(), to get the values of the private instance variables.


  - Getter and setter methods
    - Dart provides getter and setter methods to access and modify the private instance variables of a class.
    - The getter method is used to get the value of the private instance variable.
    - The setter method is used to set the value of the private instance variable.
    - The getter and setter methods are defined using the get and set keywords respectively.
    - The getter and setter methods are used to implement encapsulation in Dart.
    - Helps in validating the data before setting the value of the private instance variable.



  - final vs const
    - final: The value of a final variable can be set only once.
    - const: The value of a const variable is constant and cannot be changed.
    - The value of a const variable is known at compile-time.
    - The value of a final variable is known at run-time.

    - final will make the variable read-only.    
*/

void main() {
  // accessing private members in library level is possible in dart , but not accessible outside the library
  // so that we use getter and setter methods to access and modify the private instance variables of a class.

  var emp = Employee();
  emp.setId(1);
  emp.setName('John');
  print('Id: ${emp.getId()}');
  print('Name: ${emp.getName()}');

  var person = Person();

  // setting the value of the private instance variable
  person.id = 1;
  person.name = 'John';

  // getting the value of the private instance variable
  print('Id: ${person.id}');
  print('Name: ${person.name}');
}

class Employee {
  // private properties
  int? _id;
  String? _name;

  void setId(int id) {
    if (id <= 0) {
      throw Exception('Id should be greater than 0');
    } else {
      _id = id;
    }
  }

  int getId() {
    return _id!;
  }

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name!;
  }
}

class Person {
  // private properties
  int? _id;
  String? _name;

  // getter
  int? get id => _id;
  String? get name => _name;

  // setter
  set id(int? id) {
    if (id! <= 0) {
      throw Exception('Id should be greater than 0');
    } else {
      _id = id;
    }
  }

  set name(String? name) {
    if (name!.length < 3 || name == 'null' || name == '') {
      throw Exception('Name should be at least 3 characters long');
    } else {
      _name = name;
    }
  }
}
