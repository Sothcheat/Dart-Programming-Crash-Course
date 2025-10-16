// The ternary operator is like if-else statement.
// This is a one-liner replacement for the if-else statement.
// It is used to write a conditional expression,
// where based on the result of a boolean condition, one of the two values is selected.

void main() {
  // Example 1
  int num1 = 10;
  int num2 = 15;
  int max = (num1 > num2) ? num1 : num2;
  print("The greatest number is $max");

  // Example 2
  var selection = 2;
  var output = (selection == 2) ? 'Apple' : 'Banana';
  print(output);

  // Example 3
  var age = 18;
  var check = (age >= 18) ? 'You ara a voter.' : 'You are not a voter.';
  print(check);

  // challenge
  var myAge = 19;
  var checkAge = (myAge >= 13 || myAge <= 19) ? "Teenager" : "Not Teenager";
  print(checkAge);
}
