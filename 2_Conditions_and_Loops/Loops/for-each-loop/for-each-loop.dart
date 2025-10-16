// The for each loop iterates over all list elements or variables.
// It is useful when you want to loop through list/collection.

void main() {
  // example 1
  List<String> footballPlayer = ['Ronaldo', 'Messi', 'Neymar', 'Benzema'];
  footballPlayer.forEach((names) => print(names));

  // example 2
  List<int> numbers = [1, 2, 3, 4, 5];
  int total = 0;

  numbers.forEach((num) => total += num);
  print("Total is $total");

  double avg = total / (numbers.length);
  print("Average is $avg");

  // how to find index value of list
  // In dart, asMap method converts the list to a map where the keys are the index and values are the element at the index.
  footballPlayer.asMap().forEach((index, value) => print("$value index is $index"));
}
