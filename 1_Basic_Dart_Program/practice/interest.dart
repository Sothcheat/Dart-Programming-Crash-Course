import 'dart:io';

void main() {
  double? p; // principal (initial amount of money)
  double? r; // rate
  double? t; // time

  double? interest;

  stdout.write("Enter a initial money: ");
  String? inputP = stdin.readLineSync()?.trim();
  p = double.tryParse(inputP ?? '');

  stdout.write("Enter the rate %: ");
  String? inputR = stdin.readLineSync()?.trim();
  r = double.tryParse(inputR ?? '');

  stdout.write("Enter the time: ");
  String? inputT = stdin.readLineSync()?.trim();
  t = double.tryParse(inputT ?? '');

  if (p == null || r == null || t == null) {
    print("That isn't a correct value type.");
  } else {
    interest = (p * r * t) / 100;
    print("Your interest is: ${interest.toStringAsFixed(2)}\$");
  }
}
