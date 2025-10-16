// Operator Type 	Description
// && 	This is ‘and’, return true if all conditions are true
// || 	This is ‘or’. Return true if one of the conditions is true
// ! 	This is ’not’. return false if the result is true and vice versa

void main() {
  int userId = 123;
  int userPin = 456;

  print((userId == 123) && (userPin == 456)); // output true;
  print((userId == 1213) && (userPin == 456)); // output false;

  print((userId == 123) || (userPin == 456)); // output true;
  print((userId == 1213) || (userPin == 456)); // output true;
  print((userId == 123) != (userPin == 456)); // output false;
  print((userId == 1213) != (userPin == 456)); // output true;
}
