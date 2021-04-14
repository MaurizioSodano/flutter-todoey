import 'package:flutter/material.dart';
import 'package:todoey/components/task_tile.dart';
import '../models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> _tasks;
  TaskList(this._tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          task: widget._tasks[index],
        );
      },
      itemCount: widget._tasks.length,
    );
  }
}
