import 'dart:io';

void main() {
  double? num1;
  double? num2;
  double? num3;

  print("============ Find the greatest number ============");

  stdout.write("Enter num1: ");
  num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter num2: ");
  num2 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter num3: ");
  num3 = double.parse(stdin.readLineSync()!);

  if (num1 > num2 && num1 > num3) {
    print("Num1 is the greatest: $num1");
  }
  if (num2 > num1 && num2 > num3) {
    print("Num2 is the greatest: $num2");
  }
  if (num3 > num1 && num3 > num2) {
    print("Num3 is the greatest: $num3");
  }
}
