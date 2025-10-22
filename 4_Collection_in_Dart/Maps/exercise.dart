import 'dart:io';

void main() {
  var name;
  var id;
  var choice;
  var amount;
  Map<int, String> studentMap = {};

  do {
    print("\n ======= Student List ======= ");
    print("|          1. Add            |");
    print("|          2. Show           |");
    print("|          3. Update         |");
    print("|          4. Delete         |");
    print("|          0. Exit           |");
    print(" ============================ ");

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
            stdout.write("Enter the amount of student: ");
            try {
              amount = int.parse(stdin.readLineSync()!);
              break;
            } on FormatException {
              print("Invalid! Please enter number only.");
            }
          }

          for (int i = 0; i < amount; i++) {
            while (true) {
              try {
                print("Student ${i + 1}");
                stdout.write("Enter ID: ");
                id = int.parse(stdin.readLineSync()!);
                if (studentMap.containsKey(id)) {
                  print("Invalid! Can't contain same ID.");
                  continue;
                } else {
                  stdout.write("Enter name: ");
                  name = stdin.readLineSync();
                  studentMap[id] = name;
                  break;
                }
              } on FormatException {
                print("Invalid! Please enter number only.");
              }
            }
          }
          break;
        }
      case 2:
        {
          if (studentMap.isEmpty) {
            print("The list is empty.");
          } else {
            print("ID \t Name");
            for (MapEntry student in studentMap.entries) {
              print("${student.key} \t ${student.value}");
            }
          }
          break;
        }
      case 3:
        {
          var updateName;
          var searchId;
          if (studentMap.isEmpty) {
            print("The list is empty.");
          } else {
            while (true) {
              stdout.write("Enter ID to update Student: ");
              try {
                searchId = int.parse(stdin.readLineSync()!);
                if (studentMap.containsKey(searchId)) {
                  stdout.write("Enter new name for student ID $searchId: ");
                  updateName = stdin.readLineSync();
                  studentMap[searchId] = updateName;
                  print("Update Successfully.");
                  break;
                } else {
                  print("No matching ID in the list.");
                }
              } on FormatException {
                print("Invalid! Please enter number only.");
              }
            }
          }
          break;
        }
      case 4:
        {
          var deleteId;
          if (studentMap.isEmpty) {
            print("The list is empty.");
          } else {
            while (true) {
              stdout.write("Enter ID to Remove Student: ");
              try {
                deleteId = int.parse(stdin.readLineSync()!);
                if (studentMap.containsKey(deleteId)) {
                  studentMap.remove(deleteId);
                  print("Delete Successfully.");
                  break;
                } else {
                  print("No matching ID in the list.");
                }
              } on FormatException {
                print("Invalid! Please enter number only.");
              }
            }
          }
          break;
        }
      case 0:
        print("Exiting program...");
        return;
      default:
        print("Invalid Choice! Try again.");
        break;
    }
  } while (true);
}
