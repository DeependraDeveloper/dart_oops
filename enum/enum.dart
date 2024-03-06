/*

Enum 
- Enum is a way to create a class with a fixed number of instances.
- It is used to define the collection of related constants.


 syntax:
enum <enum_name> {
  <enum_value1>,
  <enum_value2>,
  <enum_value3>,
  ...

*/

void main() {
  print(WeekDays.values); // returns list of all values
  print(WeekDays.monday.name); // returns the name of the enum value
  print(WeekDays.tuesday); // returns the enum value

  Person p = Person('jhon', 12, Gender.male);
  p.display();
}

enum WeekDays { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

enum Gender { male, female, other }

class Person {
  String name;
  int age;
  Gender gender;
  Person(this.name, this.age, this.gender);

  void display() {
    print("Name: $name, Age $age , Gender: $gender");
  }
}
