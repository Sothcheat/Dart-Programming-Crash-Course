import 'dart:io';

void main() {
  // if condition
  var age = 20;
  if (age >= 18) {
    print("You can vote the election.");
  }

  // if-else condition
  var pass = 123;
  if (pass == 321) {
    print("Welcome user.");
  } else {
    print("Incorrect password.");
  }

  // condition based on boolean value
  bool isMarried = false;
  if (isMarried) {
    print("You're married.");
  } else {
    print("You're single AF.");
  }

  // if-else-if condition
  int? noDay;
  stdout.write("Enter the choosen day: ");
  noDay = int.parse(stdin.readLineSync()!);

  if (noDay == 1) {
    print("Monday");
  } else if (noDay == 2) {
    print("Tuesday");
  } else if (noDay == 3) {
    print("Wednesday");
  } else if (noDay == 4) {
    print("Thursday");
  } else if (noDay == 5) {
    print("Friday");
  } else if (noDay == 6) {
    print("Saturday");
  } else if (noDay == 7) {
    print("Sunday");
  } else {
    print("Invalid value given.");
  }
}
