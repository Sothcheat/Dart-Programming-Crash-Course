void main() {
  int num = 5;

  print("Multiplication table of $num:");
  for (int i = 1; i <= 10; i++) {
    print("$num x $i = ${num * i}");
  }

  print("");

  for (int i = 1; i <= 9; i++) {
    print("Multiplication table of $i\n");
    for (int j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
    }
    print("");
  }
}
