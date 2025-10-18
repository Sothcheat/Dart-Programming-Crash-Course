import 'dart:io';

void main() {
  var char;
  stdout.write("Enter a character: ");
  char = stdin.readLineSync();

  if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
    print("This character \'$char\' is vowel");
  } else {
    print("This character \'$char\' is consonant");
  }
}
