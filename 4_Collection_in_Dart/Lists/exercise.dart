import 'dart:io';

void main() {
  var choice;
  var number;
  var amount;
  var numList = [];

  do {
    print("\n ===== CRUD number ===== ");
    print("|        1. add         |");
    print("|        2. read        |");
    print("|        3. update      |");
    print("|        4. delete      |");
    print("|        0. exit        |");
    print(" ======================= ");
    stdout.write("Enter your choice: ");

    try {
      choice = int.parse(stdin.readLineSync()!);
    } on FormatException {
      print("Invalid! Please enter number only.");
      continue;
    }

    switch (choice) {
      case 1:
        {
          while (true) {
            stdout.write("Enter amount of num you want to add: ");
            try {
              amount = int.parse(stdin.readLineSync()!);
              break;
            } on FormatException {
              print("Invalid! Please enter number only.");
              continue;
            }
          }

          for (int i = 0; i < amount; i++) {
            while (true) {
              try {
                stdout.write("Enter num[${i + 1}]: ");
                number = int.parse(stdin.readLineSync()!);
                numList.add(number);
                break;
              } on FormatException {
                print("Invalid! Please enter number only.");
              }
            }
          }
          break;
        }
      case 2:
        {
          if (numList.isEmpty) {
            print("There's no number in the list.");
          } else {
            print("Reading all data.");
            for (int i = 0; i < numList.length; i++) {
              print("num[${i + 1}]: ${numList[i]}");
            }
          }

          break;
        }
      case 3:
        {
          if (numList.isEmpty) {
            print("There's no number in the list.");
          } else {
            var findNum;
            var updateNum;
            var check = false;
            while (true) {
              stdout.write("Enter the number you want to update: ");
              try {
                findNum = int.parse(stdin.readLineSync()!);
                break;
              } on FormatException {
                print("Invalid! Please enter number only.");
              }
            }
            for (int i = 0; i < numList.length; i++) {
              if (findNum == numList[i]) {
                while (true) {
                  stdout.write("Enter a new number: ");
                  try {
                    updateNum = int.parse(stdin.readLineSync()!);
                    numList[i] = updateNum;
                    print("Update Successfully.");
                    check = true;
                    break;
                  } on FormatException {
                    print("Invalid! Please enter number only.");
                  }
                }
                break;
              }
            }
            if (!check) {
              print("NO matching num in the list.");
            }
          }
          break;
        }
      case 4:
        {
          if (numList.isEmpty) {
            print("There's no number in the list.");
          } else {
            var deleteNum;
            var check = false;
            while (true) {
              stdout.write("Enter the number you want to delete: ");
              try {
                deleteNum = int.parse(stdin.readLineSync()!);
                for (int i = 0; i < numList.length; i++) {
                  if (deleteNum == numList[i]) {
                    numList.removeAt(i);
                    print("Delete Successfully.");
                    check = true;
                    break;
                  }
                }
                break;
              } on FormatException {
                print("Invalid! Please enter number only.");
              }
            }
            if (!check) {
              print("NO matching num in the list.");
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
