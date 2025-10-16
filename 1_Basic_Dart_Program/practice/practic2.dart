import 'dart:io';

void main() {
  double? num1;
  double? num2;
  double result;
  int? choice;

  print(" ========== Choose your option ========== ");
  print("|              1. Division               |");
  print("|              2. Squre Root             |");
  print("|              3. Remainder              |");
  print("|              4. Swap                   |");
  print(" ======================================== ");

  stdout.write("Enter your choice: ");
  choice = int.parse(stdin.readLineSync()!);

  print("Enter numbers for calculation.");

  stdout.write("Enter first number: ");
  num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  num2 = double.parse(stdin.readLineSync()!);

  if (choice == 1) {
    result = num1 / num2;
    print("The Result is: $result");
  } else if (choice == 2) {
    print("Which one you want to squre?");
    stdout.write("Num1: $num1 or Num2: $num2...(type 1 or 2) : ");
    int? answer = int.parse(stdin.readLineSync()!);
    if (answer == 1) {
      result = num1 * num1;
      print("The Result is: $result");
    } else {
      result = num2 * num2;
      print("The Result is: $result");
    }
  } else if (choice == 3) {
    result = num1 % num2;
    print("The Result is: $result");
  } else {
    (num1, num2) = (num2, num1);
    print("After swap: num1 = $num1, num2 = $num2");
  }

}
