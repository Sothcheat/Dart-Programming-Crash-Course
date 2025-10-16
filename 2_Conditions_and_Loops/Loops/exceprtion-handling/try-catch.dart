/*
An exception is an error that occurs at runtime during program execution.
When the exception occurs, the flow of the program is interrupted, and the program terminates abnormally. 
There is a high chance of crashing or terminating the program when an exception occurs. 
Therefore, to save your program from crashing, you need to catch the exception.
*/

// "Try" You can write the logical code that creates exceptions in the try block.
// "Catch" When you are uncertain about what kind of exception a program produces,
// then a catch block is used. It is written with a try block to catch the general exception.

void main() {
  int a = 18;
  int b = 0;
  int res;

  // example 1
  try {
    res = a ~/ b;
    print("Result is $res");
  } catch (ex) {
    print(ex);
  }

  // example 2  
  try {
    res = a ~/ b;
    print("Result is $res");
  } on UnsupportedError {
    print("Cannot divide by zero");
  } catch (ex) {
    print(ex);
  } finally {
    print("Finally block always executed");
  }

  
}
