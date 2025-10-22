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
}
