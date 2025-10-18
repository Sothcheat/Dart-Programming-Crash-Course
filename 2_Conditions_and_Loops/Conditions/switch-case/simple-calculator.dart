import 'dart:io';

void main() {
  var num1;
  var num2;
  var operator;
  var result;

  print("========== Calculator ==========");
  stdout.write("Enter num1: ");
  num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Choose an operator (+, -, *, /): ");
  operator = stdin.readLineSync();

  stdout.write("Enter num2: ");
  num2 = double.parse(stdin.readLineSync()!);

  switch (operator) {
    case '+':
      result = num1 + num2;
      print("Result of $num1 $operator $num2 = $result");
      break;
    case '-':
      result = num1 - num2;
      print("Result of $num1 $operator $num2 = $result");
      break;
    case '*':
      result = num1 * num2;
      print("Result of $num1 $operator $num2 = $result");
      break;
    case '/':
      if (num2 == 0) {
        print("Can't divide by 0!");
      } else {
        result = num1 / num2;
        print("Result of $num1 $operator $num2 = $result");
      }
      break;
    default:
      print("Invalid input! Please input the correct type of value.");
      break;
  }
}
