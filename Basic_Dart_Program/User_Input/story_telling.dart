import 'dart:io';

void main() {
  String? name;
  String? place;
  String? food;
  int age;
  int amount;
  double height;
  double price;

  stdout.write("Enter your name: ");
  name = stdin.readLineSync();
  stdout.write("Enter your age: ");
  age = int.parse(stdin.readLineSync()!);
  stdout.write("Enter your height: ");
  height = double.parse(stdin.readLineSync()!);
  stdout.write("Enter your favorite place: ");
  place = stdin.readLineSync();
  stdout.write("Enter your favorite food: ");
  food = stdin.readLineSync();
  stdout.write("Enter the amount: ");
  amount = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the price: ");
  price = double.parse(stdin.readLineSync()!);

  print("My name is $name.");
  print("I am $age years old.");
  print("My height is $height");
  print("My favorite place to eat is $place");
  print("I like $food, and I order $amount of it.");
  print("The price of the food is ${price * amount}\$");
  print("The end. Have fun!");
}
