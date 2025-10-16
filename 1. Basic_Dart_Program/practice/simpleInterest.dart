import 'dart:io';

void main() {
  double? p;
  double? r;
  double? t;

  double interest;

  stdout.write("Enter the initial money: ");
  p = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the rate %: ");
  r = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the time: ");
  t = double.parse(stdin.readLineSync()!);

  interest = (p * t * r) / 100;

  print("Your Initial money is: ${p.toStringAsFixed(2)}");
  print("Your rate is: ${r.toStringAsFixed(2)}");
  print("Your time (Year) is: ${t.toStringAsFixed(0)}");
  print("Your interest is: ${interest.toStringAsFixed(2)}\$");
}
