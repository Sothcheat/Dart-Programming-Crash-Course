// While coding, it is hard to find errors in big projects,
// so dart provide a "assert" method to check for the error.
// It takes conditions as an argument.
// If the condition is true, nothing happens.
// If a condition is false, it will raise an error.

// syntax
// You can use assert without a custom message or with a custom message.
// assert(condition);
// assert(condition, "Custom massage");

// Example
void main() {
  var age = 19;
  assert(age != 19);
  assert(age!=19, "Age must be 19.");
}

// to see the error output,
// run file in assert mode, in the line below in terminal,
// where the file you want to run is located.
// dart --enable-asserts file_name.dart (assert.dart)

// Note: The assert(condition) method only runs in development mode. 
// It will throw an exception only when the condition is false. 
// If the condition is true, nothing happens. 
// Production code ignores it.