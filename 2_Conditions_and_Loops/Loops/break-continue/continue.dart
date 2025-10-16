// The continue statement skips the current iteration of a loop.
// It will bypass the statement of the loop.
// It does not terminate the loop but rather continues with the next iteration.

void main() {
  // example 1
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }

  // example 2
  for (int i = 10; i >= 1; i--) {
    if (i == 4) {
      continue;
    }
    print(i);
  }

  // example 3
  int i = 1;
  while (i <= 10) {
    if (i == 5) {
      i++;
      continue;
    }
    print(i);
    i++;
  }
}
