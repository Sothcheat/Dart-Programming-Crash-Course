void main() {
  // var keyword auto finds a data type.
  // in simple, var find data type base on the value.

  var name = "Sothcheat"; // String
  var age = 19; // int

  print("My name is $name, and I'm $age years old.");

  // Runes is for finding unicode values of string.
  // ex unicode value of a is 97
  String testValue = 'b';
  print(testValue.runes);

  // optionally typed language 
  // statically typed is when the data type of variable is known at compile time;
  // advantage can check for issue and detect bug.
  var myVariable = 50;
  // myVariable = "Hello"; // this show error 
  print(myVariable);

  // dynamically typed is when the data type of variable is known at run time.
  dynamic myVariable2 = 60;
  myVariable2 = "Hi";
  print(myVariable2);

  // note: using static typed is recommend to prevent bug and error.
}