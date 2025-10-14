// Arithmetic operators are the most common types of operators. 
// They perform operations like addition, subtraction, multiplication, division, etc.

void main() {

  // declaring two numbers
  int num1 = 10;
  int num2 = 5;

  // performing arithmetics calculation
  int sum = num1 + num2;    // addition
  int diff = num1 + num2;   // subtraction
  int unaryMinus = -num1;   // unary minus | For reversing the sign of the expression
  int mul = num1 * num2;    // multiplication
  double div = num1 / num2; // division
  int div2 = num1 ~/ num2;  // integer division | this when we want integer result
  int mod = num1 % num2;    // modulus

  print("Sum is = $sum");
  print("Diff is = $diff");
  print("unaryMinus is = $unaryMinus");
  print("Mul is = $mul");
  print("Division is = $div");
  print("Integer Division is = $div2");
  print("Modulus is $mod");

}