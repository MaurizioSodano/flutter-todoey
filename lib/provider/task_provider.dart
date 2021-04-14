import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [/*Task(title: 'First')*/];

  void addTask(String text) {
    tasks.add(Task(title: text));
    notifyListeners();
  }
}
