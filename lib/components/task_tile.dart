import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function onCheck;
  final Function onPress;
  final Function onLongPress;
  TaskTile(
      {@required this.task,
      @required this.onCheck,
      @required this.onPress,
      @required this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: Colors.lightBlueAccent,
      title: TextButton(
        onPressed: onPress,
        onLongPress: onLongPress,
        child: Text(
          task.title,
          style: TextStyle(
            decoration: task.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
      ),
      value: task.isDone,
      onChanged: onCheck,
    );
  }
}
