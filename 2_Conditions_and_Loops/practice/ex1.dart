import 'dart:io';

void main() {
  var num;

  stdout.write("Enter a number: ");
  num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0) {
    print("$num is even number.");
  } else {
    print("$num is odd number.");
  }
}
