// combine one String with another string.
// This is called concatenation.
// use + or use interpolation to concatenate the string.
// use interpolation is easy to read and understand the code.

import 'dart:io';

void main() {
  String? firstName;
  String? lastName;

  stdout.write("Enter your first name: ");
  firstName = stdin.readLineSync();
  stdout.write("Enter your last name: ");
  lastName = stdin.readLineSync();

  print(
    "Using +, Full name is " + (firstName ?? '') + " " + (lastName ?? '') + ".",
  );
  print("Using interpolation, Full name is $firstName $lastName.");
}
