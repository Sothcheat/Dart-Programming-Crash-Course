// In Dart, type test operators are useful for checking types at runtime.
void main() {
  String value1 = "Hi! Dart.";
  int age = 19;

  // is : give boolean value true if the object has a specific type;
  // is! (is not) : give boolean value false if the object has a specific type;
  // is equal to == but to check for type at runtime.

  print(value1 is int);
  print(age is! String);
}
