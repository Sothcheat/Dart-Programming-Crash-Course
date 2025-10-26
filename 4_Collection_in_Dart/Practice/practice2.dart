import 'dart:io';

void main() {
  var student;
  var studentsList = [];
  var amount;
  var option;

  do {
    print("\n ======= Student Attendance ======= ");
    print("|             1. Add               |");
    print("|             2. Show              |");
    print("|             3. Delete            |");
    print("|             0. Exit              |");
    print(" ================================== ");

    while (true) {
      stdout.write("Enter the option: ");
      try {
        option = int.parse(stdin.readLineSync()!);
        break;
      } on FormatException {
        print("Invalid! Enter number only.");
      }
    }

    switch (option) {
      case 1:
        {
          while (true) {
            stdout.write("Enter the number of student who's attending: ");
            try {
              amount = int.parse(stdin.readLineSync()!);
              break;
            } on FormatException {
              print("Invalid! Enter number only.");
            }
          }

          for (int i = 0; i < amount; i++) {
            stdout.write("Enter student name #${i + 1}: ");
            student = stdin.readLineSync() ?? "N/A";
            studentsList.add(student);
          }
          print("Added Successfully.");
          break;
        }
      case 2:
        {
          if (studentsList.isNotEmpty) {
            print("Students that are attending:");
            for (int i = 0; i < studentsList.length; i++) {
              print("#${i + 1} ${studentsList[i]}");
            }
          } else {
            print("No attending student.");
          }
          break;
        }
      case 3:
        {
          if (studentsList.isEmpty) {
            print("No attending student.");
          } else {
            var deleteStudent;
            while (true) {
              stdout.write("Enter student name want to delete: ");
              deleteStudent = stdin.readLineSync() ?? "";

              var foundStudent = studentsList.firstWhere(
                (std) => std.toLowerCase() == deleteStudent.toLowerCase(),
                orElse: () => "",
              );

              if (foundStudent.isNotEmpty) {
                studentsList.remove(foundStudent);
                print("Remove Successfully.");
                break;
              } else {
                print("No matching student.");
              }
            }
          }
          break;
        }
      case 0:
        print("Exiting the program...");
        return;
      default:
        print("Invalid Option! Try again.");
        break;
    }
  } while (true);
}
