import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:todoey/provider/task_provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            task: taskData.getTask(index),
            onCheck: (bool value) => taskData.updateTask(index),
            onPress: () => taskData.updateTask(index),
            onLongPress: () => taskData.deleteTask(index),
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
