import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'provider/task_provider.dart';
import 'screens/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Data(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}


