import 'dart:io';

void main() {
  stdout.write("Enter a number: ");

  try {
    var input = stdin.readLineSync();
    if (input == null || input.isEmpty)
      throw Exception("Input can't be empty.");

    int num = int.parse(input);

    print(
      "$num is ${num > 0
          ? 'Positive'
          : num < 0
          ? 'Negative'
          : 'Zero'}",
    );
  } on FormatException {
    print("Invalid number.");
    return;
  } catch (e) {
    print("Other error: $e");
    return;
  }

  print("Program exit...");
}
