import 'dart:io';

class To_do {
  List<String> TODO_list = [];

  void add_task(String task) {
    TODO_list.add(task);
  }

  void view_task() {
    print('The tasks are as follow: $TODO_list');
  }

 void remove_task() {
  print('Enter the task number you want to remove:');
  String? input = stdin.readLineSync(); // Read input as a string
  int? taskIndex = int.tryParse(input ?? ''); // Convert string to integer
  
  if (taskIndex != null && taskIndex > 0 && taskIndex <= TODO_list.length) {
    TODO_list.removeAt(taskIndex - 1); // Remove the task at the specified index (1-based index to 0-based)
    print('Task removed.');
  } else {
    print('Task not found.');
  }
}
}

void main() {
  To_do T_LIST = To_do();
  int? choice;
while(true){
  print("1. ADD TASKS");
  print("2. REMOVE TASKS");
  print("3. VIEW TASKS");
  print("4. EXIT");
  print("Enter Your Choice:");

  String? input = stdin.readLineSync();
  if (input != null) {
    choice = int.tryParse(input);
  }
 
  switch (choice) {
    case 1:
      print('Enter the task:');
      String? task = stdin.readLineSync();
      if (task != null) {
        T_LIST.add_task(task);
      }
      print('task added successfully');
      break;
    case 2:
      T_LIST.remove_task();
      break;
    case 3:
      T_LIST.view_task();
      break; 
    case 4:
      break;  
    default:
      print("Invalid choice");
  }
  if(choice==4){
    print('Exiting Program....');
    break;
  }
  }
   
}
