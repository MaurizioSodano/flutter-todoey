import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [/*Task(title: 'First')*/];

  void addTask(String text) {
    _tasks.add(Task(title: text));
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }

  Task getTask(int index) {
    return _tasks[index];
  }

  void updateTask(int index) {
    _tasks[index].toggle();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
