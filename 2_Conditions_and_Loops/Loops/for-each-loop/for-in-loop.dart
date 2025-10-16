// for in loop same as for each loop.
// it also makes looping over the list very easy.
// the syntax similar to for each loop in java.

void main() {
  // we will use same example
  List<String> footballplayers = ['Ronaldo', 'Messi', 'Neymar', 'Hazard'];
  for (String player in footballplayers) {
    print(player);
  }

  // print unicode value of each character of string.
  String name = "Sothcheat";
  for (var codePoint in name.runes) {
    print("Unicode of ${String.fromCharCode(codePoint)} is $codePoint.");
  }
}
