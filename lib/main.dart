import 'package:flutter/material.dart';
import 'Utilities/tasks.dart';
import 'screens/tasks_screen.dart';
import 'services/add_button.dart';
import 'services/add_tasks.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.lightBlueAccent),
      home: SafeArea(
        child: Scaffold(
          body: Tasks(),
          floatingActionButton: AddButton(onAddTask: _addTask),
        ),
      ),
    );
  }

  void _addTask(String title) {
    setState(() {
      tasksList.add(AddTask(title: title));
    });
  }
}
