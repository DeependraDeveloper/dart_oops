import 'dart:math';

void main() {
  var si = SimpleInterest();
  si.principal = 10000;
  si.rate = 5;
  si.time = 10;

  print("Simple Interest: ${si.getSimpleInterest()}");

  var ci = CompoundInterest();
  ci.principal = 10000;
  ci.rate = 5;
  ci.time = 10;
  print("Compound Interest: ${ci.getCompoundInterest()}");
}

class SimpleInterest {
  double? principal;
  double? rate;
  double? time;

  double getSimpleInterest() => (principal! * rate! * time!) / 100;
}

class CompoundInterest {
  double? principal;
  double? rate;
  double? time;

  double getCompoundInterest() {
    return principal! * pow((1 + rate! / 100), time!);
  }
}
