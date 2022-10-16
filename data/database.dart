import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
// refrence the box
  final _myBox = Hive.box('mybox');

  // run this if its the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Hello and Welcome", false],
      ["Click plus sign to add new task", false],
      ["To delete task swipe left on task ", false]
    ];
  }

  // load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
