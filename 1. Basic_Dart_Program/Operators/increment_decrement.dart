// With increment and decrement operators, you can increase and decrease values. 
// If ++ is used at the beginning, then it is a prefix. 
// If it is used at last, then it is postfix.

void main() {
  int num1 = 0;
  int num2 = 0;

  // pre increment
  num2 = ++num1;
  print("Value of num2 is $num2");

  // reset value to 0
  num1 = 0;
  num2 = 0;

  // post increment
  num2 = num1++;
  print("Value of num2 is $num2");
}