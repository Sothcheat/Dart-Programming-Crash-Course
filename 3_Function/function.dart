void printName() {
  print("My name is Sothcheat");
}

void add(int num1, int num2) {
  int sum = num1 + num2;
  print("The sum is $sum");
}

void calculateInterest(double principal, double rate, double time) {
  double interest = principal * rate * time / 100;
  print("Simple interest is $interest");
}

void calculateCubic(double a) {
  double cube = a * a * a;
  print("The value of cube is: $cube");
}

void main() {
  printName();
  add(19, 20);

  double principal = 5000;
  double rate = 3;
  double time = 3;
  calculateInterest(principal, rate, time);

  calculateCubic(10);
}
