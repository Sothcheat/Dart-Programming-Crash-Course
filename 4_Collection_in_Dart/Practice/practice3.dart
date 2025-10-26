import 'dart:io';

void main() {
  var contactName;
  var phoneNum;
  var option;
  var amount;
  Map<String, String> phoneBook = {};

  do {
    print("\n ======= Phonebook ======= ");
    print("|         1. Add          |");
    print("|         2. Show         |");
    print("|         3. Update       |");
    print("|         4. Delete       |");
    print("|         0. Exit         |");
    print(" ========================= ");

    while (true) {
      stdout.write("Enter the option: ");
      try {
        option = int.parse(stdin.readLineSync()!.trim());
        break;
      } on FormatException {
        print("Invalid! Enter number only.");
      }
    }

    switch (option) {
      case 1:
        {
          while (true) {
            stdout.write("Enter the amount of Contact: ");
            try {
              amount = int.parse(stdin.readLineSync()!.trim());
              break;
            } on FormatException {
              print("Invalid! Enter number only.");
            }
          }

          for (int i = 0; i < amount; i++) {
            while (true) {
              print("Enter contact #${i + 1}:");
              stdout.write("Name: ");
              contactName = stdin.readLineSync()?.trim() ?? "";

              bool nameExist = phoneBook.keys.any(
                (name) => name.toLowerCase() == contactName.toLowerCase(),
              );

              if (nameExist) {
                print("Invalid! Can't contain same name.");
                continue;
              }
              while (true) {
                stdout.write("Number: ");
                phoneNum = stdin.readLineSync()?.trim() ?? "";

                bool numberExist = phoneBook.values.any(
                  (number) => number == phoneNum,
                );

                if (numberExist) {
                  phoneBook.entries.forEach((number) {
                    if (number.value == phoneNum) {
                      print("Number already exists. Belong to: ${number.key}");
                    }
                  });
                  continue;
                }
                phoneBook[contactName] = phoneNum;
                break;
              }
              break;
            }
          }
          print("Added Successfully.");
          break;
        }
      case 2:
        {
          if (phoneBook.isEmpty) {
            print("Ops! Phonebook is empty.");
          } else {
            print("Phonebook Contact...");
            print("Name \t\t Phone number");
            phoneBook.entries.forEach(
              (entry) => print("${entry.key.padRight(16)} ${entry.value}"),
            );
          }
          break;
        }
      case 3:
        {
          var newName;
          var newNumber;
          var searchContact;
          if (phoneBook.isEmpty) {
            print("Ops! Phonebook is empty.");
          } else {
            while (true) {
              stdout.write("Search contact by name or number: ");
              searchContact = stdin.readLineSync()?.trim() ?? "";

              var foundEntry = phoneBook.entries.firstWhere(
                (entry) =>
                    entry.key.toLowerCase() == searchContact.toLowerCase() ||
                    entry.value == searchContact,
                orElse: () => const MapEntry('', ''),
              );

              if (foundEntry.key.isEmpty) {
                print("No matching contact in Phonebook.");
                continue;
              }

              var oldName = foundEntry.key;
              var oldNumebr = foundEntry.value;

              print("Contact Found: $oldName : $oldNumebr");

              var choice;
              while (true) {
                stdout.write("Pick an option to update. 1. Name | 2 Number: ");
                try {
                  choice = int.parse(stdin.readLineSync()!);
                  if (choice == 1 || choice == 2) break;
                  print("Invalid option!");
                } on FormatException {
                  print("Invalid! Enter number only.");
                }
              }
              if (choice == 1) {
                while (true) {
                  stdout.write("Enter a new name: ");
                  newName = stdin.readLineSync()?.trim() ?? "";

                  bool nameExists = phoneBook.keys.any(
                    (name) => name.toLowerCase() == newName.toLowerCase(),
                  );
                  if (nameExists) {
                    print("Name: $newName already exists");
                    continue;
                  }

                  phoneBook.remove(oldName);
                  phoneBook[newName] = oldNumebr;

                  print("Name updated Successfully.");
                  break;
                }
              } else {
                while (true) {
                  stdout.write("Enter a new number: ");
                  newNumber = stdin.readLineSync()?.trim() ?? "";

                  bool numberExists = phoneBook.values.any(
                    (number) => number == newNumber,
                  );
                  if (numberExists) {
                    print("Number: $newNumber already exists");
                    continue;
                  }

                  phoneBook[oldName] = newNumber;
                  print("Number updated successfully.");
                  break;
                }
              }
              break;
            }
          }
          break;
        }
      case 4:
        {
          if (phoneBook.isEmpty) {
            print("Ops! Phonebook is empty.");
          } else {
            while (true) {
              stdout.write("Delete contact by name or number: ");
              var deleteContact = stdin.readLineSync()?.trim() ?? "";

              var foundEntry = phoneBook.entries.firstWhere(
                (entry) =>
                    entry.key.toLowerCase() == deleteContact.toLowerCase() ||
                    entry.value == deleteContact,
                orElse: () => const MapEntry('', ''),
              );

              if (foundEntry.key.isEmpty) {
                print("No matching contact in Phonebook.");
                continue;
              }

              print("Contact Found: ${foundEntry.key} : ${foundEntry.value}");
              while (true) {
                stdout.write("Are you sure you want to delete? yes or no: ");
                var choice = stdin.readLineSync()?.toLowerCase().trim();
                if (choice == 'yes' || choice == 'y') {
                  phoneBook.remove(foundEntry.key);
                  print("Contact delete Successfully.");
                  break;
                } else if (choice == 'no' || choice == 'n') {
                  print("Deletion cancel.");
                  break;
                } else {
                  print("Invalid choice! Enter yes or no.");
                }
              }
              break;
            }
          }
          break;
        }
      case 0:
        print("Exiting program...");
        return;
      default:
        print("Invalid Option! Try again.");
        break;
    }
  } while (true);
}
