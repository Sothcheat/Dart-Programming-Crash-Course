// Data Type 	Keyword 	Description
// Numbers 	  int, double, num 	It represents numeric values
// Strings 	  String 	  It represents a sequence of characters
// Booleans 	bool 	    It represents Boolean values true and false
// Lists 	    List 	    It is an ordered group of items
// Maps 	    Map 	    It represents a set of values as key-value pairs
// Sets 	    Set 	    It is an unordered list of unique values of same types
// Runes 	    runes 	  It represents Unicode values of String
// Null 	    null 	    It represents null value

void main() {
  double price = 12.2323232323;
  print(price.toStringAsFixed(3));  // round to any decimal places

  // create a multi-line string in dart
  String multiLineText = '''
This is Multi Line Text
with 3 double quote
I am also writing here.
can i add another line?
  ''';

  print(multiLineText);

  // special character in string
  print("I am from \tUS.");
  print("I am from Cambodia. \nI'm loving it here.");

  // create a raw string 
  String withoutRawString = "The value of price is \t ${price.toStringAsFixed(2)}";
  String withRawString = r"The value of price is \t $price";

  print("Without Raw: $withoutRawString");
  print("With Raw: $withRawString");

  // Type conversion in dart
  // convert string to int using int.parse();

  String strValue = '1';
  print("Type of strValue is ${strValue.runtimeType}");
  int intValue = int.parse(strValue);
  print("Value of intValue is $intValue");

  print("Type of intValue is ${intValue.runtimeType}");

  // convert string to double using double.parse();
  String strValue2 = "1.25";
  print("Type of strValue is: ${strValue.runtimeType}");
  double doubleValue = double.parse(strValue2);
  print("Value of doubleValue is $doubleValue");
  print("Type of doubleValue is: ${doubleValue.runtimeType}");

  // convert int to string using .toString();
  int one = 1;
  print("Type of one is ${one.runtimeType}");
  String oneInString = one.toString();
  print("Value of oneInString is: $oneInString");
  print("Type of oneInString is ${oneInString.runtimeType}");

  // convert double to int using toInt();
  int intPrice = price.toInt();
  print("Type of intPrice  is ${intPrice.runtimeType}");
  print("Value of intPrice is: $intPrice");

  // convert int to double using toDouble();
  double doublePrice = intPrice.toDouble();
  print("Type of doublePrice is ${doublePrice.runtimeType}");
  print("Value of doublePrice is $doublePrice");

  // boolean
  bool isMarried = true;
  print("Married Status: $isMarried");

}