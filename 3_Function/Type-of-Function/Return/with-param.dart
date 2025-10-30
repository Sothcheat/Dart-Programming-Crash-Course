int add(int a, int b) {
  int sum = a + b;
  return sum;
}

double calculateAreaCircle(double r) {
  const pi = 3.14;
  double area = pi * r * r;
  return area;
}

void main() {
  int num1 = 24;
  int num2 = 17;
  double r = 34.54;

  print("Sum is: ${add(num1, num2)}");
  print("Area of circle is: ${calculateAreaCircle(r).toStringAsFixed(2)}");
}
