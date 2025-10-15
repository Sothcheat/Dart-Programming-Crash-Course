// toLowerCase(): Converts all characters in this string to lowercase.
// toUpperCase(): Converts all characters in this string to uppercase.
// trim(): Returns the string without any leading and trailing whitespace.
// compareTo(): Compares this object to another.
// replaceAll(): Replaces all substrings that match the specified pattern with a given value.
// split(): Splits the string at matches of the specified delimiter and returns a list of substrings.
// toString(): Returns a string representation of this object.
// substring(): Returns the text from any position you want.
// codeUnitAt(): Returns the 16-bit UTF-16 code unit at the given index.

void main() {
  String firstName = "Sothcheat";
  String lastName = "Bunna";

  // converting string to uppercase and lowercase
  print("My first name: ${firstName.toLowerCase()}");
  print("My last name: ${lastName.toUpperCase()}");

  // trim string
  String country = " USA ";
  String state = "California ";
  String city = "New York";
  String district = " Brooklyn";

  print("Result of trim country: ${country.trim()}");
  print("Result of right trim state: ${state.trimRight()}");
  print("Result of trim city: ${city.trim()}");
  print("Result of left trim district: ${district.trimLeft()}");

  // you can compare two strings.
  // It will give the result 0 when two texts are equal,
  // 1 when the first String is greater than the second,
  // and -1 when the first String is smaller than the second.

  // compare string
  String item1 = "Apple";
  String item2 = "Ant";
  String item3 = "Banana";

  print("Compare item1 with item2: ${item1.compareTo(item2)}");
  print("Compare item1 with item3: ${item1.compareTo(item3)}");
  print("Compare item3 with item2: ${item3.compareTo(item2)}");

  // replace string
  String text = "I am a college study at Norton University. Major In Comp Sci.";
  String newText = text.replaceAll("Norton", "Rupp");

  print("Original Text: $text");
  print("Replaced Text: $newText");

  // split string
  // You can use the dart split method if you want to split String by comma, space, or other text.
  // It will help you to split String to list.
  String name = "Soth cheat";
  List<String> listNames = name.split(" ");
  print("List name at Index 0 ${listNames[0]}");
  print("List name at Index 1 ${listNames[1]}");

  //ToString
  // toString() represents String representation of the value/object.
  int number = 69;
  String result = number.toString();
  print("Type of number is ${number.runtimeType}"); // return type as Int
  print("Type of result is ${result.runtimeType}"); // return type as String

  // SubString
  // You can use substring in Dart when you want to get a text from any position.
  String text2 = "I love Dart";
  print("Print only Dart: ${text2.substring(7)}");
  print("Print only love: ${text2.substring(2, 6)}");

  // reverse String
  // If you want to reverse a String in Dart,
  // you can reverse it using a different solution.
  // One solution is here.
  String greet = "Hello";
  print("$greet Reverse is ${greet.split('').reversed.join()}");

  // Capitalize First letter
  String text3 = "hello world";
  print(
    "Capitalize first letter of String: ${text3[0].toUpperCase()}${text3.substring(1, 6)}${text3[6].toUpperCase()}${text3.substring(7)}",
  );
}
