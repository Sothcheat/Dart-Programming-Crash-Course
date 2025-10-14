import 'dart:io';

void main() {
  print("Enter name: ");
  String? name = stdin.readLineSync();
  print("Your name is: $name");
  // note: print() automatically adds a newline after output.

  // if we want the input on the same line, we can use:
  stdout.write("Enter your name again: ");
  name = stdin.readLineSync();
  print("Your name is: $name");

  // Without the ?, int and double are non-nullable, meaning these variables must always hold a valid value of their type and cannot be null.
  // int.parse() and double.parse() methods require a non-null string as input, and they throw an error if the string is not a valid number or is null.
  // You can use nullable variables like int? or double? with tryParse(), which returns null instead of throwing an error if parsing fails.

  // integer user input
  stdout.write("Enter number: ");
  int? number = int.parse(stdin.readLineSync()!);
  print("The entered number is ${number}");

  // floating user input
  stdout.write("Enter a floating number: ");
  double? floatNumber = double.parse(stdin.readLineSync()!);
  print("The entered floatNumber is $floatNumber");

}
