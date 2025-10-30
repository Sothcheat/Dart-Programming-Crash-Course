void main() {
  printName("Sothcheat");
  int num1 = 10;
  int num2 = 30;

  add(num1, num2);
}

void printName(String name) {
  print("Welcome, ${name}.");
}

void add(int a, int b) {
  int sum = a + b;
  print("Sum is $sum");
}
