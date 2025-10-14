void main() {

  String name = "Sothcheat";
  int age = 19;
  double originalPrice = 10.99;
  num discount = 20; // num type is for storing any int and double.
  bool check = true;
  var finalPrice; // var for storing any type of value.

  num height = 5.7;
  bool isMarried = false;

  finalPrice = originalPrice - (originalPrice * (discount / 100));

  if (check) {
    print("My name is $name, and I'm $age years old. This item cost $originalPrice\$ after $discount\%, the final price is $finalPrice\$.");
    print("Name is : $name");
    print("Age is : $age");
    print("Height is : $height");
    print("Married Status is : $isMarried");
  }

}