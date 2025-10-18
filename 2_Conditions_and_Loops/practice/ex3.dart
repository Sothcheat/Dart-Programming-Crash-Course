import 'dart:io';

void main() {
  String? word;
  var countVowel = 0;
  var countCons = 0;

  stdout.write("Enter a word: ");
  word = stdin.readLineSync();

  if (word == null || word.isEmpty) {
    print("No input is provided.");
    return;
  }

  for (int i = 0; i <= (word.length - 1); i++) {
    String ch = word[i].toLowerCase();
    switch (ch) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
        print("Character '$ch' is a vowel.");
        countVowel++;
        break;
      default:
        print("Character '$ch' is a consonant.");
        countCons++;
        break;
    }
  }
  print("There are $countVowel vowel(s) and $countCons consonant(s).");
}
