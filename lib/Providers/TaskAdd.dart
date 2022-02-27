import 'package:flutter/cupertino.dart';

class TaskModel {
  late String title;
  late String subtitle;

  String get gettitle => title;

  String get gesubttitle => subtitle;

  TaskModel(this.title, this.subtitle); 
}

class TaskAdd with ChangeNotifier {
  List<TaskModel> tasklist = [];

  addtasklist() {
    TaskModel _addtask = TaskModel(
        "Title ${tasklist.length}", "Details of this Task ${tasklist.length}");
    tasklist.add(_addtask);
    notifyListeners();
  }
}
