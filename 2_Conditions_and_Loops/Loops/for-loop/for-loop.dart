import 'dart:io';

void main() {
  // increament loop
  for (int i = 0; i <= 10; i++) {
    print("Index[${i + 1}] = $i");
  }

  // decrement loop
  for (int i = 10; i >= 0; i--) {
    stdout.write("$i ");
  }

  // example 3
  int total = 0;
  int n = 50;

  for (int i = 0; i <= n; i++) {
    total += i;
  }
  print("\nThe total is: $total");

  // example 4 (display even number between 50 & 100)
  for (int i = 50; i <= 100; i++) {
    if (i % 2 == 0) {
      stdout.write("$i ");
    }
  }
}
