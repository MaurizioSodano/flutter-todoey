import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [/*Task(title: 'First')*/];

  void addTask(String text) {
    tasks.add(Task(title: text));
    notifyListeners();
  }

  int get taskCount {
    return tasks.length;
  }
}
