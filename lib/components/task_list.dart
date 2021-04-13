import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<CheckboxModel> _listModel = [
    CheckboxModel("Hello World 1", false),
    CheckboxModel("Hello world 2", false)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _listModel
          .map((CheckboxModel e) => CheckboxListTile(
              activeColor: Colors.lightBlueAccent,
              title: Text(e.title),
              value: e.isChecked,
              onChanged: (bool value) {
                setState(() {
                  e.isChecked = value;
                });
              }))
          .toList(),
    );
  }
}

class CheckboxModel {
  String title;
  bool isChecked;

  CheckboxModel(this.title, this.isChecked);
}
