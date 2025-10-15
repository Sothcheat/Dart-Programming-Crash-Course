// codeUnits: Returns an unmodifiable list of the UTF-16 code units of this string.
// isEmpty: Returns true if this string is empty.
// isNotEmpty: Returns false if this string is empty.
// length: Returns the length of the string including space, tab, and newline characters.

void main() {
  String str = "Hello Dart.";
  print(str.codeUnits);
  print(str.isEmpty); // return true
  print(str.isNotEmpty); // return false
  print("The length of this string is: ${str.length}");
}
