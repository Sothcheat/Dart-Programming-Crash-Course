void main() {
  var myList = [1, 2, 3];
  print(myList);
  print(myList[2]);

  // change an item
  myList[0] = 41;
  print(myList[0]);

  // create empty list
  var emptylist = [];

  // add to empty list
  emptylist.add(69);
  print(emptylist);

  // add multiple to empty list
  emptylist.addAll([4, 5, 6]);
  print(emptylist);

  // insert at specific position (position, item)
  myList.insert(1, 43);
  print(myList);

  // insert many
  myList.insertAll(4, [6, 7, 8, 9]);
  print(myList);

  // mixed lists
  var mixedList = [1, 2, 3, "John"];
  print(mixedList);

  // remove from list
  mixedList.remove(2);
  print(mixedList);

  // remove from specific location of index
  mixedList.removeAt(2);
  print(mixedList);

  // using where to filter element in list
  List<String> days = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
  ];

  List<String> startWithS = days
      .where((element) => element.startsWith("S"))
      .toList();
  print(startWithS);

  // filter out even & odd number
  List<int> numbers = [2, 4, 7, 8, 5, 9, 11, 17, 18];
  List<int> evenNums = numbers.where((element) => element.isEven).toList();
  List<int> oddNums = numbers.where((element) => element.isOdd).toList();
  print(evenNums);
  print(oddNums);
}
