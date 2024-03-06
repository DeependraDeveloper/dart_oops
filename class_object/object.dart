/*

Object
  - It is an instance of a class.
  - Object is the root of the Dart class hierarchy.
  - Every class extends Object.
  - It has three important methods:
    - hashCode - returns the hash code of the object.
    - runtimeType - returns the runtime type of the object.
    - toString - returns a string representation of the object.


  syntax:
    var object = Object();

*/

void main() {
  var camera = Camera();
  camera.name = "Canon";
  camera.price = 1000.00;
  camera.pixel = 24;

  camera.showCameraDetails();
  print(camera.isCostly());
 print(camera.hashCode);
 print(camera.runtimeType);
 print(camera.toString());
}

class Camera {
  String? name;
  double? price;
  int? pixel;

  void showCameraDetails() {
    print("Camera Name: $name");
    print("Camera Price: $price");
    print("Camera Pixel: $pixel");
  }

  bool isCostly() {
    if (price! > 1000) {
      return true;
    } else {
      return false;
    }
  }


  @override
  int get hashCode => super.hashCode;

  @override
  Type get runtimeType => super.runtimeType;

  @override
  String toString() => "Camera Name: $name, Camera Price: $price, Camera Pixel: $pixel";
}
