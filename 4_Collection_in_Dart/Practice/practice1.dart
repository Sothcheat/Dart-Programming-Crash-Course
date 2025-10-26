import 'dart:io';

void main() {
  var movie;
  Set<String> movies = {};
  var amount;
  var choice;

  do {
    print("\n ======= Favorite Movie ======= ");
    print("|            1. Add            |");
    print("|            2. Show           |");
    print("|            3. Update         |");
    print("|            4. Delete         |");
    print("|            0. Exit           |");
    print(" ============================== ");

    while (true) {
      stdout.write("Enter your choice: ");
      try {
        choice = int.parse(stdin.readLineSync()!);
        break;
      } on FormatException {
        print("Invalid! Please enter number only.");
      }
    }

    switch (choice) {
      case 1:
        {
          while (true) {
            stdout.write("Enter the amount of movie to add: ");
            try {
              amount = int.parse(stdin.readLineSync()!);
              break;
            } on FormatException {
              print("Invalid! Please enter number only.");
            }
          }

          for (int i = 0; i < amount; i++) {
            stdout.write("Enter your favorite movie #${i + 1}: ");
            movie = stdin.readLineSync();
            movies.add(movie);
          }
          print("✅ Added Successfully.");
          break;
        }
      case 2:
        {
          if (movies.isEmpty) {
            print("The set of favorite movie is empty.");
          } else {
            print("Showing favorite movie...");
            movies.forEach((n) => print("$n |"));
          }
          break;
        }
      case 3:
        {
          if (movies.isEmpty) {
            print("The set of favorite movie is empty.");
          } else {
            var searchMovie;
            var updateMovie;
            while (true) {
              stdout.write("Enter the name of the movie you want to update: ");
              searchMovie = stdin.readLineSync() ?? "";
              var foundMovie = movies.firstWhere(
                (movie) => movie.toLowerCase() == searchMovie.toLowerCase(),
                orElse: () => "",
              );
              if (foundMovie.isNotEmpty) {
                stdout.write("Enter the update movie: ");
                updateMovie = stdin.readLineSync();

                movies.remove(foundMovie);
                movies.add(updateMovie);
                print("✅ Updated Successfully.");
                break;
              } else {
                print("❌ No matching movie name.");
              }
            }
          }
          break;
        }
      case 4:
        {
          if (movies.isEmpty) {
            print("The set of favorite movie is empty.");
          } else {
            var deleteMovie;
            while (true) {
              stdout.write("Enter the name of the movie you want to delete: ");
              deleteMovie = stdin.readLineSync() ?? "";
              var foundMovie = movies.firstWhere(
                (movie) => movie.toLowerCase() == deleteMovie.toLowerCase(),
                orElse: () => "",
              );
              if (foundMovie.isNotEmpty) {
                movies.remove(foundMovie);
                print("✅ Deleted Successfully.");
                break;
              } else {
                print("❌ No matching movie name.");
              }
            }
          }
          break;
        }
      case 0:
        print("Exitiing Program...");
        return;
      default:
        print("Invalid choice! Try again.");
        break;
    }
  } while (true);
}
