// The break statement is used to exit a loop.
// It stops the loop immediately, and the program’s control moves outside the loop.

void main() {
  
  // example 1
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }

  // example 2
  for (int i = 10; i >= 1; i--) {
    if (i == 7) {
      break;
    }
    print(i);
  }

  // example 3
  int i =1;
  while(i<=10){
    print(i);
    if (i == 5) {
        break;
      }
      i++;
  }
}