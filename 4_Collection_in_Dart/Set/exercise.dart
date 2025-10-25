import 'dart:io';

void main() {
  var address;
  var amount;
  var choice;
  Set<String> addresses = {};

  do {
    print("\n ======= Address List ======= ");
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
            stdout.write("Enter the amount of address you want to add: ");
            try {
              amount = int.parse(stdin.readLineSync()!);
              break;
            } on FormatException {
              print("Invalid! Please enter number only.");
            }
          }

          for (int i = 0; i <= amount - 1; i++) {
            stdout.write("Enter the address #${i + 1}: ");
            address = stdin.readLineSync();
            addresses.add(address);
          }
          print("Added Successfully.");
          break;
        }
      case 2:
        {
          if (addresses.isEmpty) {
            print("Empty set.");
          } else {
            print("\nShowing Addresses...");
            addresses.forEach((n) => print("Address is: $n"));
          }
          break;
        }
      case 3:
        {
          if (addresses.isEmpty) {
            print("Empty set.");
          } else {
            var updateAddress;
            var searchAddress;
            while (true) {
              stdout.write("Enter the address you want to update: ");
              searchAddress = stdin.readLineSync();
              if (addresses.contains(searchAddress)) {
                addresses.remove(searchAddress);
                stdout.write("Enter the update address: ");
                updateAddress = stdin.readLineSync();
                addresses.add(updateAddress);
                print("Updated Successfully.");
                break;
              } else {
                print("No matching address.");
              }
            }
          }
          break;
        }
      case 4:
        {
          if (addresses.isEmpty) {
            print("Empty set.");
          } else {
            var deleteAddress;
            while (true) {
              stdout.write("Enter the address you want to delete: ");
              deleteAddress = stdin.readLineSync();
              if (addresses.contains(deleteAddress)) {
                addresses.remove(deleteAddress);
                print("Deleted successfully.");
                break;
              } else {
                print("No matching address.");
                continue;
              }
            }
          }
          break;
        }
      case 0:
        print("Exiting program...");
        return;
      default:
        print("Invalid choice! Please choose again.");
        break;
    }
  } while (true);
}
