import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/provider/task_provider.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen({this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String title = '';

    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.lightBlueAccent, width: 5.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.lightBlueAccent, width: 5.0),
              ),
            ),
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              //print(title);
              Provider.of<Data>(context, listen: false).addTask(title);
              Navigator.pop(context);
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
            child: Text('Add'),
          )
        ],
      ),
    );
  }
}
