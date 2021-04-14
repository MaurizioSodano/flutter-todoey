import 'package:flutter/material.dart';
import 'package:todoey/components/task_tile.dart';
import '../models/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> _tasks = [
    Task(title: "Hello World 1"),
    Task(title: "Hello world 2"),
    Task(title: "Hello world 3")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: _tasks
            .map(
              (Task e) => TaskTile(
                task: e,
              ),
            )
            .toList());
  }
}
