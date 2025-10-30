void printInfo(String name, String gender) {
  print("Hello $name your gender is $gender.");
}

// providing default value on positional parameter
void printInfo2(String name, String gender, [String title = "sir/ma'am"]) {
  print("Hello $title $name your gender is $gender.");
}

void main() {
  // passing values in wrong order
  printInfo("Male", "John");

  // passing values in correct order
  printInfo("John", "Male");

  printInfo2("Cena", "Male");
  printInfo2("Cena", "Male", "Mr.");
  printInfo2("Olivia Rodrigo", "Female", "Ms.");
}
