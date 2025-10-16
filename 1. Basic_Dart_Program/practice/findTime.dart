import 'dart:io';
void main() {
  double? distant;
  int? speed;
  double time;

  stdout.write("Enter the distant: ");
  distant = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the speed velocity: ");
  speed = int.parse(stdin.readLineSync()!);

  time = (distant / speed) * 60;

  print("The time it take in minutes is: $time minutes.");
}
