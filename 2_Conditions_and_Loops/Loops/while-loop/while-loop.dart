import 'dart:io';

void main() {
  // increament
  int i = 0;
  while (i <= 10) {
    print(i);
    i++;
  }

  // decreament
  int j = 10;
  while (j >= 0) {
    stdout.write("$j ");
    j--;
  }

  //example 3
  int total = 0;
  int n = 50;
  int k = 1;
  while (k <= n) {
    total += k;
    k++;
  }
  print("\nTotal is: $total");

  // example 4
  int l = 50;
  while (l <= 100) {
    if (l % 2 == 0) {
      print(l);
    }
    l++;
  }
}
