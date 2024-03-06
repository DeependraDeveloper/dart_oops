/*

 Mixin 
   - A mixin is a class that provides methods that can be used by other classes without the need to inherit from it.
    - A class can inherit from multiple mixins.
     - used to inherit a class.
      - constructor of sub before the constructor of mixin.
       - It is used to inherit the properties and methods of a class.

  Keywords
   - mixin - used to define a mixin.
    - on - used to specify the type of class that can use the mixin.
     - with - used to apply a mixin to a class.
*/

mixin ElectricVariant {
  void electric() {
    print("Electric variant");
  }
}


mixin PetrolVariant {
  void petrol() {
    print("Petrol variant");
  }
}


class Car with ElectricVariant, PetrolVariant {
  void start() {
    print("Car is starting");
  }
}


void main() {
  var car = Car();
  car.start();
  car.electric();
  car.petrol();
}