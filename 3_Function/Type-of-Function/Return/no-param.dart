void main() {
  String movie = movieName();
  print("I love to watch $movie");

  int personAge = 17;
  if (personAge >= voterAge()) {
    print("You can vote");
  } else {
    print("You can't vote.");
  }
}

String movieName() {
  return "Oppenheimer";
}

int voterAge() {
  return 18;
}
