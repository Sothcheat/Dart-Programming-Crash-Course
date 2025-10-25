void main() {
  Set<String> fruits = {"Apple", "Orange", "Mango", "Grape"};
  print(fruits);

  // find first and last item in set.
  print("First value is ${fruits.first}");
  print("Last value is ${fruits.last}");

  // check the available value;
  print(fruits.contains("Mango"));
  print(fruits.contains("Lemon"));

  // add & remove items from set
  fruits.add("Lemon");
  fruits.add("Banana");

  print(fruits);

  fruits.remove("Apple");
  print(fruits);

  // add multiple items to set
  fruits.addAll(["Cherry", "Berry"]);
  print(fruits);

  // printing all values in set
  for (String fruit in fruits) {
    print(fruit);
  }

  // clear items in set
  fruits.clear();
  print(fruits);

  // difference in set: the difference method creates a new Set with the elements that are not in the other.
  Set<String> fruits1 = {"Apple", "Orange", "Mango"};
  Set<String> fruits2 = {"Apple", "Grapes", "Banana"};

  final differenceSet = fruits2.difference(fruits1);
  print(differenceSet);

  // find items using element at method by index
  Set<String> days = {"Sunday", "Monday", "Tuesday"};
  print(days.elementAt(1));

  // intersection method:
  // intersection method creates a new Set with the common elements in 2 Sets.

  final intersectionSet = fruits1.intersection(fruits2);
  print(intersectionSet);
}
