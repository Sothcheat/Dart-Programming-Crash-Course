void main() {

  // List hold multiple values in single variable also called arrays.
  List<String> names = ["Raja", "Atsu", "Jin", "Perter"];
  print("value of names is $names");
  print("value of names[0] is ${names[0]}");
  print("value of names[1] is ${names[1]}");
  print("value of names[2] is ${names[2]}");
  print("value of names[3] is ${names[3]}");

  // finding length of list
  int length = names.length;
  print("The length of names is : $length");

  // Sets an unordered collections of unique items.
  // Note: set doesn't print duplicate items;

  Set<String> weekday = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
  print(weekday);

  // Map is an object where you can store data in key-value pairs
  // Each key occurs only once (Unique), but can use same value multiple times;
  Map<String, String> myDetails = {
    'name': 'John Doe', 
    'address': 'USA',
    'fathername': 'Soe Doe'
  };

  print(myDetails['name']);
  print(myDetails['address']);

  Map<int, dynamic> products = {
    1: "Coca",
    2: "Pepsi",
    3: "Fanta"
  };

  print(products[3]);

}