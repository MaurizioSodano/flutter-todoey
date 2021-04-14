import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskTile extends StatefulWidget {
  final Task task;

  const TaskTile({this.task});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        activeColor: Colors.lightBlueAccent,
        title: Text(
          widget.task.title,
          style: TextStyle(
            decoration: widget.task.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        value: widget.task.isDone,
        onChanged: (bool value) {
          setState(() {
            widget.task.isDone = value;
          });
        });
  }
}
