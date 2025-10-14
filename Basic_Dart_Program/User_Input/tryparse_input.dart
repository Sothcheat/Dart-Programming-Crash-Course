import 'dart:io';

void main() {
  String? name;
  int? age;
  double? height;

  stdout.write("Enter your name: ");
  name = stdin.readLineSync();

  // better way to write safer input

  // ?? if-null example if input null then assign '' which is empty string so it isn't null.
  // int and double.tryParse() require non-null string.
  
  stdout.write("Enter your age: ");
  String? inputAge = stdin.readLineSync();
  age = int.tryParse(inputAge ?? '');

  stdout.write("Enter your height: ");
  String? inputHeight = stdin.readLineSync();
  height = double.tryParse(inputHeight ?? '');

  print("Your name is: $name");

  if (age == null) {
    print("That's not a valid integer!");
  } else {
    print("Your age is: $age");
  }

  if (height == null) {
    print("That's not a valid double!");
  } else {
    print("Your height is: $height");
  }
}
