import 'dart:io';

void main() {
  double? total;
  double? people;
  double result;

  stdout.write("Enter the total bill amount: ");
  total = double.parse(stdin.readLineSync()!);

  stdout.write("Enter number of people: ");
  people = double.parse(stdin.readLineSync()!);

  result = total / people;

  print("Each person have to pay: ${result.toStringAsFixed(2)}\$");

}
