void main() {
  // Maps! key/value pairs
  var toppings = {"John": "Pepperoni", "Mary": "Cheese"};
  print(toppings["John"]);

  // show value
  print(toppings.values);

  // show key
  print(toppings.keys);

  // show length
  print(toppings.length);

  // add something
  toppings["Timmy"] = "Sausage";
  print(toppings.values);

  // add many thing
  toppings.addAll({"Tina": "Bacon", "Steve": "Seafood"});
  print(toppings);

  // remove something
  toppings.remove("Tim");
  print(toppings);

  // remove everything
  toppings.clear();
  print(toppings);
}
